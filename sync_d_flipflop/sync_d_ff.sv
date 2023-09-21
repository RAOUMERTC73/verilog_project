// Code your design here
module sync_d_ff(
    input wire clk,     // Clock input
    input wire reset,   // Reset input (active high)
    input wire data,    // Data input
    output reg result   // Output
);

// Always block triggered on the rising edge of clk
always @(posedge clk) begin
    if (reset) begin
        // Reset logic: Set result to 0 when reset is asserted
        result <= 1'b0;
    end else begin
        // Data processing: Update result with data on the rising edge of clk
        result <= data;
    end
end

endmodule
