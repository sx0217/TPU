module PE(
  input         clock,
  input  [31:0] io_a_in,
  input  [31:0] io_b_in,
  output [31:0] io_a_out,
  output [31:0] io_b_out,
  input  [31:0] io_psum,
  output [31:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] a_reg; // @[Hello.scala 19:22]
  reg [31:0] b_reg; // @[Hello.scala 20:22]
  reg [31:0] psum_reg; // @[Hello.scala 21:25]
  wire [63:0] product = $signed(io_a_in) * $signed(io_b_in); // @[Hello.scala 24:25]
  wire [63:0] _GEN_0 = {{32{psum_reg[31]}},psum_reg}; // @[Hello.scala 25:22]
  wire [63:0] _io_out_T_2 = $signed(_GEN_0) + $signed(product); // @[Hello.scala 25:22]
  assign io_a_out = a_reg; // @[Hello.scala 28:12]
  assign io_b_out = b_reg; // @[Hello.scala 29:12]
  assign io_out = _io_out_T_2[31:0]; // @[Hello.scala 25:10]
  always @(posedge clock) begin
    a_reg <= io_a_in; // @[Hello.scala 19:22]
    b_reg <= io_b_in; // @[Hello.scala 20:22]
    psum_reg <= io_psum; // @[Hello.scala 21:25]
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  a_reg = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  b_reg = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  psum_reg = _RAND_2[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module SystolicArray4x4(
  input         clock,
  input         reset,
  input  [31:0] io_A_0_0,
  input  [31:0] io_A_0_1,
  input  [31:0] io_A_0_2,
  input  [31:0] io_A_0_3,
  input  [31:0] io_A_1_0,
  input  [31:0] io_A_1_1,
  input  [31:0] io_A_1_2,
  input  [31:0] io_A_1_3,
  input  [31:0] io_A_2_0,
  input  [31:0] io_A_2_1,
  input  [31:0] io_A_2_2,
  input  [31:0] io_A_2_3,
  input  [31:0] io_A_3_0,
  input  [31:0] io_A_3_1,
  input  [31:0] io_A_3_2,
  input  [31:0] io_A_3_3,
  input  [31:0] io_B_0_0,
  input  [31:0] io_B_0_1,
  input  [31:0] io_B_0_2,
  input  [31:0] io_B_0_3,
  input  [31:0] io_B_1_0,
  input  [31:0] io_B_1_1,
  input  [31:0] io_B_1_2,
  input  [31:0] io_B_1_3,
  input  [31:0] io_B_2_0,
  input  [31:0] io_B_2_1,
  input  [31:0] io_B_2_2,
  input  [31:0] io_B_2_3,
  input  [31:0] io_B_3_0,
  input  [31:0] io_B_3_1,
  input  [31:0] io_B_3_2,
  input  [31:0] io_B_3_3,
  output [31:0] io_C_0_0,
  output [31:0] io_C_0_1,
  output [31:0] io_C_0_2,
  output [31:0] io_C_0_3,
  output [31:0] io_C_1_0,
  output [31:0] io_C_1_1,
  output [31:0] io_C_1_2,
  output [31:0] io_C_1_3,
  output [31:0] io_C_2_0,
  output [31:0] io_C_2_1,
  output [31:0] io_C_2_2,
  output [31:0] io_C_2_3,
  output [31:0] io_C_3_0,
  output [31:0] io_C_3_1,
  output [31:0] io_C_3_2,
  output [31:0] io_C_3_3
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
`endif // RANDOMIZE_REG_INIT
  wire  PE_clock; // @[Hello.scala 41:38]
  wire [31:0] PE_io_a_in; // @[Hello.scala 41:38]
  wire [31:0] PE_io_b_in; // @[Hello.scala 41:38]
  wire [31:0] PE_io_a_out; // @[Hello.scala 41:38]
  wire [31:0] PE_io_b_out; // @[Hello.scala 41:38]
  wire [31:0] PE_io_psum; // @[Hello.scala 41:38]
  wire [31:0] PE_io_out; // @[Hello.scala 41:38]
  wire  PE_1_clock; // @[Hello.scala 41:38]
  wire [31:0] PE_1_io_a_in; // @[Hello.scala 41:38]
  wire [31:0] PE_1_io_b_in; // @[Hello.scala 41:38]
  wire [31:0] PE_1_io_a_out; // @[Hello.scala 41:38]
  wire [31:0] PE_1_io_b_out; // @[Hello.scala 41:38]
  wire [31:0] PE_1_io_psum; // @[Hello.scala 41:38]
  wire [31:0] PE_1_io_out; // @[Hello.scala 41:38]
  wire  PE_2_clock; // @[Hello.scala 41:38]
  wire [31:0] PE_2_io_a_in; // @[Hello.scala 41:38]
  wire [31:0] PE_2_io_b_in; // @[Hello.scala 41:38]
  wire [31:0] PE_2_io_a_out; // @[Hello.scala 41:38]
  wire [31:0] PE_2_io_b_out; // @[Hello.scala 41:38]
  wire [31:0] PE_2_io_psum; // @[Hello.scala 41:38]
  wire [31:0] PE_2_io_out; // @[Hello.scala 41:38]
  wire  PE_3_clock; // @[Hello.scala 41:38]
  wire [31:0] PE_3_io_a_in; // @[Hello.scala 41:38]
  wire [31:0] PE_3_io_b_in; // @[Hello.scala 41:38]
  wire [31:0] PE_3_io_a_out; // @[Hello.scala 41:38]
  wire [31:0] PE_3_io_b_out; // @[Hello.scala 41:38]
  wire [31:0] PE_3_io_psum; // @[Hello.scala 41:38]
  wire [31:0] PE_3_io_out; // @[Hello.scala 41:38]
  wire  PE_4_clock; // @[Hello.scala 41:38]
  wire [31:0] PE_4_io_a_in; // @[Hello.scala 41:38]
  wire [31:0] PE_4_io_b_in; // @[Hello.scala 41:38]
  wire [31:0] PE_4_io_a_out; // @[Hello.scala 41:38]
  wire [31:0] PE_4_io_b_out; // @[Hello.scala 41:38]
  wire [31:0] PE_4_io_psum; // @[Hello.scala 41:38]
  wire [31:0] PE_4_io_out; // @[Hello.scala 41:38]
  wire  PE_5_clock; // @[Hello.scala 41:38]
  wire [31:0] PE_5_io_a_in; // @[Hello.scala 41:38]
  wire [31:0] PE_5_io_b_in; // @[Hello.scala 41:38]
  wire [31:0] PE_5_io_a_out; // @[Hello.scala 41:38]
  wire [31:0] PE_5_io_b_out; // @[Hello.scala 41:38]
  wire [31:0] PE_5_io_psum; // @[Hello.scala 41:38]
  wire [31:0] PE_5_io_out; // @[Hello.scala 41:38]
  wire  PE_6_clock; // @[Hello.scala 41:38]
  wire [31:0] PE_6_io_a_in; // @[Hello.scala 41:38]
  wire [31:0] PE_6_io_b_in; // @[Hello.scala 41:38]
  wire [31:0] PE_6_io_a_out; // @[Hello.scala 41:38]
  wire [31:0] PE_6_io_b_out; // @[Hello.scala 41:38]
  wire [31:0] PE_6_io_psum; // @[Hello.scala 41:38]
  wire [31:0] PE_6_io_out; // @[Hello.scala 41:38]
  wire  PE_7_clock; // @[Hello.scala 41:38]
  wire [31:0] PE_7_io_a_in; // @[Hello.scala 41:38]
  wire [31:0] PE_7_io_b_in; // @[Hello.scala 41:38]
  wire [31:0] PE_7_io_a_out; // @[Hello.scala 41:38]
  wire [31:0] PE_7_io_b_out; // @[Hello.scala 41:38]
  wire [31:0] PE_7_io_psum; // @[Hello.scala 41:38]
  wire [31:0] PE_7_io_out; // @[Hello.scala 41:38]
  wire  PE_8_clock; // @[Hello.scala 41:38]
  wire [31:0] PE_8_io_a_in; // @[Hello.scala 41:38]
  wire [31:0] PE_8_io_b_in; // @[Hello.scala 41:38]
  wire [31:0] PE_8_io_a_out; // @[Hello.scala 41:38]
  wire [31:0] PE_8_io_b_out; // @[Hello.scala 41:38]
  wire [31:0] PE_8_io_psum; // @[Hello.scala 41:38]
  wire [31:0] PE_8_io_out; // @[Hello.scala 41:38]
  wire  PE_9_clock; // @[Hello.scala 41:38]
  wire [31:0] PE_9_io_a_in; // @[Hello.scala 41:38]
  wire [31:0] PE_9_io_b_in; // @[Hello.scala 41:38]
  wire [31:0] PE_9_io_a_out; // @[Hello.scala 41:38]
  wire [31:0] PE_9_io_b_out; // @[Hello.scala 41:38]
  wire [31:0] PE_9_io_psum; // @[Hello.scala 41:38]
  wire [31:0] PE_9_io_out; // @[Hello.scala 41:38]
  wire  PE_10_clock; // @[Hello.scala 41:38]
  wire [31:0] PE_10_io_a_in; // @[Hello.scala 41:38]
  wire [31:0] PE_10_io_b_in; // @[Hello.scala 41:38]
  wire [31:0] PE_10_io_a_out; // @[Hello.scala 41:38]
  wire [31:0] PE_10_io_b_out; // @[Hello.scala 41:38]
  wire [31:0] PE_10_io_psum; // @[Hello.scala 41:38]
  wire [31:0] PE_10_io_out; // @[Hello.scala 41:38]
  wire  PE_11_clock; // @[Hello.scala 41:38]
  wire [31:0] PE_11_io_a_in; // @[Hello.scala 41:38]
  wire [31:0] PE_11_io_b_in; // @[Hello.scala 41:38]
  wire [31:0] PE_11_io_a_out; // @[Hello.scala 41:38]
  wire [31:0] PE_11_io_b_out; // @[Hello.scala 41:38]
  wire [31:0] PE_11_io_psum; // @[Hello.scala 41:38]
  wire [31:0] PE_11_io_out; // @[Hello.scala 41:38]
  wire  PE_12_clock; // @[Hello.scala 41:38]
  wire [31:0] PE_12_io_a_in; // @[Hello.scala 41:38]
  wire [31:0] PE_12_io_b_in; // @[Hello.scala 41:38]
  wire [31:0] PE_12_io_a_out; // @[Hello.scala 41:38]
  wire [31:0] PE_12_io_b_out; // @[Hello.scala 41:38]
  wire [31:0] PE_12_io_psum; // @[Hello.scala 41:38]
  wire [31:0] PE_12_io_out; // @[Hello.scala 41:38]
  wire  PE_13_clock; // @[Hello.scala 41:38]
  wire [31:0] PE_13_io_a_in; // @[Hello.scala 41:38]
  wire [31:0] PE_13_io_b_in; // @[Hello.scala 41:38]
  wire [31:0] PE_13_io_a_out; // @[Hello.scala 41:38]
  wire [31:0] PE_13_io_b_out; // @[Hello.scala 41:38]
  wire [31:0] PE_13_io_psum; // @[Hello.scala 41:38]
  wire [31:0] PE_13_io_out; // @[Hello.scala 41:38]
  wire  PE_14_clock; // @[Hello.scala 41:38]
  wire [31:0] PE_14_io_a_in; // @[Hello.scala 41:38]
  wire [31:0] PE_14_io_b_in; // @[Hello.scala 41:38]
  wire [31:0] PE_14_io_a_out; // @[Hello.scala 41:38]
  wire [31:0] PE_14_io_b_out; // @[Hello.scala 41:38]
  wire [31:0] PE_14_io_psum; // @[Hello.scala 41:38]
  wire [31:0] PE_14_io_out; // @[Hello.scala 41:38]
  wire  PE_15_clock; // @[Hello.scala 41:38]
  wire [31:0] PE_15_io_a_in; // @[Hello.scala 41:38]
  wire [31:0] PE_15_io_b_in; // @[Hello.scala 41:38]
  wire [31:0] PE_15_io_a_out; // @[Hello.scala 41:38]
  wire [31:0] PE_15_io_b_out; // @[Hello.scala 41:38]
  wire [31:0] PE_15_io_psum; // @[Hello.scala 41:38]
  wire [31:0] PE_15_io_out; // @[Hello.scala 41:38]
  reg [5:0] cycleCounter; // @[Hello.scala 58:29]
  wire  _T_4 = cycleCounter == 6'h4; // @[Hello.scala 97:27]
  wire  _T_5 = cycleCounter == 6'h5; // @[Hello.scala 106:27]
  wire  _T_6 = cycleCounter == 6'h6; // @[Hello.scala 115:27]
  wire [31:0] _GEN_1 = cycleCounter == 6'h6 ? $signed(io_A_3_3) : $signed(32'sh0); // @[Hello.scala 115:36 119:23 46:21]
  wire [31:0] _GEN_2 = cycleCounter == 6'h6 ? $signed(io_B_3_3) : $signed(32'sh0); // @[Hello.scala 115:36 123:23 50:21]
  wire [31:0] _GEN_4 = cycleCounter == 6'h5 ? $signed(io_A_2_3) : $signed(32'sh0); // @[Hello.scala 106:36 109:23]
  wire [31:0] _GEN_5 = cycleCounter == 6'h5 ? $signed(io_A_3_2) : $signed(_GEN_1); // @[Hello.scala 106:36 110:23]
  wire [31:0] _GEN_6 = cycleCounter == 6'h5 ? $signed(io_B_3_2) : $signed(32'sh0); // @[Hello.scala 106:36 113:23]
  wire [31:0] _GEN_7 = cycleCounter == 6'h5 ? $signed(io_B_2_3) : $signed(_GEN_2); // @[Hello.scala 106:36 114:23]
  wire [31:0] _GEN_9 = cycleCounter == 6'h4 ? $signed(io_A_1_3) : $signed(32'sh0); // @[Hello.scala 97:36 99:23]
  wire [31:0] _GEN_10 = cycleCounter == 6'h4 ? $signed(io_A_2_2) : $signed(_GEN_4); // @[Hello.scala 100:23 97:36]
  wire [31:0] _GEN_11 = cycleCounter == 6'h4 ? $signed(io_A_3_1) : $signed(_GEN_5); // @[Hello.scala 101:23 97:36]
  wire [31:0] _GEN_12 = cycleCounter == 6'h4 ? $signed(io_B_3_1) : $signed(32'sh0); // @[Hello.scala 103:23 97:36]
  wire [31:0] _GEN_13 = cycleCounter == 6'h4 ? $signed(io_B_2_2) : $signed(_GEN_6); // @[Hello.scala 104:23 97:36]
  wire [31:0] _GEN_14 = cycleCounter == 6'h4 ? $signed(io_B_1_3) : $signed(_GEN_7); // @[Hello.scala 105:23 97:36]
  wire [31:0] _GEN_15 = cycleCounter == 6'h3 ? $signed(io_A_0_3) : $signed(32'sh0); // @[Hello.scala 88:36 89:23]
  wire [31:0] _GEN_16 = cycleCounter == 6'h3 ? $signed(io_A_1_2) : $signed(_GEN_9); // @[Hello.scala 88:36 90:23]
  wire [31:0] _GEN_17 = cycleCounter == 6'h3 ? $signed(io_A_2_1) : $signed(_GEN_10); // @[Hello.scala 88:36 91:23]
  wire [31:0] _GEN_18 = cycleCounter == 6'h3 ? $signed(io_A_3_0) : $signed(_GEN_11); // @[Hello.scala 88:36 92:23]
  wire [31:0] _GEN_19 = cycleCounter == 6'h3 ? $signed(io_B_3_0) : $signed(32'sh0); // @[Hello.scala 88:36 93:23]
  wire [31:0] _GEN_20 = cycleCounter == 6'h3 ? $signed(io_B_2_1) : $signed(_GEN_12); // @[Hello.scala 88:36 94:23]
  wire [31:0] _GEN_21 = cycleCounter == 6'h3 ? $signed(io_B_1_2) : $signed(_GEN_13); // @[Hello.scala 88:36 95:23]
  wire [31:0] _GEN_22 = cycleCounter == 6'h3 ? $signed(io_B_0_3) : $signed(_GEN_14); // @[Hello.scala 88:36 96:23]
  wire [31:0] _GEN_23 = cycleCounter == 6'h2 ? $signed(io_A_0_2) : $signed(_GEN_15); // @[Hello.scala 79:36 80:23]
  wire [31:0] _GEN_24 = cycleCounter == 6'h2 ? $signed(io_A_1_1) : $signed(_GEN_16); // @[Hello.scala 79:36 81:23]
  wire [31:0] _GEN_25 = cycleCounter == 6'h2 ? $signed(io_A_2_0) : $signed(_GEN_17); // @[Hello.scala 79:36 82:23]
  wire [31:0] _GEN_26 = cycleCounter == 6'h2 ? $signed(32'sh0) : $signed(_GEN_18); // @[Hello.scala 79:36 83:23]
  wire [31:0] _GEN_27 = cycleCounter == 6'h2 ? $signed(io_B_2_0) : $signed(_GEN_19); // @[Hello.scala 79:36 84:23]
  wire [31:0] _GEN_28 = cycleCounter == 6'h2 ? $signed(io_B_1_1) : $signed(_GEN_20); // @[Hello.scala 79:36 85:23]
  wire [31:0] _GEN_29 = cycleCounter == 6'h2 ? $signed(io_B_0_2) : $signed(_GEN_21); // @[Hello.scala 79:36 86:23]
  wire [31:0] _GEN_30 = cycleCounter == 6'h2 ? $signed(32'sh0) : $signed(_GEN_22); // @[Hello.scala 79:36 87:23]
  wire [31:0] _GEN_31 = cycleCounter == 6'h1 ? $signed(io_A_0_1) : $signed(_GEN_23); // @[Hello.scala 70:36 71:23]
  wire [31:0] _GEN_32 = cycleCounter == 6'h1 ? $signed(io_A_1_0) : $signed(_GEN_24); // @[Hello.scala 70:36 72:23]
  wire [31:0] _GEN_33 = cycleCounter == 6'h1 ? $signed(32'sh0) : $signed(_GEN_25); // @[Hello.scala 70:36 73:23]
  wire [31:0] _GEN_34 = cycleCounter == 6'h1 ? $signed(32'sh0) : $signed(_GEN_26); // @[Hello.scala 70:36 74:23]
  wire [31:0] _GEN_35 = cycleCounter == 6'h1 ? $signed(io_B_1_0) : $signed(_GEN_27); // @[Hello.scala 70:36 75:23]
  wire [31:0] _GEN_36 = cycleCounter == 6'h1 ? $signed(io_B_0_1) : $signed(_GEN_28); // @[Hello.scala 70:36 76:23]
  wire [31:0] _GEN_37 = cycleCounter == 6'h1 ? $signed(32'sh0) : $signed(_GEN_29); // @[Hello.scala 70:36 77:23]
  wire [31:0] _GEN_38 = cycleCounter == 6'h1 ? $signed(32'sh0) : $signed(_GEN_30); // @[Hello.scala 70:36 78:23]
  reg [31:0] cReg_0_0; // @[Hello.scala 149:19]
  reg [31:0] cReg_0_1; // @[Hello.scala 149:19]
  reg [31:0] cReg_0_2; // @[Hello.scala 149:19]
  reg [31:0] cReg_0_3; // @[Hello.scala 149:19]
  reg [31:0] cReg_1_0; // @[Hello.scala 149:19]
  reg [31:0] cReg_1_1; // @[Hello.scala 149:19]
  reg [31:0] cReg_1_2; // @[Hello.scala 149:19]
  reg [31:0] cReg_1_3; // @[Hello.scala 149:19]
  reg [31:0] cReg_2_0; // @[Hello.scala 149:19]
  reg [31:0] cReg_2_1; // @[Hello.scala 149:19]
  reg [31:0] cReg_2_2; // @[Hello.scala 149:19]
  reg [31:0] cReg_2_3; // @[Hello.scala 149:19]
  reg [31:0] cReg_3_0; // @[Hello.scala 149:19]
  reg [31:0] cReg_3_1; // @[Hello.scala 149:19]
  reg [31:0] cReg_3_2; // @[Hello.scala 149:19]
  reg [31:0] cReg_3_3; // @[Hello.scala 149:19]
  wire [31:0] _GEN_47 = cycleCounter == 6'ha ? $signed(PE_15_io_out) : $signed(cReg_3_3); // @[Hello.scala 178:35 179:14 149:19]
  wire [31:0] _GEN_48 = cycleCounter == 6'h9 ? $signed(PE_11_io_out) : $signed(cReg_2_3); // @[Hello.scala 175:34 176:14 149:19]
  wire [31:0] _GEN_49 = cycleCounter == 6'h9 ? $signed(PE_14_io_out) : $signed(cReg_3_2); // @[Hello.scala 175:34 177:14 149:19]
  wire [31:0] _GEN_50 = cycleCounter == 6'h9 ? $signed(cReg_3_3) : $signed(_GEN_47); // @[Hello.scala 149:19 175:34]
  wire [31:0] _GEN_51 = cycleCounter == 6'h8 ? $signed(PE_7_io_out) : $signed(cReg_1_3); // @[Hello.scala 171:34 172:14 149:19]
  wire [31:0] _GEN_52 = cycleCounter == 6'h8 ? $signed(PE_10_io_out) : $signed(cReg_2_2); // @[Hello.scala 171:34 173:14 149:19]
  wire [31:0] _GEN_53 = cycleCounter == 6'h8 ? $signed(PE_13_io_out) : $signed(cReg_3_1); // @[Hello.scala 171:34 174:14 149:19]
  wire [31:0] _GEN_54 = cycleCounter == 6'h8 ? $signed(cReg_2_3) : $signed(_GEN_48); // @[Hello.scala 149:19 171:34]
  wire [31:0] _GEN_55 = cycleCounter == 6'h8 ? $signed(cReg_3_2) : $signed(_GEN_49); // @[Hello.scala 149:19 171:34]
  wire [31:0] _GEN_56 = cycleCounter == 6'h8 ? $signed(cReg_3_3) : $signed(_GEN_50); // @[Hello.scala 149:19 171:34]
  wire [31:0] _GEN_57 = cycleCounter == 6'h7 ? $signed(PE_3_io_out) : $signed(cReg_0_3); // @[Hello.scala 166:34 167:14 149:19]
  wire [31:0] _GEN_58 = cycleCounter == 6'h7 ? $signed(PE_6_io_out) : $signed(cReg_1_2); // @[Hello.scala 166:34 168:14 149:19]
  wire [31:0] _GEN_59 = cycleCounter == 6'h7 ? $signed(PE_9_io_out) : $signed(cReg_2_1); // @[Hello.scala 166:34 169:14 149:19]
  wire [31:0] _GEN_60 = cycleCounter == 6'h7 ? $signed(PE_12_io_out) : $signed(cReg_3_0); // @[Hello.scala 166:34 170:14 149:19]
  wire [31:0] _GEN_61 = cycleCounter == 6'h7 ? $signed(cReg_1_3) : $signed(_GEN_51); // @[Hello.scala 149:19 166:34]
  wire [31:0] _GEN_62 = cycleCounter == 6'h7 ? $signed(cReg_2_2) : $signed(_GEN_52); // @[Hello.scala 149:19 166:34]
  wire [31:0] _GEN_63 = cycleCounter == 6'h7 ? $signed(cReg_3_1) : $signed(_GEN_53); // @[Hello.scala 149:19 166:34]
  wire [31:0] _GEN_64 = cycleCounter == 6'h7 ? $signed(cReg_2_3) : $signed(_GEN_54); // @[Hello.scala 149:19 166:34]
  wire [31:0] _GEN_65 = cycleCounter == 6'h7 ? $signed(cReg_3_2) : $signed(_GEN_55); // @[Hello.scala 149:19 166:34]
  wire [31:0] _GEN_66 = cycleCounter == 6'h7 ? $signed(cReg_3_3) : $signed(_GEN_56); // @[Hello.scala 149:19 166:34]
  wire [5:0] _cycleCounter_T_1 = cycleCounter + 6'h1; // @[Hello.scala 181:30]
  PE PE ( // @[Hello.scala 41:38]
    .clock(PE_clock),
    .io_a_in(PE_io_a_in),
    .io_b_in(PE_io_b_in),
    .io_a_out(PE_io_a_out),
    .io_b_out(PE_io_b_out),
    .io_psum(PE_io_psum),
    .io_out(PE_io_out)
  );
  PE PE_1 ( // @[Hello.scala 41:38]
    .clock(PE_1_clock),
    .io_a_in(PE_1_io_a_in),
    .io_b_in(PE_1_io_b_in),
    .io_a_out(PE_1_io_a_out),
    .io_b_out(PE_1_io_b_out),
    .io_psum(PE_1_io_psum),
    .io_out(PE_1_io_out)
  );
  PE PE_2 ( // @[Hello.scala 41:38]
    .clock(PE_2_clock),
    .io_a_in(PE_2_io_a_in),
    .io_b_in(PE_2_io_b_in),
    .io_a_out(PE_2_io_a_out),
    .io_b_out(PE_2_io_b_out),
    .io_psum(PE_2_io_psum),
    .io_out(PE_2_io_out)
  );
  PE PE_3 ( // @[Hello.scala 41:38]
    .clock(PE_3_clock),
    .io_a_in(PE_3_io_a_in),
    .io_b_in(PE_3_io_b_in),
    .io_a_out(PE_3_io_a_out),
    .io_b_out(PE_3_io_b_out),
    .io_psum(PE_3_io_psum),
    .io_out(PE_3_io_out)
  );
  PE PE_4 ( // @[Hello.scala 41:38]
    .clock(PE_4_clock),
    .io_a_in(PE_4_io_a_in),
    .io_b_in(PE_4_io_b_in),
    .io_a_out(PE_4_io_a_out),
    .io_b_out(PE_4_io_b_out),
    .io_psum(PE_4_io_psum),
    .io_out(PE_4_io_out)
  );
  PE PE_5 ( // @[Hello.scala 41:38]
    .clock(PE_5_clock),
    .io_a_in(PE_5_io_a_in),
    .io_b_in(PE_5_io_b_in),
    .io_a_out(PE_5_io_a_out),
    .io_b_out(PE_5_io_b_out),
    .io_psum(PE_5_io_psum),
    .io_out(PE_5_io_out)
  );
  PE PE_6 ( // @[Hello.scala 41:38]
    .clock(PE_6_clock),
    .io_a_in(PE_6_io_a_in),
    .io_b_in(PE_6_io_b_in),
    .io_a_out(PE_6_io_a_out),
    .io_b_out(PE_6_io_b_out),
    .io_psum(PE_6_io_psum),
    .io_out(PE_6_io_out)
  );
  PE PE_7 ( // @[Hello.scala 41:38]
    .clock(PE_7_clock),
    .io_a_in(PE_7_io_a_in),
    .io_b_in(PE_7_io_b_in),
    .io_a_out(PE_7_io_a_out),
    .io_b_out(PE_7_io_b_out),
    .io_psum(PE_7_io_psum),
    .io_out(PE_7_io_out)
  );
  PE PE_8 ( // @[Hello.scala 41:38]
    .clock(PE_8_clock),
    .io_a_in(PE_8_io_a_in),
    .io_b_in(PE_8_io_b_in),
    .io_a_out(PE_8_io_a_out),
    .io_b_out(PE_8_io_b_out),
    .io_psum(PE_8_io_psum),
    .io_out(PE_8_io_out)
  );
  PE PE_9 ( // @[Hello.scala 41:38]
    .clock(PE_9_clock),
    .io_a_in(PE_9_io_a_in),
    .io_b_in(PE_9_io_b_in),
    .io_a_out(PE_9_io_a_out),
    .io_b_out(PE_9_io_b_out),
    .io_psum(PE_9_io_psum),
    .io_out(PE_9_io_out)
  );
  PE PE_10 ( // @[Hello.scala 41:38]
    .clock(PE_10_clock),
    .io_a_in(PE_10_io_a_in),
    .io_b_in(PE_10_io_b_in),
    .io_a_out(PE_10_io_a_out),
    .io_b_out(PE_10_io_b_out),
    .io_psum(PE_10_io_psum),
    .io_out(PE_10_io_out)
  );
  PE PE_11 ( // @[Hello.scala 41:38]
    .clock(PE_11_clock),
    .io_a_in(PE_11_io_a_in),
    .io_b_in(PE_11_io_b_in),
    .io_a_out(PE_11_io_a_out),
    .io_b_out(PE_11_io_b_out),
    .io_psum(PE_11_io_psum),
    .io_out(PE_11_io_out)
  );
  PE PE_12 ( // @[Hello.scala 41:38]
    .clock(PE_12_clock),
    .io_a_in(PE_12_io_a_in),
    .io_b_in(PE_12_io_b_in),
    .io_a_out(PE_12_io_a_out),
    .io_b_out(PE_12_io_b_out),
    .io_psum(PE_12_io_psum),
    .io_out(PE_12_io_out)
  );
  PE PE_13 ( // @[Hello.scala 41:38]
    .clock(PE_13_clock),
    .io_a_in(PE_13_io_a_in),
    .io_b_in(PE_13_io_b_in),
    .io_a_out(PE_13_io_a_out),
    .io_b_out(PE_13_io_b_out),
    .io_psum(PE_13_io_psum),
    .io_out(PE_13_io_out)
  );
  PE PE_14 ( // @[Hello.scala 41:38]
    .clock(PE_14_clock),
    .io_a_in(PE_14_io_a_in),
    .io_b_in(PE_14_io_b_in),
    .io_a_out(PE_14_io_a_out),
    .io_b_out(PE_14_io_b_out),
    .io_psum(PE_14_io_psum),
    .io_out(PE_14_io_out)
  );
  PE PE_15 ( // @[Hello.scala 41:38]
    .clock(PE_15_clock),
    .io_a_in(PE_15_io_a_in),
    .io_b_in(PE_15_io_b_in),
    .io_a_out(PE_15_io_a_out),
    .io_b_out(PE_15_io_b_out),
    .io_psum(PE_15_io_psum),
    .io_out(PE_15_io_out)
  );
  assign io_C_0_0 = cReg_0_0; // @[Hello.scala 183:6]
  assign io_C_0_1 = cReg_0_1; // @[Hello.scala 183:6]
  assign io_C_0_2 = cReg_0_2; // @[Hello.scala 183:6]
  assign io_C_0_3 = cReg_0_3; // @[Hello.scala 183:6]
  assign io_C_1_0 = cReg_1_0; // @[Hello.scala 183:6]
  assign io_C_1_1 = cReg_1_1; // @[Hello.scala 183:6]
  assign io_C_1_2 = cReg_1_2; // @[Hello.scala 183:6]
  assign io_C_1_3 = cReg_1_3; // @[Hello.scala 183:6]
  assign io_C_2_0 = cReg_2_0; // @[Hello.scala 183:6]
  assign io_C_2_1 = cReg_2_1; // @[Hello.scala 183:6]
  assign io_C_2_2 = cReg_2_2; // @[Hello.scala 183:6]
  assign io_C_2_3 = cReg_2_3; // @[Hello.scala 183:6]
  assign io_C_3_0 = cReg_3_0; // @[Hello.scala 183:6]
  assign io_C_3_1 = cReg_3_1; // @[Hello.scala 183:6]
  assign io_C_3_2 = cReg_3_2; // @[Hello.scala 183:6]
  assign io_C_3_3 = cReg_3_3; // @[Hello.scala 183:6]
  assign PE_clock = clock;
  assign PE_io_a_in = cycleCounter == 6'h0 ? $signed(io_A_0_0) : $signed(_GEN_31); // @[Hello.scala 61:30 62:23]
  assign PE_io_b_in = cycleCounter == 6'h0 ? $signed(io_B_0_0) : $signed(_GEN_35); // @[Hello.scala 61:30 66:23]
  assign PE_io_psum = PE_io_out; // @[Hello.scala 53:27]
  assign PE_1_clock = clock;
  assign PE_1_io_a_in = PE_io_a_out; // @[Hello.scala 126:23]
  assign PE_1_io_b_in = cycleCounter == 6'h0 ? $signed(32'sh0) : $signed(_GEN_36); // @[Hello.scala 61:30 67:23]
  assign PE_1_io_psum = PE_1_io_out; // @[Hello.scala 53:27]
  assign PE_2_clock = clock;
  assign PE_2_io_a_in = PE_1_io_a_out; // @[Hello.scala 126:23]
  assign PE_2_io_b_in = cycleCounter == 6'h0 ? $signed(32'sh0) : $signed(_GEN_37); // @[Hello.scala 61:30 68:23]
  assign PE_2_io_psum = PE_2_io_out; // @[Hello.scala 53:27]
  assign PE_3_clock = clock;
  assign PE_3_io_a_in = PE_2_io_a_out; // @[Hello.scala 126:23]
  assign PE_3_io_b_in = cycleCounter == 6'h0 ? $signed(32'sh0) : $signed(_GEN_38); // @[Hello.scala 61:30 69:23]
  assign PE_3_io_psum = PE_3_io_out; // @[Hello.scala 53:27]
  assign PE_4_clock = clock;
  assign PE_4_io_a_in = cycleCounter == 6'h0 ? $signed(32'sh0) : $signed(_GEN_32); // @[Hello.scala 61:30 63:23]
  assign PE_4_io_b_in = PE_io_b_out; // @[Hello.scala 127:23]
  assign PE_4_io_psum = PE_4_io_out; // @[Hello.scala 53:27]
  assign PE_5_clock = clock;
  assign PE_5_io_a_in = PE_4_io_a_out; // @[Hello.scala 133:27]
  assign PE_5_io_b_in = PE_1_io_a_out; // @[Hello.scala 134:27]
  assign PE_5_io_psum = PE_5_io_out; // @[Hello.scala 53:27]
  assign PE_6_clock = clock;
  assign PE_6_io_a_in = PE_5_io_a_out; // @[Hello.scala 133:27]
  assign PE_6_io_b_in = PE_2_io_a_out; // @[Hello.scala 134:27]
  assign PE_6_io_psum = PE_6_io_out; // @[Hello.scala 53:27]
  assign PE_7_clock = clock;
  assign PE_7_io_a_in = PE_6_io_a_out; // @[Hello.scala 133:27]
  assign PE_7_io_b_in = PE_3_io_a_out; // @[Hello.scala 134:27]
  assign PE_7_io_psum = PE_7_io_out; // @[Hello.scala 53:27]
  assign PE_8_clock = clock;
  assign PE_8_io_a_in = cycleCounter == 6'h0 ? $signed(32'sh0) : $signed(_GEN_33); // @[Hello.scala 61:30 64:23]
  assign PE_8_io_b_in = PE_4_io_b_out; // @[Hello.scala 127:23]
  assign PE_8_io_psum = PE_8_io_out; // @[Hello.scala 53:27]
  assign PE_9_clock = clock;
  assign PE_9_io_a_in = PE_8_io_a_out; // @[Hello.scala 133:27]
  assign PE_9_io_b_in = PE_5_io_a_out; // @[Hello.scala 134:27]
  assign PE_9_io_psum = PE_9_io_out; // @[Hello.scala 53:27]
  assign PE_10_clock = clock;
  assign PE_10_io_a_in = PE_9_io_a_out; // @[Hello.scala 133:27]
  assign PE_10_io_b_in = PE_6_io_a_out; // @[Hello.scala 134:27]
  assign PE_10_io_psum = PE_10_io_out; // @[Hello.scala 53:27]
  assign PE_11_clock = clock;
  assign PE_11_io_a_in = PE_10_io_a_out; // @[Hello.scala 133:27]
  assign PE_11_io_b_in = PE_7_io_a_out; // @[Hello.scala 134:27]
  assign PE_11_io_psum = PE_11_io_out; // @[Hello.scala 53:27]
  assign PE_12_clock = clock;
  assign PE_12_io_a_in = cycleCounter == 6'h0 ? $signed(32'sh0) : $signed(_GEN_34); // @[Hello.scala 61:30 65:23]
  assign PE_12_io_b_in = PE_8_io_b_out; // @[Hello.scala 127:23]
  assign PE_12_io_psum = PE_12_io_out; // @[Hello.scala 53:27]
  assign PE_13_clock = clock;
  assign PE_13_io_a_in = PE_12_io_a_out; // @[Hello.scala 133:27]
  assign PE_13_io_b_in = PE_9_io_a_out; // @[Hello.scala 134:27]
  assign PE_13_io_psum = PE_13_io_out; // @[Hello.scala 53:27]
  assign PE_14_clock = clock;
  assign PE_14_io_a_in = PE_13_io_a_out; // @[Hello.scala 133:27]
  assign PE_14_io_b_in = PE_10_io_a_out; // @[Hello.scala 134:27]
  assign PE_14_io_psum = PE_14_io_out; // @[Hello.scala 53:27]
  assign PE_15_clock = clock;
  assign PE_15_io_a_in = PE_14_io_a_out; // @[Hello.scala 133:27]
  assign PE_15_io_b_in = PE_11_io_a_out; // @[Hello.scala 134:27]
  assign PE_15_io_psum = PE_15_io_out; // @[Hello.scala 53:27]
  always @(posedge clock) begin
    if (reset) begin // @[Hello.scala 58:29]
      cycleCounter <= 6'h0; // @[Hello.scala 58:29]
    end else begin
      cycleCounter <= _cycleCounter_T_1; // @[Hello.scala 181:14]
    end
    if (reset) begin // @[Hello.scala 149:19]
      cReg_0_0 <= 32'sh0; // @[Hello.scala 149:19]
    end else if (_T_4) begin // @[Hello.scala 157:28]
      cReg_0_0 <= PE_io_out; // @[Hello.scala 158:14]
    end
    if (reset) begin // @[Hello.scala 149:19]
      cReg_0_1 <= 32'sh0; // @[Hello.scala 149:19]
    end else if (!(_T_4)) begin // @[Hello.scala 157:28]
      if (_T_5) begin // @[Hello.scala 159:34]
        cReg_0_1 <= PE_1_io_out; // @[Hello.scala 160:14]
      end
    end
    if (reset) begin // @[Hello.scala 149:19]
      cReg_0_2 <= 32'sh0; // @[Hello.scala 149:19]
    end else if (!(_T_4)) begin // @[Hello.scala 157:28]
      if (!(_T_5)) begin // @[Hello.scala 159:34]
        if (_T_6) begin // @[Hello.scala 162:34]
          cReg_0_2 <= PE_2_io_out; // @[Hello.scala 163:14]
        end
      end
    end
    if (reset) begin // @[Hello.scala 149:19]
      cReg_0_3 <= 32'sh0; // @[Hello.scala 149:19]
    end else if (!(_T_4)) begin // @[Hello.scala 157:28]
      if (!(_T_5)) begin // @[Hello.scala 159:34]
        if (!(_T_6)) begin // @[Hello.scala 162:34]
          cReg_0_3 <= _GEN_57;
        end
      end
    end
    if (reset) begin // @[Hello.scala 149:19]
      cReg_1_0 <= 32'sh0; // @[Hello.scala 149:19]
    end else if (!(_T_4)) begin // @[Hello.scala 157:28]
      if (_T_5) begin // @[Hello.scala 159:34]
        cReg_1_0 <= PE_4_io_out; // @[Hello.scala 161:14]
      end
    end
    if (reset) begin // @[Hello.scala 149:19]
      cReg_1_1 <= 32'sh0; // @[Hello.scala 149:19]
    end else if (!(_T_4)) begin // @[Hello.scala 157:28]
      if (!(_T_5)) begin // @[Hello.scala 159:34]
        if (_T_6) begin // @[Hello.scala 162:34]
          cReg_1_1 <= PE_5_io_out; // @[Hello.scala 164:14]
        end
      end
    end
    if (reset) begin // @[Hello.scala 149:19]
      cReg_1_2 <= 32'sh0; // @[Hello.scala 149:19]
    end else if (!(_T_4)) begin // @[Hello.scala 157:28]
      if (!(_T_5)) begin // @[Hello.scala 159:34]
        if (!(_T_6)) begin // @[Hello.scala 162:34]
          cReg_1_2 <= _GEN_58;
        end
      end
    end
    if (reset) begin // @[Hello.scala 149:19]
      cReg_1_3 <= 32'sh0; // @[Hello.scala 149:19]
    end else if (!(_T_4)) begin // @[Hello.scala 157:28]
      if (!(_T_5)) begin // @[Hello.scala 159:34]
        if (!(_T_6)) begin // @[Hello.scala 162:34]
          cReg_1_3 <= _GEN_61;
        end
      end
    end
    if (reset) begin // @[Hello.scala 149:19]
      cReg_2_0 <= 32'sh0; // @[Hello.scala 149:19]
    end else if (!(_T_4)) begin // @[Hello.scala 157:28]
      if (!(_T_5)) begin // @[Hello.scala 159:34]
        if (_T_6) begin // @[Hello.scala 162:34]
          cReg_2_0 <= PE_8_io_out; // @[Hello.scala 165:14]
        end
      end
    end
    if (reset) begin // @[Hello.scala 149:19]
      cReg_2_1 <= 32'sh0; // @[Hello.scala 149:19]
    end else if (!(_T_4)) begin // @[Hello.scala 157:28]
      if (!(_T_5)) begin // @[Hello.scala 159:34]
        if (!(_T_6)) begin // @[Hello.scala 162:34]
          cReg_2_1 <= _GEN_59;
        end
      end
    end
    if (reset) begin // @[Hello.scala 149:19]
      cReg_2_2 <= 32'sh0; // @[Hello.scala 149:19]
    end else if (!(_T_4)) begin // @[Hello.scala 157:28]
      if (!(_T_5)) begin // @[Hello.scala 159:34]
        if (!(_T_6)) begin // @[Hello.scala 162:34]
          cReg_2_2 <= _GEN_62;
        end
      end
    end
    if (reset) begin // @[Hello.scala 149:19]
      cReg_2_3 <= 32'sh0; // @[Hello.scala 149:19]
    end else if (!(_T_4)) begin // @[Hello.scala 157:28]
      if (!(_T_5)) begin // @[Hello.scala 159:34]
        if (!(_T_6)) begin // @[Hello.scala 162:34]
          cReg_2_3 <= _GEN_64;
        end
      end
    end
    if (reset) begin // @[Hello.scala 149:19]
      cReg_3_0 <= 32'sh0; // @[Hello.scala 149:19]
    end else if (!(_T_4)) begin // @[Hello.scala 157:28]
      if (!(_T_5)) begin // @[Hello.scala 159:34]
        if (!(_T_6)) begin // @[Hello.scala 162:34]
          cReg_3_0 <= _GEN_60;
        end
      end
    end
    if (reset) begin // @[Hello.scala 149:19]
      cReg_3_1 <= 32'sh0; // @[Hello.scala 149:19]
    end else if (!(_T_4)) begin // @[Hello.scala 157:28]
      if (!(_T_5)) begin // @[Hello.scala 159:34]
        if (!(_T_6)) begin // @[Hello.scala 162:34]
          cReg_3_1 <= _GEN_63;
        end
      end
    end
    if (reset) begin // @[Hello.scala 149:19]
      cReg_3_2 <= 32'sh0; // @[Hello.scala 149:19]
    end else if (!(_T_4)) begin // @[Hello.scala 157:28]
      if (!(_T_5)) begin // @[Hello.scala 159:34]
        if (!(_T_6)) begin // @[Hello.scala 162:34]
          cReg_3_2 <= _GEN_65;
        end
      end
    end
    if (reset) begin // @[Hello.scala 149:19]
      cReg_3_3 <= 32'sh0; // @[Hello.scala 149:19]
    end else if (!(_T_4)) begin // @[Hello.scala 157:28]
      if (!(_T_5)) begin // @[Hello.scala 159:34]
        if (!(_T_6)) begin // @[Hello.scala 162:34]
          cReg_3_3 <= _GEN_66;
        end
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  cycleCounter = _RAND_0[5:0];
  _RAND_1 = {1{`RANDOM}};
  cReg_0_0 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  cReg_0_1 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  cReg_0_2 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  cReg_0_3 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  cReg_1_0 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  cReg_1_1 = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  cReg_1_2 = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  cReg_1_3 = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  cReg_2_0 = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  cReg_2_1 = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  cReg_2_2 = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  cReg_2_3 = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  cReg_3_0 = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  cReg_3_1 = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  cReg_3_2 = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  cReg_3_3 = _RAND_16[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
