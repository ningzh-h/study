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
    input        clk   ,  // ʱ���ź�
    input        rst   ,  // ��λ�ź�
    input        rx    ,  // UART ���������ź� 
    output [7:0] led_en,  // �����ʹ���ź�, ������: A18 A20 B20 E18 F18 D19 E19 C19
                          // DK7-DK6: ѧ�ź���λ 09 => 00000011(0) CA CB CC CD CF CG 01101111(9)
                          // DK5-Dk4: ���뿪�� SW7-SW0 ����ĸ���
                          // DK3-DK2: �������
                          // DK1-DK0: ʮ���Ƽ���, ������20����, ����S2���¿�ʼ
    output [7:0] led_cx   // ����������ź�, CA~CG-DP: F15 F13 F14 F16 E17 C14 C15 E13
);

    // ��������, ����ģ��������������ܿ���ģ��
    wire [7:0] data ;     // �����ź�
    wire       valid;     // ��Ч�ź�

    // UART ����ģ��ʵ����
    uart_recv u_uart_recv(
        .clk  (clk  ),
        .rst  (rst  ),
        .din  (rx   ), 
        .valid(valid),
        .data (data )
    );

    // ����ܿ���ģ��ʵ����
    led_ctrl u_led_ctrl(
        .clk   (clk   ),
        .rst   (rst   ),
        .data  (data  ),
        .valid (valid ),
        .led_cx(led_cx),
        .led_en(led_en)
    );
endmodule
