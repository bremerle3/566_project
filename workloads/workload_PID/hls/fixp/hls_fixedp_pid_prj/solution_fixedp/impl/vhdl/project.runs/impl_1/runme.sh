#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/project/linuxlab/xilinx/xilinx/Vivado/Vivado/ids_lite/ISE/bin/lin64:/project/linuxlab/xilinx/xilinx/Vivado/Vivado/bin
else
  PATH=/project/linuxlab/xilinx/xilinx/Vivado/Vivado/ids_lite/ISE/bin/lin64:/project/linuxlab/xilinx/xilinx/Vivado/Vivado/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/project/linuxlab/xilinx/xilinx/Vivado/Vivado/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=/project/linuxlab/xilinx/xilinx/Vivado/Vivado/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD=`dirname "$0"`
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

# pre-commands:
/bin/touch .init_design.begin.rst
EAStep vivado -log PID_Controller.vdi -applog -m64 -messageDb vivado.pb -mode batch -source PID_Controller.tcl -notrace


