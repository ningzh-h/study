
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: HITSZ
// Engineer: Zhonghao Ning
// 
// Create Date: 2024/11/08 10:30:15
// Design Name: Exp 5
// Module Name: uart_recv
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


module uart_recv(
    input            clk  ,   
    input            rst  ,   
    input            din  ,   // connect to usb_uart rx pin

    output reg       valid,   // indicates data is valid ??logic high (1)??, last one clock
    output reg [7:0] data   
);

    // ״̬����
    localparam IDLE  = 3'b000;
    localparam START = 3'b001;
    localparam DATA  = 3'b010;
    localparam STOP  = 3'b011;

    // ��������
    localparam CLK_FREQ  = 1e8  ;                // ʱ��Ƶ��: 100MHz
    localparam PERIOD    = 1e9 / CLK_FREQ;       // ʱ������: 10ns
    localparam BAUD_RATE = 9600 ;                // ������: 9600
    localparam BAUD_END  = 10415;                // ����ʱ��Ƶ�ʵļ�����ʱ�����ڸ���: [10^8/9600]-1 = 10415
    localparam BAUD_HALF = (BAUD_END + 1) / 2;   // ������ȡ��: 10416/2 = 5208

    // ��������
    reg [2:0]  current_state;                    // ��̬
    reg [2:0]  next_state   ;                    // ��̬
    reg [4:0]  bit_index    ;                    // ���ݽ���λ
    reg [7:0]  data_saved   ;                    // �ݴ����ݵ���λ�Ĵ���
    reg [13:0] baud_counter ;                    // ���������ʵļ�����


    //* ����ʽʵ��״̬��
    // ��1��always�飬������̬Ǩ�Ƶ���̬
    always @(posedge clk or posedge rst) begin
        if (rst) current_state <= IDLE;
        else     current_state <= next_state; 
    end

    // ��2��always�飬����״̬ת�������ж�
    always @(*) begin
        case (current_state)
            // ����״̬: ���յ���ʼ�ź� din == 0 �������ʼ״̬
            IDLE: begin 
                if(din == 0) begin
                    next_state = START;
                end else next_state = IDLE;
            end
            // ��ʼ״̬: �������������, ���������״̬
            // ��֤֮��������Ϊһ�������ʵ�ͬʱ, ���źŵ��жβ���
            START: begin
                if(baud_counter == BAUD_HALF) begin
                    next_state = DATA;
                end else next_state = START;
            end
            // ����״̬: ���� 8 λ���ݺ����ֹͣ״̬
            DATA: begin
                if (bit_index == 8) begin
                    next_state = STOP;
                end else next_state = DATA;
            end
            // ֹͣ״̬: ��������, ���ܵ�ֹͣ�ź� din == 1 ��ת�����״̬
            STOP: begin
                if(baud_counter == BAUD_END) begin
                    next_state = IDLE; 
                end else next_state = STOP;
            end
            default: next_state = IDLE;
        endcase
    end

    // ��3��always�飬��������߼�
    always @(posedge clk or posedge rst) begin
        if(rst) begin 
            data <= 0;
            data_saved <= 0;
            valid <= 0;
            baud_counter <= 0;
        end else begin
            case(current_state)
                // ����״̬: ��λ����������Ч�ź�
                IDLE: begin 
                    valid <= 0;
                    baud_counter <= 0;
                end
                // ��ʼ״̬: �������������, ��ɺ�λ�����ʼ�������λ������
                START: begin
                    if(baud_counter == BAUD_HALF) begin
                        baud_counter <= 0;
                        bit_index <= 0;
                    end else begin
                        baud_counter <= baud_counter + 1;
                    end
                end
                // ����״̬: �Բ�����Ϊ�������, ��λ��������
                DATA: begin
                    if(baud_counter == BAUD_END) begin
                        data_saved[bit_index] <= din;
                        baud_counter <= 0;
                        if(bit_index == 8) begin
                            baud_counter <= 0;
                        end else begin
                            bit_index <= bit_index + 1;
                        end
                    end else begin
                        baud_counter <= baud_counter + 1;
                    end
                end
                // ֹͣ״̬: ��������, ���յ�ֹͣ�ź� din == 1 �� valid ����, �����ݴ�����ݸ�ֵ������˿� 
                STOP: begin
                    if(baud_counter == BAUD_END) begin
                        if(din == 1) begin
                            baud_counter <= 0;
                            data <= data_saved;
                            valid <= 1;
                        end else baud_counter <= 0;
                    end else baud_counter = baud_counter + 1;
                end
                default: begin
                    valid <= 0;
                    data <= 0;
                end
            endcase
        end
    end
endmodule
