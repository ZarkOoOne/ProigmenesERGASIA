transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+D:/Quartus\ Projects/Barrel8bit {D:/Quartus Projects/Barrel8bit/Barrel8bit.sv}

