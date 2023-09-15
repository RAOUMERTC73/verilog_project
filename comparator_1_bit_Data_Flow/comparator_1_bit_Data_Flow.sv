// Code your design here
// Code your design here
module comparator_1_bit_Data_Flow( input a,
                                   input b,
                                   output a_equals_b,
                                   output a_greater_b,
                                   output a_less_b );

  assign a_less_b = (!a)&b;
  assign a_greater_b = a&(!b);
  assign a_equals_b = ~(a^b); 
  
  
endmodule
