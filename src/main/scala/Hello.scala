package tpu

import chisel3._
import chisel3.util._
import chisel3.stage.{ChiselStage, ChiselGeneratorAnnotation}

// 定义4*4脉动矩阵的乘加单元（PE）
class PE extends Module {
  val io = IO(new Bundle {
    val a_in = Input(SInt(32.W))     // 当前矩阵A的元素
    val b_in = Input(SInt(32.W))     // 当前矩阵B的元素
    val a_out = Output(SInt(32.W))    // 输出右侧PE的矩阵A元素
    val b_out = Output(SInt(32.W))    // 输出右侧PE的矩阵B元素
    val psum = Input(SInt(32.W))   // 部分和（psum）
    val out = Output(SInt(32.W))    // 输出矩阵乘积
  })

  // 延时寄存器：引入一个周期的延迟
  val a_reg = RegNext(io.a_in)         // 矩阵A元素延时
  val b_reg = RegNext(io.b_in)         // 矩阵B元素延时
  val psum_reg = RegNext(io.psum)   // 部分和（psum）延时

  // 计算乘法并累加部分和
  val product = io.a_in * io.b_in
  io.out := psum_reg + product   // 当前部分和加上乘积

  // 输出当前PE的矩阵A、B元素，用于下一个PE
  io.a_out := a_reg
  io.b_out := b_reg
}

// 定义2x2脉动矩阵
class SystolicArray4x4 extends Module {
  val io = IO(new Bundle {
    val A = Input(Vec(4, Vec(4, SInt(32.W))))  // 输入矩阵A
    val B = Input(Vec(4, Vec(4, SInt(32.W))))  // 输入矩阵B
    val C = Output(Vec(4, Vec(4, SInt(32.W)))) // 输出矩阵C
  })

  // 定义4*4的PE阵列
  val pes = Array.fill(4, 4) { Module(new PE()) }
  // 初始化PE单元的AB值
  pes(0)(0).io.a_in := 0.S
  pes(1)(0).io.a_in := 0.S
  pes(2)(0).io.a_in := 0.S
  pes(3)(0).io.a_in := 0.S
  pes(0)(0).io.b_in := 0.S
  pes(0)(1).io.b_in := 0.S
  pes(0)(2).io.b_in := 0.S
  pes(0)(3).io.b_in := 0.S

  // 定义一个周期计数器来控制输入更新
  val cycleCounter = RegInit(0.U(6.W))

  // 根据周期计数器控制A矩阵的输入
  when(cycleCounter === 0.U) {
    pes(0)(0).io.a_in := io.A(0)(0)
    pes(1)(0).io.a_in := 0.S
    pes(2)(0).io.a_in := 0.S
    pes(3)(0).io.a_in := 0.S
    pes(0)(0).io.b_in := io.B(0)(0)
    pes(0)(1).io.b_in := 0.S
    pes(0)(2).io.b_in := 0.S
    pes(0)(3).io.b_in := 0.S
  }.elsewhen(cycleCounter === 1.U) {
    pes(0)(0).io.a_in := io.A(0)(1)
    pes(1)(0).io.a_in := io.A(1)(0)
    pes(2)(0).io.a_in := 0.S
    pes(3)(0).io.a_in := 0.S
    pes(0)(0).io.b_in := io.B(1)(0)
    pes(0)(1).io.b_in := io.B(0)(1)
    pes(0)(2).io.b_in := 0.S
    pes(0)(3).io.b_in := 0.S
  }.elsewhen(cycleCounter === 2.U) {
    pes(0)(0).io.a_in := io.A(0)(2)
    pes(1)(0).io.a_in := io.A(1)(1)
    pes(2)(0).io.a_in := io.A(2)(0)
    pes(3)(0).io.a_in := 0.S
    pes(0)(0).io.b_in := io.B(2)(0)
    pes(0)(1).io.b_in := io.B(1)(1)
    pes(0)(2).io.b_in := io.B(0)(2)
    pes(0)(3).io.b_in := 0.S
  }.elsewhen(cycleCounter === 3.U) {
    pes(0)(0).io.a_in := io.A(0)(3)
    pes(1)(0).io.a_in := io.A(1)(2)
    pes(2)(0).io.a_in := io.A(2)(1)
    pes(3)(0).io.a_in := io.A(3)(0)
    pes(0)(0).io.b_in := io.B(3)(0)
    pes(0)(1).io.b_in := io.B(2)(1)
    pes(0)(2).io.b_in := io.B(1)(2)
    pes(0)(3).io.b_in := io.B(0)(3)
  }.elsewhen(cycleCounter === 4.U) {
    pes(0)(0).io.a_in := 0.S
    pes(1)(0).io.a_in := io.A(1)(3)
    pes(2)(0).io.a_in := io.A(2)(2)
    pes(3)(0).io.a_in := io.A(3)(1)
    pes(0)(0).io.b_in := 0.S
    pes(0)(1).io.b_in := io.B(3)(1)
    pes(0)(2).io.b_in := io.B(2)(2)
    pes(0)(3).io.b_in := io.B(1)(3)
  }.elsewhen(cycleCounter === 5.U) {
    pes(0)(0).io.a_in := 0.S
    pes(1)(0).io.a_in := 0.S
    pes(2)(0).io.a_in := io.A(2)(3)
    pes(3)(0).io.a_in := io.A(3)(2)
    pes(0)(0).io.b_in := 0.S
    pes(0)(1).io.b_in := 0.S
    pes(0)(2).io.b_in := io.B(3)(2)
    pes(0)(3).io.b_in := io.B(2)(3)
  }.elsewhen(cycleCounter === 6.U) {
    pes(0)(0).io.a_in := 0.S
    pes(1)(0).io.a_in := 0.S
    pes(2)(0).io.a_in := 0.S
    pes(3)(0).io.a_in := io.A(3)(3)
    pes(0)(0).io.b_in := 0.S
    pes(0)(1).io.b_in := 0.S
    pes(0)(2).io.b_in := 0.S
    pes(0)(3).io.b_in := io.B(3)(3)
  }
  for (i <- 1 until 4) {
    pes(0)(i).io.a_in := pes(0)(i-1).io.a_out
    pes(i)(0).io.b_in := pes(i-1)(0).io.b_out
  }

