`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: HITSZ
// Engineer: Zhonghao Ning
// 
// Create Date: 2024/10/17 16:25:07
// Design Name: Exp 2
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


module testbench();
    reg        clk     ;
    reg        rst     ; 
    reg        button  ; 
    reg  [1:0] freq_set; 
    reg        dir_set ; 
    wire [7:0] led     ;
    
    flowing_water_lights #(10000) u_flowing_water_lights(
        .clk     (clk     ),
        .rst     (rst     ),
        .button  (button  ),
        .freq_set(freq_set),
        .dir_set (dir_set ),
        .led     (led     )
    );
    
    initial begin
        // 初始化, 复位
        clk      = 0    ;
        rst      = 1    ;
        button   = 0    ;
        freq_set = 2'b10;  
        dir_set  = 0    ;

        #10000;
        
        rst = 0;

        #10000;
        
        // 启动
        #1000 button = 1;
        #20   button = 0;

        #200000;

        // 暂停
        #1000 button = 1;
        #20   button = 0;

        #80000;

        // 启动
        #1000 button = 1;
        #20   button = 0;
        
        // 间隔切换
        freq_set = 2'b00; 

        #20000;
        
        // 方向切换
        dir_set  = 1; 

        #20000;

        $finish;
    end

    always #10 clk = ~clk; 
endmodule
