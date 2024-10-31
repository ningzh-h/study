`timescale 1ns / 1ps

module uart_send(
    input        clk,         // 9600 波特率的时钟信号
    input        rst,         // 复位信号
    input        valid,       // 数据有效信号，高电平维持一个时钟周期
    input [7:0]  data,        // 需要发送的数据
    output reg   dout         // 串口发送数据引脚 (连接到USB UART的TX引脚)
);

    // 状态定义
    localparam IDLE  = 2'b00;   // 空闲状态，发送高电平
    localparam START = 2'b01;   // 起始位状态，发送起始位 (低电平)
    localparam DATA  = 2'b10;   // 数据位状态，逐位发送8位数据
    localparam STOP  = 2'b11;   // 停止位状态，发送停止位 (高电平)

    reg [1:0] current_state, next_state; // 当前状态和下一状态
    reg [3:0] bit_index;                 // 数据位计数器，控制发送8位数据
    reg [7:0] shift_reg;                 // 用于保存数据的移位寄存器
    reg baud_tick;                       // 波特率时钟脉冲，用于同步数据发送

    // 波特率生成部分（波特率为9600，时钟频率为100MHz）
    localparam BAUD_DIV = 10416-1;          // 波特率计数器分频值 (100MHz / 9600 - 1)
    reg [13:0] baud_counter = 0;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            baud_counter <= 0;
            baud_tick <= 0;
        end else begin
            if (baud_counter == BAUD_DIV) begin
                baud_counter <= 0;
                baud_tick <= 1;
            end else begin
                baud_counter <= baud_counter + 1;
                baud_tick <= 0;
            end
        end
    end

    // 第1个always块：描述状态迁移（次态到现态）
    always @(posedge clk or posedge rst) begin
        if (rst)
            current_state <= IDLE;
        else if (baud_tick)  // 在波特率脉冲下进行状态迁移
            current_state <= next_state;
    end

    // 第2个always块：状态转移条件判断
    always @(*) begin
        case (current_state)
            IDLE: begin
                if (valid)           // 如果数据有效，进入起始状态
                    next_state = START;
                else
                    next_state = IDLE;
            end
            START: next_state = DATA; // 起始位发送完后，进入数据发送状态
            DATA: begin
                if (bit_index == 7)   // 8位数据发送完，进入停止位
                    next_state = STOP;
                else
                    next_state = DATA; // 否则继续发送数据位
            end
            STOP: next_state = IDLE;  // 停止位发送完后回到空闲状态
            default: next_state = IDLE;
        endcase
    end

    // 第3个always块：输出逻辑
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            dout <= 1'b1;         // 空闲状态下UART发送高电平
            shift_reg <= 8'b0;    // 清空移位寄存器
            bit_index <= 0;       // 复位数据位计数器
        end else begin
            case (current_state)
                IDLE: begin
                    dout <= 1'b1; // 空闲状态发送高电平
                    if (valid) begin
                        shift_reg <= data;  // 将输入数据加载到移位寄存器
                        bit_index <= 0;     // 数据位计数器清零
                    end
                end
                START: dout <= 1'b0;       // 发送起始位（低电平）
                DATA: begin
                    dout <= shift_reg[bit_index]; // 逐位发送数据位
                    bit_index <= bit_index + 1;   // 数据位计数器加一
                end
                STOP: dout <= 1'b1;         // 发送停止位（高电平）
            endcase
        end
    end
endmodule
