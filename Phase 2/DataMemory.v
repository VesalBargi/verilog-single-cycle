module DataMemory (
    input [31:0] Address,
    input [31:0] WriteData,
    input MemWrite,
    input MemRead,
    input Startin,
    input clk,
    output [31:0] ReadData
);
  reg [7:0] memory[0:43];

  assign ReadData = (MemRead) ? {memory[Address + 3], memory[Address + 2], memory[Address + 1], memory[Address]} : 32'bx;

  integer i;
  always @(posedge clk) begin
    if (Startin) begin
      for (i = 0; i < 41; i = i + 4)
      begin
        {memory[i + 3], memory[i + 2], memory[i + 1], memory[i]} <= 1;
      end
    end
    if (MemWrite) begin
      {memory[Address + 3], memory[Address + 2], memory[Address + 1], memory[Address]} <= WriteData;
    end
  end
endmodule
