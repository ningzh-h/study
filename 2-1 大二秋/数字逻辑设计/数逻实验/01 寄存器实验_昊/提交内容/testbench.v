`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: HITSZ
// Engineer: Zhonghao Ning
// 
// Create Date: 2024/10/11 12:06:15
// Design Name: Exp 1-2
// Module Name: testbench
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


module testbench(
    );
    
reg clk;  
reg clr;  
reg en;  
reg [7:0] d;  
reg [2:0] wsel;  
reg [2:0] rsel;  
wire [7:0] q;

reg8file u_reg8file(
    .clk (clk ),  
    .clr (clr ),  
    .en  (en  ),  
    .d   (d   ),  
    .wsel(wsel),  
    .rsel(rsel),  
    .q   (q   )
    );
    
initial begin
    // 复位
    clr = 1;  
    clk = 0;
    en  = 0;  
    d   = 0;  
    wsel = 3'b000;  
    rsel = 3'b000;
    
    // 读取
    #10 clr = 0;
    
    // 写入第一个数据
    // 001 ==> 00000011
    #10; 
    en   = 1'b1; 
    wsel = 3'b001;
    d    = 8'b00000011; 
    
    // 写入第二个数据 (为方便操作, 只改变一个数位)
    // 011 ==> 10000011
    #10; 
    wsel = 3'b011;
    d    = 8'b10000011;

    // 读取第一个数据
    #10 rsel = 3'b001;
    // 读取第二个数据
    #10 rsel = 3'b011;
    
    // 使能置零
    #10 en = 0;
    
    #200; 
    $finish;
end

always #5 clk = ~clk; 

endmodule