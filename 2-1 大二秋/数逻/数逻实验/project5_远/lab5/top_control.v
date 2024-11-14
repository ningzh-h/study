`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2024/11/08 11:04:02
// Design Name:
// Module Name: top_control
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


module top_control(
    input wire clk,
    input wire rst,
    // input wire [7:0] data,
    input wire S3,
    // input wire S1,
    input wire [7:0] SW,
    output wire tx
  );

  wire valid;
  wire [7:0] data;

  // SW拨码开关模块实例化
  dip_switch dip_switch_u(
               .clk(clk),
               .S1(rst),
               .SW(SW),
               .S3(S3),
               .valid(valid),
               .data(data)
             );

  // UART发送模块实例化
  uart_send uart_send_inst (
              .clk(clk),
              .rst(rst),
              .valid(valid),
              .data(data),
              .dout(tx)
            );

  // uart_recv uart_recv_u(
  //             .clk(clk),
  //             .rst(rst),
  //             .din(tx),
  //             .data(display)
  //           );

endmodule
