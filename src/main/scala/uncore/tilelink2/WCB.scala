// See LICENSE.SiFive for license details.

package uncore.tilelink2

import Chisel._
import chisel3.internal.sourceinfo.SourceInfo
import config._
import diplomacy._
import scala.math.{min,max}

case class TLWCBParams(_combineBlockBytes: Int = 64) // must be a power of 2; set to the same value as p(CacheBlockBytes)
{
  def combineBlockBytes = _combineBlockBytes
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

      val sourceIgnore     = Wire(init = Vec.fill(edgeIn.client.endSourceId) { false.B })
      val sourceToBufTable = Wire(Vec(edgeIn.client.endSourceId, in.a.bits.source))
      var bufCount = 0

      val fmt = s"\t[%d, %d) %s%s %s"

      val maps = edgeIn.client.clients.sortWith(TLToAXI4.sortByType) map { c =>
        if (!c.supportsProbe && (c.name contains "MMIO")) {
          println(fmt.format(c.sourceId.start, c.sourceId.end, c.name, if (c.supportsProbe) " CACHE" else "", bufCount))
          for (i <- c.sourceId.start until c.sourceId.end) {
            sourceToBufTable(i) := UInt(bufCount);
          }
          bufCount = bufCount + 1
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

      val bufferValid = Reg(init = Vec.fill(bufCount) { false.B })
      val bufferFull  = Reg(init = Vec.fill(bufCount) { false.B })
      val req         = Reg(Vec(bufCount, in.a.bits))                                // state of last received op
      val startAddr   = Reg(Vec(bufCount, in.a.bits.address))                        //
      val curAddr     = Reg(Vec(bufCount, in.a.bits.address))                        //
      val data        = Reg(Vec(bufCount, UInt(width = params.combineBlockBytes)))   // merged data
      val offset      = Reg(Vec(bufCount, UInt(width = log2Ceil(edgeIn.manager.beatBytes))))

      val inBufId     = Wire(sourceToBufTable(in.a.bits.source))

      out <> in

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
