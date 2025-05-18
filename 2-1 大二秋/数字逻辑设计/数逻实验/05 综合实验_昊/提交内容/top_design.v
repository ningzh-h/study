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
    input        clk   ,    // ʱ���ź�
    input        rst   ,    // ��λ�ź�
    input  [7:0] switch,    // ���뿪��
    input        button,    // S3 ��ť�ź�
    input        rx    ,    // ���ڽ����ź�
    output       tx    ,    // ���ڷ����ź�
    output [7:0] led_en,    // LED ʹ���ź�
    output [7:0] led_cx     // LED �����ź�
);

    // UART ���ܹ��ܶ���ʵ����
    uart_recv_top u_uart_recv_top(
        .clk   (clk   ), 
        .rst   (rst   ), 
        .rx    (rx    ), 
        .led_en(led_en), 
        .led_cx(led_cx)
    );


    // UART ���͹��ܶ���ʵ����
    uart_send_top u_uart_send_top(
        .clk   (clk   ), 
        .rst   (rst   ), 
        .switch(switch), 
        .button(button), 
        .tx    (tx    )
    );

endmodule
