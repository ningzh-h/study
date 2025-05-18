transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+axi_crossbar_0  -L xil_defaultlib -L xpm -L generic_baseblocks_v2_1_2 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_33 -L fifo_generator_v13_2_11 -L axi_data_fifo_v2_1_32 -L axi_crossbar_v2_1_34 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.axi_crossbar_0 xil_defaultlib.glbl

do {axi_crossbar_0.udo}

run 1000ns

endsim

quit -force
