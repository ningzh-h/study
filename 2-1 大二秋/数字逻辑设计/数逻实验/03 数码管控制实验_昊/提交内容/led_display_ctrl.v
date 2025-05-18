`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: HITSZ
// Engineer: Zhonghao Ning
// 
// Create Date: 2024/10/25 09:31:01
// Design Name: Exp 3
// Module Name: led_display_ctrl
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


module led_display_ctrl(
    input            clk   ,    // ʱ���ź�, Y18
    input            clr   ,    // �첽��λ, S1
    input            rst_d ,    // ʮ���Ƽ����������ź�, S2
    input            button,    // ��������, S3
    input      [7:0] switch,    // ���뿪��, SW7-SW0
    output reg [7:0] led_en,    // �����ʹ���ź�, ������: A18 A20 B20 E18 F18 D19 E19 C19
                                // DK7-DK6: ѧ�ź���λ 09 => CA CB CC CD CF CG 01101111
                                // DK5-Dk4: ���뿪�� SW7-SW0 ����ĸ���
                                // DK3-DK2: �������
                                // DK1-DK0: ʮ���Ƽ���, ������20����, ����S2���¿�ʼ
    output reg [7:0] led_cx     // ����������ź�, CA~CG-DP: F15 F13 F14 F16 E17 C14 C15 E13
    );
    // ����
    reg [31:0] button_debouncing;
    wire       button_debounced ;
    
    // �����ؼ��ʹ�ñ���
    reg sig_r0, sig_r1, sig_r2;
    wire button_edge_detect;
    reg button_status;

    // ����������
    reg [31:0] cnt;  // ���������Ʊ���
    reg [31:0] counter;  // ��������������
    reg [31:0] counter_num;  // ��������������

    // ���� 1 �ĸ���
    wire [4:0] num;

    // ��ť����
    reg [5:0] button_num;

    reg [7:0] led_num;
    reg [7:0] led_button0;
    reg [7:0] led_button1;
    reg [7:0] led_cnt0;
    reg [7:0] led_cnt1;


    // ���� SW7-SW0 �� 1 �ĸ���
    assign num = switch[0] + switch[1] + switch[2] + switch[3] + switch[4] + switch[5] + switch[6] + switch[7];
    always @(posedge clk or posedge clr) begin
        if(clr) led_num <= 8'b11000000;
        else begin
            case(num)
               5'd0: led_num <= 8'b11000000;
               5'd1: led_num <= 8'b11111001;
               5'd2: led_num <= 8'b10100100;
               5'd3: led_num <= 8'b10110000;
               5'd4: led_num <= 8'b10011001;
               5'd5: led_num <= 8'b10010010;
               5'd6: led_num <= 8'b10000010;
               5'd7: led_num <= 8'b11111000;
               5'd8: led_num <= 8'b10000000;
            default: led_num <= 8'b11000000;
            endcase
        end
    end


    // button ����
    always @(posedge clk or posedge clr) begin
        if(clr) button_debouncing <= 0;
        else begin
            button_debouncing <= {button_debouncing[31:0], button};
        end
    end
    assign button_debounced = (button_debouncing == 32'hFFFFFFFF) ? 1'b1 : 1'b0;
    
    // button �����ؼ��
    always @ (posedge clk or posedge clr) begin
        if(clr) sig_r0 <= 1'b0;
        else    sig_r0 <= button_debounced;
    end

    always @ (posedge clk or posedge clr) begin
        if(clr) sig_r1 <= 1'b0;
        else    sig_r1 <= sig_r0;
    end

    always @ (posedge clk or posedge clr) begin
        if(clr) sig_r2 <= 1'b0;
        else    sig_r2 <= sig_r1;
    end

    assign button_edge_detect = ~sig_r2 & sig_r0;

    always @(posedge clk or posedge clr) begin
        if (clr) begin
            button_status <= 0;
        end else if (button_edge_detect) begin
            button_status <= ~button_status;  
        end
    end


    // ��ť����
    always @(posedge clk or posedge clr) begin
        if(clr) button_num <= 0;
        else if(button_status) begin
            button_num = button_num + 1;
        end
        else button_num <= button_num;
    end

    // button_num ��λ��
    always @(posedge clk or posedge clr) begin
        if(clr) led_button0 <= 8'b11000000;
        else begin
            case(button_num%10)
                5'd0: led_button0 <= 8'b11000000;
                5'd1: led_button0 <= 8'b11111001;
                5'd2: led_button0 <= 8'b10100100;
                5'd3: led_button0 <= 8'b10110000;
                5'd4: led_button0 <= 8'b10011001;
                5'd5: led_button0 <= 8'b10010010;
                5'd6: led_button0 <= 8'b10000010;
                5'd7: led_button0 <= 8'b11111000;
                5'd8: led_button0 <= 8'b10000000;
                5'd9: led_button0 <= 8'b10010000;
             default: led_button0 <= 8'b11000000;
            endcase
        end
    end

    // button_num ʮλ��
    always @(posedge clk or posedge clr) begin
        if(clr) led_button1 <= 8'b11000000;
        else begin
            case(button_num/10)
                5'd0: led_button1 <= 8'b11000000;
                5'd1: led_button1 <= 8'b11111001;
                5'd2: led_button1 <= 8'b10100100;
                5'd3: led_button1 <= 8'b10110000;
                5'd4: led_button1 <= 8'b10011001;
                5'd5: led_button1 <= 8'b10010010;
                5'd6: led_button1 <= 8'b10000010;
                5'd7: led_button1 <= 8'b11111000;
                5'd8: led_button1 <= 8'b10000000;
                5'd9: led_button1 <= 8'b10010000;
            default: led_button1 <= 8'b11000000;
            endcase
        end
    end


    // ��������ʱ
    always @(posedge clk or posedge clr or posedge rst_d) begin
        if(clr | rst_d) begin
            counter <= 0;
            counter_num <= 0;
        end else if(counter >= 10000000 & counter_num < 20) begin
            counter <= 0;
            counter_num <= counter_num + 1;
        end else if(counter_num >= 20) begin
            counter_num <= counter_num;
        end else begin
            counter <= counter + 1;
        end
    end
    
    // counter ��λ��
    always @(posedge clk or posedge clr or posedge rst_d) begin
        if(rst_d | clr) led_cnt0 <= 8'b11000000;
        else begin
            case(counter_num%10)
                5'd0: led_cnt0 <= 8'b11000000;
                5'd1: led_cnt0 <= 8'b11111001;
                5'd2: led_cnt0 <= 8'b10100100;
                5'd3: led_cnt0 <= 8'b10110000;
                5'd4: led_cnt0 <= 8'b10011001;
                5'd5: led_cnt0 <= 8'b10010010;
                5'd6: led_cnt0 <= 8'b10000010;
                5'd7: led_cnt0 <= 8'b11111000;
                5'd8: led_cnt0 <= 8'b10000000;
                5'd9: led_cnt0 <= 8'b10010000;
             default: led_cnt0 <= 8'b11000000;
            endcase
        end
    end

    // counter ʮλ��
    always @(posedge clk or posedge clr or posedge rst_d) begin
        if(rst_d | clr) led_cnt1 <= 8'b11000000;
        else begin
            case(counter_num/10)
               5'd0: led_cnt1 <= 8'b11000000;
               5'd1: led_cnt1 <= 8'b11111001;
               5'd2: led_cnt1 <= 8'b10100100;
            default: led_cnt1 <= 8'b11000000;
            endcase
        end
    end


    // ����ܿ��Ƽ�����
    always @(posedge clk or posedge clr) begin
        if (clr) begin
            cnt <= 0;
        end else if (cnt >= 100000) begin
            cnt <= 0;
        end else begin
            cnt <= cnt + 1;
        end
    end

    always @(posedge clk or posedge clr) begin
        if (clr) led_en <= 8'b11111110;  
        else if(cnt >= 100000) begin
            led_en <= {led_en[6:0], led_en[7]}; // ���������ƶ�: ����һ���������ߵ�ֵ���뵽���ұ�
        end
    end

    always @(posedge clk or posedge clr) begin
        if(clr)             led_cx <= 8'b00000000;
        else if(~led_en[0]) led_cx <= 8'b11000000;
        else if(~led_en[1]) led_cx <= 8'b10010000;
        else if(~led_en[2]) led_cx <= 8'b11000000;
        else if(~led_en[3]) led_cx <= led_num    ;
        else if(~led_en[4]) led_cx <= led_button1;
        else if(~led_en[5]) led_cx <= led_button0;
        else if(~led_en[6]) led_cx <= led_cnt1   ;
        else if(~led_en[7]) led_cx <= led_cnt0   ;
    end
    
endmodule
