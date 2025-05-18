`timescale 1ns / 1ps

module axi_master(
    input  wire         aclk,
    input  wire         areset,     // high active

    // ICache Interface
    output reg          ic_dev_rrdy,
    input  wire         ic_cpu_ren,
    input  wire [ 31:0] ic_cpu_raddr,
    output reg          ic_dev_rvalid,
    output reg  [255:0] ic_dev_rdata,
    // DCache Read Data Interface
    output reg          dc_dev_rrdy,
    input  wire         dc_cpu_ren,
    input  wire [ 31:0] dc_cpu_raddr,
    output reg          dc_dev_rvalid,
    output reg  [255:0] dc_dev_rdata,
    // DCache Write Data Interface
    output reg          dc_dev_wrdy,
    input  wire [  3:0] dc_cpu_wen,
    input  wire [ 31:0] dc_cpu_waddr,
    input  wire [ 31:0] dc_cpu_wdata,

    // AXI4 Master Interface
    // read address channel
    output reg  [31:0]  m_axi_araddr,
    output reg  [ 7:0]  m_axi_arlen,
    output reg  [ 2:0]  m_axi_arsize,
    output reg  [ 1:0]  m_axi_arburst,
    output reg          m_axi_arvalid,
    input  wire         m_axi_arready,
    // read data channel
    output wire         m_axi_rready,
    input  wire [31:0]  m_axi_rdata,
    input  wire [ 1:0]  m_axi_rresp,
    input  wire         m_axi_rlast,
    input  wire         m_axi_rvalid,
    // write address channel
    output reg  [31:0]  m_axi_awaddr,
    output reg  [ 7:0]  m_axi_awlen,
    output reg  [ 2:0]  m_axi_awsize,
    output reg  [ 1:0]  m_axi_awburst,
    output reg          m_axi_awvalid,
    input  wire         m_axi_awready,
    // write data channel
    output reg  [31:0]  m_axi_wdata,
    output reg  [ 3:0]  m_axi_wstrb,
    output wire         m_axi_wlast,
    output reg          m_axi_wvalid,
    input  wire         m_axi_wready,
    // write response channel
    output reg          m_axi_bready,
    input  wire [ 1:0]  m_axi_bresp,
    input  wire         m_axi_bvalid
);

    wire has_dc_wr_req = dc_dev_wrdy & (dc_cpu_wen != 4'h0);
    wire has_dc_rd_req = dc_dev_rrdy   & dc_cpu_ren   ;    // 是否有DCache读请求
    wire has_ic_rd_req = ic_dev_rrdy   & ic_cpu_ren   ;    // 是否有ICache读请求
    wire has_rd_req    = has_dc_rd_req | has_ic_rd_req;    // 是否有读请求

    // 状态机状态定义
    parameter IDLE = 2'd0;
    parameter SEND = 2'd1;
    parameter DATA = 2'd2;
    
    // 状态机相关
    reg [ 1:0] cur_state, next_state;

    // 接受数据相关
    reg is_dc_req;
    
    // 读数据相关
    reg [255:0] rdata_temp;
    
    // 三段式 - 现态更新逻辑
    always @(posedge aclk or posedge areset) begin
        if(areset) begin
            cur_state <= IDLE;
        end else begin
            cur_state <= next_state;
        end
    end
    
    // 三段式 - 状态转移逻辑
    always @(*) begin
        case(cur_state) 
        IDLE: begin
            next_state = has_rd_req ? SEND : IDLE;
        end
        SEND: begin
            next_state = (m_axi_arvalid & m_axi_arready) ? DATA : SEND;
        end
        DATA: begin
            next_state = (m_axi_rvalid & m_axi_rlast) ? IDLE : DATA;
        end
        default: begin
            next_state = IDLE;
        end
        endcase
    end

    ///////////////////////////////////////////////////////////////////////////
    // read address channel
    /* 给AR通道的输出信号赋值 */
    always @(posedge aclk or posedge areset) begin
        if(areset) begin
            m_axi_araddr  <= 32'h0;
            m_axi_arlen   <=  8'd7; // 连续传输 8 个数据包
            m_axi_arsize  <=  3'd2; // 数据包大小为 4 字节
            m_axi_arburst <=  2'd1; // INCR 模式
            m_axi_arvalid <=  1'b0;
            is_dc_req     <=  1'b0;
        end else begin
            case(cur_state)
            IDLE: begin
                if(has_dc_rd_req) begin
                    m_axi_arvalid <= 1'b1; 
                    m_axi_araddr  <= dc_cpu_raddr;
                    is_dc_req     <= 1'b1;
                end else if(has_ic_rd_req) begin
                    m_axi_arvalid <= 1'b1; 
                    m_axi_araddr  <= ic_cpu_raddr;
                    is_dc_req     <= 1'b0;
                end else begin
                    m_axi_araddr  <= 0;
                end
            end
            SEND: begin
                m_axi_arvalid <= (m_axi_arvalid & m_axi_arready) ? 1'b0 : 1'b1;
            end
            DATA: begin
            end
            default: begin
                m_axi_arvalid <= 1'b0;
                m_axi_araddr  <=    0;
            end
            endcase
        end
    end



    ///////////////////////////////////////////////////////////////////////////
    // read data channel
    /* 1: 给ic_dev_rrdy、dc_dev_rrdy信号赋值（接收到读请求后ready置0，读请求处理完成后置1）*/
    always @(posedge aclk or posedge areset) begin
        if(areset) begin
            dc_dev_rrdy <= 1'b1;
            ic_dev_rrdy <= 1'b1;
        end else begin
            case(cur_state)
            IDLE: begin
                dc_dev_rrdy <= 1'b1;
                ic_dev_rrdy <= 1'b1;
            end
            SEND: begin
                if(is_dc_req) begin
                    dc_dev_rrdy <= 1'b0;
                end else begin
                    ic_dev_rrdy <= 1'b0;
                end
            end
            DATA : begin
                if(m_axi_rvalid & m_axi_rlast) begin
                    dc_dev_rrdy <= 1'b1;
                    ic_dev_rrdy <= 1'b1;
                end
            end
            default: begin
                ic_dev_rrdy <= 1'b1;
                dc_dev_rrdy <= 1'b1;
            end
            endcase
        end
    end



    /* 2: 给ic_dev_rvalid、dc_dev_rvalid信号赋值（返回给Cache的数据块就绪后置1）*/
    always @(posedge aclk or posedge areset) begin
        if(areset) begin
            dc_dev_rvalid <= 1'b0;
            ic_dev_rvalid <= 1'b0;
        end else begin
            if(m_axi_rvalid & m_axi_rlast) begin
                dc_dev_rvalid <=  is_dc_req;
                ic_dev_rvalid <= ~is_dc_req;
            end else begin
                dc_dev_rvalid <= 1'b0;
                ic_dev_rvalid <= 1'b0;
            end
        end
    end


    /* 3: 从总线上接收读数据，生成DCache重填所需的数据块dc_dev_rdata及ICache重填所需的数据块ic_dev_rdata */
    always @(posedge aclk or areset) begin
        if(areset) begin
            rdata_temp <= 0;
        end else begin
            if(m_axi_rvalid) begin
                rdata_temp <= {m_axi_rdata, rdata_temp[255:32]};
            end
        end
    end

    always @(posedge aclk or posedge areset) begin
        if(areset) begin
            rdata_temp <= 0;
        end else begin
            if(m_axi_rvalid & m_axi_rlast) begin
                if(is_dc_req) begin
                    dc_dev_rrdy <= 1'b1;
                end else begin
                    ic_dev_rrdy <= 1'b1;
                end
            end else begin
                dc_dev_rdata <= 0;
                ic_dev_rdata <= 0;
            end 
        end
    end
    
    always @(posedge aclk or posedge areset) begin
        if(areset) begin
            dc_dev_rdata <= 0;
            ic_dev_rdata <= 0;
        end else begin
            if(m_axi_rvalid & m_axi_rlast) begin
                if(is_dc_req) begin
                    dc_dev_rdata <= {m_axi_rdata, rdata_temp[255:32]};
                end else begin
                    ic_dev_rdata <= {m_axi_rdata, rdata_temp[255:32]};
                end
            end
        end
    end



    assign m_axi_rready = areset ? 1'b0 : 1'b1;



    /******** 不要修改以下代码 ********/
    ///////////////////////////////////////////////////////////////////////////
    // write address channel
    always @ (posedge aclk or posedge areset) begin
        if (areset) begin
            m_axi_awaddr  <= 32'h0;
            m_axi_awvalid <= 1'b0;
        end else begin
            if (m_axi_awvalid & m_axi_awready) begin
                m_axi_awvalid <= 1'b0;
                m_axi_awlen   <= 8'h0;
                m_axi_awsize  <= 3'h0;
                m_axi_awburst <= 2'h0;
            end else if (has_dc_wr_req) begin
                m_axi_awaddr  <= dc_cpu_waddr;
                m_axi_awlen   <= 8'h1 - 1;      // 1 packages each transaction
                m_axi_awsize  <= 3'h2;          // 2^2 bytes per package
                m_axi_awburst <= 2'h1;          // INCR addressing mode
                m_axi_awvalid <= 1'b1;
            end
        end
    end

    ///////////////////////////////////////////////////////////////////////////
    // write data channel
    always @ (posedge aclk or posedge areset) begin
        if (areset) begin
            m_axi_wdata  <= 32'h0;
            m_axi_wstrb  <= 4'h0;
            m_axi_wvalid <= 1'b0;
        end else begin
            if (m_axi_wvalid & m_axi_wready) begin
                m_axi_wvalid <= 1'b0;
            end else if (has_dc_wr_req) begin
                m_axi_wdata  <= dc_cpu_wdata;
                m_axi_wstrb  <= dc_cpu_wen;
                m_axi_wvalid <= 1'b1;
            end
        end
    end

    assign m_axi_wlast = m_axi_wvalid;

    ///////////////////////////////////////////////////////////////////////////
    // write response channel
    always @ (posedge aclk or posedge areset) begin
        if (areset) begin
            dc_dev_wrdy     <= 1'b1;
        end else begin
            if (m_axi_bvalid) begin
                dc_dev_wrdy <= 1'b1;
            end else if (has_dc_wr_req) begin
                dc_dev_wrdy <= 1'b0;
            end
        end
    end

    always @ (posedge aclk or posedge areset) begin
        m_axi_bready <= areset ? 1'b0 : 1'b1;
    end

endmodule