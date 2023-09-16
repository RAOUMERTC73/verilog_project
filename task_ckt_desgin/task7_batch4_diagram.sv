//Design the circuit using the provided block diagram(provided on diagrams tab) with gate level modelling in verilog  expression (assign out = A&!S || S&B;) 

module GateLevelCircuit(input A, input B, input S, output out);
  
  wire not_S, and1, and2;
  
  not not_gateS(not_S,S);
  and and_gate1(and1, A ,not_S);
  and and_gate2(and2, S ,B);
  or or_gate(out, and1, and2);
  
  //assign out = A&!S || S&B;
  
endmodule
