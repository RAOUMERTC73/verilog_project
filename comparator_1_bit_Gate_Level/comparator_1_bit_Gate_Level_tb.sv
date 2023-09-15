// Code your testbench here
module comparator_1_bit_Gate_Level_tb;
  //ports
  reg a;
  reg b;
  wire o1;
  wire o2;
  wire o3;
  //instantiation
  comparator_1_bit_Gate_Level dut(.A(a),
                                  .B(b),
                                  .A_equals_B(o1),
                                  .A_greater_B(o2),
                                  .A_less_B(o3));     
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
    
    
    
    
    
    