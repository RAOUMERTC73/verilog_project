
// Code your testbench here
// or browse Examples
timescale 1ns/1ns
module and_gate_tb();
  // port 
  reg a;
  reg b;
  wire o;
  //instantiation 
  or_gate dut(.in1(a),.in2(b),.out(o));
  
  //initial block
  initial begin 
    a=0;b=0;
    #5;
    a=0;b=1;
    #5;
    a=1;b=0;
    #5;
    a=1;b=1;
	 $stop;
	 
  end
  
 /*initial begin 
  
    $dumpfile("dumped.vcd");
    $dumpvars(0);
    #20;
    $finish();
    
   end     */     
              
endmodule             