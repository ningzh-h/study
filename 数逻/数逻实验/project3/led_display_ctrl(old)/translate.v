`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/24 23:52:20
// Design Name: 
// Module Name: translate
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

module translate(
    input wire [3:0] digit,
    output reg [7:0] segment
);

always @(*) begin
    case (digit)  
        4'd0: segment = 8'b00000011; // 0  
        4'd1: segment = 8'b11110011; // 1  
        4'd2: segment = 8'b00100101; // 2  
        4'd3: segment = 8'b00001101; // 3  
        4'd4: segment = 8'b10011001; // 4  
        4'd5: segment = 8'b01001001; // 5  
        4'd6: segment = 8'b01000001; // 6  
        4'd7: segment = 8'b00011111; // 7  
        4'd8: segment = 8'b00000001; // 8  
        4'd9: segment = 8'b00001001; // 9  
        default: segment = 8'b11111110; // blank
    endcase  
end

endmodule