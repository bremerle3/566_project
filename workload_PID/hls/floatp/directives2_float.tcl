############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2012 Xilinx Inc. All rights reserved.
############################################################
set_directive_interface -mode ap_fifo "PID_Controller" coeff
set_directive_interface -mode ap_fifo "PID_Controller" din
set_directive_interface -mode ap_fifo "PID_Controller" dout
set_directive_interface -mode ap_ctrl_none "PID_Controller"
set_directive_interface -mode ap_none "PID_Controller" InitN
set_directive_interface -mode ap_ctrl_none "PID_Controller"
set_directive_allocation -limit 1 -type core "PID_Controller" fAddSub
set_directive_allocation -limit 1 -type core "PID_Controller" fMul