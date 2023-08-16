onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib dRISC_PLL_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {dRISC_PLL.udo}

run -all

quit -force
