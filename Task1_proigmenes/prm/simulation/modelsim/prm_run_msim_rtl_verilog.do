transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+D:/Quartus\ Projects/prm {D:/Quartus Projects/prm/prm.sv}
vlog -sv -work work +incdir+D:/Quartus\ Projects/prm {D:/Quartus Projects/prm/sevensegprm.sv}

