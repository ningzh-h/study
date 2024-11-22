`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: HITSZ
// Engineer: Zhonghao Ning
// 
// Create Date: 2024/11/08 11:08:28
// Design Name: Exp 5
// Module Name: uart_send_top
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


module uart_send_top(
    input        clk   ,         // 时钟信号
    input        rst   ,         // 复位信号
    input  [7:0] switch,         // 拨码开关
    input        button,         // 按钮
    output       tx              // UART 发送输出信号
);

    // 变量定义
    wire       valid;
    wire [7:0] data ;

    // 拨码开关读取模块实例化
    button_ctrl u_button_ctrl(
        .clk   (clk   ), 
        .rst   (rst   ), 
        .button(button), 
        .switch(switch), 
        .valid (valid ), 
        .data  (data  )
    );

    // UART 发送模块实例化
    uart_send u_uart_send(
        .clk  (clk   ),
        .rst  (rst   ),
        .valid(valid ),
        .data (switch),
        .dout (tx    )
    );

endmodule
