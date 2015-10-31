############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2012 Xilinx Inc. All rights reserved.
############################################################
set_directive_allocation -limit 1 -type core "PID_Controller" fAddSub
set_directive_allocation -limit 1 -type core "PID_Controller" fMul
set_directive_array_partition -type complete -dim 1 "PID_Controller" coeff
set_directive_array_partition -type complete -dim 1 "PID_Controller" din
set_directive_array_partition -type complete -dim 1 "PID_Controller" dout
set_directive_interface -mode ap_ctrl_hs "PID_Controller"
set_directive_interface -mode ap_none "PID_Controller" dout
set_directive_interface -mode ap_none "PID_Controller" test_yi
set_directive_interface -mode ap_none  "PID_Controller" test_yd
