// Code your testbench here
module comparator_1_bit_Data_Flow_tb;
  //ports
  reg a;
  reg b;
  wire o1;
  wire o2;
  wire o3;
  //instantiation
  comparator_1_bit_Data_Flow  dut(.a(a),
                                  .b(b),
                                  .a_equals_b(o1),
                                  .a_greater_b(o2),
                                  .a_less_b(o3));     
  //initial block
  initial begin
    a=0;b=0;
    #5;
    a=0;b=1;
    #5;
    a=1;b=0;
    #5;
    a=1;b=1;
  end
 initial begin 
    $dumpfile("dump.vcd");
    $dumpvars(0);
    #50;//it will change according to need
    $finish();
  end   

endmodule
    
    
    
    
    
    