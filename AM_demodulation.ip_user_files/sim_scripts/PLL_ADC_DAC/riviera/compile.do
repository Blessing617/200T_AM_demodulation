transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {D:/Xilinx/Project/200t/AM_demodulation/AM_demodulation.cache/compile_simlib/riviera}
vlib riviera/xpm
vlib riviera/xil_defaultlib

vlog -work xpm  -incr "+incdir+../../../ipstatic" -l xpm -l xil_defaultlib \
"D:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93  -incr \
"D:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../ipstatic" -l xpm -l xil_defaultlib \
"../../../../AM_demodulation.gen/sources_1/ip/PLL_ADC_DAC/PLL_ADC_DAC_clk_wiz.v" \
"../../../../AM_demodulation.gen/sources_1/ip/PLL_ADC_DAC/PLL_ADC_DAC.v" \

vlog -work xil_defaultlib \
"glbl.v"

