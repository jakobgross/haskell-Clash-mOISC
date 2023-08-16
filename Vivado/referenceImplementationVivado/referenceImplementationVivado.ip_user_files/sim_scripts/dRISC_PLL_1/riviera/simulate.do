onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+dRISC_PLL -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.dRISC_PLL xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {dRISC_PLL.udo}

run -all

endsim

quit -force
