
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

    // 状态定义
    localparam IDLE  = 3'b000;
    localparam START = 3'b001;
    localparam DATA  = 3'b010;
    localparam STOP  = 3'b011;

    // 常量定义
    localparam CLK_FREQ  = 1e8  ;                // 时钟频率: 100MHz
    localparam PERIOD    = 1e9 / CLK_FREQ;       // 时钟周期: 10ns
    localparam BAUD_RATE = 9600 ;                // 波特率: 9600
    localparam BAUD_END  = 10415;                // 产生时钟频率的计数器时钟周期个数: [10^8/9600]-1 = 10415
    localparam BAUD_HALF = (BAUD_END + 1) / 2;   // 半周期取样: 10416/2 = 5208

    // 变量定义
    reg [2:0]  current_state;                    // 现态
    reg [2:0]  next_state   ;                    // 次态
    reg [4:0]  bit_index    ;                    // 数据接收位
    reg [7:0]  data_saved   ;                    // 暂储数据的移位寄存器
    reg [13:0] baud_counter ;                    // 产生波特率的计数器


    //* 三段式实现状态机
    // 第1个always块，描述次态迁移到现态
    always @(posedge clk or posedge rst) begin
        if (rst) current_state <= IDLE;
        else     current_state <= next_state; 
    end

    // 第2个always块，描述状态转移条件判断
    always @(*) begin
        case (current_state)
            // 空闲状态: 接收到起始信号 din == 0 后进入起始状态
            IDLE: begin 
                if(din == 0) begin
                    next_state = START;
                end else next_state = IDLE;
            end
            // 起始状态: 持续半个波特率, 后进入数据状态
            // 保证之后采样间隔为一个波特率的同时, 在信号的中段采样
            START: begin
                if(baud_counter == BAUD_HALF) begin
                    next_state = DATA;
                end else next_state = START;
            end
            // 数据状态: 传入 8 位数据后进入停止状态
            DATA: begin
                if (bit_index == 8) begin
                    next_state = STOP;
                end else next_state = DATA;
            end
            // 停止状态: 继续采样, 接受到停止信号 din == 1 后转入空闲状态
            STOP: begin
                if(baud_counter == BAUD_END) begin
                    next_state = IDLE; 
                end else next_state = STOP;
            end
            default: next_state = IDLE;
        endcase
    end

    // 第3个always块，描述输出逻辑
    always @(posedge clk or posedge rst) begin
        if(rst) begin 
            data <= 0;
            data_saved <= 0;
            valid <= 0;
            baud_counter <= 0;
        end else begin
            case(current_state)
                // 空闲状态: 复位计数器与有效信号
                IDLE: begin 
                    valid <= 0;
                    baud_counter <= 0;
                end
                // 起始状态: 计数半个波特率, 完成后复位波特率计数器与位计数器
                START: begin
                    if(baud_counter == BAUD_HALF) begin
                        baud_counter <= 0;
                        bit_index <= 0;
                    end else begin
                        baud_counter <= baud_counter + 1;
                    end
                end
                // 数据状态: 以波特率为间隔采样, 逐位传入数据
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
                // 停止状态: 继续采样, 接收到停止信号 din == 1 后将 valid 拉高, 并将暂存的数据赋值给输出端口 
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
