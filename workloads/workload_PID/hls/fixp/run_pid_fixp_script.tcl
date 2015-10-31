############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2012 Xilinx Inc. All rights reserved.
############################################################
open_project hls_fixedp_pid_prj --reset
set_top PID_Controller
add_files ./C/xapp_pid.cpp 
add_files -tb ./C/test_xapp_pid.cpp 
add_files -tb ../test_data


open_solution "solution_fixedp"
set_part  {xc7z010clg400-1}
create_clock -period 20
config_interface -clock_enable
source "./directives2_fixedp.tcl"
csynth_design
cosim_design

export_design -evaluate vhdl -format sysgen 
