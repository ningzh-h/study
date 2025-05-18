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
    input            clk     ,                 // 时钟信号(100 MHz), Y18
    input            rst     ,                 // 复位信号, S1
    input            button  ,                 // 流水灯启动信号, S2
    input      [1:0] freq_set,                 // 频率设置信号, SW1-SW0
    input            dir_set ,                 // 左右流动方向设置, SW23
    output reg [7:0] led                       // LED 信号, GLD7-GLD0
    );

    // 上升沿检测使用变量
    reg sig_r0, sig_r1, sig_r2;
    wire button_edge_detect;
    reg button_status;

    // 计数器变量
    reg [31:0] cnt      ;  // 计数器计数变量
    reg [31:0] cnt_end  ;  // 计数器结束条件


    // 频率设置
    always @(posedge clk) begin
        case(freq_set)
            2'b00:   cnt_end <= CNT_MAX / 100;   // 100MHz / 100Hz
            2'b01:   cnt_end <= CNT_MAX / 10 ;   // 100MHz / 10Hz
            2'b10:   cnt_end <= CNT_MAX / 4  ;   // 100MHz / 4Hz
            2'b11:   cnt_end <= CNT_MAX / 2  ;   // 100MHz / 2Hz
            default: cnt_end <= CNT_MAX / 100;   // 默认为 100Hz
        endcase
    end


    // button 上升沿检测
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


    // 计数器
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
                    led <= {led[0], led[7:1]}; // 从右向左移动: 将上一次输出最右边的值插入到最左边
                end
                else begin
                    led <= {led[6:0], led[7]}; // 从左向右移动: 将上一次输出最左边的值插入到最右边
                end
            end
        end
    end

endmodule
