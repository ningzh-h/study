`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: HITSZ
// Engineer: Zhonghao Ning
// 
// Create Date: 2024/11/15 10:36:01
// Design Name: 
// Module Name: top_design
// Project Name: Exp 5
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


module top_design(
    input        clk   ,    // 时钟信号
    input        rst   ,    // 复位信号
    input  [7:0] switch,    // 拨码开关
    input        button,    // S3 按钮信号
    input        rx    ,    // 串口接收信号
    output       tx    ,    // 串口发送信号
    output [7:0] led_en,    // LED 使能信号
    output [7:0] led_cx     // LED 控制信号
);

    // UART 接受功能顶层实例化
    uart_recv_top u_uart_recv_top(
        .clk   (clk   ), 
        .rst   (rst   ), 
        .rx    (rx    ), 
        .led_en(led_en), 
        .led_cx(led_cx)
    );


    // UART 发送功能顶层实例化
    uart_send_top u_uart_send_top(
        .clk   (clk   ), 
        .rst   (rst   ), 
        .switch(switch), 
        .button(button), 
        .tx    (tx    )
    );

endmodule
