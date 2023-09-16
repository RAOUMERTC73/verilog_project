// Code your design here
module mux_4to1(input in1,
                input in2,
                input in3,
                input in4,
                input [1:0]sel,
                output out);
  // logic 
  assign out = (sel==2'b00)?in1:(sel==2'b01)?in2:(sel==2'b10)?in3:in4;
  
 
   
endmodule