  // 部分和的传递和延迟
  for (i <- 1 until 4) {
    for (j <- 1 until 4) {
        pes(i)(j).io.a_in := pes(i)(j-1).io.a_out
        pes(i)(j).io.b_in := pes(i-1)(j).io.b_out
    }
  }
  for (i <- 0 until 4) {
    for (j <- 0 until 4) {
        pes(i)(j).io.psum := pes(i)(j).io.out
    }
  }
  /*printf("00a = %d\n", pes(0)(0).io.a_in)
  printf("01a = %d\n", pes(0)(1).io.a_in)
  printf("10a = %d\n", pes(1)(0).io.a_in)
  printf("11a = %d\n", pes(1)(1).io.a_in)
  printf("psum = %d\n", pes(0)(0).io.psum_out)
  printf("psum = %d\n", pes(0)(1).io.psum_out)
  printf("psum = %d\n", pes(1)(0).io.psum_in)
  printf("psum = %d\n", pes(1)(0).io.psum_out)
  printf("psum = %d\n", pes(1)(1).io.psum_in)
  printf("psum = %d\n", pes(1)(1).io.psum_out)*/

// 使用寄存器保持 io.C 的值
val cReg = RegInit(VecInit(Seq(
  VecInit(Seq.fill(4)(0.S(32.W))),
  VecInit(Seq.fill(4)(0.S(32.W))),
  VecInit(Seq.fill(4)(0.S(32.W))),
  VecInit(Seq.fill(4)(0.S(32.W)))
)))

// 在周期4-10时更新 io.C，但之后保持不变
when(cycleCounter === 4.U) {
  cReg(0)(0) := pes(0)(0).io.out
}.elsewhen(cycleCounter === 5.U) {
  cReg(0)(1) := pes(0)(1).io.out
  cReg(1)(0) := pes(1)(0).io.out
}.elsewhen(cycleCounter === 6.U) {
  cReg(0)(2) := pes(0)(2).io.out
  cReg(1)(1) := pes(1)(1).io.out
  cReg(2)(0) := pes(2)(0).io.out
}.elsewhen(cycleCounter === 7.U) {
  cReg(0)(3) := pes(0)(3).io.out
  cReg(1)(2) := pes(1)(2).io.out
  cReg(2)(1) := pes(2)(1).io.out
  cReg(3)(0) := pes(3)(0).io.out
}.elsewhen(cycleCounter === 8.U) {
  cReg(1)(3) := pes(1)(3).io.out
  cReg(2)(2) := pes(2)(2).io.out
  cReg(3)(1) := pes(3)(1).io.out
}.elsewhen(cycleCounter === 9.U) {
  cReg(2)(3) := pes(2)(3).io.out
  cReg(3)(2) := pes(3)(2).io.out
}.elsewhen(cycleCounter === 10.U) {
  cReg(3)(3) := pes(3)(3).io.out
}
cycleCounter := cycleCounter + 1.U
// 将寄存器的值传递给输出
io.C := cReg
}

object PulseMatrixMain extends App {
  (new ChiselStage).execute(args, Seq(ChiselGeneratorAnnotation(() => new SystolicArray4x4)))
}
