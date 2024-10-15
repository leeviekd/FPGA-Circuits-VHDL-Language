transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/intelprojektit/fibonaccishiftreg/fibonaccishiftreg.vhd}

vcom -93 -work work {C:/intelprojektit/fibonaccishiftreg/simulation/modelsim/fibonaccishiftreg.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  tb_fibonaccishiftreg

add wave *
view structure
view signals
run -all
