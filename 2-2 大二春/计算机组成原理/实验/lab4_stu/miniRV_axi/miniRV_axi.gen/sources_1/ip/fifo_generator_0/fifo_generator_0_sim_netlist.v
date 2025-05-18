// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed Apr 30 01:21:02 2025
// Host        : DESKTOP-862KP6D running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               n:/Study/Coding/RISC-V/lab3_stu/miniRV_axi/miniRV_axi.gen/sources_1/ip/fifo_generator_0/fifo_generator_0_sim_netlist.v
// Design      : fifo_generator_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_11,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module fifo_generator_0
   (clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 core_clk CLK" *) (* x_interface_mode = "slave core_clk" *) (* x_interface_parameter = "XIL_INTERFACENAME core_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* x_interface_mode = "slave FIFO_WRITE" *) input [33:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* x_interface_mode = "slave FIFO_READ" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [33:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire clk;
  wire [33:0]din;
  wire [33:0]dout;
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
  (* C_DIN_WIDTH = "34" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "34" *) 
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
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
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
  fifo_generator_0_fifo_generator_v13_2_11 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 66240)
`pragma protect data_block
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
j6YpetOE
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
