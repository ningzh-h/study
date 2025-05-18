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
    input        clk   ,         // ʱ���ź�
    input        rst   ,         // ��λ�ź�
    input  [7:0] switch,         // ���뿪��
    input        button,         // ��ť
    output       tx              // UART ��������ź�
);

    // ��������
    wire       valid;
    wire [7:0] data ;

    // ���뿪�ض�ȡģ��ʵ����
    button_ctrl u_button_ctrl(
        .clk   (clk   ), 
        .rst   (rst   ), 
        .button(button), 
        .switch(switch), 
        .valid (valid ), 
        .data  (data  )
    );

    // UART ����ģ��ʵ����
    uart_send u_uart_send(
        .clk  (clk   ),
        .rst  (rst   ),
        .valid(valid ),
        .data (switch),
        .dout (tx    )
    );

endmodule
