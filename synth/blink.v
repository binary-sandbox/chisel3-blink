module blink( // @[:@3.2]
  input   clock, // @[:@4.4]
  input   reset, // @[:@5.4]
  output  io_led1, // @[:@6.4]
  output  io_led2, // @[:@6.4]
  output  io_led3 // @[:@6.4]
);
  reg [31:0] cntReg; // @[Blink.scala 17:23:@8.4]
  reg [31:0] _RAND_0;
  reg  blkReg; // @[Blink.scala 18:23:@9.4]
  reg [31:0] _RAND_1;
  wire [32:0] _T_16; // @[Blink.scala 20:20:@10.4]
  wire [31:0] _T_17; // @[Blink.scala 20:20:@11.4]
  wire  _T_18; // @[Blink.scala 21:15:@13.4]
  wire  _T_20; // @[Blink.scala 23:15:@16.6]
  wire [31:0] _GEN_0; // @[Blink.scala 21:28:@14.4]
  wire  _GEN_1; // @[Blink.scala 21:28:@14.4]
  assign _T_16 = cntReg + 32'h1; // @[Blink.scala 20:20:@10.4]
  assign _T_17 = _T_16[31:0]; // @[Blink.scala 20:20:@11.4]
  assign _T_18 = cntReg == 32'h17d783f; // @[Blink.scala 21:15:@13.4]
  assign _T_20 = ~ blkReg; // @[Blink.scala 23:15:@16.6]
  assign _GEN_0 = _T_18 ? 32'h0 : _T_17; // @[Blink.scala 21:28:@14.4]
  assign _GEN_1 = _T_18 ? _T_20 : blkReg; // @[Blink.scala 21:28:@14.4]
  assign io_led1 = blkReg; // @[Blink.scala 25:11:@19.4]
  assign io_led2 = blkReg; // @[Blink.scala 26:11:@20.4]
  assign io_led3 = blkReg; // @[Blink.scala 27:11:@21.4]
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
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  cntReg = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  blkReg = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      cntReg <= 32'h0;
    end else begin
      if (_T_18) begin
        cntReg <= 32'h0;
      end else begin
        cntReg <= _T_17;
      end
    end
    if (reset) begin
      blkReg <= 1'h0;
    end else begin
      if (_T_18) begin
        blkReg <= _T_20;
      end
    end
  end
endmodule
