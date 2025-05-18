// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed Apr 30 01:20:27 2025
// Host        : DESKTOP-862KP6D running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               n:/Study/Coding/RISC-V/lab3_stu/miniRV_axi/miniRV_axi.gen/sources_1/ip/fifo_generator_1/fifo_generator_1_sim_netlist.v
// Design      : fifo_generator_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_1,fifo_generator_v13_2_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_11,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module fifo_generator_1
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
  fifo_generator_1_fifo_generator_v13_2_11 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 68928)
`pragma protect data_block
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
piGHcJMg7eXEo3h379Kh
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
