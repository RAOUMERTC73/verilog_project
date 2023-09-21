// Code your testbench here
// or browse Examples
module testbench_sync_d_ff();

    bit clk;          // Clock signal
    reg reset;        // Reset signal
    reg data;         // Data input
    wire result;      // Output from sync_d_ff module

    // Instantiate the sync_d_ff module
    sync_d_ff uut (
        .clk(clk),
        .reset(reset),
        .data(data),
        .result(result)
    );

    // Clock generation
    always begin
        #6 clk = ~clk;  // Toggle the clock every 5 time units
    end

    // Initialize signals and apply random data inputs
    initial begin
        clk <= 0;
        reset <= 1;     // Reset is initially asserted

        // Apply random data inputs and observe the result
        repeat (10) begin
            #5 data <= $random;  // Generate a random 1-bit value
            reset <= 0;
            #5;
        end

        $stop;  // End simulation
    end
   initial begin 
      $dumpfile("dump.vcd");
      $dumpvars(0);
      #50;
      $finish();
    end

endmodule
