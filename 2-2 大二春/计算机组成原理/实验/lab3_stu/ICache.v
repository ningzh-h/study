`timescale 1ns / 1ps

`include "defines.vh"

// 主存地址有效位宽：15bit
// Cache容量：128B
// Cache块大小：256bit (8*32bit)
// Cache块个数：4

module ICache(
    input  wire         cpu_clk,
    input  wire         cpu_rst,        // high active
    // Interface to CPU
    input  wire         inst_rreq,      // 来自CPU的取指请求
    input  wire [31:0]  inst_addr,      // 来自CPU的取指地址
    output reg          inst_valid,     // 输出给CPU的指令有效信号（读指令命中）
    output reg  [31:0]  inst_out,       // 输出给CPU的指令
    // Interface to Read Bus
    input  wire         dev_rrdy,       // 主存就绪信号（高电平表示主存可接收ICache的读请求）
    output reg  [ 3:0]  cpu_ren,        // 输出给主存的读使能信号
    output reg  [31:0]  cpu_raddr,      // 输出给主存的读地址
    input  wire         dev_rvalid,     // 来自主存的数据有效信号
    input  wire [255:0] dev_rdata       // 来自主存的读数据
);

`ifdef ENABLE_ICACHE    /******** 不要修改此行代码 ********/

    // ICache存储体
    reg [  3:0] valid     ;     // 有效位
    reg [  9:0] tag  [3:0];     // 块标签
    reg [255:0] data [3:0];     // 数据块

    // 定义ICache状态机的状态及状态变量
    localparam IDLE      = 2'b00;
    localparam TAG_CHECK = 2'b01;
    localparam REFILL    = 2'b10;

    // 状态逻辑寄存器
    reg [1:0] cur_state, next_state;

    // Cache 块访问寄存器: 
    reg [2:0] free_index;
    reg [1:0] replace_index, hit_index;
    reg [1:0] lfsr;

    // 主存地址分解
    wire [9:0] tag_from_cpu = inst_addr[14:5];
    wire [4:0] offset       = inst_addr[ 4:0];

    wire hit = (cur_state == TAG_CHECK) && (
        (valid[0] && (tag[0] == tag_from_cpu)) || 
        (valid[1] && (tag[1] == tag_from_cpu)) || 
        (valid[2] && (tag[2] == tag_from_cpu)) || 
        (valid[3] && (tag[3] == tag_from_cpu)) 
    );

    always @(*) begin
        if (cur_state != TAG_CHECK) begin
            hit_index = 2'd0;
        end else begin
            if (valid[0] && tag[0] == tag_from_cpu) begin
                hit_index = 2'd0;
            end else if (valid[1] && tag[1] == tag_from_cpu) begin
                hit_index = 2'd1;
            end else if (valid[2] && tag[2] == tag_from_cpu) begin
                hit_index = 2'd2;
            end else if (valid[3] && tag[3] == tag_from_cpu) begin
                hit_index = 2'd3;
            end else begin
                hit_index = 2'd0;
            end
        end
        inst_valid = hit;
        inst_out   =  data[hit_index][32*offset[4:2] +: 32]; // 根据字偏移，选择 Cache 行中的某个32位字输出指令
    end

    // 编写状态机现态的更新逻辑
    always @(posedge cpu_clk or posedge cpu_rst) begin
        if(cpu_rst) begin
            cur_state <= IDLE;
        end else begin
            cur_state <= next_state;
        end 
    end


    // 编写状态机的状态转移逻辑
    always @(*) begin
        case(cur_state) 
        IDLE: begin 
            next_state = inst_rreq ? TAG_CHECK : IDLE;
        end

        TAG_CHECK: begin
            if(hit) begin
                next_state = IDLE;
            end else begin
                next_state = dev_rrdy ? REFILL : TAG_CHECK;
            end
        end

        REFILL: begin
            next_state = dev_rvalid ? TAG_CHECK : REFILL;
        end

        default: begin
            next_state = IDLE;
        end
        endcase
    end
    
    // 生成状态机的输出信号
    always @(posedge cpu_clk or cpu_rst) begin
        if(cpu_rst) begin
            cpu_ren   <= 0;
            cpu_raddr <= 0;
        end else begin
            case(cur_state)
            IDLE: begin
                cpu_raddr <= inst_rreq ? {inst_addr[31:5], 5'h0} : 0;
            end
            
            TAG_CHECK: begin
                if(hit) begin
                    cpu_ren <= 0;
                end else begin
                    cpu_ren <= dev_rrdy ? 4'b1111 : 4'b0000;
                end
            end
            
            REFILL: begin
                cpu_ren <= 0;
            end
            
            default: begin
                cpu_ren <= 0;
            end
            endcase
        end
    end
    
    // LFSR 生成随机数
    always @(posedge cpu_clk or posedge cpu_rst) begin
        if(cpu_rst) begin
            lfsr <= 2'b01;
        end else begin
            lfsr <= {lfsr[0]^lfsr[1], lfsr[1]};
        end
    end
    
    // Cache 块替换序号
    always @(posedge cpu_clk or posedge cpu_rst) begin
        if(cpu_rst) begin
            replace_index <= 2'b00;
        end else if(free_index != 3'b100) begin
            replace_index <= free_index[1:0];
        end else begin
            replace_index <= lfsr;
        end
    end

    // Cache 块替换逻辑
    always @(posedge cpu_clk or posedge cpu_rst) begin
        if(cpu_rst) begin
            valid      <= 0;
            free_index <= 0;
        end else begin
            if((cur_state == REFILL) && dev_rvalid) begin
                valid[replace_index] <= 1'b1;
                tag  [replace_index] <= tag_from_cpu;
                data [replace_index] <= dev_rdata;

                if(free_index != 3'b100) begin
                    free_index <= free_index + 1;
                end else begin
                    free_index <= free_index;
                end
            end else begin
                valid <= valid; 
            end
        end
    end


    /******** 不要修改以下代码 ********/
`else

    localparam IDLE  = 2'b00;
    localparam STAT0 = 2'b01;
    localparam STAT1 = 2'b11;
    reg [1:0] state, nstat;

    always @(posedge cpu_clk or posedge cpu_rst) begin
        state <= cpu_rst ? IDLE : nstat;
    end

    always @(*) begin
        case (state)
            IDLE:    nstat = inst_rreq ? (dev_rrdy ? STAT1 : STAT0) : IDLE;
            STAT0:   nstat = dev_rrdy ? STAT1 : STAT0;
            STAT1:   nstat = dev_rvalid ? IDLE : STAT1;
            default: nstat = IDLE;
        endcase
    end

    always @(posedge cpu_clk or posedge cpu_rst) begin
        if (cpu_rst) begin
            inst_valid <= 1'b0;
            cpu_ren    <= 4'h0;
        end else begin
            case (state)
                IDLE: begin
                    inst_valid <= 1'b0;
                    cpu_ren    <= (inst_rreq & dev_rrdy) ? 4'hF : 4'h0;
                    cpu_raddr  <= inst_rreq ? inst_addr : 32'h0;
                end
                STAT0: begin
                    cpu_ren    <= dev_rrdy ? 4'hF : 4'h0;
                end
                STAT1: begin
                    cpu_ren    <= 4'h0;
                    inst_valid <= dev_rvalid ? 1'b1 : 1'b0;
                    inst_out   <= dev_rvalid ? dev_rdata[31:0] : 32'h0;
                end
                default: begin
                    inst_valid <= 1'b0;
                    cpu_ren    <= 4'h0;
                end
            endcase
        end
    end

`endif

endmodule