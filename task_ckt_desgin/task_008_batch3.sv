// Code your design here
module comparator_T_008( input a,
                         input b,
                         output out1,
                         output out2,
                         output out3 );
    //logic gates
  
  assign out1= (!a)&b;
  assign out2= a&(!b);
  assign out3= ~((!a)&b)||(a&(!b));
  
  
endmodule
