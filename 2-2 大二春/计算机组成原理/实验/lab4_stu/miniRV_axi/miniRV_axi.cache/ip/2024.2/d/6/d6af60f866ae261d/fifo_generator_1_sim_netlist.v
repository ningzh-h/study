// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed Apr 30 01:20:26 2025
// Host        : DESKTOP-862KP6D running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_generator_1_sim_netlist.v
// Design      : fifo_generator_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_1,fifo_generator_v13_2_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_11,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 core_clk CLK" *) (* x_interface_mode = "slave core_clk" *) (* x_interface_parameter = "XIL_INTERFACENAME core_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* x_interface_mode = "slave FIFO_WRITE" *) input [37:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* x_interface_mode = "slave FIFO_READ" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [37:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire clk;
  wire [37:0]din;
  wire [37:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [3:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [3:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [3:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "4" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "38" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "38" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "14" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "13" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "4" *) 
  (* C_RD_DEPTH = "16" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "4" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "4" *) 
  (* C_WR_DEPTH = "16" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "4" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_11 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(clk),
        .data_count(NLW_U0_data_count_UNCONNECTED[3:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[3:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[3:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
md0AksSCeI3fOZtF7nrw91OgSzGoACBon4GH9ENTzaI4jlg22H1uTtXayX2Kz+g4ZH2j52rtMH8H
Xc49HVcThMzO1cRXu+SkL59MRQ87klGca4XtjrTtunJoQ+jyOKRwRBeIMHUdntbk2T1kbXHf9KkB
bNYGEMqSrbiDt7IJUx8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
r6CzxR0T3O2wvZRQe25aX3/CWOx/3d/3vJvvS/XsrKr7v852GNQNqCBn+PKsunj0Ncep8DqHtVie
BE6tKIqZW+3txAUjrhSri5liuFWSnzAk+Drsb4RnvIy7BeOdAK6NhVhn8ZyplkJSHVwaGjN8gtPE
LeWEHPHf5qLnzqGKV7B6oIC7POGV6Vamos1p2z1xv2cEw4udvmtZ5EjzeyCMf+omtxEPxhPi6Z2h
ENlGOmuPMkWGMjP6HQCZ1Mi0uiST/zDo29UDIMmOGcsDMe97imU/z2ekKTPXXwjcV+9q+4zHRgJV
6JWWgjU9cztV5OMaEfpBgRBWae/ijWpPZaGuFA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
glFrHilvyO7nq7/OYhnyb9uU9d8UNGJruNnkmJWuTpgvyCDmtx7iVKPBPe1Bj9jUDT/HM9AGxvu0
g7b4TuMdVkegkVPeHhw31IW0HoTL8wPnrLEpzDVK+B7xl953hPKPe0vn+0EQh2UKeL5K8VLxmsSv
gbpEeToeR90yzlSUzDE=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
D4uBhES8Mkd0GCwY2aQOmEzTqz6hO5B9Wa2oyfVBEODkWyt+AHkIXn4tuBN05FcP2FVmgtVbvZX5
K6iog51IoPw5tv+pM5x8+bQBX/aZpf0c4to3qiX6RZuITpuSUWq/7sqQDqtMqDWOFMMnUBpTX+qI
t61NvyIZcfqRWo4yvIUV2Zh1etqYKDlhqRnMoBZKMeHFpVsp19nU4sf5Km7sSlPQ08vYD8qtJqgJ
ZDYC2KWFTHsnT+5anHvc80FgHt4zBHpPrGprgpltQmVmMZxUD6NRC9EvvXf+pBhgfwPHHePWIKUn
elLld/HEVeFw76SlVV8i4LsS4KWWOM+KmMprEg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EW9gHDqS12MVhy+y/xQVscLd4qOim+cNTepYzlas7WzqDJogZthddOuGjpm3a3fS/cMbF/h0O1Hb
Wjow664GIga0y96lkbkcJ3W8x/IGAsvgyrYT6ScsFhyq7tSd1HjvRG81BhhGM1mmpxfzh0Uqbfso
q+uVKPUmPnbQ/Gdu9YRoxmYVJdmUTpXJ5waYOdib8WNMPLdDfIo/FGrYrx2zYQBtpU5DwwVUTMrB
ZasEyxOj++icI5k5lR3Tx+3gdCFTy4XYQfcj2COm4gnVZ8FN/X1/+0ywsVGAc/OKL+mjMYH3NNH3
zfDO/TpYft+HaVl+CfF/U6IgJJeJs4qI4gB4FA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Myfv5Skg7QCxlNBoFiSTLAeIRYS0J0ArRihYk7dGAHZWAFlxJLgqo51W9P9zTVBurMJjZLtonoDJ
19RfxQj5GqhqN1A20s8xOFfLq6+uDG/V39xQFY32O626Kh4MMlH07hNJL5u1NjJWg1yze0XdFEe9
oLwKQz5lSKGMIh+VPXDuCGhShS+KhHwGEdS0lmA/IHPFNlRG1LsK0zQmUiNkG4kQ5OEVkQgvknNC
B6++ZDIYlT9WbZPs5giRY0zAhUepLPaO+N9F3fIBKVGw4ejbZOt0kXKixF86DDfLmF2+dov+PrTX
1MXJaea3YoQdR2c2MSHAk/TTkzg9ayjvxKaXpg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ks9l+EPHXfDNnWd0exs1j0Q9iSNYaIExwQnpsi8TFJimjPtOkX050wFklsLBM83WyfuD+F2KLNnZ
Jg/aiIiGe9o424jOiEFdnAJuzrD0QL9WmhQ3W9iRJ7uPhha6NfR2WGTCCM4TpN8rTKLQDKxenVfv
6x83rnL5NQxvpp9cQh3zMma73qoEJjhTR9MD9cwA4VeKq2u/R0iTWBplX81vYFd9TW2qW5/Qyzzj
A0+pXzczcJKdggV8h8bYcO+PRC3t2XrufhnjvhjMLG2tPHSMW/soDH/v8KorXyWe5N/q12fo5auN
SXr3olNuB5kpiVS3mJAPV0z4UsFfu2A4hLH7MQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
e3AJKDEM9byJqwpkFZqMIMKMQPOR1VrLFkshor7HR0C+ol7Uv3XTGyvQrINdBEArX0eazF0cHWjC
9B4BhDnysAhT6SENcNHIYHUGQE7uiF7zgL7WhCxClwEnIAVj+PU9FmqlvbreEikHQfbeIDPyCLii
NAS97RDxWki/MfR33zvZX4eEolA/oTyRzr1MagBs7LN1UXyGPvnze8JzHxA3zHVedIIrBrZxkfoj
Loqe6tLYRlC45h1Yr3Wa2gh3LJGtOSji+m7E9Xua/pPh8A/CAD+TNBa5d/X7C3a4AWl2bYTi7HBY
Y8vaIjHiSosru5F2UOEQG9xekCbNRK1Apew1UIvntzCmDMMhlAgB78AUOE2YEWKd9GOl+aTZjMS3
GxAYzrtv/bDRkPOYbcG0SNT9xf+izRM3lX1E2vN3i3uU2Qrh73fjU1lk3PIe/A/H56UrNPDnGT9W
TvlJR47bLDtGyX2+dLvfTaZGRP8aepePOXXLIlvqwCJSMVhCB/hIbz7E

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TfuXOFQtE7YhtTL4354NvKETmBCLSVnb+pbrT8gtzjU7pERE1Hu2ZVzHgVQXwt5RvwG1R/z2je+U
PzszCBhPNqUaXEhuJ0A/q0S/vvOOa6h6tW9MhiB3gnuqEFVWz5pbHZNfgrwh2gT8XyqLI8f1CoJM
xpcB2TbREV/kAAFMxIfH1Dg0KSO2dCeVV1na6N0AiMOQPvXZOB7QpXwNDbYfarWLtF0/l0hi4Fxu
Kgho2ggrUhajP0aKlrCQ9mLsqOyqJELeJldeD+vuUUqhYq4K4RrwtQF+B67lYc4AjznwQ92tUvYJ
ZspFoHJEScNvdFoHFTA2TQ2KToepsqXRiOCL1A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tmfbBpNtCYJ7zsgNxUzw7Dvn+hNn2PPUBeRfXSci/q2/OcQeF/eAAML8YIN1V+AEoAqZTE2/xRQz
+6zwVOLyAOLynMIBQ7EG7xReDJ9kEEiBjnMGO6NWdAsa/VcreVHrLD1PFtA1+WoVe6yOvNGK+Nbh
HjPkXyycyP6RQ4Rx/PtTxw31LOFVezddSgRlaKHTprKTP4LbjPG//onRBg3fAl8zwU1wYYNLzYCX
jwY7xfMkQyhUSpV2Tx3seqy2IYVl8jjxynFxfyxulvrJiqmc6aaKKBdkoOVbJ5eO2sCXFJB1mKEU
WR2Ee2ozisABzk9IcGILewCW7ghdLP82CRZv4A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GfDCxx9db4ripD5mvQy16BVlwPYfeC7ZobZXaX1my6WUDiKwd69J5SreUXKYD9lvZfI7djLgHkYm
5G247T4NX7zoBwc88bUD+tNvGNmzWFfSVVZqu8hjgd31lZXjy9uYdXA/gsE+T+JqEfRYdV8YoGgm
sREyiJjWRPDbx6kc8um8vlAK/Rjwz0EGVkGUoi/+UvxcnjG1PqCl7GSMOQ3gFMEOaxIflShnF2/c
//ioADxl3WjUGyTstMK54XlP8G1Hk95sSe/7Y+SbaIyoG8t6gGDimDJNuGs4JjDUi1V7Gxfzxk9+
O2J++9clyLkMZ3rRyxSvR+Xyrmn3YxjVC68GXw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 68992)
`pragma protect data_block
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
Pp+npT4sEofmjk2riJ0/R4zXg0sO3g==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
