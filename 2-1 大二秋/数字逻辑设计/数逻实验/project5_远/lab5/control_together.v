`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2024/11/09 08:58:22
// Design Name:
// Module Name: control_together
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


module control_together(
    input wire clk,
    input wire rst,
    input wire rx,
    input wire S3,
    input wire [7:0] SW,
    output wire tx,
    output wire [7:0] led_en,
    output wire [7:0] led_cx
  );

  top_control top_control_u(
    .clk(clk),
    .rst(rst),
    .S3(S3),
    .SW(SW),
    .tx(tx)
  );

  top top_u(
    .clk(clk),
    .rst(rst),
    .rx(rx),
    .led_en(led_en),
    .led_cx(led_cx)
  );
endmodule
