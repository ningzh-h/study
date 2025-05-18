transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/axi_bram_ctrl_v4_1_11
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap axi_bram_ctrl_v4_1_11 riviera/axi_bram_ctrl_v4_1_11
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -incr -l xpm -l axi_bram_ctrl_v4_1_11 -l xil_defaultlib \
"D:/Applications/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Applications/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"D:/Applications/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work axi_bram_ctrl_v4_1_11 -93  -incr \
"../../../ipstatic/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../../miniRV_axi.gen/sources_1/ip/axi_bram_ctrl_0/sim/axi_bram_ctrl_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

