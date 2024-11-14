`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2024/11/08 17:39:01
// Design Name:
// Module Name: dlsplay_transfor
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


module dlsplay_transfor(
    input wire [4:0] digit,
    // input wire flag,
    output reg [7:0] segment
  );

  always @(*)
  begin
    if (digit == 5'h1f)
    segment =  8'b11111111; // blank
    else
    begin
      case (digit)
        4'h0:
          segment = 8'b00000011; // 0
        4'h1:
          segment = 8'b10011111; // 1
        4'h2:
          segment = 8'b00100101; // 2
        4'h3:
          segment = 8'b00001101; // 3
        4'h4:
          segment = 8'b10011001; // 4
        4'h5:
          segment = 8'b01001001; // 5
        4'h6:
          segment = 8'b01000001; // 6
        4'h7:
          segment = 8'b00011111; // 7
        4'h8:
          segment = 8'b00000001; // 8
        4'h9:
          segment = 8'b00001001; // 9
        4'hA:
          segment = 8'b00010001; // A
        4'hB:
          segment = 8'b11000001; // B
        4'hC:
          segment = 8'b11100101; // C
        4'hD:
          segment = 8'b10000101; // D
        4'hE:
          segment = 8'b01100001; // E
        4'hF:
          segment = 8'b01110001; // F
        default:
          segment = 8'b11111110; // blank
      endcase
    end
    // else
    //   segment =  8'b11111111; // blank
  end

endmodule
