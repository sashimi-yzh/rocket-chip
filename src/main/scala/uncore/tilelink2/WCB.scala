// See LICENSE.SiFive for license details.

package uncore.tilelink2

import Chisel._
import chisel3.internal.sourceinfo.SourceInfo
import config._
import diplomacy._
import scala.math.{min,max}

class TLWriteCombiningBuffer(implicit p: Parameters) extends LazyModule
{
  val node = TLAdapterNode(
    clientFn  = { case c => c },
    managerFn = { case m => m })

  lazy val module = new LazyModuleImp(this) {
    val io = new Bundle {
      val in  = node.bundleIn
      val out = node.bundleOut
    }

    io.out <> io.in
  }
}

object TLWriteCombiningBuffer
{
  def apply(x: TLOutwardNode)(implicit p: Parameters, sourceInfo: SourceInfo): TLOutwardNode = {
    val wcb = LazyModule(new TLWriteCombiningBuffer)
    wcb.node := x
    wcb.node
  }
}
