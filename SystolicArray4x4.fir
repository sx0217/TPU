circuit SystolicArray4x4 :
  module PE :
    input clock : Clock
    input reset : Reset
    output io : { flip a_in : SInt<32>, flip b_in : SInt<32>, a_out : SInt<32>, b_out : SInt<32>, flip psum : SInt<32>, out : SInt<32>}

    reg a_reg : SInt, clock with :
      reset => (UInt<1>("h0"), a_reg) @[Hello.scala 19:22]
    a_reg <= io.a_in @[Hello.scala 19:22]
    reg b_reg : SInt, clock with :
      reset => (UInt<1>("h0"), b_reg) @[Hello.scala 20:22]
    b_reg <= io.b_in @[Hello.scala 20:22]
    reg psum_reg : SInt, clock with :
      reset => (UInt<1>("h0"), psum_reg) @[Hello.scala 21:25]
    psum_reg <= io.psum @[Hello.scala 21:25]
    node product = mul(io.a_in, io.b_in) @[Hello.scala 24:25]
    node _io_out_T = add(psum_reg, product) @[Hello.scala 25:22]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Hello.scala 25:22]
    node _io_out_T_2 = asSInt(_io_out_T_1) @[Hello.scala 25:22]
    io.out <= _io_out_T_2 @[Hello.scala 25:10]
    io.a_out <= a_reg @[Hello.scala 28:12]
    io.b_out <= b_reg @[Hello.scala 29:12]

  module PE_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip a_in : SInt<32>, flip b_in : SInt<32>, a_out : SInt<32>, b_out : SInt<32>, flip psum : SInt<32>, out : SInt<32>}

    reg a_reg : SInt, clock with :
      reset => (UInt<1>("h0"), a_reg) @[Hello.scala 19:22]
    a_reg <= io.a_in @[Hello.scala 19:22]
    reg b_reg : SInt, clock with :
      reset => (UInt<1>("h0"), b_reg) @[Hello.scala 20:22]
    b_reg <= io.b_in @[Hello.scala 20:22]
    reg psum_reg : SInt, clock with :
      reset => (UInt<1>("h0"), psum_reg) @[Hello.scala 21:25]
    psum_reg <= io.psum @[Hello.scala 21:25]
    node product = mul(io.a_in, io.b_in) @[Hello.scala 24:25]
    node _io_out_T = add(psum_reg, product) @[Hello.scala 25:22]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Hello.scala 25:22]
    node _io_out_T_2 = asSInt(_io_out_T_1) @[Hello.scala 25:22]
    io.out <= _io_out_T_2 @[Hello.scala 25:10]
    io.a_out <= a_reg @[Hello.scala 28:12]
    io.b_out <= b_reg @[Hello.scala 29:12]

  module PE_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip a_in : SInt<32>, flip b_in : SInt<32>, a_out : SInt<32>, b_out : SInt<32>, flip psum : SInt<32>, out : SInt<32>}

    reg a_reg : SInt, clock with :
      reset => (UInt<1>("h0"), a_reg) @[Hello.scala 19:22]
    a_reg <= io.a_in @[Hello.scala 19:22]
    reg b_reg : SInt, clock with :
      reset => (UInt<1>("h0"), b_reg) @[Hello.scala 20:22]
    b_reg <= io.b_in @[Hello.scala 20:22]
    reg psum_reg : SInt, clock with :
      reset => (UInt<1>("h0"), psum_reg) @[Hello.scala 21:25]
    psum_reg <= io.psum @[Hello.scala 21:25]
    node product = mul(io.a_in, io.b_in) @[Hello.scala 24:25]
    node _io_out_T = add(psum_reg, product) @[Hello.scala 25:22]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Hello.scala 25:22]
    node _io_out_T_2 = asSInt(_io_out_T_1) @[Hello.scala 25:22]
    io.out <= _io_out_T_2 @[Hello.scala 25:10]
    io.a_out <= a_reg @[Hello.scala 28:12]
    io.b_out <= b_reg @[Hello.scala 29:12]

  module PE_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip a_in : SInt<32>, flip b_in : SInt<32>, a_out : SInt<32>, b_out : SInt<32>, flip psum : SInt<32>, out : SInt<32>}

    reg a_reg : SInt, clock with :
      reset => (UInt<1>("h0"), a_reg) @[Hello.scala 19:22]
    a_reg <= io.a_in @[Hello.scala 19:22]
    reg b_reg : SInt, clock with :
      reset => (UInt<1>("h0"), b_reg) @[Hello.scala 20:22]
    b_reg <= io.b_in @[Hello.scala 20:22]
    reg psum_reg : SInt, clock with :
      reset => (UInt<1>("h0"), psum_reg) @[Hello.scala 21:25]
    psum_reg <= io.psum @[Hello.scala 21:25]
    node product = mul(io.a_in, io.b_in) @[Hello.scala 24:25]
    node _io_out_T = add(psum_reg, product) @[Hello.scala 25:22]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Hello.scala 25:22]
    node _io_out_T_2 = asSInt(_io_out_T_1) @[Hello.scala 25:22]
    io.out <= _io_out_T_2 @[Hello.scala 25:10]
    io.a_out <= a_reg @[Hello.scala 28:12]
    io.b_out <= b_reg @[Hello.scala 29:12]

  module PE_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip a_in : SInt<32>, flip b_in : SInt<32>, a_out : SInt<32>, b_out : SInt<32>, flip psum : SInt<32>, out : SInt<32>}

    reg a_reg : SInt, clock with :
      reset => (UInt<1>("h0"), a_reg) @[Hello.scala 19:22]
    a_reg <= io.a_in @[Hello.scala 19:22]
    reg b_reg : SInt, clock with :
      reset => (UInt<1>("h0"), b_reg) @[Hello.scala 20:22]
    b_reg <= io.b_in @[Hello.scala 20:22]
    reg psum_reg : SInt, clock with :
      reset => (UInt<1>("h0"), psum_reg) @[Hello.scala 21:25]
    psum_reg <= io.psum @[Hello.scala 21:25]
    node product = mul(io.a_in, io.b_in) @[Hello.scala 24:25]
    node _io_out_T = add(psum_reg, product) @[Hello.scala 25:22]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Hello.scala 25:22]
    node _io_out_T_2 = asSInt(_io_out_T_1) @[Hello.scala 25:22]
    io.out <= _io_out_T_2 @[Hello.scala 25:10]
    io.a_out <= a_reg @[Hello.scala 28:12]
    io.b_out <= b_reg @[Hello.scala 29:12]

  module PE_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip a_in : SInt<32>, flip b_in : SInt<32>, a_out : SInt<32>, b_out : SInt<32>, flip psum : SInt<32>, out : SInt<32>}

    reg a_reg : SInt, clock with :
      reset => (UInt<1>("h0"), a_reg) @[Hello.scala 19:22]
    a_reg <= io.a_in @[Hello.scala 19:22]
    reg b_reg : SInt, clock with :
      reset => (UInt<1>("h0"), b_reg) @[Hello.scala 20:22]
    b_reg <= io.b_in @[Hello.scala 20:22]
    reg psum_reg : SInt, clock with :
      reset => (UInt<1>("h0"), psum_reg) @[Hello.scala 21:25]
    psum_reg <= io.psum @[Hello.scala 21:25]
    node product = mul(io.a_in, io.b_in) @[Hello.scala 24:25]
    node _io_out_T = add(psum_reg, product) @[Hello.scala 25:22]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Hello.scala 25:22]
    node _io_out_T_2 = asSInt(_io_out_T_1) @[Hello.scala 25:22]
    io.out <= _io_out_T_2 @[Hello.scala 25:10]
    io.a_out <= a_reg @[Hello.scala 28:12]
    io.b_out <= b_reg @[Hello.scala 29:12]

  module PE_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip a_in : SInt<32>, flip b_in : SInt<32>, a_out : SInt<32>, b_out : SInt<32>, flip psum : SInt<32>, out : SInt<32>}

    reg a_reg : SInt, clock with :
      reset => (UInt<1>("h0"), a_reg) @[Hello.scala 19:22]
    a_reg <= io.a_in @[Hello.scala 19:22]
    reg b_reg : SInt, clock with :
      reset => (UInt<1>("h0"), b_reg) @[Hello.scala 20:22]
    b_reg <= io.b_in @[Hello.scala 20:22]
    reg psum_reg : SInt, clock with :
      reset => (UInt<1>("h0"), psum_reg) @[Hello.scala 21:25]
    psum_reg <= io.psum @[Hello.scala 21:25]
    node product = mul(io.a_in, io.b_in) @[Hello.scala 24:25]
    node _io_out_T = add(psum_reg, product) @[Hello.scala 25:22]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Hello.scala 25:22]
    node _io_out_T_2 = asSInt(_io_out_T_1) @[Hello.scala 25:22]
    io.out <= _io_out_T_2 @[Hello.scala 25:10]
    io.a_out <= a_reg @[Hello.scala 28:12]
    io.b_out <= b_reg @[Hello.scala 29:12]

  module PE_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip a_in : SInt<32>, flip b_in : SInt<32>, a_out : SInt<32>, b_out : SInt<32>, flip psum : SInt<32>, out : SInt<32>}

    reg a_reg : SInt, clock with :
      reset => (UInt<1>("h0"), a_reg) @[Hello.scala 19:22]
    a_reg <= io.a_in @[Hello.scala 19:22]
    reg b_reg : SInt, clock with :
      reset => (UInt<1>("h0"), b_reg) @[Hello.scala 20:22]
    b_reg <= io.b_in @[Hello.scala 20:22]
    reg psum_reg : SInt, clock with :
      reset => (UInt<1>("h0"), psum_reg) @[Hello.scala 21:25]
    psum_reg <= io.psum @[Hello.scala 21:25]
    node product = mul(io.a_in, io.b_in) @[Hello.scala 24:25]
    node _io_out_T = add(psum_reg, product) @[Hello.scala 25:22]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Hello.scala 25:22]
    node _io_out_T_2 = asSInt(_io_out_T_1) @[Hello.scala 25:22]
    io.out <= _io_out_T_2 @[Hello.scala 25:10]
    io.a_out <= a_reg @[Hello.scala 28:12]
    io.b_out <= b_reg @[Hello.scala 29:12]

  module PE_8 :
    input clock : Clock
    input reset : Reset
    output io : { flip a_in : SInt<32>, flip b_in : SInt<32>, a_out : SInt<32>, b_out : SInt<32>, flip psum : SInt<32>, out : SInt<32>}

    reg a_reg : SInt, clock with :
      reset => (UInt<1>("h0"), a_reg) @[Hello.scala 19:22]
    a_reg <= io.a_in @[Hello.scala 19:22]
    reg b_reg : SInt, clock with :
      reset => (UInt<1>("h0"), b_reg) @[Hello.scala 20:22]
    b_reg <= io.b_in @[Hello.scala 20:22]
    reg psum_reg : SInt, clock with :
      reset => (UInt<1>("h0"), psum_reg) @[Hello.scala 21:25]
    psum_reg <= io.psum @[Hello.scala 21:25]
    node product = mul(io.a_in, io.b_in) @[Hello.scala 24:25]
    node _io_out_T = add(psum_reg, product) @[Hello.scala 25:22]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Hello.scala 25:22]
    node _io_out_T_2 = asSInt(_io_out_T_1) @[Hello.scala 25:22]
    io.out <= _io_out_T_2 @[Hello.scala 25:10]
    io.a_out <= a_reg @[Hello.scala 28:12]
    io.b_out <= b_reg @[Hello.scala 29:12]

  module PE_9 :
    input clock : Clock
    input reset : Reset
    output io : { flip a_in : SInt<32>, flip b_in : SInt<32>, a_out : SInt<32>, b_out : SInt<32>, flip psum : SInt<32>, out : SInt<32>}

    reg a_reg : SInt, clock with :
      reset => (UInt<1>("h0"), a_reg) @[Hello.scala 19:22]
    a_reg <= io.a_in @[Hello.scala 19:22]
    reg b_reg : SInt, clock with :
      reset => (UInt<1>("h0"), b_reg) @[Hello.scala 20:22]
    b_reg <= io.b_in @[Hello.scala 20:22]
    reg psum_reg : SInt, clock with :
      reset => (UInt<1>("h0"), psum_reg) @[Hello.scala 21:25]
    psum_reg <= io.psum @[Hello.scala 21:25]
    node product = mul(io.a_in, io.b_in) @[Hello.scala 24:25]
    node _io_out_T = add(psum_reg, product) @[Hello.scala 25:22]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Hello.scala 25:22]
    node _io_out_T_2 = asSInt(_io_out_T_1) @[Hello.scala 25:22]
    io.out <= _io_out_T_2 @[Hello.scala 25:10]
    io.a_out <= a_reg @[Hello.scala 28:12]
    io.b_out <= b_reg @[Hello.scala 29:12]

  module PE_10 :
    input clock : Clock
    input reset : Reset
    output io : { flip a_in : SInt<32>, flip b_in : SInt<32>, a_out : SInt<32>, b_out : SInt<32>, flip psum : SInt<32>, out : SInt<32>}

    reg a_reg : SInt, clock with :
      reset => (UInt<1>("h0"), a_reg) @[Hello.scala 19:22]
    a_reg <= io.a_in @[Hello.scala 19:22]
    reg b_reg : SInt, clock with :
      reset => (UInt<1>("h0"), b_reg) @[Hello.scala 20:22]
    b_reg <= io.b_in @[Hello.scala 20:22]
    reg psum_reg : SInt, clock with :
      reset => (UInt<1>("h0"), psum_reg) @[Hello.scala 21:25]
    psum_reg <= io.psum @[Hello.scala 21:25]
    node product = mul(io.a_in, io.b_in) @[Hello.scala 24:25]
    node _io_out_T = add(psum_reg, product) @[Hello.scala 25:22]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Hello.scala 25:22]
    node _io_out_T_2 = asSInt(_io_out_T_1) @[Hello.scala 25:22]
    io.out <= _io_out_T_2 @[Hello.scala 25:10]
    io.a_out <= a_reg @[Hello.scala 28:12]
    io.b_out <= b_reg @[Hello.scala 29:12]

  module PE_11 :
    input clock : Clock
    input reset : Reset
    output io : { flip a_in : SInt<32>, flip b_in : SInt<32>, a_out : SInt<32>, b_out : SInt<32>, flip psum : SInt<32>, out : SInt<32>}

    reg a_reg : SInt, clock with :
      reset => (UInt<1>("h0"), a_reg) @[Hello.scala 19:22]
    a_reg <= io.a_in @[Hello.scala 19:22]
    reg b_reg : SInt, clock with :
      reset => (UInt<1>("h0"), b_reg) @[Hello.scala 20:22]
    b_reg <= io.b_in @[Hello.scala 20:22]
    reg psum_reg : SInt, clock with :
      reset => (UInt<1>("h0"), psum_reg) @[Hello.scala 21:25]
    psum_reg <= io.psum @[Hello.scala 21:25]
    node product = mul(io.a_in, io.b_in) @[Hello.scala 24:25]
    node _io_out_T = add(psum_reg, product) @[Hello.scala 25:22]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Hello.scala 25:22]
    node _io_out_T_2 = asSInt(_io_out_T_1) @[Hello.scala 25:22]
    io.out <= _io_out_T_2 @[Hello.scala 25:10]
    io.a_out <= a_reg @[Hello.scala 28:12]
    io.b_out <= b_reg @[Hello.scala 29:12]

  module PE_12 :
    input clock : Clock
    input reset : Reset
    output io : { flip a_in : SInt<32>, flip b_in : SInt<32>, a_out : SInt<32>, b_out : SInt<32>, flip psum : SInt<32>, out : SInt<32>}

    reg a_reg : SInt, clock with :
      reset => (UInt<1>("h0"), a_reg) @[Hello.scala 19:22]
    a_reg <= io.a_in @[Hello.scala 19:22]
    reg b_reg : SInt, clock with :
      reset => (UInt<1>("h0"), b_reg) @[Hello.scala 20:22]
    b_reg <= io.b_in @[Hello.scala 20:22]
    reg psum_reg : SInt, clock with :
      reset => (UInt<1>("h0"), psum_reg) @[Hello.scala 21:25]
    psum_reg <= io.psum @[Hello.scala 21:25]
    node product = mul(io.a_in, io.b_in) @[Hello.scala 24:25]
    node _io_out_T = add(psum_reg, product) @[Hello.scala 25:22]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Hello.scala 25:22]
    node _io_out_T_2 = asSInt(_io_out_T_1) @[Hello.scala 25:22]
    io.out <= _io_out_T_2 @[Hello.scala 25:10]
    io.a_out <= a_reg @[Hello.scala 28:12]
    io.b_out <= b_reg @[Hello.scala 29:12]

  module PE_13 :
    input clock : Clock
    input reset : Reset
    output io : { flip a_in : SInt<32>, flip b_in : SInt<32>, a_out : SInt<32>, b_out : SInt<32>, flip psum : SInt<32>, out : SInt<32>}

    reg a_reg : SInt, clock with :
      reset => (UInt<1>("h0"), a_reg) @[Hello.scala 19:22]
    a_reg <= io.a_in @[Hello.scala 19:22]
    reg b_reg : SInt, clock with :
      reset => (UInt<1>("h0"), b_reg) @[Hello.scala 20:22]
    b_reg <= io.b_in @[Hello.scala 20:22]
    reg psum_reg : SInt, clock with :
      reset => (UInt<1>("h0"), psum_reg) @[Hello.scala 21:25]
    psum_reg <= io.psum @[Hello.scala 21:25]
    node product = mul(io.a_in, io.b_in) @[Hello.scala 24:25]
    node _io_out_T = add(psum_reg, product) @[Hello.scala 25:22]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Hello.scala 25:22]
    node _io_out_T_2 = asSInt(_io_out_T_1) @[Hello.scala 25:22]
    io.out <= _io_out_T_2 @[Hello.scala 25:10]
    io.a_out <= a_reg @[Hello.scala 28:12]
    io.b_out <= b_reg @[Hello.scala 29:12]

  module PE_14 :
    input clock : Clock
    input reset : Reset
    output io : { flip a_in : SInt<32>, flip b_in : SInt<32>, a_out : SInt<32>, b_out : SInt<32>, flip psum : SInt<32>, out : SInt<32>}

    reg a_reg : SInt, clock with :
      reset => (UInt<1>("h0"), a_reg) @[Hello.scala 19:22]
    a_reg <= io.a_in @[Hello.scala 19:22]
    reg b_reg : SInt, clock with :
      reset => (UInt<1>("h0"), b_reg) @[Hello.scala 20:22]
    b_reg <= io.b_in @[Hello.scala 20:22]
    reg psum_reg : SInt, clock with :
      reset => (UInt<1>("h0"), psum_reg) @[Hello.scala 21:25]
    psum_reg <= io.psum @[Hello.scala 21:25]
    node product = mul(io.a_in, io.b_in) @[Hello.scala 24:25]
    node _io_out_T = add(psum_reg, product) @[Hello.scala 25:22]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Hello.scala 25:22]
    node _io_out_T_2 = asSInt(_io_out_T_1) @[Hello.scala 25:22]
    io.out <= _io_out_T_2 @[Hello.scala 25:10]
    io.a_out <= a_reg @[Hello.scala 28:12]
    io.b_out <= b_reg @[Hello.scala 29:12]

  module PE_15 :
    input clock : Clock
    input reset : Reset
    output io : { flip a_in : SInt<32>, flip b_in : SInt<32>, a_out : SInt<32>, b_out : SInt<32>, flip psum : SInt<32>, out : SInt<32>}

    reg a_reg : SInt, clock with :
      reset => (UInt<1>("h0"), a_reg) @[Hello.scala 19:22]
    a_reg <= io.a_in @[Hello.scala 19:22]
    reg b_reg : SInt, clock with :
      reset => (UInt<1>("h0"), b_reg) @[Hello.scala 20:22]
    b_reg <= io.b_in @[Hello.scala 20:22]
    reg psum_reg : SInt, clock with :
      reset => (UInt<1>("h0"), psum_reg) @[Hello.scala 21:25]
    psum_reg <= io.psum @[Hello.scala 21:25]
    node product = mul(io.a_in, io.b_in) @[Hello.scala 24:25]
    node _io_out_T = add(psum_reg, product) @[Hello.scala 25:22]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Hello.scala 25:22]
    node _io_out_T_2 = asSInt(_io_out_T_1) @[Hello.scala 25:22]
    io.out <= _io_out_T_2 @[Hello.scala 25:10]
    io.a_out <= a_reg @[Hello.scala 28:12]
    io.b_out <= b_reg @[Hello.scala 29:12]

  module SystolicArray4x4 :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip A : SInt<32>[4][4], flip B : SInt<32>[4][4], C : SInt<32>[4][4]}

    inst PE of PE @[Hello.scala 41:38]
    PE.clock <= clock
    PE.reset <= reset
    inst PE_1 of PE_1 @[Hello.scala 41:38]
    PE_1.clock <= clock
    PE_1.reset <= reset
    inst PE_2 of PE_2 @[Hello.scala 41:38]
    PE_2.clock <= clock
    PE_2.reset <= reset
    inst PE_3 of PE_3 @[Hello.scala 41:38]
    PE_3.clock <= clock
    PE_3.reset <= reset
    inst PE_4 of PE_4 @[Hello.scala 41:38]
    PE_4.clock <= clock
    PE_4.reset <= reset
    inst PE_5 of PE_5 @[Hello.scala 41:38]
    PE_5.clock <= clock
    PE_5.reset <= reset
    inst PE_6 of PE_6 @[Hello.scala 41:38]
    PE_6.clock <= clock
    PE_6.reset <= reset
    inst PE_7 of PE_7 @[Hello.scala 41:38]
    PE_7.clock <= clock
    PE_7.reset <= reset
    inst PE_8 of PE_8 @[Hello.scala 41:38]
    PE_8.clock <= clock
    PE_8.reset <= reset
    inst PE_9 of PE_9 @[Hello.scala 41:38]
    PE_9.clock <= clock
    PE_9.reset <= reset
    inst PE_10 of PE_10 @[Hello.scala 41:38]
    PE_10.clock <= clock
    PE_10.reset <= reset
    inst PE_11 of PE_11 @[Hello.scala 41:38]
    PE_11.clock <= clock
    PE_11.reset <= reset
    inst PE_12 of PE_12 @[Hello.scala 41:38]
    PE_12.clock <= clock
    PE_12.reset <= reset
    inst PE_13 of PE_13 @[Hello.scala 41:38]
    PE_13.clock <= clock
    PE_13.reset <= reset
    inst PE_14 of PE_14 @[Hello.scala 41:38]
    PE_14.clock <= clock
    PE_14.reset <= reset
    inst PE_15 of PE_15 @[Hello.scala 41:38]
    PE_15.clock <= clock
    PE_15.reset <= reset
    PE.io.a_in <= asSInt(UInt<1>("h0")) @[Hello.scala 43:21]
    PE_4.io.a_in <= asSInt(UInt<1>("h0")) @[Hello.scala 44:21]
    PE_8.io.a_in <= asSInt(UInt<1>("h0")) @[Hello.scala 45:21]
    PE_12.io.a_in <= asSInt(UInt<1>("h0")) @[Hello.scala 46:21]
    PE.io.b_in <= asSInt(UInt<1>("h0")) @[Hello.scala 47:21]
    PE_1.io.b_in <= asSInt(UInt<1>("h0")) @[Hello.scala 48:21]
    PE_2.io.b_in <= asSInt(UInt<1>("h0")) @[Hello.scala 49:21]
    PE_3.io.b_in <= asSInt(UInt<1>("h0")) @[Hello.scala 50:21]
    PE.io.psum <= PE.io.out @[Hello.scala 53:27]
    PE_1.io.psum <= PE_1.io.out @[Hello.scala 53:27]
    PE_2.io.psum <= PE_2.io.out @[Hello.scala 53:27]
    PE_3.io.psum <= PE_3.io.out @[Hello.scala 53:27]
    PE_4.io.psum <= PE_4.io.out @[Hello.scala 53:27]
    PE_5.io.psum <= PE_5.io.out @[Hello.scala 53:27]
    PE_6.io.psum <= PE_6.io.out @[Hello.scala 53:27]
    PE_7.io.psum <= PE_7.io.out @[Hello.scala 53:27]
    PE_8.io.psum <= PE_8.io.out @[Hello.scala 53:27]
    PE_9.io.psum <= PE_9.io.out @[Hello.scala 53:27]
    PE_10.io.psum <= PE_10.io.out @[Hello.scala 53:27]
    PE_11.io.psum <= PE_11.io.out @[Hello.scala 53:27]
    PE_12.io.psum <= PE_12.io.out @[Hello.scala 53:27]
    PE_13.io.psum <= PE_13.io.out @[Hello.scala 53:27]
    PE_14.io.psum <= PE_14.io.out @[Hello.scala 53:27]
    PE_15.io.psum <= PE_15.io.out @[Hello.scala 53:27]
    reg cycleCounter : UInt<6>, clock with :
      reset => (reset, UInt<6>("h0")) @[Hello.scala 58:29]
    node _T = eq(cycleCounter, UInt<1>("h0")) @[Hello.scala 61:21]
    when _T : @[Hello.scala 61:30]
      PE.io.a_in <= io.A[0][0] @[Hello.scala 62:23]
      PE_4.io.a_in <= asSInt(UInt<1>("h0")) @[Hello.scala 63:23]
      PE_8.io.a_in <= asSInt(UInt<1>("h0")) @[Hello.scala 64:23]
      PE_12.io.a_in <= asSInt(UInt<1>("h0")) @[Hello.scala 65:23]
      PE.io.b_in <= io.B[0][0] @[Hello.scala 66:23]
      PE_1.io.b_in <= asSInt(UInt<1>("h0")) @[Hello.scala 67:23]
      PE_2.io.b_in <= asSInt(UInt<1>("h0")) @[Hello.scala 68:23]
      PE_3.io.b_in <= asSInt(UInt<1>("h0")) @[Hello.scala 69:23]
    else :
      node _T_1 = eq(cycleCounter, UInt<1>("h1")) @[Hello.scala 70:27]
      when _T_1 : @[Hello.scala 70:36]
        PE.io.a_in <= io.A[0][1] @[Hello.scala 71:23]
        PE_4.io.a_in <= io.A[1][0] @[Hello.scala 72:23]
        PE_8.io.a_in <= asSInt(UInt<1>("h0")) @[Hello.scala 73:23]
        PE_12.io.a_in <= asSInt(UInt<1>("h0")) @[Hello.scala 74:23]
        PE.io.b_in <= io.B[1][0] @[Hello.scala 75:23]
        PE_1.io.b_in <= io.B[0][1] @[Hello.scala 76:23]
        PE_2.io.b_in <= asSInt(UInt<1>("h0")) @[Hello.scala 77:23]
        PE_3.io.b_in <= asSInt(UInt<1>("h0")) @[Hello.scala 78:23]
      else :
        node _T_2 = eq(cycleCounter, UInt<2>("h2")) @[Hello.scala 79:27]
        when _T_2 : @[Hello.scala 79:36]
          PE.io.a_in <= io.A[0][2] @[Hello.scala 80:23]
          PE_4.io.a_in <= io.A[1][1] @[Hello.scala 81:23]
          PE_8.io.a_in <= io.A[2][0] @[Hello.scala 82:23]
          PE_12.io.a_in <= asSInt(UInt<1>("h0")) @[Hello.scala 83:23]
          PE.io.b_in <= io.B[2][0] @[Hello.scala 84:23]
          PE_1.io.b_in <= io.B[1][1] @[Hello.scala 85:23]
          PE_2.io.b_in <= io.B[0][2] @[Hello.scala 86:23]
          PE_3.io.b_in <= asSInt(UInt<1>("h0")) @[Hello.scala 87:23]
        else :
          node _T_3 = eq(cycleCounter, UInt<2>("h3")) @[Hello.scala 88:27]
          when _T_3 : @[Hello.scala 88:36]
            PE.io.a_in <= io.A[0][3] @[Hello.scala 89:23]
            PE_4.io.a_in <= io.A[1][2] @[Hello.scala 90:23]
            PE_8.io.a_in <= io.A[2][1] @[Hello.scala 91:23]
            PE_12.io.a_in <= io.A[3][0] @[Hello.scala 92:23]
            PE.io.b_in <= io.B[3][0] @[Hello.scala 93:23]
            PE_1.io.b_in <= io.B[2][1] @[Hello.scala 94:23]
            PE_2.io.b_in <= io.B[1][2] @[Hello.scala 95:23]
            PE_3.io.b_in <= io.B[0][3] @[Hello.scala 96:23]
          else :
            node _T_4 = eq(cycleCounter, UInt<3>("h4")) @[Hello.scala 97:27]
            when _T_4 : @[Hello.scala 97:36]
              PE.io.a_in <= asSInt(UInt<1>("h0")) @[Hello.scala 98:23]
              PE_4.io.a_in <= io.A[1][3] @[Hello.scala 99:23]
              PE_8.io.a_in <= io.A[2][2] @[Hello.scala 100:23]
              PE_12.io.a_in <= io.A[3][1] @[Hello.scala 101:23]
              PE.io.b_in <= asSInt(UInt<1>("h0")) @[Hello.scala 102:23]
              PE_1.io.b_in <= io.B[3][1] @[Hello.scala 103:23]
              PE_2.io.b_in <= io.B[2][2] @[Hello.scala 104:23]
              PE_3.io.b_in <= io.B[1][3] @[Hello.scala 105:23]
            else :
              node _T_5 = eq(cycleCounter, UInt<3>("h5")) @[Hello.scala 106:27]
              when _T_5 : @[Hello.scala 106:36]
                PE.io.a_in <= asSInt(UInt<1>("h0")) @[Hello.scala 107:23]
                PE_4.io.a_in <= asSInt(UInt<1>("h0")) @[Hello.scala 108:23]
                PE_8.io.a_in <= io.A[2][3] @[Hello.scala 109:23]
                PE_12.io.a_in <= io.A[3][2] @[Hello.scala 110:23]
                PE.io.b_in <= asSInt(UInt<1>("h0")) @[Hello.scala 111:23]
                PE_1.io.b_in <= asSInt(UInt<1>("h0")) @[Hello.scala 112:23]
                PE_2.io.b_in <= io.B[3][2] @[Hello.scala 113:23]
                PE_3.io.b_in <= io.B[2][3] @[Hello.scala 114:23]
              else :
                node _T_6 = eq(cycleCounter, UInt<3>("h6")) @[Hello.scala 115:27]
                when _T_6 : @[Hello.scala 115:36]
                  PE.io.a_in <= asSInt(UInt<1>("h0")) @[Hello.scala 116:23]
                  PE_4.io.a_in <= asSInt(UInt<1>("h0")) @[Hello.scala 117:23]
                  PE_8.io.a_in <= asSInt(UInt<1>("h0")) @[Hello.scala 118:23]
                  PE_12.io.a_in <= io.A[3][3] @[Hello.scala 119:23]
                  PE.io.b_in <= asSInt(UInt<1>("h0")) @[Hello.scala 120:23]
                  PE_1.io.b_in <= asSInt(UInt<1>("h0")) @[Hello.scala 121:23]
                  PE_2.io.b_in <= asSInt(UInt<1>("h0")) @[Hello.scala 122:23]
                  PE_3.io.b_in <= io.B[3][3] @[Hello.scala 123:23]
    PE_1.io.a_in <= PE.io.a_out @[Hello.scala 126:23]
    PE_4.io.b_in <= PE.io.b_out @[Hello.scala 127:23]
    PE_2.io.a_in <= PE_1.io.a_out @[Hello.scala 126:23]
    PE_8.io.b_in <= PE_4.io.b_out @[Hello.scala 127:23]
    PE_3.io.a_in <= PE_2.io.a_out @[Hello.scala 126:23]
    PE_12.io.b_in <= PE_8.io.b_out @[Hello.scala 127:23]
    PE_5.io.a_in <= PE_4.io.a_out @[Hello.scala 133:27]
    PE_5.io.b_in <= PE_1.io.a_out @[Hello.scala 134:27]
    PE_6.io.a_in <= PE_5.io.a_out @[Hello.scala 133:27]
    PE_6.io.b_in <= PE_2.io.a_out @[Hello.scala 134:27]
    PE_7.io.a_in <= PE_6.io.a_out @[Hello.scala 133:27]
    PE_7.io.b_in <= PE_3.io.a_out @[Hello.scala 134:27]
    PE_9.io.a_in <= PE_8.io.a_out @[Hello.scala 133:27]
    PE_9.io.b_in <= PE_5.io.a_out @[Hello.scala 134:27]
    PE_10.io.a_in <= PE_9.io.a_out @[Hello.scala 133:27]
    PE_10.io.b_in <= PE_6.io.a_out @[Hello.scala 134:27]
    PE_11.io.a_in <= PE_10.io.a_out @[Hello.scala 133:27]
    PE_11.io.b_in <= PE_7.io.a_out @[Hello.scala 134:27]
    PE_13.io.a_in <= PE_12.io.a_out @[Hello.scala 133:27]
    PE_13.io.b_in <= PE_9.io.a_out @[Hello.scala 134:27]
    PE_14.io.a_in <= PE_13.io.a_out @[Hello.scala 133:27]
    PE_14.io.b_in <= PE_10.io.a_out @[Hello.scala 134:27]
    PE_15.io.a_in <= PE_14.io.a_out @[Hello.scala 133:27]
    PE_15.io.b_in <= PE_11.io.a_out @[Hello.scala 134:27]
    wire _cReg_WIRE : SInt<32>[4] @[Hello.scala 150:10]
    _cReg_WIRE[0] <= asSInt(UInt<32>("h0")) @[Hello.scala 150:10]
    _cReg_WIRE[1] <= asSInt(UInt<32>("h0")) @[Hello.scala 150:10]
    _cReg_WIRE[2] <= asSInt(UInt<32>("h0")) @[Hello.scala 150:10]
    _cReg_WIRE[3] <= asSInt(UInt<32>("h0")) @[Hello.scala 150:10]
    wire _cReg_WIRE_1 : SInt<32>[4] @[Hello.scala 151:10]
    _cReg_WIRE_1[0] <= asSInt(UInt<32>("h0")) @[Hello.scala 151:10]
    _cReg_WIRE_1[1] <= asSInt(UInt<32>("h0")) @[Hello.scala 151:10]
    _cReg_WIRE_1[2] <= asSInt(UInt<32>("h0")) @[Hello.scala 151:10]
    _cReg_WIRE_1[3] <= asSInt(UInt<32>("h0")) @[Hello.scala 151:10]
    wire _cReg_WIRE_2 : SInt<32>[4] @[Hello.scala 152:10]
    _cReg_WIRE_2[0] <= asSInt(UInt<32>("h0")) @[Hello.scala 152:10]
    _cReg_WIRE_2[1] <= asSInt(UInt<32>("h0")) @[Hello.scala 152:10]
    _cReg_WIRE_2[2] <= asSInt(UInt<32>("h0")) @[Hello.scala 152:10]
    _cReg_WIRE_2[3] <= asSInt(UInt<32>("h0")) @[Hello.scala 152:10]
    wire _cReg_WIRE_3 : SInt<32>[4] @[Hello.scala 153:10]
    _cReg_WIRE_3[0] <= asSInt(UInt<32>("h0")) @[Hello.scala 153:10]
    _cReg_WIRE_3[1] <= asSInt(UInt<32>("h0")) @[Hello.scala 153:10]
    _cReg_WIRE_3[2] <= asSInt(UInt<32>("h0")) @[Hello.scala 153:10]
    _cReg_WIRE_3[3] <= asSInt(UInt<32>("h0")) @[Hello.scala 153:10]
    wire _cReg_WIRE_4 : SInt<32>[4][4] @[Hello.scala 149:27]
    _cReg_WIRE_4[0] <= _cReg_WIRE @[Hello.scala 149:27]
    _cReg_WIRE_4[1] <= _cReg_WIRE_1 @[Hello.scala 149:27]
    _cReg_WIRE_4[2] <= _cReg_WIRE_2 @[Hello.scala 149:27]
    _cReg_WIRE_4[3] <= _cReg_WIRE_3 @[Hello.scala 149:27]
    reg cReg : SInt<32>[4][4], clock with :
      reset => (reset, _cReg_WIRE_4) @[Hello.scala 149:19]
    node _T_7 = eq(cycleCounter, UInt<3>("h4")) @[Hello.scala 157:19]
    when _T_7 : @[Hello.scala 157:28]
      cReg[0][0] <= PE.io.out @[Hello.scala 158:14]
    else :
      node _T_8 = eq(cycleCounter, UInt<3>("h5")) @[Hello.scala 159:25]
      when _T_8 : @[Hello.scala 159:34]
        cReg[0][1] <= PE_1.io.out @[Hello.scala 160:14]
        cReg[1][0] <= PE_4.io.out @[Hello.scala 161:14]
      else :
        node _T_9 = eq(cycleCounter, UInt<3>("h6")) @[Hello.scala 162:25]
        when _T_9 : @[Hello.scala 162:34]
          cReg[0][2] <= PE_2.io.out @[Hello.scala 163:14]
          cReg[1][1] <= PE_5.io.out @[Hello.scala 164:14]
          cReg[2][0] <= PE_8.io.out @[Hello.scala 165:14]
        else :
          node _T_10 = eq(cycleCounter, UInt<3>("h7")) @[Hello.scala 166:25]
          when _T_10 : @[Hello.scala 166:34]
            cReg[0][3] <= PE_3.io.out @[Hello.scala 167:14]
            cReg[1][2] <= PE_6.io.out @[Hello.scala 168:14]
            cReg[2][1] <= PE_9.io.out @[Hello.scala 169:14]
            cReg[3][0] <= PE_12.io.out @[Hello.scala 170:14]
          else :
            node _T_11 = eq(cycleCounter, UInt<4>("h8")) @[Hello.scala 171:25]
            when _T_11 : @[Hello.scala 171:34]
              cReg[1][3] <= PE_7.io.out @[Hello.scala 172:14]
              cReg[2][2] <= PE_10.io.out @[Hello.scala 173:14]
              cReg[3][1] <= PE_13.io.out @[Hello.scala 174:14]
            else :
              node _T_12 = eq(cycleCounter, UInt<4>("h9")) @[Hello.scala 175:25]
              when _T_12 : @[Hello.scala 175:34]
                cReg[2][3] <= PE_11.io.out @[Hello.scala 176:14]
                cReg[3][2] <= PE_14.io.out @[Hello.scala 177:14]
              else :
                node _T_13 = eq(cycleCounter, UInt<4>("ha")) @[Hello.scala 178:25]
                when _T_13 : @[Hello.scala 178:35]
                  cReg[3][3] <= PE_15.io.out @[Hello.scala 179:14]
    node _cycleCounter_T = add(cycleCounter, UInt<1>("h1")) @[Hello.scala 181:30]
    node _cycleCounter_T_1 = tail(_cycleCounter_T, 1) @[Hello.scala 181:30]
    cycleCounter <= _cycleCounter_T_1 @[Hello.scala 181:14]
    io.C <= cReg @[Hello.scala 183:6]

