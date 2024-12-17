package tpu

import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec
import chisel3.experimental.BundleLiterals._

// 测试2x2脉动矩阵
class SystolicArray4x4Test extends AnyFlatSpec with ChiselScalatestTester {
  "SystolicArray4x4" should "correctly compute 4x4 matrix multiplication" in {
    test(new SystolicArray4x4) { dut =>
      // 输入矩阵 A 和 B
      val matrixA = Seq(
        Seq(1.S, 1.S, 1.S, 1.S),
        Seq(2.S, 2.S, 2.S, 2.S),
        Seq(3.S, 3.S, 3.S, 3.S),
        Seq(4.S, 4.S, 4.S, 4.S)
      )
      val matrixB = Seq(
        Seq(1.S, 5.S, 9.S, 13.S),
        Seq(2.S, 6.S, 10.S, 14.S),
        Seq(3.S, 7.S, 11.S, 15.S),
        Seq(4.S, 8.S, 12.S, 16.S)
      )
      // 预期输出矩阵 C
      // C = A * B
      // C(0,0) = 1*5 + 2*7 = 19
      // C(0,1) = 1*6 + 2*8 = 22
      // C(1,0) = 3*5 + 4*7 = 43
      // C(1,1) = 3*6 + 4*8 = 50
      val expectedC = Seq(
        Seq(10.S, 26.S, 42.S, 58.S),
        Seq(20.S, 52.S, 84.S, 116.S),
        Seq(30.S, 78.S, 126.S, 174.S),
        Seq(40.S, 104.S, 168.S, 232.S)
      )

      // 将矩阵 A 和 B 的值输入到模块中
      for (i <- 0 until 4) {
        for (j <- 0 until 4) {
          dut.io.A(i)(j).poke(matrixA(i)(j))
          dut.io.B(i)(j).poke(matrixB(i)(j))
        }
      }

      // 等待几个周期，以确保脉动阵列的计算完成
      dut.clock.step(11)

      // 检查输出矩阵 C 是否符合预期
      for (i <- 0 until 4) {
        for (j <- 0 until 4) {
          dut.io.C(i)(j).expect(expectedC(i)(j))
        }
      }
    }
  }
}
