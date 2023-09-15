`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2023 01:55:41 AM
// Design Name: 
// Module Name: all_gates
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module all_gates(input a, b, 
                 output reg AND, OR, XOR, NAND,NOR);

  always @(*)
    begin
      AND = a & b;    // AND
      OR = a | b;    // OR
      XOR = a ^ b;    // XOR
      NAND = ~(a & b); // NAND
      NOR = ~(a | b); // NOR
    end

endmodule
