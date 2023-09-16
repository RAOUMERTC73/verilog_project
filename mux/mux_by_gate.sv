// Code your design here
//create by rao umer
module mux_by_gate(
	input in1,
	input in2,
	input sel,
  	output out);
  
  //logic
  wire and_gate_1_out;
  wire not_sel;
  wire and_gate_2_out;
 
  not not_sell(not_sel,sel);
  and and_1 (and_gate_1_out,in2,sel);
  and and_2(and_gate_2_out,in1,not_sel);
  or out_put(out,and_gate_1_out,and_gate_2_out);
    
endmodule

