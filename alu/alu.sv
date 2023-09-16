module alu(
  input [3-1:0] a,
  input [3-1:0] b,
  input [4-1:0] sel_op,
  output reg [6-1:0] out_result
);
  
  always @(*)
  begin
    case(sel_op)
      4'b0000: out_result = (a == b) ? 1'b1 : 1'b0;  
      4'b0001: out_result = a + b;   // Addition
      4'b0010: out_result = a - b;   // Subtraction
      4'b0011: out_result = a * b;   // Multiply
      4'b0100: 
        if (b != 0)
          out_result = a / b;   // Divide
        else
          out_result = 6'b000000;   // Division by zero, output is 0
      4'b0101: out_result = a << 1;  // Shift left 
      4'b0110: out_result = a >> 1;  // Shift right    
      4'b0111: out_result = a & b;   // AND   
      4'b1000: out_result = a | b;   // OR
      4'b1001: out_result = a ^ b;   // XOR
      4'b1010: out_result = ~(a | b);  // NOR
      4'b1011: out_result = ~(a & b);  // NAND
      4'b1100: out_result = ~(a ^ b);  // XNOR
      4'b1101: out_result = ~b;      // NOT 
      4'b1110: out_result = (a > b) ? 1'b1 : 1'b0;  
      4'b1111: out_result = (a == b) ? 1'b1 : 1'b0;
      default: out_result = 6'b000000; // selection input
    endcase
  end
endmodule
