`timescale 1ns / 1ps

module soc_simu_fpu();

    reg         clk  = 1;
    reg         rst  = 1;
    reg  [23:0] switch = 24'h123456;
    wire [31:0] led;

    initial #12 rst = 0;
    always #5 clk = !clk;

    soc DUT (
        .clk_i  (clk),
        .rst_i  (rst),
        .sw_i   (switch),
        .led_o  (led)
    );

endmodule
