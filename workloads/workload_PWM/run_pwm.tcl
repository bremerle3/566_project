############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2012 Xilinx Inc. All rights reserved.
############################################################
open_project hls_pwm --reset
set_top gen_pwm 
add_files ./gen_pwm.c 
add_files -tb ./pwm_tb.c 

open_solution "solution_pwm"
set_part  {xc7z010clg400-1}
create_clock -period 20
config_interface -clock_enable
source "./directives2_pwm.tcl"
csynth_design
cosim_design

export_design -evaluate vhdl -format sysgen 
