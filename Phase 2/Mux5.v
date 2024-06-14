  module Mux5 (
    input [4:0] input1,
    input [4:0] input2,
    input op,
    output [4:0] out
);
  assign out = (op) ? input2 : input1;
endmodule
