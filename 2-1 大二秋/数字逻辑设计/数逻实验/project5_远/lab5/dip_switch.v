`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2024/11/08 10:50:34
// Design Name:
// Module Name: dip_switch
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


module dip_switch(
    input wire clk,
    // input wire rst,
    input wire [7:0] SW,
    input wire S1,
    input wire S3,
    output reg valid,
    output reg [7:0] data
  );

  // reg [7:0] data;

  always @(posedge clk or posedge S1)
    if (S1)
    begin
      data <= 0;
      valid <= 0;
    end
    else if (pos_edge)
    begin
      data <= SW;
      valid <= 1;
    end
    else if (valid)
    begin
      valid <= 0;
    end

  // S3 按键去抖动
  reg [15:0] debounce_shift_reg = 16'b0;
  wire debounced_S3;

  // Shift-register debounce circuit
  always @(posedge clk)
  begin
    debounce_shift_reg <= {debounce_shift_reg[14:0], S3};
  end

  // Debounced S3 is high only if all bits in debounce_shift_reg are 1's
  assign debounced_S3 = (debounce_shift_reg == 16'hFFFF) ? 1'b1 : 1'b0;

  // S3 计数 with debounced S3
  wire pos_edge;

  edge_detect u_edge_detect(
                .clk(clk),
                .rst(S1),
                .signal(debounced_S3), // Use debounced signal here
                .pos_edge(pos_edge)
              );

endmodule


//上升沿检测
module edge_detect(
    input wire clk,
    input wire rst,
    input wire signal,
    output wire pos_edge
  );

  reg sig_r0, sig_r1, sig_r2;

  always @ (posedge clk or posedge rst)
  begin
    if(rst)
      sig_r0 <= 0;
    else
      sig_r0 <= signal;
  end

  always @ (posedge clk or posedge rst)
  begin
    if(rst)
      sig_r1 <= 0;
    else
      sig_r1 <= sig_r0;
  end

  always @ (posedge clk or posedge rst)
  begin
    if(rst)
      sig_r2 <= 0;
    else
      sig_r2 <= sig_r1;
  end

  assign pos_edge = ~sig_r2 & sig_r1;

endmodule
