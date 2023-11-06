onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib ascii_memory_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {ascii_memory.udo}

run -all

quit -force
