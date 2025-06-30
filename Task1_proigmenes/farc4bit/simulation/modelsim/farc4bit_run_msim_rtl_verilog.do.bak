transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+D:/Quartus\ Projects/farc4bit {D:/Quartus Projects/farc4bit/farc4bit.sv}
vlog -sv -work work +incdir+D:/Quartus\ Projects/farc4bit {D:/Quartus Projects/farc4bit/fa1bit.sv}

