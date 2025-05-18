`timescale 1ns / 1ps

module fpu_wrap(
    input  wire         aclk,
    input  wire         aresetn,
    input  wire [31:0]  s_axi_awaddr,
    input  wire [ 7:0]  s_axi_awlen,
    input  wire [ 2:0]  s_axi_awsize,
    input  wire [ 1:0]  s_axi_awburst,
    input  wire [ 0:0]  s_axi_awlock,
    input  wire [ 3:0]  s_axi_awcache,
    input  wire [ 2:0]  s_axi_awprot,
    input  wire [ 3:0]  s_axi_awregion,
    input  wire [ 3:0]  s_axi_awqos,
    input  wire         s_axi_awvalid,
    output wire         s_axi_awready,
    input  wire [31:0]  s_axi_wdata,
    input  wire [ 3:0]  s_axi_wstrb,
    input  wire         s_axi_wlast,
    input  wire         s_axi_wvalid,
    output wire         s_axi_wready,
    output wire [ 1:0]  s_axi_bresp,
    output wire         s_axi_bvalid,
    input  wire         s_axi_bready,
    input  wire [31:0]  s_axi_araddr,
    input  wire [ 7:0]  s_axi_arlen,
    input  wire [ 2:0]  s_axi_arsize,
    input  wire [ 1:0]  s_axi_arburst,
    input  wire [ 0:0]  s_axi_arlock,
    input  wire [ 3:0]  s_axi_arcache,
    input  wire [ 2:0]  s_axi_arprot,
    input  wire [ 3:0]  s_axi_arregion,
    input  wire [ 3:0]  s_axi_arqos,
    input  wire         s_axi_arvalid,
    output wire         s_axi_arready,
    output wire [31:0]  s_axi_rdata,
    output wire [ 1:0]  s_axi_rresp,
    output wire         s_axi_rlast,
    output wire         s_axi_rvalid,
    input  wire         s_axi_rready
);

    wire        fpu_rst;
    wire        fpu_clk;
    wire        fpu_en;
    wire [ 3:0] fpu_we;
    wire [11:0] fpu_addr;
    wire [31:0] fpu_wdata;
    wire [31:0] fpu_rdata;

    axi_bram_ctrl_0 U_fpu_interface (
        .s_axi_aclk         (aclk         ),
        .s_axi_aresetn      (aresetn      ),
        .s_axi_awaddr       (s_axi_awaddr ),
        .s_axi_awlen        (s_axi_awlen  ),
        .s_axi_awsize       (s_axi_awsize ),
        .s_axi_awburst      (s_axi_awburst),
        .s_axi_awlock       (s_axi_awlock ),
        .s_axi_awcache      (s_axi_awcache),
        .s_axi_awprot       (s_axi_awprot ),
        .s_axi_awvalid      (s_axi_awvalid),
        .s_axi_awready      (s_axi_awready),
        .s_axi_wdata        (s_axi_wdata  ),
        .s_axi_wstrb        (s_axi_wstrb  ),
        .s_axi_wlast        (s_axi_wlast  ),
        .s_axi_wvalid       (s_axi_wvalid ),
        .s_axi_wready       (s_axi_wready ),
        .s_axi_bresp        (s_axi_bresp  ),
        .s_axi_bvalid       (s_axi_bvalid ),
        .s_axi_bready       (s_axi_bready ),
        .s_axi_araddr       (s_axi_araddr ),
        .s_axi_arlen        (s_axi_arlen  ),
        .s_axi_arsize       (s_axi_arsize ),
        .s_axi_arburst      (s_axi_arburst),
        .s_axi_arlock       (s_axi_arlock ),
        .s_axi_arcache      (s_axi_arcache),
        .s_axi_arprot       (s_axi_arprot ),
        .s_axi_arvalid      (s_axi_arvalid),
        .s_axi_arready      (s_axi_arready),
        .s_axi_rdata        (s_axi_rdata  ),
        .s_axi_rresp        (s_axi_rresp  ),
        .s_axi_rlast        (s_axi_rlast  ),
        .s_axi_rvalid       (s_axi_rvalid ),
        .s_axi_rready       (s_axi_rready ),
        // FPU interface
        .bram_rst_a         (fpu_rst      ),
        .bram_clk_a         (fpu_clk      ),
        .bram_en_a          (fpu_en       ),
        .bram_we_a          (fpu_we       ),
        .bram_addr_a        (fpu_addr     ),
        .bram_wrdata_a      (fpu_wdata    ),
        .bram_rddata_a      (fpu_rdata    )
    );

    /*          Offset of I/O Ports
        | offset | cpu_read  | cpu_write |
        ----------------------------------
        |   0x0  | fpu.ready |   fpu.A   |
        |   0x4  |   fpu.C   |   fpu.B   |
        |   0x8  |     -     |   fpu.op  |
    */

    wire write_A  = fpu_en & (fpu_addr == 12'h0) & (|fpu_we);
    wire write_B  = fpu_en & (fpu_addr == 12'h4) & (|fpu_we);
    wire write_op = fpu_en & (fpu_addr == 12'h8) & (|fpu_we);
    wire read_rdy = fpu_en & (fpu_addr == 12'h0) & !(|fpu_we);
    wire read_C   = fpu_en & (fpu_addr == 12'h4) & !(|fpu_we);

    reg         write_op_r;
    wire        start;
    reg         op;
    reg  [31:0] src_A;
    reg  [31:0] src_B;
    wire        ready;
    wire [31:0] res_C;

    always @(posedge fpu_clk) begin
        if (fpu_rst) begin
            write_op_r <= 1'b0;
            op         <= 1'b0;
        end else begin
            write_op_r <= write_op;
            if (write_A ) src_A <= fpu_wdata;
            if (write_B ) src_B <= fpu_wdata;
            if (write_op) op    <= fpu_wdata[0];
        end
    end

    assign start     = !write_op_r & write_op;
    assign fpu_rdata = read_rdy ? {30'h0, ready} : res_C;

    fpu U_fpu(
        .rst    (fpu_rst),
        .clk    (fpu_clk),
        .start  (start),
        .op     (op),       // 0 for addition, 1 for substraction
        .A      (src_A),
        .B      (src_B),
        .ready  (ready),
        .C      (res_C)
    );

endmodule
