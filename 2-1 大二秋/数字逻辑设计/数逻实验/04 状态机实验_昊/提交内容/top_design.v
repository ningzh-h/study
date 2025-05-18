// `timescale 1ns / 1ps

module uart_send_top (
        input wire clk,                   // 时钟
        input wire rst,                   // 复位信号
        output wire tx                    // UART发送输出
    );

    // 参数设置
    parameter TIME_FPGA = 10000000;      // 0.1秒的字符间隔计数值

    reg [7:0] id [0:9];
    reg [4:0] id_index = 0;             // 当前字符的索引
    reg [31:0] time_control = 0;         // 计时器用于0.1秒延迟
    reg valid = 0;                        // 数据有效信号
    reg [7:0] data =0 ;

    // 学号(09)ASCII码
    initial begin
        id[0] = 8'h32; // '2'
        id[1] = 8'h30; // '0'
        id[2] = 8'h32; // '2'
        id[3] = 8'h33; // '3'
        id[4] = 8'h33; // '3'
        id[5] = 8'h31; // '1'
        id[6] = 8'h31; // '1'
        id[7] = 8'h37; // '7'
        id[8] = 8'h30; // '0'
        id[9] = 8'h39; // '9'
    end

    // UART发送模块实例化
    uart_send u_uart_send(
        .clk(clk),
        .rst(rst),
        .valid(valid),
        .data(data),
        .dout(tx)
    );


    // 状态机实现
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            id_index <= 0;
            time_control <= 0;
            valid <= 0;
        end else begin
            if (time_control == TIME_FPGA) begin
                data <= id[id_index];
                valid <= 1;
                time_control <= 0;
                if (id_index < 10) begin
                    id_index <= id_index + 1;
                end else id_index <= 0;
            end else if (valid) valid <= 0;    // 释放数据有效信号
            else begin 
                time_control <= time_control + 1;    // 计时0.1秒
            end
        end
    end

endmodule