`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/24 23:04:06
// Design Name: 
// Module Name: edge_detect
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

module edge_detect(
    input wire clk,
    input wire rst,
    input wire signal,
    output wire pos_edge
);

reg sig_r0, sig_r1, sig_r2;

always @ (posedge clk or posedge rst) begin
    if(rst) sig_r0 <= 0;
    else    sig_r0 <= signal;
end

always @ (posedge clk or posedge rst) begin
    if(rst) sig_r1 <= 0;
    else    sig_r1 <= sig_r0;
end

always @ (posedge clk or posedge rst) begin
    if(rst) sig_r2 <= 0;
    else    sig_r2 <= sig_r1;
end

assign pos_edge = ~sig_r2 & sig_r1;

endmodule