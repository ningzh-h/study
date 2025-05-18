`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: HITSZ
// Engineer: Zhonghao Ning
// 
// Create Date: 2024/11/01 10:26:44
// Design Name: Exp 4
// Module Name: uart_send
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


module uart_send(
    input          clk,             // ʱ���ź�
    input          rst,             // ��λ�ź�
    input          valid,           // ��Ч�ź�, �ߵ�ƽ, ÿ��ά��һ��ʱ������
    input [7:0]    data,            // 8 λ�����ź�
    output reg     dout             // ���ڷ����������� (����USB UART��TX����)
    );

    // * ��������
    // ״̬����
    parameter IDLE  = 2'b00;     // ����״̬: �����ĸߵ�ƽ
    parameter START = 2'b01;     // ��ʼ״̬: ������ʼλ (һλ�͵�ƽ)
    parameter DATA  = 2'b10;     // ����״̬: ��λ���� 8 λ����
    parameter STOP  = 2'b11;     // ֹͣ״̬: ����ֹͣλ (һλ�ߵ�ƽ)

    // ��������ز���
    parameter CLOCK_FREQ = 1e8  ;             // ʱ��Ƶ��: 100MHz
    parameter PERIOD     = 10   ;             // ʱ������: 10ns
    parameter BAUD_RATE  = 9600 ;             // ������: 9600s
    parameter BAUD_DIV   = 10415;             // 1e9 / 9600 -1

    // * ��������
    // ״̬����
    reg [1:0] current_state;                  // ��ǰ״̬
    reg [1:0] next_state = 2'b00;             // ��һ״̬

    // ���ݴ���
    reg [3:0] bit_index;                      // ������λ��������
    reg [7:0] data_saved;                     // ���ڱ�������
    reg       start_flag = 0;                 // �����ж��Ƿ������ʼ״̬

    // ����������
    reg baud_check = 0;                       // ��ʱ�������ӳ���������, ���ڷ�ӳ�Ƿ�ﵽ������ʱ�ӱ���
    reg [13:0] baud_counter = 0;              // �������ӳ�ʱ��


    // * ���������ɲ��� (������Ϊ 9600, ʱ��Ƶ��Ϊ 100MHz)
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            baud_counter <= 10315;
            baud_check <= 0;
        end else begin
            if (baud_counter >= BAUD_DIV) begin
                baud_counter <= 0;
                baud_check <= 1;
            end else begin
                baud_counter <= baud_counter + 1;
                baud_check <= 0;
            end
        end
    end


    // * ��λ�Ĵ�����������
    always @(posedge clk or posedge rst) begin
        if (rst) data_saved <= 8'b0;
        else if (valid) begin
            data_saved <= data;
        end
    end


    // * ���͵�ƽ, ʹ��һ״̬������ʼ״̬
    always @(posedge clk) begin
        if (valid) begin
            start_flag = 1;
        end

        if (start_flag) begin
            if (current_state == START) start_flag <= 0;
        end
    end


    // * ����ʽʵ��״̬��
    // ��1��always��, ������̬Ǩ�Ƶ���̬
    always @(posedge clk or posedge rst) begin
        if (rst) current_state <= IDLE;
        else current_state <= next_state; 
    end

    // ��2��always��, ����״̬ת�������ж�
    always @(*) begin
        if (baud_check) begin
            if (start_flag) next_state = START;
            else begin
                case (next_state)
                IDLE: begin
                    next_state = IDLE;                      // ����״̬ => ����״̬
                end
                START: begin
                    next_state = DATA;                      // ��ʼ״̬ => ����״̬
                end
                DATA: begin
                    if (bit_index == 7) next_state = STOP;  // ����״̬ => ֹͣ״̬
                    else next_state = DATA;                 // ���������������λ
                end
                STOP: begin
                    next_state = IDLE;                      // ֹͣ״̬ => ����״̬
                end
                default: next_state = IDLE;                 // Ĭ��: ����
                endcase
            end
        end
    end

    // ��λ�������
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            bit_index <= 3'b0;
        end else if (valid) bit_index =0;
        else if (baud_check) begin
            if (current_state == DATA)
                bit_index <= bit_index + 1;                 // ����λ��������һ
        end
    end

    // ��3��always��, ��������߼�
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            dout <= 1'b1; 
        end else begin
            case (current_state)
            IDLE:    dout <= 1'b1;                          // ����״̬���ͳ����ĸߵ�ƽ
            START:   dout <= 1'b0;                          // ��ʼ״̬����һλ�͵�ƽ
            DATA:    dout <= data_saved[bit_index];         // ����״̬��λ��������
            STOP:    dout <= 1'b1;                          // ֹͣ״̬����һλ�ߵ�ƽ
            default: dout <= 1'b1;                          // Ĭ��: ����״̬
            endcase
        end
    end

endmodule