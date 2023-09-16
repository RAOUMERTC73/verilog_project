// Code your design here
module mux_4to1(input in1,
                input in2,
                input in3,
                input in4,
                input [1:0]sel,
                output reg out);

  
  
  // Multiplexer logic using if-else statements
  always @ (*) begin
    if (sel == 2'b00)
       out = in1;
    else if (sel == 2'b01)
       out = in2;
    else if (sel == 2'b10)
       out = in3;
    else
       out = in4;
  end
  
endmodule
