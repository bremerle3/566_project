############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2012 Xilinx Inc. All rights reserved.
############################################################
open_project hls_doublep_pid_prj --reset
set_top PID_Controller
add_files ./C/xapp_pid.cpp
add_files -tb ./C/test_xapp_pid.cpp
add_files -tb ../test_data

open_solution "solution1"
set_part  {xc7z010clg400-1}
create_clock -period 10
config_interface -clock_enable
source "./directives1_double.tcl"
csynth_design


open_solution "solution2"
set_part  {xc7z010clg400-1}
create_clock -period 10
config_interface -clock_enable
source "./directives2_double.tcl"
csynth_design

open_solution "solution3"
set_part  {xc7z010clg400-1}
create_clock -period 10
config_interface -clock_enable
source "./directives3_double.tcl"
csynth_design

#export_design -evaluate vhdl -format sysgen 
#close_project


#open_project hls_floatp_pid_prj
#set_top PID_Controller
#add_files ./C/xapp_pid.cpp -cflags "-DPID_DEBUG"
#add_files -tb ./C/test_xapp_pid.cpp -cflags "-DPID_DEBUG"
#add_files -tb ../test_data

#open_solution "solution2_test"
#set_part  {xc7z010clg400-1}
#create_clock -period 10
#config_interface -clock_enable
#source "./directives_float.tcl"
#csynth_design
#export_design -evaluate vhdl -format sysgen 
#close_project