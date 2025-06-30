transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+D:/Quartus\ Projects/mux53 {D:/Quartus Projects/mux53/mux53.sv}
vlog -sv -work work +incdir+D:/Quartus\ Projects/mux53 {D:/Quartus Projects/mux53/mux23.sv}

