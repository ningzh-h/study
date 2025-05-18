`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: HITSZ
// Engineer: Zhonghao Ning
// 
// Create Date: 2024/11/13 09:08:01
// Design Name: Exp 3
// Module Name: button_ctrl
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


module button_ctrl(
    input            clk   , 
    input            rst   ,
    input            button, 
    input      [7:0] switch, 
    output reg       valid , 
    output reg [7:0] data 
);

    // 变量定义
    reg [15:0] debounce_shift_reg; 
    wire button_status     ;
    wire button_edge_detect;
    reg sig_r0;
    reg sig_r1;
    reg sig_r2;


    // button 按键去抖
    always @(posedge clk) begin
      debounce_shift_reg <= {debounce_shift_reg[14:0], button};
    end

    assign button_status = (debounce_shift_reg == 16'hFFFF) ? 1'b1 : 1'b0;


    // button 上升沿检测
    always @ (posedge clk or posedge rst) begin
        if(rst) sig_r0 <= 1'b0;
        else    sig_r0 <= button_status;
    end

    always @ (posedge clk or posedge rst) begin
        if(rst) sig_r1 <= 1'b0;
        else    sig_r1 <= sig_r0;
    end

    always @ (posedge clk or posedge rst) begin
        if(rst) sig_r2 <= 1'b0;
        else    sig_r2 <= sig_r1;
    end

    assign button_edge_detect = ~sig_r2 & sig_r0;
 

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            data <= 0;
            valid <= 0;
        end else if (button_edge_detect) begin
            data <= switch;
            valid <= 1;
        end else if (valid) begin
            valid <= 0;
        end
    end

endmodule
