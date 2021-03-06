vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm

vlog -work xil_defaultlib -64 -incr -sv "+incdir+../../../../risc16.srcs/sources_1/bd/risc16System/ipshared/85a3" \
"/tools/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"/tools/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../risc16.srcs/sources_1/bd/risc16System/ipshared/85a3" \
"../../../bd/risc16System/sim/risc16System.v" \
"../../../bd/risc16System/ip/risc16System_nexys_7seg_0_0/sim/risc16System_nexys_7seg_0_0.v" \
"../../../bd/risc16System/ip/risc16System_clk_wiz_0_0/risc16System_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/risc16System/ip/risc16System_clk_wiz_0_0/risc16System_clk_wiz_0_0.v" \
"../../../bd/risc16System/ip/risc16System_clk_div_0_0/sim/risc16System_clk_div_0_0.v" \
"../../../bd/risc16System/ip/risc16System_risc16_0_0/sim/risc16System_risc16_0_0.v" \
"../../../bd/risc16System/ip/risc16System_display_ctrl_0_0/sim/risc16System_display_ctrl_0_0.v" \
"../../../bd/risc16System/ip/risc16System_spi_slave_0_0/sim/risc16System_spi_slave_0_0.v" \
"../../../bd/risc16System/ip/risc16System_CPU_Programmer_0_0/sim/risc16System_CPU_Programmer_0_0.v" \
"../../../bd/risc16System/ip/risc16System_mux_0_0/sim/risc16System_mux_0_0.v" \
"../../../bd/risc16System/ip/risc16System_clk_div_1_0/sim/risc16System_clk_div_1_0.v" \
"../../../bd/risc16System/ip/risc16System_clock_bus_0_0/sim/risc16System_clock_bus_0_0.v" \
"../../../bd/risc16System/ip/risc16System_vga_0_0/sim/risc16System_vga_0_0.v" \
"../../../bd/risc16System/ip/risc16System_clk_wiz_0_1/risc16System_clk_wiz_0_1_clk_wiz.v" \
"../../../bd/risc16System/ip/risc16System_clk_wiz_0_1/risc16System_clk_wiz_0_1.v" \
"../../../bd/risc16System/ip/risc16System_ram_0_0/sim/risc16System_ram_0_0.v" \
"../../../bd/risc16System/ip/risc16System_MCU_0_0/sim/risc16System_MCU_0_0.v" \
"../../../bd/risc16System/ip/risc16System_or_gate_0_0/sim/risc16System_or_gate_0_0.v" \
"../../../bd/risc16System/ip/risc16System_Ctrl_Registers_0_0/sim/risc16System_Ctrl_Registers_0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

