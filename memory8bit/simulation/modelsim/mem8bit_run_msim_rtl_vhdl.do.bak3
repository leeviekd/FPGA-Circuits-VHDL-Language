transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/intelprojektit/memory8bit/mem8bit.vhd}

vcom -93 -work work {C:/intelprojektit/memory8bit/simulation/modelsim/mem8bit.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  mem8bit_tb

add wave *
view structure
view signals
run -all
