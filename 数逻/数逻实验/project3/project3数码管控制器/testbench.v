`timescale 1ns / 1ps

module led_display_ctrl_tb;

  // Inputs
  reg clk;
  reg [7:0] SW;
  reg S1;
  reg S2;
  reg S3;

  // Outputs
  wire [7:0] led_en;
  wire [7:0] led_cx;

  // Instantiate the led_display_ctrl module
  led_display_ctrl uut (
                     .clk(clk),
                     .SW(SW),
                     .S1(S1),
                     .S2(S2),
                     .S3(S3),
                     .led_en(led_en),
                     .led_cx(led_cx)
                   );

  // Clock generation: 100 MHz clock for simulation
  initial
    clk = 0;
  always #5 clk = ~clk; // 10 ns period, 100 MHz

  // Test process
  initial
  begin
    // Initialize Inputs
    SW = 8'b00000000;
    S1 = 0;
    S2 = 0;
    S3 = 0;

    // Test sequence
    #10; // Wait for a bit

    // Test S1 reset
    S1 = 1;
    #100 S1 = 0;
    #100; // Allow time for reset effects to be observed

    // Set switches for testing
    SW = 8'b11111111; // Set a pattern on switches
    #1000;

    // Test S3 counting
    S3 = 1;
    #10000 S3 = 0;
    #20000; // Wait a little
    S3 = 1;
    #10000 S3 = 0;
    #20000;
    S3 = 1;
    #10 S3 = 0;
    #20000; // Observe counter updates

    // Test S2 reset for decimal counter
    S2 = 1;
    #10 S2 = 0;
    #2000;

    // Test counting with timer
     repeat (100000) @(posedge clk); // Wait to observe timer-based counting

    // Finish simulation
    #10000 $finish;
  end

endmodule
