# Reading D:/Quartus_Prime_Lite_v19_1/modelsim_ase/tcl/vsim/pref.tcl
# do CompFlags_run_msim_rtl_verilog.do
# if {[file exists rtl_work]} {
# 	vdel -lib rtl_work -all
# }
# vlib rtl_work
# vmap work rtl_work
# Model Technology ModelSim - Intel FPGA Edition vmap 10.5b Lib Mapping Utility 2016.10 Oct  5 2016
# vmap work rtl_work 
# Copying D:/Quartus_Prime_Lite_v19_1/modelsim_ase/win32aloem/../modelsim.ini to modelsim.ini
# Modifying modelsim.ini
# 
# vlog -sv -work work +incdir+D:/Quartus\ Projects/CompFlags {D:/Quartus Projects/CompFlags/CompFlags.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 17:15:43 on Oct 25,2024
# vlog -reportprogress 300 -sv -work work "+incdir+D:/Quartus Projects/CompFlags" D:/Quartus Projects/CompFlags/CompFlags.sv 
# -- Compiling module CompFlags
# 
# Top level modules:
# 	CompFlags
# End time: 17:15:43 on Oct 25,2024, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
# 
vsim CompFlags
# vsim CompFlags 
# Start time: 17:15:58 on Oct 25,2024
# Loading sv_std.std
# Loading work.CompFlags
add wave *
force C 1 0 , 1 10
force N 1 0, 1 10
force V 0 0, 1 10
force Z 0 0,0 10
run
