`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: HITSZ
// Engineer: Zhonghao Ning
// 
// Create Date: 2024/11/15 09:16:16
// Design Name: Exp 5
// Module Name: led_ctrl
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


module led_ctrl(
    input            clk   ,       // 时钟信号, Y18
    input            rst   ,       // 异步复位, S1
    input      [7:0] data  ,
    input            valid , 
    output reg [7:0] led_en,       // 数码管使能信号, 从左到右: A18 A20 B20 E18 F18 D19 E19 C19
                                   // DK7-DK6: 学号后两位 09 => 00000011(0) CA CB CC CD CF CG 01101111(9)
                                   // DK5-Dk4: 拨码开关 SW7-SW0 输入的个数
                                   // DK3-DK2: 输入计数
                                   // DK1-DK0: 十进制计数, 计数到20保持, 按下S2重新开始
    output reg [7:0] led_cx        // 数码管驱动信号, CA~CG-DP: F15 F13 F14 F16 E17 C14 C15 E13
);

    // 常量定义
    parameter REFRESH_RATE = 200000 - 1;

    // 变量定义
    reg  [4:0]  buffer [7:0]    ;  // 缓冲区
    reg  [4:0]  data_former     ;  // 两个数据中的前一个
    reg  [4:0]  data_latter     ;  // 两个数据中的后一个
    wire [7:0] data_to_led [7:0];  // 8 位数码管输出数据

    // 更新显示缓存
    reg [10:0] buffer_cnt;
    reg [1:0] flag;
    integer i, n, s;

    // 状态寄存器, 数码管轮询工作
    reg [2:0]  led_index;
    reg [23:0] led_cnt  ;


    // 串口软件只能发送十六进制信号, 也就是一次会发送两个信号, 所以需要将一次接收两个信号
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            flag <= 0;
            data_former <= 5'h1f;
            data_latter <= 5'h1f;
            buffer_cnt <= 0;
            for(i=0; i<8; i=i+1) begin
                buffer[i] <= 5'h1f;
            end
        end else if (valid) begin
            data_former <= data[7:4];
            data_latter <= data[3:0];
            flag <= 1;
        end else if (flag) begin
            for (n=7; n>1; n=n-1) begin
                buffer[n] <= buffer[n-2];
            end
            buffer_cnt <= buffer_cnt +1;
            buffer[1] <= data_former;
            buffer[0] <= data_latter;
            flag <= 0;
        end
    end


    // 循环实例化 led_display 模块, 将数据转化为 led_cx
    genvar q;
    generate
        for(q=0; q<8; q=q+1) begin: u_led_display
            led_display u_led_display(
                .data       (buffer  [q]),
                .led_ctrl_cx(data_to_led[q])
        );
      end
    endgenerate


    // LED 灯轮询工作
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            led_cnt <= 0;
            led_index <= 0;
        end else begin
            if (led_cnt == REFRESH_RATE) begin
                led_cnt <= 0;
                if(led_index == 7) begin
                    led_index <= 0;
                end else led_index <= led_index + 1;
            end else begin
                led_cnt = led_cnt + 1;
          end
        end
    end

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            led_cx <= 8'b11111111;
        end else begin
            led_cx <= data_to_led[led_index];
        end
    end

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            led_en <= 8'b11111111;
        end else begin
            case(led_index)
                3'd0: led_en <= 8'b11111110;
                3'd1: led_en <= 8'b11111101;
                3'd2: led_en <= 8'b11111011;
                3'd3: led_en <= 8'b11110111;
                3'd4: led_en <= 8'b11101111;
                3'd5: led_en <= 8'b11011111;
                3'd6: led_en <= 8'b10111111;
                3'd7: led_en <= 8'b01111111;
            endcase
        end
    end

endmodule
