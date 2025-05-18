`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: HITSZ
// Engineer: Zhonghao Ning
// 
// Create Date: 2024/10/11 10:54:38
// Design Name: Exp1-2
// Module Name: reg8file
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


module reg8file(
    input            clr , // �첽��λ��S1
    input            clk , // ʱ���źţ�Y18
    input            en  , // ʹ���źţ�SW23
    input      [7:0] d   , // д�����ݣ�SW7-SW0
    input      [2:0] wsel, // дѡ��ˣ�SW22-SW20
    input      [2:0] rsel, // ��ѡ��ˣ�SW10-SW8
    output reg [7:0] q     // ������ݣ�GLD7-GLD0
    );
    reg [7:0] regfile[7:0];
    
    always @ (posedge clk or posedge clr) 
    begin
        if (clr == 1) begin     // �첽��λ
                regfile[0] <= 8'b0;
                regfile[1] <= 8'b0;
                regfile[2] <= 8'b0;
                regfile[3] <= 8'b0;
                regfile[4] <= 8'b0;
                regfile[5] <= 8'b0;
                regfile[6] <= 8'b0;
                regfile[7] <= 8'b0;
        end
        else if (en == 1) begin // д������
            case (wsel)
            3'b000: regfile[0] <= d;
            3'b001: regfile[1] <= d;
            3'b010: regfile[2] <= d;
            3'b011: regfile[3] <= d;
            3'b100: regfile[4] <= d;
            3'b101: regfile[5] <= d;
            3'b110: regfile[6] <= d;
            3'b111: regfile[7] <= d;
            default:               ;
            endcase
        end
    end
    
    always @ * begin
        case (rsel)
        3'b000: q = regfile[0];
        3'b001: q = regfile[1];
        3'b010: q = regfile[2];
        3'b011: q = regfile[3];
        3'b100: q = regfile[4];
        3'b101: q = regfile[5];
        3'b110: q = regfile[6];
        3'b111: q = regfile[7];
        default:              ;
        endcase
    end
    
endmodule
