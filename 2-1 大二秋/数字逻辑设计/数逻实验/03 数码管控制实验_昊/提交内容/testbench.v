`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: HITSZ
// Engineer: Zhonghao Ning
// 
// Create Date: 2024/10/25 09:31:35
// Design Name: Exp 3
// Module Name: testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module testbench();
    reg        clk   ;
    reg        clr   ;
    reg        rst_d ;
    reg        button;
    reg  [7:0] switch;
    wire [7:0] led_en;
    wire [7:0] led_cx;

    led_display_ctrl u_led_display_ctrl(
        .clk   (clk   ), 
        .clr   (clr   ), 
        .rst_d (rst_d ), 
        .button(button), 
        .switch(switch), 
        .led_en(led_en), 
        .led_cx(led_cx)
    );

    initial begin
        // 初始化
        clk    = 0          ;
        clr    = 1          ;
        rst_d  = 1          ;
        button = 0          ;
        switch = 8'b00000000;

        // 启动
        #10000000;
        clr   = 0;
        rst_d = 0;

        #100000;
        // 拨码开关
        switch = 8'b01100110;

        #70000000;
        // 按两次按钮, 消抖
        button = 1;
        #10 button = 0;
        #1000000 button = 1;
        #1000000 button = 0;

        #10000000;
        button = 1;
        #10 button = 0;
        #1000000 button = 1;
        #1000000 button = 0;

        $finish;
    end

    always #5 clk = ~clk;
endmodule
