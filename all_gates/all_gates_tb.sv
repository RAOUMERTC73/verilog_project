`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2023 01:58:52 AM
// Design Name: 
// Module Name: all_gate_tb
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
module all_gate_tb();
  // port 
  reg a;
  reg b;
  wire y1, y2, y3, y4, y5;
  //instantiation 
  all_gate dut(.a(a),.b(b),.AND(y1),.OR(y2),.XOR(y3),.NAND(y4),.NOR(y5));
  
  //initial block
  initial begin 
    a=0;b=0;
    #5
    a=0;b=1;
    #5
    a=1;b=0;
    #5
    a=1;b=1;
  end
  initial begin 
    $dumpfile("dumped.vcd");
    $dumpvars(0);
    #20
    $finish();
              end          
           
endmodule
