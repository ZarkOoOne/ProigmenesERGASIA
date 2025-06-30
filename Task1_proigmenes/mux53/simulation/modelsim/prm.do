# Reading D:/Quartus_Prime_Lite_v19_1/modelsim_ase/tcl/vsim/pref.tcl
# do prm_run_msim_rtl_verilog.do
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
# vlog -sv -work work +incdir+D:/Quartus\ Projects/prm {D:/Quartus Projects/prm/prm.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 16:58:50 on Nov 23,2024
# vlog -reportprogress 300 -sv -work work "+incdir+D:/Quartus Projects/prm" D:/Quartus Projects/prm/prm.sv 
# -- Compiling module prm
# 
# Top level modules:
# 	prm
# End time: 16:58:50 on Nov 23,2024, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
# vlog -sv -work work +incdir+D:/Quartus\ Projects/prm {D:/Quartus Projects/prm/sevensegprm.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 16:58:50 on Nov 23,2024
# vlog -reportprogress 300 -sv -work work "+incdir+D:/Quartus Projects/prm" D:/Quartus Projects/prm/sevensegprm.sv 
# -- Compiling module sevensegprm
# 
# Top level modules:
# 	sevensegprm
# End time: 16:58:50 on Nov 23,2024, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
# 
vsim prm
# vsim prm 
# Start time: 16:58:57 on Nov 23,2024
# Loading sv_std.std
# Loading work.prm
add wave *
force D 1 1, 1 10
force A 0 1, 0 10
force E 1 1, 0 10
force F 1 1, 1 10
run
