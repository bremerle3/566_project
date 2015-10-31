############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2012 Xilinx Inc. All rights reserved.
############################################################
set_directive_allocation -limit 1 -type operation "gen_pwm" mul
set_directive_array_partition -type complete -dim 1 "gen_pwm" coeff
set_directive_array_partition -type complete -dim 1 "gen_pwm" din
set_directive_array_partition -type complete -dim 1 "gen_pwm" dout
set_directive_interface -mode ap_ctrl_hs "gen_pwm"
set_directive_interface -mode ap_none "gen_pwm" dout
