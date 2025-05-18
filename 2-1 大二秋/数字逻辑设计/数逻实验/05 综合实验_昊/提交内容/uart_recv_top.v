`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: HITSZ
// Engineer: Zhonghao Ning
// 
// Create Date: 2024/11/13 09:04:45
// Design Name: Exp 5
// Module Name: uart_recv_top
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


module uart_recv_top(
    input        clk   ,  // 时钟信号
    input        rst   ,  // 复位信号
    input        rx    ,  // UART 接收输入信号 
    output [7:0] led_en,  // 数码管使能信号, 从左到右: A18 A20 B20 E18 F18 D19 E19 C19
                          // DK7-DK6: 学号后两位 09 => 00000011(0) CA CB CC CD CF CG 01101111(9)
                          // DK5-Dk4: 拨码开关 SW7-SW0 输入的个数
                          // DK3-DK2: 输入计数
                          // DK1-DK0: 十进制计数, 计数到20保持, 按下S2重新开始
    output [7:0] led_cx   // 数码管驱动信号, CA~CG-DP: F15 F13 F14 F16 E17 C14 C15 E13
);

    // 变量定义, 接收模块输出后接入数码管控制模块
    wire [7:0] data ;     // 数据信号
    wire       valid;     // 有效信号

    // UART 接收模块实例化
    uart_recv u_uart_recv(
        .clk  (clk  ),
        .rst  (rst  ),
        .din  (rx   ), 
        .valid(valid),
        .data (data )
    );

    // 数码管控制模块实例化
    led_ctrl u_led_ctrl(
        .clk   (clk   ),
        .rst   (rst   ),
        .data  (data  ),
        .valid (valid ),
        .led_cx(led_cx),
        .led_en(led_en)
    );
endmodule
