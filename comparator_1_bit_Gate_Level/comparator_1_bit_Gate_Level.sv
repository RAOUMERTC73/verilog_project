// Code your design here
module comparator_1_bit_Gate_Level(input wire A,
                                   input wire B,
                                   output wire A_equals_B,
                                   output wire A_greater_B,
                                   output wire A_less_B);
     
   wire not_out1, not_out2;

   not not_gatel(not_out1,A); 
   not not_gate2(not_out2,B);

   and and_gate2(A_less_B,not_out1,B);
  
   and and_gate3(A_greater_B, A, not_out2); 
  
   xnor xnor_gatel(A_equals_B,A,B);

endmodule