set_property -dict { PACKAGE_PIN V18 IOSTANDARD LVCMOS33 } [get_ports  tx];

set_property -dict { PACKAGE_PIN Y18 IOSTANDARD LVCMOS33 } [get_ports  clk];  
# create_clock -period 10.0 [get_ports clk];  
set_property -dict { PACKAGE_PIN R1 IOSTANDARD LVCMOS33 } [get_ports  rst];

