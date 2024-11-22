`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: HITSZ
// Engineer: Zhonghao Ning
//
// Create Date: 2024/11/15 10:05:37
// Design Name: Exp 5
// Module Name: led_display
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


module led_display(
    input      [4:0] data,
    output reg [7:0] led_ctrl_cx
);
    /*************
      LED 数字编码
    0: 8'b11000000
    1: 8'b11111001
    2: 8'b10100100
    3: 8'b10110000
    4: 8'b10011001
    5: 8'b10010010
    6: 8'b10000010
    7: 8'b11111000
    8: 8'b10000000
    9: 8'b10010000
    A: 8'b10001000
    B: 8'b10000011
    C: 8'b11000110
    D: 8'b10100001
    E: 8'b10000110
    F: 8'b10001110
    *************/
    always @(*) begin
        if (data == 5'h1f) led_ctrl_cx = 8'b11111111; // 不显示
        else begin
            case (data)
                4'h0:    led_ctrl_cx = 8'b00000011; // 0
                4'h1:    led_ctrl_cx = 8'b10011111; // 1
                4'h2:    led_ctrl_cx = 8'b00100101; // 2
                4'h3:    led_ctrl_cx = 8'b00001101; // 3
                4'h4:    led_ctrl_cx = 8'b10011001; // 4
                4'h5:    led_ctrl_cx = 8'b01001001; // 5
                4'h6:    led_ctrl_cx = 8'b01000001; // 6
                4'h7:    led_ctrl_cx = 8'b00011111; // 7
                4'h8:    led_ctrl_cx = 8'b00000001; // 8
                4'h9:    led_ctrl_cx = 8'b00001001; // 9
                4'ha:    led_ctrl_cx = 8'b00010001; // A
                4'hb:    led_ctrl_cx = 8'b11000001; // B
                4'hc:    led_ctrl_cx = 8'b11100101; // C
                4'hd:    led_ctrl_cx = 8'b10000101; // D
                4'he:    led_ctrl_cx = 8'b01100001; // E
                4'hf:    led_ctrl_cx = 8'b01110001; // F
                default: led_ctrl_cx = 8'b11111111; // 不显示
            endcase
        end
    end

endmodule
