// Code your design here
module register_file(input clk,
                     input clear,
                     input [5-1:0] write_location,
                     input write_enable,
                     input [5-1:0] read_enable,
                     input [32-1:0] data_in,
                     output reg  [32-1:0] data_out
);
  integer i; //variable to run for loop
 
  reg [32-1:0]reg_memory[16]; //Declaring memory array
 
  always @(posedge clk) begin
    if (clear) begin
 
      for (i=0; i<16; i++) begin
          reg_memory[i]<=0;
    end
    end
    else begin
          reg_memory[write_location]<=data_in;
        end
 end  
 
    always@(*) begin
      data_out<=reg_memory[read_enable];
    end
   
 
 
endmodule