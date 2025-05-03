transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+PLL_ADC_DAC  -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.PLL_ADC_DAC xil_defaultlib.glbl

do {PLL_ADC_DAC.udo}

run 1000ns

endsim

quit -force
