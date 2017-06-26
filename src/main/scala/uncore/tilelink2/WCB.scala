// See LICENSE.SiFive for license details.

package uncore.tilelink2

import Chisel._
import chisel3.internal.sourceinfo.SourceInfo
import config._
import diplomacy._
import scala.math.{min,max}

case class TLWCBParams(
  _combineBlockBytes: Int = 64, // must be a power of 2; set to the same value as p(CacheBlockBytes)
  _numBuffers:        Int = 2)
{
  def combineBlockBytes = _combineBlockBytes
  def numBuffers        = _numBuffers
}

class TLWriteCombiningBuffer(params: TLWCBParams)(implicit p: Parameters) extends LazyModule
{
  val node = TLAdapterNode(
    clientFn  = { case c => c },
    managerFn = { case m => m })

  lazy val module = new LazyModuleImp(this) {
    val io = new Bundle {
      val in  = node.bundleIn
      val out = node.bundleOut
    }

    ((io.in zip io.out) zip (node.edgesIn zip node.edgesOut)) foreach { case ((in, out), (edgeIn, edgeOut)) =>

      // Construct the source mapping table
      println(s"TLWriteCombiningBuffer TL-Source:")

      require (params.combineBlockBytes > edgeIn.manager.beatBytes)

      val sourceIgnore        = Wire(init = Vec.fill(edgeIn.client.endSourceId) { false.B })
      val sourceToStartSource = Wire(Vec(edgeIn.client.endSourceId, in.a.bits.source))

      val fmt = s"\t[%d, %d) %s%s %s"

      val maps = edgeIn.client.clients.sortWith(TLToAXI4.sortByType) map { c =>
        if (!c.supportsProbe && (c.name contains "MMIO")) {
          println(fmt.format(c.sourceId.start, c.sourceId.end, c.name, if (c.supportsProbe) " CACHE" else "", ""))
          for (i <- c.sourceId.start until c.sourceId.end) {
            sourceToStartSource(i) := UInt(c.sourceId.start);
          }
        }
        else { // don't do write combining for anything that is not MMIO
          println(fmt.format(c.sourceId.start, c.sourceId.end, c.name, if (c.supportsProbe) " CACHE" else "", "ignored"))
          for (i <- c.sourceId.start until c.sourceId.end) {
            sourceIgnore(i) := true.B;
          }
        }
      }
      println("")

      val maxMergedSize = log2Ceil(edgeIn.manager.beatBytes)

      val bufferValid    = Reg(init = Vec.fill(params.numBuffers) { false.B })
      val bufferFull     = Reg(init = Vec.fill(params.numBuffers) { false.B })
      val bufferToFlush  = Reg(init = Vec.fill(params.numBuffers) { false.B })                   // buffer has to be flushed (conflict or full)
      val bufferFlushing = Reg(init = Vec.fill(params.numBuffers) { false.B })                   // buffer is in the process of flushing
      val bufferWaiting  = Reg(init = Vec.fill(params.numBuffers) { false.B })                   // buffer is waiting for ack after flush
      val startSource    = Reg(Vec(params.numBuffers, in.a.bits.source))                         // 1st source ID, i.e. unique per source
      val req            = Reg(Vec(params.numBuffers, in.a.bits))                                // state of last received op
      val startAddr      = Reg(Vec(params.numBuffers, in.a.bits.address))                        //
      val curAddr        = Reg(Vec(params.numBuffers, in.a.bits.address))                        //
      val data           = Reg(Vec(params.numBuffers, UInt(width = params.combineBlockBytes)))   // merged data
      val offset         = Reg(Vec(params.numBuffers, UInt(width = log2Ceil(edgeIn.manager.beatBytes)))) // in bytes
      val flushOffset    = Reg(Vec(params.numBuffers, UInt(width = log2Ceil(edgeIn.manager.beatBytes)))) // in bytes

      val toFlushId      = Wire(PriorityEncoder(bufferToFlush))
      val flushingId     = Reg(toFlushId)                                                        // ID of buffer is in the process of flushing

      val allocatable    = Wire(Vec(params.numBuffers, false.B))
      val allocateId     = Wire(PriorityEncoder(allocatable))
      val mergeable      = Wire(Vec(params.numBuffers, false.B)) // must be one-hot
      val conflict       = Wire(Vec(params.numBuffers, false.B)) // must be one-hot
      val conflictId     = Wire(OHToUInt(conflict))

      for (i <- 0 until params.numBuffers) {
        allocatable(i) := in.a.valid && !sourceIgnore(in.a.bits.source) &&
                         !bufferValid(i) &&
                         (in.a.bits.opcode  === TLMessages.PutFullData) &&
                        !(in.a.bits.address &   UInt(params.combineBlockBytes-1)).orR &&
                         (in.a.bits.size    <=  UInt(maxMergedSize))

        mergeable  (i) := in.a.valid && !sourceIgnore(in.a.bits.source) &&
                          bufferValid(i) && !bufferFull(i) && !bufferToFlush(i) && !bufferFlushing(i) && !bufferWaiting(i) &&
                         (sourceToStartSource(in.a.bits.source) === startSource(i)) &&
                         (in.a.bits.opcode  === TLMessages.PutFullData) &&
                         (in.a.bits.address === curAddr(i)) &&
                         (in.a.bits.size    <=  UInt(maxMergedSize))

        conflict   (i) := in.a.valid &&
                          bufferValid(i) &&
                         (in.a.bits.address >=  startAddr(i)) &&
                         (in.a.bits.address <   curAddr(i))
      }
      assert(PopCount(mergeable) + PopCount(conflict) <= 1.U)
      assert(PopCount(bufferFlushing) <= 1.U)

      out <> in

      when (conflict.exists(x => x)) {
        // stall in.a request until buffer is flushed
        in.a.ready  := false.B

        out.a.valid := false.B // do not pass in.a req to out.a - can be overwritten below by buffer flush

        assert(bufferValid(conflictId))

        when (!bufferToFlush(conflictId) && !bufferFlushing(conflictId) && !bufferWaiting(conflictId)) {
          bufferToFlush(conflictId) := true.B
        }
      }

      when (bufferFlushing.exists(x => x)) {
        assert( bufferValid   (flushingId))
        assert(!bufferToFlush (flushingId))
        assert( bufferFlushing(flushingId))
        assert(!bufferWaiting (flushingId))

        // stall in.a request until buffer is flushed - can be overwritten below for allocate or merge
        in.a.ready  := false.B

        //continue outgoing flush op
        out.a.valid := true.B
        when (PopCount(offset(flushingId)) === 1.U) {                    // offset (which is equal to size) is a power of 2
          edgeOut.Put( req        (flushingId).source,
                       startAddr  (flushingId),
                       flushOffset(flushingId),
                       data       (flushingId)>>(flushOffset(flushingId)<<3) )
        }
        .otherwise {                                                    // if not power of 2 - PutPartial
          edgeOut.Put( req        (flushingId).source,
                       startAddr  (flushingId),
                       flushOffset(flushingId),
                       data       (flushingId)>>(flushOffset(flushingId)<<3),
                       edgeOut.mask(startAddr(flushingId), offset(flushingId))>>(flushOffset(flushingId)<<3) )
        }

        // if outgoing flush op is accepted
        when (out.a.ready) {
          when (offset(flushingId) <= (flushOffset(flushingId) + UInt(edgeOut.manager.beatBytes))) { // and completed
            bufferFlushing(flushingId) := false.B
            bufferWaiting (flushingId) := true.B                         // now must wait for ack
          }
          flushOffset     (flushingId) := flushOffset(flushingId) + UInt(edgeOut.manager.beatBytes)
        }
      }
      .elsewhen (bufferToFlush.exists(x => x)) {
        assert(toFlushId < UInt(params.numBuffers))
        assert( bufferValid   (toFlushId))
        assert( bufferToFlush (toFlushId))
        assert(!bufferFlushing(toFlushId))
        assert(!bufferWaiting (toFlushId))
        assert(offset(toFlushId) > 0.U)

        bufferToFlush (toFlushId) := false.B
        bufferFlushing(toFlushId) := true.B
        flushingId                := toFlushId

        // stall in.a request until buffer is flushed - can be overwritten below for allocate or merge
        in.a.ready  := false.B

        //start outgoing flush op
        out.a.valid := true.B
        when (PopCount(offset(toFlushId)) === 1.U) {                    // offset (which is equal to size) is a power of 2
          edgeOut.Put( req      (toFlushId).source,
                       startAddr(toFlushId),
                       offset   (toFlushId),
                       data     (toFlushId) )
        }
        .otherwise {                                                    // if not power of 2 - PutPartial
          edgeOut.Put( req      (toFlushId).source,
                       startAddr(toFlushId),
                       offset   (toFlushId),
                       data     (toFlushId),
                       edgeOut.mask(startAddr(toFlushId), offset(toFlushId)) )
        }

        // if outgoing flush op is accepted
        when (out.a.ready) {
          when (offset(toFlushId) <= UInt(edgeOut.manager.beatBytes)) { // and completed
            bufferFlushing(toFlushId) := false.B
            bufferWaiting (toFlushId) := true.B                         // now must wait for ack
          }
          flushOffset     (toFlushId) := UInt(edgeOut.manager.beatBytes)
        }
      }

/*
      when (in.a.valid && !sourceIgnore(in.a.bits.source)) {

        when (!bufferValid(inBufId) ) {
          when ( (in.a.bits.opcode === TLMessages.PutFullData) &&
                 (in.a.bits.size   <=  UInt(maxMergedSize)) &&                  // do not try to merge if more than 1 beat
                !(in.a.bits.address &  UInt(params.combineBlockBytes-1)).orR) {

            assert( !bufferFull (inBufId) )

            // allocate buffer
            bufferValid(inBufId) := true.B
            bufferFull (inBufId) := false.B
            req        (inBufId) := in.a.bits
            startAddr  (inBufId) := in.a.bits.address
            curAddr    (inBufId) := in.a.bits.address + (1.U<<in.a.bits.size)
            data       (inBufId) := in.a.bits.data
            offset     (inBufId) := (1.U<<in.a.bits.size)<<3

            in.a.ready  := true.B  // accept in.a request even if out.a is not ready
            out.a.valid := false.B // but do not pass it to out.a
          }
        }
        .otherwise { // bufferValid is true

          when ( !bufferFull(inBufId) &&
                 (in.a.bits.opcode  === TLMessages.PutFullData) &&
                 (in.a.bits.address === curAddr(inBufId)) &&
                 (in.a.bits.size    <=  UInt(maxMergedSize)) ) {             // do not try to merge if more than 1 beat

            out.a.valid := false.B // do not pass it to out.a

            // ack for previous request in the buffer
            in.d.valid  := true.B
            in.d.bits   := edgeIn.AccessAck(req(inBufId).address,
                                            req(inBufId).source,
                                            req(inBufId).size,
                                            false.B)
            // nack out.d
            out.d.ready := false.B

            when (in.d.ready) { // if ack succeeded
              in.a.ready  := true.B  // accept in.a request even if out.a is not ready

              // merge
              req    (inBufId) := in.a.bits
              curAddr(inBufId) := curAddr(inBufId) + (1.U<<in.a.bits.size)
              data   (inBufId) := data   (inBufId) | ((in.a.bits.data & FillInterleaved(8, in.a.bits.mask))<<offset(inBufId))
              offset (inBufId) := offset (inBufId) + ((1.U<<in.a.bits.size)<<3)

              when (((offset(inBufId) + ((1.U<<in.a.bits.size)<<3))>>3) === UInt(params.combineBlockBytes)) { // Buffer is full
                bufferFull(inBufId) := true.B
              }
            }
          }
          .elsewhen ( (in.a.bits.address >= startAddr(inBufId)) && (in.a.bits.address < curAddr(inBufId)) ) {
            // conflict - flush the buffer
            in.a.ready  := false.B  // stall in.a request until buffer is flushed

          }
        }
      }
 */
    }
  }
}

object TLWriteCombiningBuffer
{
  def apply(x: TLOutwardNode)(implicit p: Parameters, sourceInfo: SourceInfo): TLOutwardNode = {
    val wcb = LazyModule(new TLWriteCombiningBuffer(new TLWCBParams))
    wcb.node := x
    wcb.node
  }
}
