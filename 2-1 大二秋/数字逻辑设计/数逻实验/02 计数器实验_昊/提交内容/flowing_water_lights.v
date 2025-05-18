`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: HITSZ
// Engineer: Zhonghao Ning
// 
// Create Date: 2024/10/17 16:24:43
// Design Name: Exp 2
// Module Name: flowing_water_lights
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


module flowing_water_lights #(
    parameter CNT_MAX = 100000000
)
(
    input            clk     ,                 // ʱ���ź�(100 MHz), Y18
    input            rst     ,                 // ��λ�ź�, S1
    input            button  ,                 // ��ˮ�������ź�, S2
    input      [1:0] freq_set,                 // Ƶ�������ź�, SW1-SW0
    input            dir_set ,                 // ����������������, SW23
    output reg [7:0] led                       // LED �ź�, GLD7-GLD0
    );

    // �����ؼ��ʹ�ñ���
    reg sig_r0, sig_r1, sig_r2;
    wire button_edge_detect;
    reg button_status;

    // ����������
    reg [31:0] cnt      ;  // ��������������
    reg [31:0] cnt_end  ;  // ��������������


    // Ƶ������
    always @(posedge clk) begin
        case(freq_set)
            2'b00:   cnt_end <= CNT_MAX / 100;   // 100MHz / 100Hz
            2'b01:   cnt_end <= CNT_MAX / 10 ;   // 100MHz / 10Hz
            2'b10:   cnt_end <= CNT_MAX / 4  ;   // 100MHz / 4Hz
            2'b11:   cnt_end <= CNT_MAX / 2  ;   // 100MHz / 2Hz
            default: cnt_end <= CNT_MAX / 100;   // Ĭ��Ϊ 100Hz
        endcase
    end


    // button �����ؼ��
    always @ (posedge clk) begin
        if(rst) sig_r0 <= 1'b0;
        else    sig_r0 <= button;
    end

    always @ (posedge clk) begin
        if(rst) sig_r1 <= 1'b0;
        else    sig_r1 <= sig_r0;
    end

    always @ (posedge clk) begin
        if(rst) sig_r2 <= 1'b0;
        else    sig_r2 <= sig_r1;
    end

    assign button_edge_detect = ~sig_r2 & sig_r0; 

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            button_status <= 0;
        end else if (button_edge_detect) begin
            button_status <= ~button_status;  
        end
    end


    // ������
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            cnt <= 0;
        end else if (cnt >= cnt_end) begin
            cnt <= 0;
        end else begin
            cnt <= cnt + 1;
        end
    end

    always @(posedge clk or posedge rst) begin
        if (rst) led <= 8'b00000001;  
        else if (button_status) begin
            if(cnt >= cnt_end) begin
                if(dir_set) begin
                    led <= {led[0], led[7:1]}; // ���������ƶ�: ����һ��������ұߵ�ֵ���뵽�����
                end
                else begin
                    led <= {led[6:0], led[7]}; // ���������ƶ�: ����һ���������ߵ�ֵ���뵽���ұ�
                end
            end
        end
    end

endmodule
