transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+D:/Quartus\ Projects/ALUBarrel {D:/Quartus Projects/ALUBarrel/ALUBarrel.sv}
vlog -sv -work work +incdir+D:/Quartus\ Projects/ALUBarrel {D:/Quartus Projects/ALUBarrel/Barrel8Bit.sv}
vlog -sv -work work +incdir+D:/Quartus\ Projects/ALUBarrel {D:/Quartus Projects/ALUBarrel/CompFlags.sv}
vlog -sv -work work +incdir+D:/Quartus\ Projects/ALUBarrel {D:/Quartus Projects/ALUBarrel/alunbit.sv}

