`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2024/11/08 16:53:03
// Design Name:
// Module Name: top
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


module top (
    input wire clk,           // 时钟信号
    input wire rst,           // 复位信号
    input wire rx,           // UART 接收信号
    output wire [7:0] led_en,
    output wire [7:0] led_cx
  );

  wire [7:0] rx_data;      // UART接收的数据
  wire valid;              // UART接收数据有效标志

  // UART接收模块实例化
  uart_recv uart_recv_inst (
              .clk(clk),
              .rst(rst),
              .din(rx),
              .data(rx_data),
              .valid(valid)
            );

  display_control display_control_u(
                    .clk(clk),
                    .rst(rst),
                    .rx_data(rx_data),
                    .valid(valid),
                    .led_cx(led_cx),
                    .led_en(led_en)
                  );
endmodule
