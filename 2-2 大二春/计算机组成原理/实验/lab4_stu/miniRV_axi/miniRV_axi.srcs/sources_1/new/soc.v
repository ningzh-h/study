`timescale 1ns / 1ps

module soc(
    input  wire         clk_i,
    input  wire         rst_i,
    input  wire [23:0]  sw_i,
    output wire [31:0]  led_o
);

    wire [31:0] cpu_awaddr , bram_awaddr , sw_awaddr , led_awaddr , fadd_awaddr ;
    wire [ 7:0] cpu_awlen  , bram_awlen  , sw_awlen  , led_awlen  , fadd_awlen  ;
    wire [ 2:0] cpu_awsize , bram_awsize , sw_awsize , led_awsize , fadd_awsize ;
    wire [ 1:0] cpu_awburst, bram_awburst, sw_awburst, led_awburst, fadd_awburst;
    wire        cpu_awvalid, bram_awvalid, sw_awvalid, led_awvalid, fadd_awvalid;
    wire        cpu_awready, bram_awready, sw_awready, led_awready, fadd_awready;
    wire [31:0] cpu_wdata  , bram_wdata  , sw_wdata  , led_wdata  , fadd_wdata  ;
    wire [ 3:0] cpu_wstrb  , bram_wstrb  , sw_wstrb  , led_wstrb  , fadd_wstrb  ;
    wire        cpu_wlast  , bram_wlast  , sw_wlast  , led_wlast  , fadd_wlast  ;
    wire        cpu_wvalid , bram_wvalid , sw_wvalid , led_wvalid , fadd_wvalid ;
    wire        cpu_wready , bram_wready , sw_wready , led_wready , fadd_wready ;
    wire        cpu_bready , bram_bready , sw_bready , led_bready , fadd_bready ;
    wire [ 1:0] cpu_bresp  , bram_bresp  , sw_bresp  , led_bresp  , fadd_bresp  ;
    wire        cpu_bvalid , bram_bvalid , sw_bvalid , led_bvalid , fadd_bvalid ;
    wire [31:0] cpu_araddr , bram_araddr , sw_araddr , led_araddr , fadd_araddr ;
    wire [ 7:0] cpu_arlen  , bram_arlen  , sw_arlen  , led_arlen  , fadd_arlen  ;
    wire [ 2:0] cpu_arsize , bram_arsize , sw_arsize , led_arsize , fadd_arsize ;
    wire [ 1:0] cpu_arburst, bram_arburst, sw_arburst, led_arburst, fadd_arburst;
    wire        cpu_arvalid, bram_arvalid, sw_arvalid, led_arvalid, fadd_arvalid;
    wire        cpu_arready, bram_arready, sw_arready, led_arready, fadd_arready;
    wire        cpu_rready , bram_rready , sw_rready , led_rready , fadd_rready ;
    wire [31:0] cpu_rdata  , bram_rdata  , sw_rdata  , led_rdata  , fadd_rdata  ;
    wire [ 1:0] cpu_rresp  , bram_rresp  , sw_rresp  , led_rresp  , fadd_rresp  ;
    wire        cpu_rlast  , bram_rlast  , sw_rlast  , led_rlast  , fadd_rlast  ;
    wire        cpu_rvalid , bram_rvalid , sw_rvalid , led_rvalid , fadd_rvalid ;

    cpu_top U_cpu (
        .cpu_clk        (clk_i),
        .cpu_rst        (rst_i),

        // AXI4 Master Interface
        // write address channel
        .m_axi_awaddr   (cpu_awaddr),
        .m_axi_awlen    (cpu_awlen),
        .m_axi_awsize   (cpu_awsize),
        .m_axi_awburst  (cpu_awburst),
        .m_axi_awvalid  (cpu_awvalid),
        .m_axi_awready  (cpu_awready),
        // write data channel
        .m_axi_wdata    (cpu_wdata),
        .m_axi_wstrb    (cpu_wstrb),
        .m_axi_wlast    (cpu_wlast),
        .m_axi_wvalid   (cpu_wvalid),
        .m_axi_wready   (cpu_wready),
        // write response channel
        .m_axi_bready   (cpu_bready),
        .m_axi_bresp    (cpu_bresp),
        .m_axi_bvalid   (cpu_bvalid),
        // read address channel
        .m_axi_araddr   (cpu_araddr),
        .m_axi_arlen    (cpu_arlen),
        .m_axi_arsize   (cpu_arsize),
        .m_axi_arburst  (cpu_arburst),
        .m_axi_arvalid  (cpu_arvalid),
        .m_axi_arready  (cpu_arready),
        // read data channel
        .m_axi_rready   (cpu_rready),
        .m_axi_rdata    (cpu_rdata),
        .m_axi_rresp    (cpu_rresp),
        .m_axi_rlast    (cpu_rlast),
        .m_axi_rvalid   (cpu_rvalid)
    );

    axi_crossbar_0 U_bridge (
        .aclk               (clk_i),
        .aresetn            (!rst_i),
        .s_axi_awaddr       (cpu_awaddr),
        .s_axi_awlen        (cpu_awlen),
        .s_axi_awsize       (cpu_awsize),
        .s_axi_awburst      (cpu_awburst),
        .s_axi_awvalid      (cpu_awvalid),
        .s_axi_awready      (cpu_awready),
        .s_axi_wdata        (cpu_wdata),
        .s_axi_wstrb        (cpu_wstrb),
        .s_axi_wlast        (cpu_wlast),
        .s_axi_wvalid       (cpu_wvalid),
        .s_axi_wready       (cpu_wready),
        .s_axi_bresp        (cpu_bresp),
        .s_axi_bvalid       (cpu_bvalid),
        .s_axi_bready       (cpu_bready),
        .s_axi_araddr       (cpu_araddr),
        .s_axi_arlen        (cpu_arlen),
        .s_axi_arsize       (cpu_arsize),
        .s_axi_arburst      (cpu_arburst),
        .s_axi_arvalid      (cpu_arvalid),
        .s_axi_arready      (cpu_arready),
        .s_axi_rdata        (cpu_rdata),
        .s_axi_rresp        (cpu_rresp),
        .s_axi_rlast        (cpu_rlast),
        .s_axi_rvalid       (cpu_rvalid),
        .s_axi_rready       (cpu_rready),
        .m_axi_awaddr       ({fadd_awaddr , led_awaddr , sw_awaddr , bram_awaddr }),
        .m_axi_awlen        ({fadd_awlen  , led_awlen  , sw_awlen  , bram_awlen  }),
        .m_axi_awsize       ({fadd_awsize , led_awsize , sw_awsize , bram_awsize }),
        .m_axi_awburst      ({fadd_awburst, led_awburst, sw_awburst, bram_awburst}),
        .m_axi_awvalid      ({fadd_awvalid, led_awvalid, sw_awvalid, bram_awvalid}),
        .m_axi_awready      ({fadd_awready, led_awready, sw_awready, bram_awready}),
        .m_axi_wdata        ({fadd_wdata  , led_wdata  , sw_wdata  , bram_wdata  }),
        .m_axi_wstrb        ({fadd_wstrb  , led_wstrb  , sw_wstrb  , bram_wstrb  }),
        .m_axi_wlast        ({fadd_wlast  , led_wlast  , sw_wlast  , bram_wlast  }),
        .m_axi_wvalid       ({fadd_wvalid , led_wvalid , sw_wvalid , bram_wvalid }),
        .m_axi_wready       ({fadd_wready , led_wready , sw_wready , bram_wready }),
        .m_axi_bresp        ({fadd_bresp  , led_bresp  , sw_bresp  , bram_bresp  }),
        .m_axi_bvalid       ({fadd_bvalid , led_bvalid , sw_bvalid , bram_bvalid }),
        .m_axi_bready       ({fadd_bready , led_bready , sw_bready , bram_bready }),
        .m_axi_araddr       ({fadd_araddr , led_araddr , sw_araddr , bram_araddr }),
        .m_axi_arlen        ({fadd_arlen  , led_arlen  , sw_arlen  , bram_arlen  }),
        .m_axi_arsize       ({fadd_arsize , led_arsize , sw_arsize , bram_arsize }),
        .m_axi_arburst      ({fadd_arburst, led_arburst, sw_arburst, bram_arburst}),
        .m_axi_arvalid      ({fadd_arvalid, led_arvalid, sw_arvalid, bram_arvalid}),
        .m_axi_arready      ({fadd_arready, led_arready, sw_arready, bram_arready}),
        .m_axi_rdata        ({fadd_rdata  , led_rdata  , sw_rdata  , bram_rdata  }),
        .m_axi_rresp        ({fadd_rresp  , led_rresp  , sw_rresp  , bram_rresp  }),
        .m_axi_rlast        ({fadd_rlast  , led_rlast  , sw_rlast  , bram_rlast  }),
        .m_axi_rvalid       ({fadd_rvalid , led_rvalid , sw_rvalid , bram_rvalid }),
        .m_axi_rready       ({fadd_rready , led_rready , sw_rready , bram_rready })
    );

    axiram_wrap U_mem (
        .s_aclk         (clk_i),
        .s_aresetn      (!rst_i),
        .s_axi_awaddr   (bram_awaddr),
        .s_axi_awlen    (bram_awlen),
        .s_axi_awsize   (bram_awsize),
        .s_axi_awburst  (bram_awburst),
        .s_axi_awvalid  (bram_awvalid),
        .s_axi_awready  (bram_awready),
        .s_axi_wdata    (bram_wdata),
        .s_axi_wstrb    (bram_wstrb),
        .s_axi_wlast    (bram_wlast),
        .s_axi_wvalid   (bram_wvalid),
        .s_axi_wready   (bram_wready),
        .s_axi_bresp    (bram_bresp),
        .s_axi_bvalid   (bram_bvalid),
        .s_axi_bready   (bram_bready),
        .s_axi_araddr   (bram_araddr),
        .s_axi_arlen    (bram_arlen),
        .s_axi_arsize   (bram_arsize),
        .s_axi_arburst  (bram_arburst),
        .s_axi_arvalid  (bram_arvalid),
        .s_axi_arready  (bram_arready),
        .s_axi_rdata    (bram_rdata),
        .s_axi_rresp    (bram_rresp),
        .s_axi_rlast    (bram_rlast),
        .s_axi_rvalid   (bram_rvalid),
        .s_axi_rready   (bram_rready)
    );

    switch_wrap U_switch (
        .aclk           (clk_i),
        .aresetn        (!rst_i),
        .s_axi_awaddr   (sw_awaddr),
        .s_axi_awlen    (sw_awlen),
        .s_axi_awsize   (sw_awsize),
        .s_axi_awburst  (sw_awburst),
        .s_axi_awvalid  (sw_awvalid),
        .s_axi_awready  (sw_awready),
        .s_axi_wdata    (sw_wdata),
        .s_axi_wstrb    (sw_wstrb),
        .s_axi_wlast    (sw_wlast),
        .s_axi_wvalid   (sw_wvalid),
        .s_axi_wready   (sw_wready),
        .s_axi_bresp    (sw_bresp),
        .s_axi_bvalid   (sw_bvalid),
        .s_axi_bready   (sw_bready),
        .s_axi_araddr   (sw_araddr),
        .s_axi_arlen    (sw_arlen),
        .s_axi_arsize   (sw_arsize),
        .s_axi_arburst  (sw_arburst),
        .s_axi_arvalid  (sw_arvalid),
        .s_axi_arready  (sw_arready),
        .s_axi_rdata    (sw_rdata),
        .s_axi_rresp    (sw_rresp),
        .s_axi_rlast    (sw_rlast),
        .s_axi_rvalid   (sw_rvalid),
        .s_axi_rready   (sw_rready),

        .sw_i           (sw_i)
    );

    led_wrap U_led (
        .aclk           (clk_i),
        .aresetn        (!rst_i),
        .s_axi_awaddr   (led_awaddr),
        .s_axi_awlen    (led_awlen),
        .s_axi_awsize   (led_awsize),
        .s_axi_awburst  (led_awburst),
        .s_axi_awvalid  (led_awvalid),
        .s_axi_awready  (led_awready),
        .s_axi_wdata    (led_wdata),
        .s_axi_wstrb    (led_wstrb),
        .s_axi_wlast    (led_wlast),
        .s_axi_wvalid   (led_wvalid),
        .s_axi_wready   (led_wready),
        .s_axi_bresp    (led_bresp),
        .s_axi_bvalid   (led_bvalid),
        .s_axi_bready   (led_bready),
        .s_axi_araddr   (led_araddr),
        .s_axi_arlen    (led_arlen),
        .s_axi_arsize   (led_arsize),
        .s_axi_arburst  (led_arburst),
        .s_axi_arvalid  (led_arvalid),
        .s_axi_arready  (led_arready),
        .s_axi_rdata    (led_rdata),
        .s_axi_rresp    (led_rresp),
        .s_axi_rlast    (led_rlast),
        .s_axi_rvalid   (led_rvalid),
        .s_axi_rready   (led_rready),

        .led_o          (led_o)
    );

    fpu_wrap U_fpu (
        .aclk           (clk_i),
        .aresetn        (!rst_i),
        .s_axi_awaddr   (fadd_awaddr),
        .s_axi_awlen    (fadd_awlen),
        .s_axi_awsize   (fadd_awsize),
        .s_axi_awburst  (fadd_awburst),
        .s_axi_awvalid  (fadd_awvalid),
        .s_axi_awready  (fadd_awready),
        .s_axi_wdata    (fadd_wdata),
        .s_axi_wstrb    (fadd_wstrb),
        .s_axi_wlast    (fadd_wlast),
        .s_axi_wvalid   (fadd_wvalid),
        .s_axi_wready   (fadd_wready),
        .s_axi_bresp    (fadd_bresp),
        .s_axi_bvalid   (fadd_bvalid),
        .s_axi_bready   (fadd_bready),
        .s_axi_araddr   (fadd_araddr),
        .s_axi_arlen    (fadd_arlen),
        .s_axi_arsize   (fadd_arsize),
        .s_axi_arburst  (fadd_arburst),
        .s_axi_arvalid  (fadd_arvalid),
        .s_axi_arready  (fadd_arready),
        .s_axi_rdata    (fadd_rdata),
        .s_axi_rresp    (fadd_rresp),
        .s_axi_rlast    (fadd_rlast),
        .s_axi_rvalid   (fadd_rvalid),
        .s_axi_rready   (fadd_rready)
    );

endmodule
