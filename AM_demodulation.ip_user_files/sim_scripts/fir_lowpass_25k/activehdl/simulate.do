transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+fir_lowpass_25k  -L xpm -L xbip_utils_v3_0_10 -L axi_utils_v2_0_6 -L fir_compiler_v7_2_19 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.fir_lowpass_25k xil_defaultlib.glbl

do {fir_lowpass_25k.udo}

run 1000ns

endsim

quit -force
