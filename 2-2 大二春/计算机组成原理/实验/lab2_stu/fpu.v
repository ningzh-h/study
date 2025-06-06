
`timescale 1ns / 1ps

module fpu(
    input  wire         rst,    // 高电平复位
    input  wire         clk,
    input  wire         start,  // start为1时，使用op、A、B开始计算
    input  wire         op,     // 为0时加, 为1时减
    input  wire [31:0]  A,      // 左操作数
    input  wire [31:0]  B,      // 右操作数
    output reg          ready,  // 复位或计算完成时ready为1，检测到start为1时置为0
    output wire [31:0]  C       // 计算结果
);

    // TODO: 定义状态
    localparam IDLE   = 3'd0;
    localparam START  = 3'd1;
    localparam ALIGN  = 3'd2;
    localparam OP     = 3'd3;
    localparam NORMAL = 3'd4;
    localparam END    = 3'd5;

    // 状态变量
    reg [2:0] next_state, cur_state;

    reg [31:0] res;
    reg        reg_op;                          // 操作保存
    reg        sgn_A, sgn_B, sgn_res;           // 符号保存
    reg [ 7:0] exp_A, exp_B, exp_res, temp_exp; // 指数保存
    reg [24:0] man_A, man_B, man_res, temp_man; // 尾数保存
    reg [24:0] man_sum, temp_sum;               // 尾数运算中间结果保存
    reg [ 5:0] high_one=0;



    // 三段式第1段
    always @(posedge clk or posedge rst) begin
        cur_state <= rst ? IDLE : next_state;
    end

    // 三段式第2段
    always @(*) begin
        case (cur_state)
            IDLE  :  next_state = start ? START : IDLE;
            START :  next_state = ALIGN ;
            ALIGN :  next_state = OP    ;
            OP    :  next_state = NORMAL;
            NORMAL:  next_state = END   ;
            END   :  next_state = IDLE  ;
            default: next_state = IDLE  ;
        endcase
    end

    // 组合逻辑部分, 寻找高位 1    
    always @(*) begin
        high_one = 0;
        
        if      (man_sum[23]) high_one =  0;  
        else if (man_sum[22]) high_one =  1;  
        else if (man_sum[21]) high_one =  2;  
        else if (man_sum[20]) high_one =  3;  
        else if (man_sum[19]) high_one =  4;
        else if (man_sum[18]) high_one =  5;
        else if (man_sum[17]) high_one =  6;
        else if (man_sum[16]) high_one =  7;
        else if (man_sum[15]) high_one =  8;
        else if (man_sum[14]) high_one =  9;
        else if (man_sum[13]) high_one = 10;
        else if (man_sum[12]) high_one = 11;
        else if (man_sum[11]) high_one = 12;
        else if (man_sum[10]) high_one = 13;
        else if (man_sum[ 9]) high_one = 14;
        else if (man_sum[ 8]) high_one = 15;
        else if (man_sum[ 7]) high_one = 16;
        else if (man_sum[ 6]) high_one = 17;
        else if (man_sum[ 5]) high_one = 18;
        else if (man_sum[ 4]) high_one = 19;
        else if (man_sum[ 3]) high_one = 20;
        else if (man_sum[ 2]) high_one = 21;
        else if (man_sum[ 1]) high_one = 22;
        else if (man_sum[ 0]) high_one = 23;
        else                  high_one =  0;
        
        temp_sum = (man_sum << high_one);
        temp_man = temp_sum[23:0];
        temp_exp = exp_res - high_one;
    end
    
    // 三段式第3段
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            ready <= 1'b1;
            res   <= 0;
        end else begin
            case (cur_state)
            IDLE: begin
                ready <= 1'b1;
                if(start) begin
                    ready <= 1'b0;
                    reg_op <= op;
                end
            end

            START: begin
                // 提取符号位
                sgn_A <= A[31];
                sgn_B <= B[31] ^ reg_op; // 减法时符号取反

                // 提取指数
                exp_A <= A[30:23];
                exp_B <= B[30:23];

                // 提取尾数, 并补充规格化数隐含的 1
                man_A <= {2'b01, A[22:0]};
                man_B <= {2'b01, B[22:0]};
                
                sgn_res <= 0;
                exp_res <= 0;
                man_res <= 0;
                man_sum <= 0;
            end

            ALIGN: begin
                // 对阶
                if(exp_A > exp_B) begin
                    man_B <= man_B >> (exp_A - exp_B);
                    exp_res <= exp_A;
                end else begin
                    man_A <= man_A >> (exp_B - exp_A);
                    exp_res <= exp_B;
                end
            end

            OP: begin
                if(sgn_A == sgn_B) begin
                    man_sum <= man_A + man_B;
                    sgn_res <= sgn_A;
                end else begin
                    if(man_A > man_B) begin
                        man_sum <= man_A - man_B;
                        sgn_res <= sgn_A;
                    end else begin
                        man_sum <= man_B - man_A;
                        sgn_res <= sgn_B;
                    end 
                end
            end

            NORMAL: begin
                if(man_sum == 0) begin
                    sgn_res <= 0;
                    exp_res <= 0;
                    man_res <= 0;
                end else if(man_sum[24]) begin
                    // 尾数求和有溢出, 向前进位
                    man_res <= man_sum[24:1];
                    exp_res <= exp_res + 1; 
                end else begin
                    man_sum <= temp_sum;
                    man_res <= temp_man;
                    exp_res <= temp_exp;
                end
            end

            END: begin
                res <= {sgn_res, exp_res, man_res[22:0]};
                ready <= 1'b1;
            end
            
            default: begin
                ready <= 1'b1;
                res <= 0;
            end
            endcase
        end
    end
    

    assign C = res;


endmodule
