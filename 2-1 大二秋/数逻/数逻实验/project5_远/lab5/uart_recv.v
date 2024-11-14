`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/07 22:14:04
// Design Name: 
// Module Name: uart_receive
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

`timescale 1ns / 1ps

module uart_recv (
    input wire clk,                // 时钟信号
    input wire rst,                // 复位信号
    input wire din,                // UART接收引脚
    output reg valid,              // 数据有效标志 (1 表示数据有效)
    output reg [7:0] data          // 接收的数据
);

    // 波特率 (9600) 和时钟频率 (假设为 100 MHz)
    localparam CLOCK_FREQ = 100*1e6;         //时钟频率: 100MHz
    localparam PERIOD     = 1e9/CLOCK_FREQ;  //时钟周期: 10ns
    localparam BAUD_RATE  = 9600;
    localparam BIT_PERIOD = CLOCK_FREQ / BAUD_RATE; //10416
    localparam HALF_PERIOD = BIT_PERIOD /2; // 中间进行采样
    // reg [13:0] baud_counter = 0;

    // UART接收状态机状态
    localparam IDLE  = 3'b000;
    localparam START = 3'b001;
    localparam DATA  = 3'b010;
    localparam STOP  = 3'b011;

    reg [2:0] state = IDLE;          // 当前状态
    reg [3:0] bit_index = 0;         // 数据位索引 (0-7, 用于8位数据)
    reg [15:0] cnt = 0;              // 计数器，用于位定时
    reg [7:0] shift_reg = 0;         // 移位寄存器，用于存储接收到的位
    reg baud_tick = 0;
    reg flag = 0;
    reg [15:0] cnt_half = HALF_PERIOD;  // 计数到一半
    reg [15:0] cnt_end = BIT_PERIOD;        // 计数结束位置

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            state <= IDLE;
            cnt <= 0;
            bit_index <= 0;
            shift_reg <= 0;
            data <= 8'b0;
            valid <= 0;
        end else begin
            case (state)
                IDLE: begin
                    valid <= 0;
                    cnt <= 0;     // 移动到起始位
                    if (din == 0) begin   // 检测起始位 (din 变低)
                        state <= START;
                        // cnt <= 0;         // 移动到起始位
                    end
                end

                START: begin
                    if (cnt == cnt_half) begin
                        state <= DATA;     // 转换到 DATA 状态
                        cnt <= 0;          // 重置计数器用于数据位
                        bit_index <= 0;
                    end else begin
                        cnt <= cnt + 1;
                    end
                end

                DATA: begin
                    if (cnt == cnt_end) begin
                        shift_reg[bit_index] <= din; // 在中间采样当前位
                        cnt <= 0;          // 重置计数器
                        if (bit_index == 7) begin
                            state <= STOP;          // 所有位接收完成，进入 STOP 状态
                        end else begin
                            bit_index <= bit_index + 1;
                        end
                    end else begin
                        cnt <= cnt + 1;
                    end
                end

                STOP: begin
                    if (cnt == cnt_end) begin
                        if (din == 1) begin          // 检测有效的停止位
                            data <= shift_reg;       // 存储接收的数据
                            valid <= 1;              // 数据有效标志置为高
                        end
                        state <= IDLE;               // 返回到 IDLE 状态
                    end else begin
                        cnt <= cnt + 1;
                    end
                end

                default: state <= IDLE;
            endcase
        end
    end
endmodule

