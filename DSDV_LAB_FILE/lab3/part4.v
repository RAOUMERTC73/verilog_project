module part4(
  input wire Clk,
  input wire D,
  output reg Qd,
  output reg Qp,
  output reg Qn
);

  // Instantiate modules
  gated_d_latch uut_gated_d_latch (
    .Clk(Clk),
    .D(D),
    .Qd(Qd)
  );

  pos_edge_flip_flop uut_pos_edge_flip_flop (
    .Clk(Clk),
    .D(D),
    .Qp(Qp)
  );

  neg_edge_flip_flop uut_neg_edge_flip_flop (
    .Clk(Clk),
    .D(D),
    .Qn(Qn)
  );

endmodule
module gated_d_latch(
  input wire Clk,
  input wire D,
  output reg Qd
);

  // Gated D latch
 always @(Clk,D)
  begin
   if (Clk)
    Q_latch = D;
  end
  
endmodule
module pos_edge_flip_flop(
  input wire Clk,
  input wire D,
  output reg Qp
);

  // Positive-edge triggered D flip-flop
  always @(posedge Clk) begin
    Qp <= D;
  end

endmodule
module neg_edge_flip_flop(
  input wire Clk,
  input wire D,
  output reg Qn
);

  // Negative-edge triggered D flip-flop
  always @(negedge Clk) begin
    Qn <= D;
  end

endmodule
// Code your testbench here
// or browse Examples

module part4_tb;

  // Declare signals

logic clk, d, qd,qp,qn;
initial
begin
d = 0; #5;
d = 1; #10;
d = 0; #2;
d = 1; #10;
d = 0;
end
always
begin
clk =1; #5;
clk =0; #5;
end

   // Instantiate the module
  part4 dut(
    .Clk(clk),
    .D(d),
    .Qd(qd),
    .Qp(qp),
    .Qn(qn)
  );
  
   /*initial begin 
      $dumpfile("dump.vcd");
      $dumpvars(0);
      #50;
      $finish();
    end*/

endmodule