module ALU_5bit(
  input logic [4:0] a,
  input logic [4:0] b,
  input logic [2:0] opcode,
  output reg [4:0] result
);
 
  always @(*)
  begin
    case(opcode)
      3'b000: result = a + b;  // Addition
      3'b001: result = a - b;  // Subtraction
      3'b010: result = a * b;  // Multiplication
      3'b011: result = a & b;  // Bitwise AND
      3'b100: result = a | b;  // Bitwise OR
      default: result = 5'b00000; // Default value (no operation)
    endcase
  end
endmodule
