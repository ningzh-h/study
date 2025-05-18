`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module axi_master
   (aclk,
    areset,
    ic_dev_rrdy,
    ic_cpu_ren,
    ic_cpu_raddr,
    ic_dev_rvalid,
    ic_dev_rdata,
    dc_dev_wrdy,
    dc_cpu_wen,
    dc_cpu_waddr,
    dc_cpu_wdata,
    dc_dev_rrdy,
    dc_cpu_ren,
    dc_cpu_raddr,
    dc_dev_rvalid,
    dc_dev_rdata,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid);
  input aclk;
  input areset;
  output ic_dev_rrdy;
  input ic_cpu_ren;
  input [31:0]ic_cpu_raddr;
  output ic_dev_rvalid;
  output [255:0]ic_dev_rdata;
  output dc_dev_wrdy;
  input [3:0]dc_cpu_wen;
  input [31:0]dc_cpu_waddr;
  input [31:0]dc_cpu_wdata;
  output dc_dev_rrdy;
  input dc_cpu_ren;
  input [31:0]dc_cpu_raddr;
  output dc_dev_rvalid;
  output [255:0]dc_dev_rdata;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  output m_axi_bready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output m_axi_arvalid;
  input m_axi_arready;
  output m_axi_rready;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;

  wire \<const0> ;
  wire aclk;
  wire areset;
  wire [31:0]dc_cpu_raddr;
  wire dc_cpu_ren;
  wire [31:0]dc_cpu_waddr;
  wire [31:0]dc_cpu_wdata;
  wire [3:0]dc_cpu_wen;
  wire [255:0]dc_dev_rdata;
  wire \dc_dev_rdata[255]_i_1_n_0 ;
  wire dc_dev_rrdy;
  wire dc_dev_rrdy_i_1_n_0;
  wire dc_dev_rvalid;
  wire dc_dev_rvalid_i_1_n_0;
  wire dc_dev_wrdy;
  wire dc_dev_wrdy_i_1_n_0;
  wire has_dc_rd_req;
  wire has_dc_rd_req_r;
  wire has_dc_rd_req_r_i_1_n_0;
  wire has_dc_wr_req;
  wire has_ic_rd_req_r;
  wire has_ic_rd_req_r_i_1_n_0;
  wire has_rd_req;
  wire [31:0]ic_cpu_raddr;
  wire ic_cpu_ren;
  wire [255:0]ic_dev_rdata;
  wire \ic_dev_rdata[255]_i_1_n_0 ;
  wire ic_dev_rrdy;
  wire ic_dev_rrdy_i_1_n_0;
  wire ic_dev_rvalid;
  wire ic_dev_rvalid_i_1_n_0;
  wire [31:0]m_axi_araddr;
  wire \m_axi_araddr[0]_i_1_n_0 ;
  wire \m_axi_araddr[10]_i_1_n_0 ;
  wire \m_axi_araddr[11]_i_1_n_0 ;
  wire \m_axi_araddr[12]_i_1_n_0 ;
  wire \m_axi_araddr[13]_i_1_n_0 ;
  wire \m_axi_araddr[14]_i_1_n_0 ;
  wire \m_axi_araddr[15]_i_1_n_0 ;
  wire \m_axi_araddr[16]_i_1_n_0 ;
  wire \m_axi_araddr[17]_i_1_n_0 ;
  wire \m_axi_araddr[18]_i_1_n_0 ;
  wire \m_axi_araddr[19]_i_1_n_0 ;
  wire \m_axi_araddr[1]_i_1_n_0 ;
  wire \m_axi_araddr[20]_i_1_n_0 ;
  wire \m_axi_araddr[21]_i_1_n_0 ;
  wire \m_axi_araddr[22]_i_1_n_0 ;
  wire \m_axi_araddr[23]_i_1_n_0 ;
  wire \m_axi_araddr[24]_i_1_n_0 ;
  wire \m_axi_araddr[25]_i_1_n_0 ;
  wire \m_axi_araddr[26]_i_1_n_0 ;
  wire \m_axi_araddr[27]_i_1_n_0 ;
  wire \m_axi_araddr[28]_i_1_n_0 ;
  wire \m_axi_araddr[29]_i_1_n_0 ;
  wire \m_axi_araddr[2]_i_1_n_0 ;
  wire \m_axi_araddr[30]_i_1_n_0 ;
  wire \m_axi_araddr[31]_i_2_n_0 ;
  wire \m_axi_araddr[3]_i_1_n_0 ;
  wire \m_axi_araddr[4]_i_1_n_0 ;
  wire \m_axi_araddr[5]_i_1_n_0 ;
  wire \m_axi_araddr[6]_i_1_n_0 ;
  wire \m_axi_araddr[7]_i_1_n_0 ;
  wire \m_axi_araddr[8]_i_1_n_0 ;
  wire \m_axi_araddr[9]_i_1_n_0 ;
  wire [1:1]\^m_axi_arlen ;
  wire \m_axi_arlen[2]_i_1_n_0 ;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire m_axi_arvalid_i_1_n_0;
  wire [31:0]m_axi_awaddr;
  wire \m_axi_awaddr[31]_i_1_n_0 ;
  wire [0:0]\^m_axi_awburst ;
  wire m_axi_awready;
  wire \m_axi_awsize[1]_i_1_n_0 ;
  wire m_axi_awvalid;
  wire m_axi_awvalid_i_1_n_0;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire [31:0]m_axi_wdata;
  wire \m_axi_wdata[31]_i_1_n_0 ;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid_i_1_n_0;

  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \^m_axi_arlen [1];
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \^m_axi_arlen [1];
  assign m_axi_arlen[1] = \^m_axi_arlen [1];
  assign m_axi_arlen[0] = \^m_axi_arlen [1];
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \^m_axi_arlen [1];
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \^m_axi_awburst [0];
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \^m_axi_awburst [0];
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_bready = m_axi_rready;
  assign m_axi_wvalid = m_axi_wlast;
  GND GND
       (.G(\<const0> ));
  LUT2 #(
    .INIT(4'h8)) 
    \dc_dev_rdata[255]_i_1 
       (.I0(m_axi_rvalid),
        .I1(has_dc_rd_req_r),
        .O(\dc_dev_rdata[255]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[0] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[32]),
        .Q(dc_dev_rdata[0]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[100] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[132]),
        .Q(dc_dev_rdata[100]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[101] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[133]),
        .Q(dc_dev_rdata[101]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[102] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[134]),
        .Q(dc_dev_rdata[102]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[103] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[135]),
        .Q(dc_dev_rdata[103]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[104] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[136]),
        .Q(dc_dev_rdata[104]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[105] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[137]),
        .Q(dc_dev_rdata[105]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[106] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[138]),
        .Q(dc_dev_rdata[106]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[107] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[139]),
        .Q(dc_dev_rdata[107]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[108] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[140]),
        .Q(dc_dev_rdata[108]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[109] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[141]),
        .Q(dc_dev_rdata[109]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[10] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[42]),
        .Q(dc_dev_rdata[10]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[110] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[142]),
        .Q(dc_dev_rdata[110]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[111] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[143]),
        .Q(dc_dev_rdata[111]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[112] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[144]),
        .Q(dc_dev_rdata[112]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[113] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[145]),
        .Q(dc_dev_rdata[113]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[114] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[146]),
        .Q(dc_dev_rdata[114]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[115] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[147]),
        .Q(dc_dev_rdata[115]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[116] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[148]),
        .Q(dc_dev_rdata[116]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[117] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[149]),
        .Q(dc_dev_rdata[117]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[118] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[150]),
        .Q(dc_dev_rdata[118]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[119] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[151]),
        .Q(dc_dev_rdata[119]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[11] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[43]),
        .Q(dc_dev_rdata[11]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[120] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[152]),
        .Q(dc_dev_rdata[120]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[121] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[153]),
        .Q(dc_dev_rdata[121]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[122] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[154]),
        .Q(dc_dev_rdata[122]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[123] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[155]),
        .Q(dc_dev_rdata[123]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[124] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[156]),
        .Q(dc_dev_rdata[124]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[125] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[157]),
        .Q(dc_dev_rdata[125]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[126] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[158]),
        .Q(dc_dev_rdata[126]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[127] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[159]),
        .Q(dc_dev_rdata[127]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[128] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[160]),
        .Q(dc_dev_rdata[128]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[129] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[161]),
        .Q(dc_dev_rdata[129]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[12] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[44]),
        .Q(dc_dev_rdata[12]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[130] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[162]),
        .Q(dc_dev_rdata[130]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[131] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[163]),
        .Q(dc_dev_rdata[131]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[132] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[164]),
        .Q(dc_dev_rdata[132]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[133] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[165]),
        .Q(dc_dev_rdata[133]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[134] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[166]),
        .Q(dc_dev_rdata[134]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[135] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[167]),
        .Q(dc_dev_rdata[135]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[136] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[168]),
        .Q(dc_dev_rdata[136]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[137] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[169]),
        .Q(dc_dev_rdata[137]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[138] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[170]),
        .Q(dc_dev_rdata[138]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[139] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[171]),
        .Q(dc_dev_rdata[139]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[13] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[45]),
        .Q(dc_dev_rdata[13]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[140] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[172]),
        .Q(dc_dev_rdata[140]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[141] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[173]),
        .Q(dc_dev_rdata[141]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[142] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[174]),
        .Q(dc_dev_rdata[142]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[143] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[175]),
        .Q(dc_dev_rdata[143]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[144] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[176]),
        .Q(dc_dev_rdata[144]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[145] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[177]),
        .Q(dc_dev_rdata[145]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[146] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[178]),
        .Q(dc_dev_rdata[146]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[147] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[179]),
        .Q(dc_dev_rdata[147]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[148] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[180]),
        .Q(dc_dev_rdata[148]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[149] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[181]),
        .Q(dc_dev_rdata[149]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[14] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[46]),
        .Q(dc_dev_rdata[14]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[150] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[182]),
        .Q(dc_dev_rdata[150]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[151] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[183]),
        .Q(dc_dev_rdata[151]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[152] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[184]),
        .Q(dc_dev_rdata[152]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[153] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[185]),
        .Q(dc_dev_rdata[153]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[154] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[186]),
        .Q(dc_dev_rdata[154]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[155] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[187]),
        .Q(dc_dev_rdata[155]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[156] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[188]),
        .Q(dc_dev_rdata[156]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[157] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[189]),
        .Q(dc_dev_rdata[157]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[158] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[190]),
        .Q(dc_dev_rdata[158]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[159] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[191]),
        .Q(dc_dev_rdata[159]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[15] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[47]),
        .Q(dc_dev_rdata[15]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[160] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[192]),
        .Q(dc_dev_rdata[160]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[161] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[193]),
        .Q(dc_dev_rdata[161]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[162] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[194]),
        .Q(dc_dev_rdata[162]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[163] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[195]),
        .Q(dc_dev_rdata[163]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[164] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[196]),
        .Q(dc_dev_rdata[164]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[165] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[197]),
        .Q(dc_dev_rdata[165]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[166] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[198]),
        .Q(dc_dev_rdata[166]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[167] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[199]),
        .Q(dc_dev_rdata[167]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[168] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[200]),
        .Q(dc_dev_rdata[168]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[169] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[201]),
        .Q(dc_dev_rdata[169]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[16] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[48]),
        .Q(dc_dev_rdata[16]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[170] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[202]),
        .Q(dc_dev_rdata[170]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[171] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[203]),
        .Q(dc_dev_rdata[171]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[172] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[204]),
        .Q(dc_dev_rdata[172]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[173] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[205]),
        .Q(dc_dev_rdata[173]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[174] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[206]),
        .Q(dc_dev_rdata[174]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[175] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[207]),
        .Q(dc_dev_rdata[175]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[176] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[208]),
        .Q(dc_dev_rdata[176]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[177] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[209]),
        .Q(dc_dev_rdata[177]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[178] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[210]),
        .Q(dc_dev_rdata[178]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[179] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[211]),
        .Q(dc_dev_rdata[179]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[17] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[49]),
        .Q(dc_dev_rdata[17]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[180] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[212]),
        .Q(dc_dev_rdata[180]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[181] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[213]),
        .Q(dc_dev_rdata[181]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[182] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[214]),
        .Q(dc_dev_rdata[182]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[183] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[215]),
        .Q(dc_dev_rdata[183]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[184] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[216]),
        .Q(dc_dev_rdata[184]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[185] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[217]),
        .Q(dc_dev_rdata[185]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[186] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[218]),
        .Q(dc_dev_rdata[186]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[187] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[219]),
        .Q(dc_dev_rdata[187]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[188] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[220]),
        .Q(dc_dev_rdata[188]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[189] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[221]),
        .Q(dc_dev_rdata[189]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[18] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[50]),
        .Q(dc_dev_rdata[18]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[190] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[222]),
        .Q(dc_dev_rdata[190]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[191] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[223]),
        .Q(dc_dev_rdata[191]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[192] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[224]),
        .Q(dc_dev_rdata[192]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[193] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[225]),
        .Q(dc_dev_rdata[193]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[194] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[226]),
        .Q(dc_dev_rdata[194]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[195] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[227]),
        .Q(dc_dev_rdata[195]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[196] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[228]),
        .Q(dc_dev_rdata[196]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[197] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[229]),
        .Q(dc_dev_rdata[197]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[198] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[230]),
        .Q(dc_dev_rdata[198]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[199] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[231]),
        .Q(dc_dev_rdata[199]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[19] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[51]),
        .Q(dc_dev_rdata[19]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[1] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[33]),
        .Q(dc_dev_rdata[1]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[200] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[232]),
        .Q(dc_dev_rdata[200]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[201] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[233]),
        .Q(dc_dev_rdata[201]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[202] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[234]),
        .Q(dc_dev_rdata[202]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[203] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[235]),
        .Q(dc_dev_rdata[203]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[204] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[236]),
        .Q(dc_dev_rdata[204]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[205] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[237]),
        .Q(dc_dev_rdata[205]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[206] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[238]),
        .Q(dc_dev_rdata[206]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[207] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[239]),
        .Q(dc_dev_rdata[207]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[208] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[240]),
        .Q(dc_dev_rdata[208]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[209] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[241]),
        .Q(dc_dev_rdata[209]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[20] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[52]),
        .Q(dc_dev_rdata[20]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[210] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[242]),
        .Q(dc_dev_rdata[210]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[211] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[243]),
        .Q(dc_dev_rdata[211]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[212] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[244]),
        .Q(dc_dev_rdata[212]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[213] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[245]),
        .Q(dc_dev_rdata[213]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[214] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[246]),
        .Q(dc_dev_rdata[214]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[215] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[247]),
        .Q(dc_dev_rdata[215]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[216] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[248]),
        .Q(dc_dev_rdata[216]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[217] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[249]),
        .Q(dc_dev_rdata[217]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[218] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[250]),
        .Q(dc_dev_rdata[218]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[219] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[251]),
        .Q(dc_dev_rdata[219]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[21] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[53]),
        .Q(dc_dev_rdata[21]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[220] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[252]),
        .Q(dc_dev_rdata[220]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[221] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[253]),
        .Q(dc_dev_rdata[221]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[222] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[254]),
        .Q(dc_dev_rdata[222]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[223] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[255]),
        .Q(dc_dev_rdata[223]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[224] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[0]),
        .Q(dc_dev_rdata[224]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[225] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[1]),
        .Q(dc_dev_rdata[225]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[226] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[2]),
        .Q(dc_dev_rdata[226]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[227] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[3]),
        .Q(dc_dev_rdata[227]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[228] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[4]),
        .Q(dc_dev_rdata[228]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[229] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[5]),
        .Q(dc_dev_rdata[229]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[22] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[54]),
        .Q(dc_dev_rdata[22]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[230] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[6]),
        .Q(dc_dev_rdata[230]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[231] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[7]),
        .Q(dc_dev_rdata[231]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[232] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[8]),
        .Q(dc_dev_rdata[232]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[233] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[9]),
        .Q(dc_dev_rdata[233]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[234] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[10]),
        .Q(dc_dev_rdata[234]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[235] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[11]),
        .Q(dc_dev_rdata[235]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[236] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[12]),
        .Q(dc_dev_rdata[236]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[237] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[13]),
        .Q(dc_dev_rdata[237]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[238] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[14]),
        .Q(dc_dev_rdata[238]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[239] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[15]),
        .Q(dc_dev_rdata[239]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[23] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[55]),
        .Q(dc_dev_rdata[23]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[240] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[16]),
        .Q(dc_dev_rdata[240]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[241] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[17]),
        .Q(dc_dev_rdata[241]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[242] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[18]),
        .Q(dc_dev_rdata[242]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[243] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[19]),
        .Q(dc_dev_rdata[243]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[244] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[20]),
        .Q(dc_dev_rdata[244]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[245] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[21]),
        .Q(dc_dev_rdata[245]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[246] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[22]),
        .Q(dc_dev_rdata[246]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[247] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[23]),
        .Q(dc_dev_rdata[247]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[248] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[24]),
        .Q(dc_dev_rdata[248]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[249] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[25]),
        .Q(dc_dev_rdata[249]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[24] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[56]),
        .Q(dc_dev_rdata[24]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[250] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[26]),
        .Q(dc_dev_rdata[250]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[251] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[27]),
        .Q(dc_dev_rdata[251]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[252] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[28]),
        .Q(dc_dev_rdata[252]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[253] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[29]),
        .Q(dc_dev_rdata[253]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[254] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[30]),
        .Q(dc_dev_rdata[254]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[255] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[31]),
        .Q(dc_dev_rdata[255]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[25] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[57]),
        .Q(dc_dev_rdata[25]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[26] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[58]),
        .Q(dc_dev_rdata[26]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[27] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[59]),
        .Q(dc_dev_rdata[27]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[28] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[60]),
        .Q(dc_dev_rdata[28]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[29] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[61]),
        .Q(dc_dev_rdata[29]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[2] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[34]),
        .Q(dc_dev_rdata[2]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[30] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[62]),
        .Q(dc_dev_rdata[30]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[31] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[63]),
        .Q(dc_dev_rdata[31]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[32] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[64]),
        .Q(dc_dev_rdata[32]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[33] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[65]),
        .Q(dc_dev_rdata[33]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[34] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[66]),
        .Q(dc_dev_rdata[34]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[35] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[67]),
        .Q(dc_dev_rdata[35]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[36] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[68]),
        .Q(dc_dev_rdata[36]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[37] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[69]),
        .Q(dc_dev_rdata[37]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[38] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[70]),
        .Q(dc_dev_rdata[38]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[39] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[71]),
        .Q(dc_dev_rdata[39]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[3] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[35]),
        .Q(dc_dev_rdata[3]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[40] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[72]),
        .Q(dc_dev_rdata[40]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[41] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[73]),
        .Q(dc_dev_rdata[41]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[42] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[74]),
        .Q(dc_dev_rdata[42]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[43] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[75]),
        .Q(dc_dev_rdata[43]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[44] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[76]),
        .Q(dc_dev_rdata[44]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[45] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[77]),
        .Q(dc_dev_rdata[45]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[46] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[78]),
        .Q(dc_dev_rdata[46]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[47] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[79]),
        .Q(dc_dev_rdata[47]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[48] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[80]),
        .Q(dc_dev_rdata[48]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[49] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[81]),
        .Q(dc_dev_rdata[49]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[4] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[36]),
        .Q(dc_dev_rdata[4]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[50] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[82]),
        .Q(dc_dev_rdata[50]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[51] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[83]),
        .Q(dc_dev_rdata[51]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[52] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[84]),
        .Q(dc_dev_rdata[52]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[53] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[85]),
        .Q(dc_dev_rdata[53]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[54] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[86]),
        .Q(dc_dev_rdata[54]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[55] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[87]),
        .Q(dc_dev_rdata[55]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[56] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[88]),
        .Q(dc_dev_rdata[56]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[57] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[89]),
        .Q(dc_dev_rdata[57]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[58] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[90]),
        .Q(dc_dev_rdata[58]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[59] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[91]),
        .Q(dc_dev_rdata[59]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[5] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[37]),
        .Q(dc_dev_rdata[5]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[60] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[92]),
        .Q(dc_dev_rdata[60]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[61] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[93]),
        .Q(dc_dev_rdata[61]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[62] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[94]),
        .Q(dc_dev_rdata[62]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[63] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[95]),
        .Q(dc_dev_rdata[63]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[64] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[96]),
        .Q(dc_dev_rdata[64]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[65] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[97]),
        .Q(dc_dev_rdata[65]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[66] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[98]),
        .Q(dc_dev_rdata[66]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[67] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[99]),
        .Q(dc_dev_rdata[67]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[68] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[100]),
        .Q(dc_dev_rdata[68]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[69] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[101]),
        .Q(dc_dev_rdata[69]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[6] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[38]),
        .Q(dc_dev_rdata[6]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[70] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[102]),
        .Q(dc_dev_rdata[70]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[71] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[103]),
        .Q(dc_dev_rdata[71]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[72] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[104]),
        .Q(dc_dev_rdata[72]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[73] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[105]),
        .Q(dc_dev_rdata[73]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[74] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[106]),
        .Q(dc_dev_rdata[74]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[75] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[107]),
        .Q(dc_dev_rdata[75]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[76] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[108]),
        .Q(dc_dev_rdata[76]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[77] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[109]),
        .Q(dc_dev_rdata[77]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[78] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[110]),
        .Q(dc_dev_rdata[78]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[79] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[111]),
        .Q(dc_dev_rdata[79]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[7] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[39]),
        .Q(dc_dev_rdata[7]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[80] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[112]),
        .Q(dc_dev_rdata[80]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[81] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[113]),
        .Q(dc_dev_rdata[81]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[82] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[114]),
        .Q(dc_dev_rdata[82]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[83] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[115]),
        .Q(dc_dev_rdata[83]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[84] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[116]),
        .Q(dc_dev_rdata[84]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[85] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[117]),
        .Q(dc_dev_rdata[85]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[86] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[118]),
        .Q(dc_dev_rdata[86]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[87] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[119]),
        .Q(dc_dev_rdata[87]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[88] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[120]),
        .Q(dc_dev_rdata[88]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[89] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[121]),
        .Q(dc_dev_rdata[89]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[8] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[40]),
        .Q(dc_dev_rdata[8]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[90] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[122]),
        .Q(dc_dev_rdata[90]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[91] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[123]),
        .Q(dc_dev_rdata[91]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[92] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[124]),
        .Q(dc_dev_rdata[92]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[93] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[125]),
        .Q(dc_dev_rdata[93]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[94] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[126]),
        .Q(dc_dev_rdata[94]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[95] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[127]),
        .Q(dc_dev_rdata[95]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[96] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[128]),
        .Q(dc_dev_rdata[96]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[97] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[129]),
        .Q(dc_dev_rdata[97]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[98] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[130]),
        .Q(dc_dev_rdata[98]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[99] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[131]),
        .Q(dc_dev_rdata[99]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_dev_rdata_reg[9] 
       (.C(aclk),
        .CE(\dc_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_dev_rdata[41]),
        .Q(dc_dev_rdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hDC)) 
    dc_dev_rrdy_i_1
       (.I0(has_dc_rd_req_r),
        .I1(m_axi_rlast),
        .I2(dc_dev_rrdy),
        .O(dc_dev_rrdy_i_1_n_0));
  FDPE #(
    .INIT(1'b1)) 
    dc_dev_rrdy_reg
       (.C(aclk),
        .CE(1'b1),
        .D(dc_dev_rrdy_i_1_n_0),
        .PRE(areset),
        .Q(dc_dev_rrdy));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    dc_dev_rvalid_i_1
       (.I0(ic_dev_rvalid),
        .I1(m_axi_rlast),
        .I2(has_dc_rd_req_r),
        .I3(dc_dev_rvalid),
        .O(dc_dev_rvalid_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    dc_dev_rvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(areset),
        .D(dc_dev_rvalid_i_1_n_0),
        .Q(dc_dev_rvalid));
  LUT6 #(
    .INIT(64'hFFFFFFFF00010000)) 
    dc_dev_wrdy_i_1
       (.I0(dc_cpu_wen[3]),
        .I1(dc_cpu_wen[2]),
        .I2(dc_cpu_wen[0]),
        .I3(dc_cpu_wen[1]),
        .I4(dc_dev_wrdy),
        .I5(m_axi_bvalid),
        .O(dc_dev_wrdy_i_1_n_0));
  FDPE #(
    .INIT(1'b1)) 
    dc_dev_wrdy_reg
       (.C(aclk),
        .CE(1'b1),
        .D(dc_dev_wrdy_i_1_n_0),
        .PRE(areset),
        .Q(dc_dev_wrdy));
  LUT4 #(
    .INIT(16'h0F08)) 
    has_dc_rd_req_r_i_1
       (.I0(dc_cpu_ren),
        .I1(dc_dev_rrdy),
        .I2(m_axi_rlast),
        .I3(has_dc_rd_req_r),
        .O(has_dc_rd_req_r_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    has_dc_rd_req_r_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(areset),
        .D(has_dc_rd_req_r_i_1_n_0),
        .Q(has_dc_rd_req_r));
  LUT4 #(
    .INIT(16'h0F08)) 
    has_ic_rd_req_r_i_1
       (.I0(ic_cpu_ren),
        .I1(ic_dev_rrdy),
        .I2(m_axi_rlast),
        .I3(has_ic_rd_req_r),
        .O(has_ic_rd_req_r_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    has_ic_rd_req_r_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(areset),
        .D(has_ic_rd_req_r_i_1_n_0),
        .Q(has_ic_rd_req_r));
  LUT3 #(
    .INIT(8'h20)) 
    \ic_dev_rdata[255]_i_1 
       (.I0(m_axi_rvalid),
        .I1(has_dc_rd_req_r),
        .I2(has_ic_rd_req_r),
        .O(\ic_dev_rdata[255]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[0] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[32]),
        .Q(ic_dev_rdata[0]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[100] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[132]),
        .Q(ic_dev_rdata[100]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[101] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[133]),
        .Q(ic_dev_rdata[101]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[102] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[134]),
        .Q(ic_dev_rdata[102]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[103] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[135]),
        .Q(ic_dev_rdata[103]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[104] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[136]),
        .Q(ic_dev_rdata[104]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[105] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[137]),
        .Q(ic_dev_rdata[105]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[106] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[138]),
        .Q(ic_dev_rdata[106]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[107] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[139]),
        .Q(ic_dev_rdata[107]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[108] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[140]),
        .Q(ic_dev_rdata[108]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[109] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[141]),
        .Q(ic_dev_rdata[109]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[10] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[42]),
        .Q(ic_dev_rdata[10]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[110] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[142]),
        .Q(ic_dev_rdata[110]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[111] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[143]),
        .Q(ic_dev_rdata[111]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[112] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[144]),
        .Q(ic_dev_rdata[112]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[113] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[145]),
        .Q(ic_dev_rdata[113]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[114] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[146]),
        .Q(ic_dev_rdata[114]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[115] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[147]),
        .Q(ic_dev_rdata[115]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[116] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[148]),
        .Q(ic_dev_rdata[116]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[117] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[149]),
        .Q(ic_dev_rdata[117]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[118] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[150]),
        .Q(ic_dev_rdata[118]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[119] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[151]),
        .Q(ic_dev_rdata[119]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[11] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[43]),
        .Q(ic_dev_rdata[11]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[120] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[152]),
        .Q(ic_dev_rdata[120]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[121] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[153]),
        .Q(ic_dev_rdata[121]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[122] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[154]),
        .Q(ic_dev_rdata[122]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[123] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[155]),
        .Q(ic_dev_rdata[123]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[124] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[156]),
        .Q(ic_dev_rdata[124]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[125] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[157]),
        .Q(ic_dev_rdata[125]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[126] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[158]),
        .Q(ic_dev_rdata[126]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[127] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[159]),
        .Q(ic_dev_rdata[127]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[128] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[160]),
        .Q(ic_dev_rdata[128]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[129] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[161]),
        .Q(ic_dev_rdata[129]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[12] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[44]),
        .Q(ic_dev_rdata[12]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[130] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[162]),
        .Q(ic_dev_rdata[130]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[131] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[163]),
        .Q(ic_dev_rdata[131]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[132] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[164]),
        .Q(ic_dev_rdata[132]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[133] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[165]),
        .Q(ic_dev_rdata[133]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[134] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[166]),
        .Q(ic_dev_rdata[134]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[135] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[167]),
        .Q(ic_dev_rdata[135]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[136] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[168]),
        .Q(ic_dev_rdata[136]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[137] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[169]),
        .Q(ic_dev_rdata[137]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[138] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[170]),
        .Q(ic_dev_rdata[138]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[139] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[171]),
        .Q(ic_dev_rdata[139]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[13] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[45]),
        .Q(ic_dev_rdata[13]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[140] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[172]),
        .Q(ic_dev_rdata[140]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[141] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[173]),
        .Q(ic_dev_rdata[141]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[142] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[174]),
        .Q(ic_dev_rdata[142]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[143] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[175]),
        .Q(ic_dev_rdata[143]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[144] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[176]),
        .Q(ic_dev_rdata[144]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[145] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[177]),
        .Q(ic_dev_rdata[145]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[146] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[178]),
        .Q(ic_dev_rdata[146]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[147] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[179]),
        .Q(ic_dev_rdata[147]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[148] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[180]),
        .Q(ic_dev_rdata[148]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[149] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[181]),
        .Q(ic_dev_rdata[149]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[14] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[46]),
        .Q(ic_dev_rdata[14]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[150] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[182]),
        .Q(ic_dev_rdata[150]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[151] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[183]),
        .Q(ic_dev_rdata[151]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[152] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[184]),
        .Q(ic_dev_rdata[152]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[153] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[185]),
        .Q(ic_dev_rdata[153]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[154] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[186]),
        .Q(ic_dev_rdata[154]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[155] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[187]),
        .Q(ic_dev_rdata[155]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[156] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[188]),
        .Q(ic_dev_rdata[156]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[157] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[189]),
        .Q(ic_dev_rdata[157]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[158] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[190]),
        .Q(ic_dev_rdata[158]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[159] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[191]),
        .Q(ic_dev_rdata[159]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[15] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[47]),
        .Q(ic_dev_rdata[15]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[160] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[192]),
        .Q(ic_dev_rdata[160]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[161] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[193]),
        .Q(ic_dev_rdata[161]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[162] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[194]),
        .Q(ic_dev_rdata[162]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[163] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[195]),
        .Q(ic_dev_rdata[163]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[164] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[196]),
        .Q(ic_dev_rdata[164]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[165] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[197]),
        .Q(ic_dev_rdata[165]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[166] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[198]),
        .Q(ic_dev_rdata[166]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[167] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[199]),
        .Q(ic_dev_rdata[167]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[168] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[200]),
        .Q(ic_dev_rdata[168]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[169] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[201]),
        .Q(ic_dev_rdata[169]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[16] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[48]),
        .Q(ic_dev_rdata[16]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[170] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[202]),
        .Q(ic_dev_rdata[170]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[171] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[203]),
        .Q(ic_dev_rdata[171]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[172] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[204]),
        .Q(ic_dev_rdata[172]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[173] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[205]),
        .Q(ic_dev_rdata[173]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[174] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[206]),
        .Q(ic_dev_rdata[174]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[175] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[207]),
        .Q(ic_dev_rdata[175]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[176] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[208]),
        .Q(ic_dev_rdata[176]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[177] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[209]),
        .Q(ic_dev_rdata[177]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[178] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[210]),
        .Q(ic_dev_rdata[178]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[179] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[211]),
        .Q(ic_dev_rdata[179]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[17] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[49]),
        .Q(ic_dev_rdata[17]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[180] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[212]),
        .Q(ic_dev_rdata[180]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[181] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[213]),
        .Q(ic_dev_rdata[181]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[182] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[214]),
        .Q(ic_dev_rdata[182]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[183] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[215]),
        .Q(ic_dev_rdata[183]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[184] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[216]),
        .Q(ic_dev_rdata[184]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[185] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[217]),
        .Q(ic_dev_rdata[185]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[186] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[218]),
        .Q(ic_dev_rdata[186]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[187] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[219]),
        .Q(ic_dev_rdata[187]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[188] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[220]),
        .Q(ic_dev_rdata[188]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[189] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[221]),
        .Q(ic_dev_rdata[189]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[18] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[50]),
        .Q(ic_dev_rdata[18]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[190] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[222]),
        .Q(ic_dev_rdata[190]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[191] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[223]),
        .Q(ic_dev_rdata[191]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[192] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[224]),
        .Q(ic_dev_rdata[192]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[193] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[225]),
        .Q(ic_dev_rdata[193]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[194] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[226]),
        .Q(ic_dev_rdata[194]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[195] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[227]),
        .Q(ic_dev_rdata[195]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[196] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[228]),
        .Q(ic_dev_rdata[196]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[197] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[229]),
        .Q(ic_dev_rdata[197]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[198] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[230]),
        .Q(ic_dev_rdata[198]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[199] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[231]),
        .Q(ic_dev_rdata[199]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[19] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[51]),
        .Q(ic_dev_rdata[19]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[1] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[33]),
        .Q(ic_dev_rdata[1]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[200] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[232]),
        .Q(ic_dev_rdata[200]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[201] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[233]),
        .Q(ic_dev_rdata[201]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[202] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[234]),
        .Q(ic_dev_rdata[202]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[203] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[235]),
        .Q(ic_dev_rdata[203]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[204] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[236]),
        .Q(ic_dev_rdata[204]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[205] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[237]),
        .Q(ic_dev_rdata[205]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[206] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[238]),
        .Q(ic_dev_rdata[206]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[207] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[239]),
        .Q(ic_dev_rdata[207]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[208] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[240]),
        .Q(ic_dev_rdata[208]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[209] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[241]),
        .Q(ic_dev_rdata[209]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[20] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[52]),
        .Q(ic_dev_rdata[20]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[210] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[242]),
        .Q(ic_dev_rdata[210]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[211] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[243]),
        .Q(ic_dev_rdata[211]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[212] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[244]),
        .Q(ic_dev_rdata[212]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[213] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[245]),
        .Q(ic_dev_rdata[213]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[214] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[246]),
        .Q(ic_dev_rdata[214]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[215] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[247]),
        .Q(ic_dev_rdata[215]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[216] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[248]),
        .Q(ic_dev_rdata[216]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[217] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[249]),
        .Q(ic_dev_rdata[217]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[218] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[250]),
        .Q(ic_dev_rdata[218]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[219] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[251]),
        .Q(ic_dev_rdata[219]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[21] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[53]),
        .Q(ic_dev_rdata[21]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[220] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[252]),
        .Q(ic_dev_rdata[220]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[221] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[253]),
        .Q(ic_dev_rdata[221]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[222] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[254]),
        .Q(ic_dev_rdata[222]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[223] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[255]),
        .Q(ic_dev_rdata[223]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[224] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[0]),
        .Q(ic_dev_rdata[224]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[225] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[1]),
        .Q(ic_dev_rdata[225]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[226] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[2]),
        .Q(ic_dev_rdata[226]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[227] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[3]),
        .Q(ic_dev_rdata[227]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[228] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[4]),
        .Q(ic_dev_rdata[228]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[229] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[5]),
        .Q(ic_dev_rdata[229]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[22] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[54]),
        .Q(ic_dev_rdata[22]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[230] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[6]),
        .Q(ic_dev_rdata[230]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[231] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[7]),
        .Q(ic_dev_rdata[231]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[232] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[8]),
        .Q(ic_dev_rdata[232]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[233] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[9]),
        .Q(ic_dev_rdata[233]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[234] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[10]),
        .Q(ic_dev_rdata[234]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[235] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[11]),
        .Q(ic_dev_rdata[235]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[236] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[12]),
        .Q(ic_dev_rdata[236]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[237] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[13]),
        .Q(ic_dev_rdata[237]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[238] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[14]),
        .Q(ic_dev_rdata[238]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[239] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[15]),
        .Q(ic_dev_rdata[239]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[23] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[55]),
        .Q(ic_dev_rdata[23]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[240] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[16]),
        .Q(ic_dev_rdata[240]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[241] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[17]),
        .Q(ic_dev_rdata[241]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[242] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[18]),
        .Q(ic_dev_rdata[242]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[243] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[19]),
        .Q(ic_dev_rdata[243]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[244] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[20]),
        .Q(ic_dev_rdata[244]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[245] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[21]),
        .Q(ic_dev_rdata[245]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[246] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[22]),
        .Q(ic_dev_rdata[246]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[247] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[23]),
        .Q(ic_dev_rdata[247]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[248] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[24]),
        .Q(ic_dev_rdata[248]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[249] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[25]),
        .Q(ic_dev_rdata[249]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[24] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[56]),
        .Q(ic_dev_rdata[24]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[250] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[26]),
        .Q(ic_dev_rdata[250]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[251] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[27]),
        .Q(ic_dev_rdata[251]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[252] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[28]),
        .Q(ic_dev_rdata[252]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[253] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[29]),
        .Q(ic_dev_rdata[253]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[254] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[30]),
        .Q(ic_dev_rdata[254]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[255] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(m_axi_rdata[31]),
        .Q(ic_dev_rdata[255]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[25] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[57]),
        .Q(ic_dev_rdata[25]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[26] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[58]),
        .Q(ic_dev_rdata[26]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[27] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[59]),
        .Q(ic_dev_rdata[27]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[28] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[60]),
        .Q(ic_dev_rdata[28]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[29] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[61]),
        .Q(ic_dev_rdata[29]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[2] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[34]),
        .Q(ic_dev_rdata[2]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[30] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[62]),
        .Q(ic_dev_rdata[30]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[31] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[63]),
        .Q(ic_dev_rdata[31]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[32] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[64]),
        .Q(ic_dev_rdata[32]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[33] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[65]),
        .Q(ic_dev_rdata[33]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[34] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[66]),
        .Q(ic_dev_rdata[34]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[35] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[67]),
        .Q(ic_dev_rdata[35]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[36] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[68]),
        .Q(ic_dev_rdata[36]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[37] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[69]),
        .Q(ic_dev_rdata[37]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[38] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[70]),
        .Q(ic_dev_rdata[38]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[39] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[71]),
        .Q(ic_dev_rdata[39]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[3] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[35]),
        .Q(ic_dev_rdata[3]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[40] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[72]),
        .Q(ic_dev_rdata[40]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[41] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[73]),
        .Q(ic_dev_rdata[41]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[42] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[74]),
        .Q(ic_dev_rdata[42]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[43] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[75]),
        .Q(ic_dev_rdata[43]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[44] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[76]),
        .Q(ic_dev_rdata[44]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[45] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[77]),
        .Q(ic_dev_rdata[45]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[46] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[78]),
        .Q(ic_dev_rdata[46]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[47] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[79]),
        .Q(ic_dev_rdata[47]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[48] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[80]),
        .Q(ic_dev_rdata[48]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[49] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[81]),
        .Q(ic_dev_rdata[49]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[4] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[36]),
        .Q(ic_dev_rdata[4]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[50] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[82]),
        .Q(ic_dev_rdata[50]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[51] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[83]),
        .Q(ic_dev_rdata[51]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[52] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[84]),
        .Q(ic_dev_rdata[52]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[53] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[85]),
        .Q(ic_dev_rdata[53]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[54] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[86]),
        .Q(ic_dev_rdata[54]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[55] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[87]),
        .Q(ic_dev_rdata[55]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[56] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[88]),
        .Q(ic_dev_rdata[56]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[57] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[89]),
        .Q(ic_dev_rdata[57]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[58] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[90]),
        .Q(ic_dev_rdata[58]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[59] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[91]),
        .Q(ic_dev_rdata[59]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[5] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[37]),
        .Q(ic_dev_rdata[5]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[60] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[92]),
        .Q(ic_dev_rdata[60]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[61] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[93]),
        .Q(ic_dev_rdata[61]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[62] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[94]),
        .Q(ic_dev_rdata[62]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[63] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[95]),
        .Q(ic_dev_rdata[63]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[64] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[96]),
        .Q(ic_dev_rdata[64]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[65] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[97]),
        .Q(ic_dev_rdata[65]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[66] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[98]),
        .Q(ic_dev_rdata[66]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[67] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[99]),
        .Q(ic_dev_rdata[67]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[68] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[100]),
        .Q(ic_dev_rdata[68]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[69] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[101]),
        .Q(ic_dev_rdata[69]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[6] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[38]),
        .Q(ic_dev_rdata[6]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[70] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[102]),
        .Q(ic_dev_rdata[70]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[71] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[103]),
        .Q(ic_dev_rdata[71]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[72] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[104]),
        .Q(ic_dev_rdata[72]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[73] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[105]),
        .Q(ic_dev_rdata[73]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[74] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[106]),
        .Q(ic_dev_rdata[74]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[75] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[107]),
        .Q(ic_dev_rdata[75]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[76] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[108]),
        .Q(ic_dev_rdata[76]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[77] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[109]),
        .Q(ic_dev_rdata[77]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[78] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[110]),
        .Q(ic_dev_rdata[78]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[79] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[111]),
        .Q(ic_dev_rdata[79]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[7] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[39]),
        .Q(ic_dev_rdata[7]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[80] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[112]),
        .Q(ic_dev_rdata[80]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[81] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[113]),
        .Q(ic_dev_rdata[81]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[82] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[114]),
        .Q(ic_dev_rdata[82]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[83] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[115]),
        .Q(ic_dev_rdata[83]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[84] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[116]),
        .Q(ic_dev_rdata[84]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[85] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[117]),
        .Q(ic_dev_rdata[85]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[86] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[118]),
        .Q(ic_dev_rdata[86]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[87] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[119]),
        .Q(ic_dev_rdata[87]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[88] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[120]),
        .Q(ic_dev_rdata[88]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[89] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[121]),
        .Q(ic_dev_rdata[89]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[8] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[40]),
        .Q(ic_dev_rdata[8]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[90] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[122]),
        .Q(ic_dev_rdata[90]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[91] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[123]),
        .Q(ic_dev_rdata[91]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[92] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[124]),
        .Q(ic_dev_rdata[92]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[93] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[125]),
        .Q(ic_dev_rdata[93]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[94] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[126]),
        .Q(ic_dev_rdata[94]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[95] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[127]),
        .Q(ic_dev_rdata[95]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[96] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[128]),
        .Q(ic_dev_rdata[96]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[97] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[129]),
        .Q(ic_dev_rdata[97]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[98] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[130]),
        .Q(ic_dev_rdata[98]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[99] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[131]),
        .Q(ic_dev_rdata[99]));
  FDCE #(
    .INIT(1'b0)) 
    \ic_dev_rdata_reg[9] 
       (.C(aclk),
        .CE(\ic_dev_rdata[255]_i_1_n_0 ),
        .CLR(areset),
        .D(ic_dev_rdata[41]),
        .Q(ic_dev_rdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFBF0)) 
    ic_dev_rrdy_i_1
       (.I0(has_dc_rd_req_r),
        .I1(has_ic_rd_req_r),
        .I2(m_axi_rlast),
        .I3(ic_dev_rrdy),
        .O(ic_dev_rrdy_i_1_n_0));
  FDPE #(
    .INIT(1'b1)) 
    ic_dev_rrdy_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ic_dev_rrdy_i_1_n_0),
        .PRE(areset),
        .Q(ic_dev_rrdy));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAAA0400)) 
    ic_dev_rvalid_i_1
       (.I0(ic_dev_rvalid),
        .I1(m_axi_rlast),
        .I2(has_dc_rd_req_r),
        .I3(has_ic_rd_req_r),
        .I4(dc_dev_rvalid),
        .O(ic_dev_rvalid_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    ic_dev_rvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(areset),
        .D(ic_dev_rvalid_i_1_n_0),
        .Q(ic_dev_rvalid));
  LUT4 #(
    .INIT(16'hACCC)) 
    \m_axi_araddr[0]_i_1 
       (.I0(dc_cpu_raddr[0]),
        .I1(ic_cpu_raddr[0]),
        .I2(dc_dev_rrdy),
        .I3(dc_cpu_ren),
        .O(\m_axi_araddr[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hACCC)) 
    \m_axi_araddr[10]_i_1 
       (.I0(dc_cpu_raddr[10]),
        .I1(ic_cpu_raddr[10]),
        .I2(dc_dev_rrdy),
        .I3(dc_cpu_ren),
        .O(\m_axi_araddr[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hACCC)) 
    \m_axi_araddr[11]_i_1 
       (.I0(dc_cpu_raddr[11]),
        .I1(ic_cpu_raddr[11]),
        .I2(dc_dev_rrdy),
        .I3(dc_cpu_ren),
        .O(\m_axi_araddr[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hACCC)) 
    \m_axi_araddr[12]_i_1 
       (.I0(dc_cpu_raddr[12]),
        .I1(ic_cpu_raddr[12]),
        .I2(dc_dev_rrdy),
        .I3(dc_cpu_ren),
        .O(\m_axi_araddr[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hACCC)) 
    \m_axi_araddr[13]_i_1 
       (.I0(dc_cpu_raddr[13]),
        .I1(ic_cpu_raddr[13]),
        .I2(dc_dev_rrdy),
        .I3(dc_cpu_ren),
        .O(\m_axi_araddr[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hACCC)) 
    \m_axi_araddr[14]_i_1 
       (.I0(dc_cpu_raddr[14]),
        .I1(ic_cpu_raddr[14]),
        .I2(dc_dev_rrdy),
        .I3(dc_cpu_ren),
        .O(\m_axi_araddr[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hACCC)) 
    \m_axi_araddr[15]_i_1 
       (.I0(dc_cpu_raddr[15]),
        .I1(ic_cpu_raddr[15]),
        .I2(dc_dev_rrdy),
        .I3(dc_cpu_ren),
        .O(\m_axi_araddr[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hACCC)) 
    \m_axi_araddr[16]_i_1 
       (.I0(dc_cpu_raddr[16]),
        .I1(ic_cpu_raddr[16]),
        .I2(dc_dev_rrdy),
        .I3(dc_cpu_ren),
        .O(\m_axi_araddr[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hACCC)) 
    \m_axi_araddr[17]_i_1 
       (.I0(dc_cpu_raddr[17]),
        .I1(ic_cpu_raddr[17]),
        .I2(dc_dev_rrdy),
        .I3(dc_cpu_ren),
        .O(\m_axi_araddr[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hACCC)) 
    \m_axi_araddr[18]_i_1 
       (.I0(dc_cpu_raddr[18]),
        .I1(ic_cpu_raddr[18]),
        .I2(dc_dev_rrdy),
        .I3(dc_cpu_ren),
        .O(\m_axi_araddr[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hACCC)) 
    \m_axi_araddr[19]_i_1 
       (.I0(dc_cpu_raddr[19]),
        .I1(ic_cpu_raddr[19]),
        .I2(dc_dev_rrdy),
        .I3(dc_cpu_ren),
        .O(\m_axi_araddr[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hACCC)) 
    \m_axi_araddr[1]_i_1 
       (.I0(dc_cpu_raddr[1]),
        .I1(ic_cpu_raddr[1]),
        .I2(dc_dev_rrdy),
        .I3(dc_cpu_ren),
        .O(\m_axi_araddr[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hACCC)) 
    \m_axi_araddr[20]_i_1 
       (.I0(dc_cpu_raddr[20]),
        .I1(ic_cpu_raddr[20]),
        .I2(dc_dev_rrdy),
        .I3(dc_cpu_ren),
        .O(\m_axi_araddr[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hACCC)) 
    \m_axi_araddr[21]_i_1 
       (.I0(dc_cpu_raddr[21]),
        .I1(ic_cpu_raddr[21]),
        .I2(dc_dev_rrdy),
        .I3(dc_cpu_ren),
        .O(\m_axi_araddr[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hACCC)) 
    \m_axi_araddr[22]_i_1 
       (.I0(dc_cpu_raddr[22]),
        .I1(ic_cpu_raddr[22]),
        .I2(dc_dev_rrdy),
        .I3(dc_cpu_ren),
        .O(\m_axi_araddr[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hACCC)) 
    \m_axi_araddr[23]_i_1 
       (.I0(dc_cpu_raddr[23]),
        .I1(ic_cpu_raddr[23]),
        .I2(dc_dev_rrdy),
        .I3(dc_cpu_ren),
        .O(\m_axi_araddr[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hACCC)) 
    \m_axi_araddr[24]_i_1 
       (.I0(dc_cpu_raddr[24]),
        .I1(ic_cpu_raddr[24]),
        .I2(dc_dev_rrdy),
        .I3(dc_cpu_ren),
        .O(\m_axi_araddr[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hACCC)) 
    \m_axi_araddr[25]_i_1 
       (.I0(dc_cpu_raddr[25]),
        .I1(ic_cpu_raddr[25]),
        .I2(dc_dev_rrdy),
        .I3(dc_cpu_ren),
        .O(\m_axi_araddr[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hACCC)) 
    \m_axi_araddr[26]_i_1 
       (.I0(dc_cpu_raddr[26]),
        .I1(ic_cpu_raddr[26]),
        .I2(dc_dev_rrdy),
        .I3(dc_cpu_ren),
        .O(\m_axi_araddr[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hACCC)) 
    \m_axi_araddr[27]_i_1 
       (.I0(dc_cpu_raddr[27]),
        .I1(ic_cpu_raddr[27]),
        .I2(dc_dev_rrdy),
        .I3(dc_cpu_ren),
        .O(\m_axi_araddr[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hACCC)) 
    \m_axi_araddr[28]_i_1 
       (.I0(dc_cpu_raddr[28]),
        .I1(ic_cpu_raddr[28]),
        .I2(dc_dev_rrdy),
        .I3(dc_cpu_ren),
        .O(\m_axi_araddr[28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hACCC)) 
    \m_axi_araddr[29]_i_1 
       (.I0(dc_cpu_raddr[29]),
        .I1(ic_cpu_raddr[29]),
        .I2(dc_dev_rrdy),
        .I3(dc_cpu_ren),
        .O(\m_axi_araddr[29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hACCC)) 
    \m_axi_araddr[2]_i_1 
       (.I0(dc_cpu_raddr[2]),
        .I1(ic_cpu_raddr[2]),
        .I2(dc_dev_rrdy),
        .I3(dc_cpu_ren),
        .O(\m_axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hACCC)) 
    \m_axi_araddr[30]_i_1 
       (.I0(dc_cpu_raddr[30]),
        .I1(ic_cpu_raddr[30]),
        .I2(dc_dev_rrdy),
        .I3(dc_cpu_ren),
        .O(\m_axi_araddr[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axi_araddr[31]_i_1 
       (.I0(dc_cpu_ren),
        .I1(dc_dev_rrdy),
        .I2(ic_cpu_ren),
        .I3(ic_dev_rrdy),
        .O(has_rd_req));
  LUT4 #(
    .INIT(16'hACCC)) 
    \m_axi_araddr[31]_i_2 
       (.I0(dc_cpu_raddr[31]),
        .I1(ic_cpu_raddr[31]),
        .I2(dc_dev_rrdy),
        .I3(dc_cpu_ren),
        .O(\m_axi_araddr[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hACCC)) 
    \m_axi_araddr[3]_i_1 
       (.I0(dc_cpu_raddr[3]),
        .I1(ic_cpu_raddr[3]),
        .I2(dc_dev_rrdy),
        .I3(dc_cpu_ren),
        .O(\m_axi_araddr[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hACCC)) 
    \m_axi_araddr[4]_i_1 
       (.I0(dc_cpu_raddr[4]),
        .I1(ic_cpu_raddr[4]),
        .I2(dc_dev_rrdy),
        .I3(dc_cpu_ren),
        .O(\m_axi_araddr[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hACCC)) 
    \m_axi_araddr[5]_i_1 
       (.I0(dc_cpu_raddr[5]),
        .I1(ic_cpu_raddr[5]),
        .I2(dc_dev_rrdy),
        .I3(dc_cpu_ren),
        .O(\m_axi_araddr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hACCC)) 
    \m_axi_araddr[6]_i_1 
       (.I0(dc_cpu_raddr[6]),
        .I1(ic_cpu_raddr[6]),
        .I2(dc_dev_rrdy),
        .I3(dc_cpu_ren),
        .O(\m_axi_araddr[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hACCC)) 
    \m_axi_araddr[7]_i_1 
       (.I0(dc_cpu_raddr[7]),
        .I1(ic_cpu_raddr[7]),
        .I2(dc_dev_rrdy),
        .I3(dc_cpu_ren),
        .O(\m_axi_araddr[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hACCC)) 
    \m_axi_araddr[8]_i_1 
       (.I0(dc_cpu_raddr[8]),
        .I1(ic_cpu_raddr[8]),
        .I2(dc_dev_rrdy),
        .I3(dc_cpu_ren),
        .O(\m_axi_araddr[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hACCC)) 
    \m_axi_araddr[9]_i_1 
       (.I0(dc_cpu_raddr[9]),
        .I1(ic_cpu_raddr[9]),
        .I2(dc_dev_rrdy),
        .I3(dc_cpu_ren),
        .O(\m_axi_araddr[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_araddr_reg[0] 
       (.C(aclk),
        .CE(has_rd_req),
        .CLR(areset),
        .D(\m_axi_araddr[0]_i_1_n_0 ),
        .Q(m_axi_araddr[0]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_araddr_reg[10] 
       (.C(aclk),
        .CE(has_rd_req),
        .CLR(areset),
        .D(\m_axi_araddr[10]_i_1_n_0 ),
        .Q(m_axi_araddr[10]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_araddr_reg[11] 
       (.C(aclk),
        .CE(has_rd_req),
        .CLR(areset),
        .D(\m_axi_araddr[11]_i_1_n_0 ),
        .Q(m_axi_araddr[11]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_araddr_reg[12] 
       (.C(aclk),
        .CE(has_rd_req),
        .CLR(areset),
        .D(\m_axi_araddr[12]_i_1_n_0 ),
        .Q(m_axi_araddr[12]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_araddr_reg[13] 
       (.C(aclk),
        .CE(has_rd_req),
        .CLR(areset),
        .D(\m_axi_araddr[13]_i_1_n_0 ),
        .Q(m_axi_araddr[13]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_araddr_reg[14] 
       (.C(aclk),
        .CE(has_rd_req),
        .CLR(areset),
        .D(\m_axi_araddr[14]_i_1_n_0 ),
        .Q(m_axi_araddr[14]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_araddr_reg[15] 
       (.C(aclk),
        .CE(has_rd_req),
        .CLR(areset),
        .D(\m_axi_araddr[15]_i_1_n_0 ),
        .Q(m_axi_araddr[15]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_araddr_reg[16] 
       (.C(aclk),
        .CE(has_rd_req),
        .CLR(areset),
        .D(\m_axi_araddr[16]_i_1_n_0 ),
        .Q(m_axi_araddr[16]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_araddr_reg[17] 
       (.C(aclk),
        .CE(has_rd_req),
        .CLR(areset),
        .D(\m_axi_araddr[17]_i_1_n_0 ),
        .Q(m_axi_araddr[17]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_araddr_reg[18] 
       (.C(aclk),
        .CE(has_rd_req),
        .CLR(areset),
        .D(\m_axi_araddr[18]_i_1_n_0 ),
        .Q(m_axi_araddr[18]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_araddr_reg[19] 
       (.C(aclk),
        .CE(has_rd_req),
        .CLR(areset),
        .D(\m_axi_araddr[19]_i_1_n_0 ),
        .Q(m_axi_araddr[19]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_araddr_reg[1] 
       (.C(aclk),
        .CE(has_rd_req),
        .CLR(areset),
        .D(\m_axi_araddr[1]_i_1_n_0 ),
        .Q(m_axi_araddr[1]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_araddr_reg[20] 
       (.C(aclk),
        .CE(has_rd_req),
        .CLR(areset),
        .D(\m_axi_araddr[20]_i_1_n_0 ),
        .Q(m_axi_araddr[20]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_araddr_reg[21] 
       (.C(aclk),
        .CE(has_rd_req),
        .CLR(areset),
        .D(\m_axi_araddr[21]_i_1_n_0 ),
        .Q(m_axi_araddr[21]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_araddr_reg[22] 
       (.C(aclk),
        .CE(has_rd_req),
        .CLR(areset),
        .D(\m_axi_araddr[22]_i_1_n_0 ),
        .Q(m_axi_araddr[22]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_araddr_reg[23] 
       (.C(aclk),
        .CE(has_rd_req),
        .CLR(areset),
        .D(\m_axi_araddr[23]_i_1_n_0 ),
        .Q(m_axi_araddr[23]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_araddr_reg[24] 
       (.C(aclk),
        .CE(has_rd_req),
        .CLR(areset),
        .D(\m_axi_araddr[24]_i_1_n_0 ),
        .Q(m_axi_araddr[24]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_araddr_reg[25] 
       (.C(aclk),
        .CE(has_rd_req),
        .CLR(areset),
        .D(\m_axi_araddr[25]_i_1_n_0 ),
        .Q(m_axi_araddr[25]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_araddr_reg[26] 
       (.C(aclk),
        .CE(has_rd_req),
        .CLR(areset),
        .D(\m_axi_araddr[26]_i_1_n_0 ),
        .Q(m_axi_araddr[26]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_araddr_reg[27] 
       (.C(aclk),
        .CE(has_rd_req),
        .CLR(areset),
        .D(\m_axi_araddr[27]_i_1_n_0 ),
        .Q(m_axi_araddr[27]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_araddr_reg[28] 
       (.C(aclk),
        .CE(has_rd_req),
        .CLR(areset),
        .D(\m_axi_araddr[28]_i_1_n_0 ),
        .Q(m_axi_araddr[28]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_araddr_reg[29] 
       (.C(aclk),
        .CE(has_rd_req),
        .CLR(areset),
        .D(\m_axi_araddr[29]_i_1_n_0 ),
        .Q(m_axi_araddr[29]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_araddr_reg[2] 
       (.C(aclk),
        .CE(has_rd_req),
        .CLR(areset),
        .D(\m_axi_araddr[2]_i_1_n_0 ),
        .Q(m_axi_araddr[2]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_araddr_reg[30] 
       (.C(aclk),
        .CE(has_rd_req),
        .CLR(areset),
        .D(\m_axi_araddr[30]_i_1_n_0 ),
        .Q(m_axi_araddr[30]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_araddr_reg[31] 
       (.C(aclk),
        .CE(has_rd_req),
        .CLR(areset),
        .D(\m_axi_araddr[31]_i_2_n_0 ),
        .Q(m_axi_araddr[31]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_araddr_reg[3] 
       (.C(aclk),
        .CE(has_rd_req),
        .CLR(areset),
        .D(\m_axi_araddr[3]_i_1_n_0 ),
        .Q(m_axi_araddr[3]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_araddr_reg[4] 
       (.C(aclk),
        .CE(has_rd_req),
        .CLR(areset),
        .D(\m_axi_araddr[4]_i_1_n_0 ),
        .Q(m_axi_araddr[4]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_araddr_reg[5] 
       (.C(aclk),
        .CE(has_rd_req),
        .CLR(areset),
        .D(\m_axi_araddr[5]_i_1_n_0 ),
        .Q(m_axi_araddr[5]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_araddr_reg[6] 
       (.C(aclk),
        .CE(has_rd_req),
        .CLR(areset),
        .D(\m_axi_araddr[6]_i_1_n_0 ),
        .Q(m_axi_araddr[6]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_araddr_reg[7] 
       (.C(aclk),
        .CE(has_rd_req),
        .CLR(areset),
        .D(\m_axi_araddr[7]_i_1_n_0 ),
        .Q(m_axi_araddr[7]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_araddr_reg[8] 
       (.C(aclk),
        .CE(has_rd_req),
        .CLR(areset),
        .D(\m_axi_araddr[8]_i_1_n_0 ),
        .Q(m_axi_araddr[8]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_araddr_reg[9] 
       (.C(aclk),
        .CE(has_rd_req),
        .CLR(areset),
        .D(\m_axi_araddr[9]_i_1_n_0 ),
        .Q(m_axi_araddr[9]));
  LUT6 #(
    .INIT(64'hFFFFF777FFFFF000)) 
    \m_axi_arlen[2]_i_1 
       (.I0(m_axi_arready),
        .I1(m_axi_arvalid),
        .I2(ic_dev_rrdy),
        .I3(ic_cpu_ren),
        .I4(has_dc_rd_req),
        .I5(\^m_axi_arlen ),
        .O(\m_axi_arlen[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_arlen[2]_i_2 
       (.I0(dc_dev_rrdy),
        .I1(dc_cpu_ren),
        .O(has_dc_rd_req));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_arlen_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(areset),
        .D(\m_axi_arlen[2]_i_1_n_0 ),
        .Q(\^m_axi_arlen ));
  LUT6 #(
    .INIT(64'hFFFFF444F444F444)) 
    m_axi_arvalid_i_1
       (.I0(m_axi_arready),
        .I1(m_axi_arvalid),
        .I2(ic_dev_rrdy),
        .I3(ic_cpu_ren),
        .I4(dc_dev_rrdy),
        .I5(dc_cpu_ren),
        .O(m_axi_arvalid_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    m_axi_arvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(areset),
        .D(m_axi_arvalid_i_1_n_0),
        .Q(m_axi_arvalid));
  LUT3 #(
    .INIT(8'h2A)) 
    \m_axi_awaddr[31]_i_1 
       (.I0(has_dc_wr_req),
        .I1(m_axi_awready),
        .I2(m_axi_awvalid),
        .O(\m_axi_awaddr[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \m_axi_awaddr[31]_i_2 
       (.I0(dc_dev_wrdy),
        .I1(dc_cpu_wen[1]),
        .I2(dc_cpu_wen[0]),
        .I3(dc_cpu_wen[2]),
        .I4(dc_cpu_wen[3]),
        .O(has_dc_wr_req));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_awaddr_reg[0] 
       (.C(aclk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_waddr[0]),
        .Q(m_axi_awaddr[0]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_awaddr_reg[10] 
       (.C(aclk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_waddr[10]),
        .Q(m_axi_awaddr[10]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_awaddr_reg[11] 
       (.C(aclk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_waddr[11]),
        .Q(m_axi_awaddr[11]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_awaddr_reg[12] 
       (.C(aclk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_waddr[12]),
        .Q(m_axi_awaddr[12]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_awaddr_reg[13] 
       (.C(aclk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_waddr[13]),
        .Q(m_axi_awaddr[13]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_awaddr_reg[14] 
       (.C(aclk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_waddr[14]),
        .Q(m_axi_awaddr[14]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_awaddr_reg[15] 
       (.C(aclk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_waddr[15]),
        .Q(m_axi_awaddr[15]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_awaddr_reg[16] 
       (.C(aclk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_waddr[16]),
        .Q(m_axi_awaddr[16]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_awaddr_reg[17] 
       (.C(aclk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_waddr[17]),
        .Q(m_axi_awaddr[17]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_awaddr_reg[18] 
       (.C(aclk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_waddr[18]),
        .Q(m_axi_awaddr[18]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_awaddr_reg[19] 
       (.C(aclk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_waddr[19]),
        .Q(m_axi_awaddr[19]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_awaddr_reg[1] 
       (.C(aclk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_waddr[1]),
        .Q(m_axi_awaddr[1]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_awaddr_reg[20] 
       (.C(aclk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_waddr[20]),
        .Q(m_axi_awaddr[20]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_awaddr_reg[21] 
       (.C(aclk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_waddr[21]),
        .Q(m_axi_awaddr[21]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_awaddr_reg[22] 
       (.C(aclk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_waddr[22]),
        .Q(m_axi_awaddr[22]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_awaddr_reg[23] 
       (.C(aclk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_waddr[23]),
        .Q(m_axi_awaddr[23]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_awaddr_reg[24] 
       (.C(aclk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_waddr[24]),
        .Q(m_axi_awaddr[24]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_awaddr_reg[25] 
       (.C(aclk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_waddr[25]),
        .Q(m_axi_awaddr[25]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_awaddr_reg[26] 
       (.C(aclk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_waddr[26]),
        .Q(m_axi_awaddr[26]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_awaddr_reg[27] 
       (.C(aclk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_waddr[27]),
        .Q(m_axi_awaddr[27]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_awaddr_reg[28] 
       (.C(aclk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_waddr[28]),
        .Q(m_axi_awaddr[28]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_awaddr_reg[29] 
       (.C(aclk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_waddr[29]),
        .Q(m_axi_awaddr[29]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_awaddr_reg[2] 
       (.C(aclk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_waddr[2]),
        .Q(m_axi_awaddr[2]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_awaddr_reg[30] 
       (.C(aclk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_waddr[30]),
        .Q(m_axi_awaddr[30]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_awaddr_reg[31] 
       (.C(aclk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_waddr[31]),
        .Q(m_axi_awaddr[31]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_awaddr_reg[3] 
       (.C(aclk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_waddr[3]),
        .Q(m_axi_awaddr[3]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_awaddr_reg[4] 
       (.C(aclk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_waddr[4]),
        .Q(m_axi_awaddr[4]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_awaddr_reg[5] 
       (.C(aclk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_waddr[5]),
        .Q(m_axi_awaddr[5]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_awaddr_reg[6] 
       (.C(aclk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_waddr[6]),
        .Q(m_axi_awaddr[6]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_awaddr_reg[7] 
       (.C(aclk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_waddr[7]),
        .Q(m_axi_awaddr[7]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_awaddr_reg[8] 
       (.C(aclk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_waddr[8]),
        .Q(m_axi_awaddr[8]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_awaddr_reg[9] 
       (.C(aclk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_waddr[9]),
        .Q(m_axi_awaddr[9]));
  LUT5 #(
    .INIT(32'hFF770070)) 
    \m_axi_awsize[1]_i_1 
       (.I0(m_axi_awvalid),
        .I1(m_axi_awready),
        .I2(has_dc_wr_req),
        .I3(areset),
        .I4(\^m_axi_awburst ),
        .O(\m_axi_awsize[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_axi_awsize_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_axi_awsize[1]_i_1_n_0 ),
        .Q(\^m_axi_awburst ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h3A)) 
    m_axi_awvalid_i_1
       (.I0(has_dc_wr_req),
        .I1(m_axi_awready),
        .I2(m_axi_awvalid),
        .O(m_axi_awvalid_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    m_axi_awvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(areset),
        .D(m_axi_awvalid_i_1_n_0),
        .Q(m_axi_awvalid));
  FDCE #(
    .INIT(1'b0)) 
    m_axi_bready_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(areset),
        .D(1'b1),
        .Q(m_axi_rready));
  LUT3 #(
    .INIT(8'h2A)) 
    \m_axi_wdata[31]_i_1 
       (.I0(has_dc_wr_req),
        .I1(m_axi_wready),
        .I2(m_axi_wlast),
        .O(\m_axi_wdata[31]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_wdata_reg[0] 
       (.C(aclk),
        .CE(\m_axi_wdata[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_wdata[0]),
        .Q(m_axi_wdata[0]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_wdata_reg[10] 
       (.C(aclk),
        .CE(\m_axi_wdata[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_wdata[10]),
        .Q(m_axi_wdata[10]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_wdata_reg[11] 
       (.C(aclk),
        .CE(\m_axi_wdata[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_wdata[11]),
        .Q(m_axi_wdata[11]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_wdata_reg[12] 
       (.C(aclk),
        .CE(\m_axi_wdata[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_wdata[12]),
        .Q(m_axi_wdata[12]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_wdata_reg[13] 
       (.C(aclk),
        .CE(\m_axi_wdata[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_wdata[13]),
        .Q(m_axi_wdata[13]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_wdata_reg[14] 
       (.C(aclk),
        .CE(\m_axi_wdata[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_wdata[14]),
        .Q(m_axi_wdata[14]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_wdata_reg[15] 
       (.C(aclk),
        .CE(\m_axi_wdata[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_wdata[15]),
        .Q(m_axi_wdata[15]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_wdata_reg[16] 
       (.C(aclk),
        .CE(\m_axi_wdata[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_wdata[16]),
        .Q(m_axi_wdata[16]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_wdata_reg[17] 
       (.C(aclk),
        .CE(\m_axi_wdata[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_wdata[17]),
        .Q(m_axi_wdata[17]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_wdata_reg[18] 
       (.C(aclk),
        .CE(\m_axi_wdata[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_wdata[18]),
        .Q(m_axi_wdata[18]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_wdata_reg[19] 
       (.C(aclk),
        .CE(\m_axi_wdata[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_wdata[19]),
        .Q(m_axi_wdata[19]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_wdata_reg[1] 
       (.C(aclk),
        .CE(\m_axi_wdata[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_wdata[1]),
        .Q(m_axi_wdata[1]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_wdata_reg[20] 
       (.C(aclk),
        .CE(\m_axi_wdata[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_wdata[20]),
        .Q(m_axi_wdata[20]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_wdata_reg[21] 
       (.C(aclk),
        .CE(\m_axi_wdata[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_wdata[21]),
        .Q(m_axi_wdata[21]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_wdata_reg[22] 
       (.C(aclk),
        .CE(\m_axi_wdata[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_wdata[22]),
        .Q(m_axi_wdata[22]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_wdata_reg[23] 
       (.C(aclk),
        .CE(\m_axi_wdata[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_wdata[23]),
        .Q(m_axi_wdata[23]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_wdata_reg[24] 
       (.C(aclk),
        .CE(\m_axi_wdata[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_wdata[24]),
        .Q(m_axi_wdata[24]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_wdata_reg[25] 
       (.C(aclk),
        .CE(\m_axi_wdata[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_wdata[25]),
        .Q(m_axi_wdata[25]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_wdata_reg[26] 
       (.C(aclk),
        .CE(\m_axi_wdata[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_wdata[26]),
        .Q(m_axi_wdata[26]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_wdata_reg[27] 
       (.C(aclk),
        .CE(\m_axi_wdata[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_wdata[27]),
        .Q(m_axi_wdata[27]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_wdata_reg[28] 
       (.C(aclk),
        .CE(\m_axi_wdata[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_wdata[28]),
        .Q(m_axi_wdata[28]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_wdata_reg[29] 
       (.C(aclk),
        .CE(\m_axi_wdata[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_wdata[29]),
        .Q(m_axi_wdata[29]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_wdata_reg[2] 
       (.C(aclk),
        .CE(\m_axi_wdata[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_wdata[2]),
        .Q(m_axi_wdata[2]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_wdata_reg[30] 
       (.C(aclk),
        .CE(\m_axi_wdata[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_wdata[30]),
        .Q(m_axi_wdata[30]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_wdata_reg[31] 
       (.C(aclk),
        .CE(\m_axi_wdata[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_wdata[31]),
        .Q(m_axi_wdata[31]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_wdata_reg[3] 
       (.C(aclk),
        .CE(\m_axi_wdata[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_wdata[3]),
        .Q(m_axi_wdata[3]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_wdata_reg[4] 
       (.C(aclk),
        .CE(\m_axi_wdata[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_wdata[4]),
        .Q(m_axi_wdata[4]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_wdata_reg[5] 
       (.C(aclk),
        .CE(\m_axi_wdata[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_wdata[5]),
        .Q(m_axi_wdata[5]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_wdata_reg[6] 
       (.C(aclk),
        .CE(\m_axi_wdata[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_wdata[6]),
        .Q(m_axi_wdata[6]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_wdata_reg[7] 
       (.C(aclk),
        .CE(\m_axi_wdata[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_wdata[7]),
        .Q(m_axi_wdata[7]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_wdata_reg[8] 
       (.C(aclk),
        .CE(\m_axi_wdata[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_wdata[8]),
        .Q(m_axi_wdata[8]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_wdata_reg[9] 
       (.C(aclk),
        .CE(\m_axi_wdata[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_wdata[9]),
        .Q(m_axi_wdata[9]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_wstrb_reg[0] 
       (.C(aclk),
        .CE(\m_axi_wdata[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_wen[0]),
        .Q(m_axi_wstrb[0]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_wstrb_reg[1] 
       (.C(aclk),
        .CE(\m_axi_wdata[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_wen[1]),
        .Q(m_axi_wstrb[1]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_wstrb_reg[2] 
       (.C(aclk),
        .CE(\m_axi_wdata[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_wen[2]),
        .Q(m_axi_wstrb[2]));
  FDCE #(
    .INIT(1'b0)) 
    \m_axi_wstrb_reg[3] 
       (.C(aclk),
        .CE(\m_axi_wdata[31]_i_1_n_0 ),
        .CLR(areset),
        .D(dc_cpu_wen[3]),
        .Q(m_axi_wstrb[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h3A)) 
    m_axi_wvalid_i_1
       (.I0(has_dc_wr_req),
        .I1(m_axi_wready),
        .I2(m_axi_wlast),
        .O(m_axi_wvalid_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    m_axi_wvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(areset),
        .D(m_axi_wvalid_i_1_n_0),
        .Q(m_axi_wlast));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
