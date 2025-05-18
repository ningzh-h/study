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
    input          clk,             // 时钟信号
    input          rst,             // 复位信号
    input          valid,           // 有效信号, 高电平, 每次维持一个时钟周期
    input [7:0]    data,            // 8 位数据信号
    output reg     dout             // 串口发送数据引脚 (连接USB UART的TX引脚)
    );

    // * 参数定义
    // 状态定义
    parameter IDLE  = 2'b00;     // 空闲状态: 持续的高电平
    parameter START = 2'b01;     // 起始状态: 发送起始位 (一位低电平)
    parameter DATA  = 2'b10;     // 数据状态: 逐位发送 8 位数据
    parameter STOP  = 2'b11;     // 停止状态: 发送停止位 (一位高电平)

    // 波特率相关参数
    parameter CLOCK_FREQ = 1e8  ;             // 时钟频率: 100MHz
    parameter PERIOD     = 10   ;             // 时钟周期: 10ns
    parameter BAUD_RATE  = 9600 ;             // 波特率: 9600s
    parameter BAUD_DIV   = 10415;             // 1e9 / 9600 -1

    // * 变量定义
    // 状态变量
    reg [1:0] current_state;                  // 当前状态
    reg [1:0] next_state = 2'b00;             // 下一状态

    // 数据传输
    reg [3:0] bit_index;                      // 用于逐位发送数据
    reg [7:0] data_saved;                     // 用于保存数据
    reg       start_flag = 0;                 // 用于判断是否进入起始状态

    // 波特率生成
    reg baud_check = 0;                       // 将时钟周期延迟至波特率, 用于反映是否达到波特率时钟边沿
    reg [13:0] baud_counter = 0;              // 波特率延迟时钟


    // * 波特率生成部分 (波特率为 9600, 时钟频率为 100MHz)
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


    // * 移位寄存器保存数据
    always @(posedge clk or posedge rst) begin
        if (rst) data_saved <= 8'b0;
        else if (valid) begin
            data_saved <= data;
        end
    end


    // * 检测低电平, 使下一状态进入起始状态
    always @(posedge clk) begin
        if (valid) begin
            start_flag = 1;
        end

        if (start_flag) begin
            if (current_state == START) start_flag <= 0;
        end
    end


    // * 三段式实现状态机
    // 第1个always块, 描述次态迁移到现态
    always @(posedge clk or posedge rst) begin
        if (rst) current_state <= IDLE;
        else current_state <= next_state; 
    end

    // 第2个always块, 描述状态转移条件判断
    always @(*) begin
        if (baud_check) begin
            if (start_flag) next_state = START;
            else begin
                case (next_state)
                IDLE: begin
                    next_state = IDLE;                      // 空闲状态 => 空闲状态
                end
                START: begin
                    next_state = DATA;                      // 起始状态 => 数据状态
                end
                DATA: begin
                    if (bit_index == 7) next_state = STOP;  // 数据状态 => 停止状态
                    else next_state = DATA;                 // 否则继续发送数据位
                end
                STOP: begin
                    next_state = IDLE;                      // 停止状态 => 空闲状态
                end
                default: next_state = IDLE;                 // 默认: 空闲
                endcase
            end
        end
    end

    // 逐位输出数据
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            bit_index <= 3'b0;
        end else if (valid) bit_index =0;
        else if (baud_check) begin
            if (current_state == DATA)
                bit_index <= bit_index + 1;                 // 数据位计数器加一
        end
    end

    // 第3个always块, 描述输出逻辑
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            dout <= 1'b1; 
        end else begin
            case (current_state)
            IDLE:    dout <= 1'b1;                          // 空闲状态发送持续的高电平
            START:   dout <= 1'b0;                          // 起始状态发送一位低电平
            DATA:    dout <= data_saved[bit_index];         // 数据状态逐位发送数据
            STOP:    dout <= 1'b1;                          // 停止状态发送一位高电平
            default: dout <= 1'b1;                          // 默认: 空闲状态
            endcase
        end
    end

endmodule