module Mux32 (
    input [31:0] input1,
    input [31:0] input2,
    input op,
    output [31:0] out
);
  assign out = (op) ? input2 : input1;
endmodule
