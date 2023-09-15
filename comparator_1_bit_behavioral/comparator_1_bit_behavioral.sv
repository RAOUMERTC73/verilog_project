module comparator_1_bit_behavioral(input a,
                                   input b,
                                   output reg a_equals_b,
                                   output reg a_greater_b,
                                   output reg a_less_b);

  
    always @(*) begin
      
        a_equals_b = (a == b);
      
        a_greater_b = (a > b);
      
        a_less_b = (a < b);
    end

endmodule
