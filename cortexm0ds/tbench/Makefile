#-------------------------------------------------------------------------------
# The confidential and proprietary information contained in this file may
# only be used by a person authorised under and to the extent permitted
# by a subsisting licensing agreement from ARM Limited.
#
#            (C) COPYRIGHT 2010 ARM Limited.
#                ALL RIGHTS RESERVED
#
# This entire notice must be reproduced on all copies of this file
# and copies of this file may only be made by a person if such person is
# permitted to do so under the terms of a subsisting license agreement
# from ARM Limited.
#
#      SVN Information
#
#      Checked In          : 2010-08-03 23:20:54 +0100 (Tue, 03 Aug 2010)
#
#      Revision            : 144997
#
#      Release Information : AT510-MN-80001-r0p0-00rel0
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
# Cortex-M0 DesignStart Makefile example for compiling and running example
# program
#-------------------------------------------------------------------------------

help:	copyright
	@ echo "Valid targets are 'ram.bin', 'ncverilog', 'questasim' and 'vcs'"
	@ echo "Please refer to the Cortex-M0 DesignStart Release Note"

copyright:
	@ echo "----------------------------------------------------"
	@ echo "ARM Cortex-M0 DesignStart Makefile"
	@ echo "(c) Copyright ARM Limited 2010 - All Rights Reserved"
	@ echo "----------------------------------------------------"

#-------------------------------------------------------------------------------
# Example targets to compile example hello world program to binary
# using RealView
#-------------------------------------------------------------------------------

# The following targets build the memory image required for exercising
# the Cortex-M0 DesignStart Verilog RTL:

CPROGRAM	= helloworld

ARMCCFLAGS	= -mthumb -mcpu=cortex-m0 -c
ARMLDFLAGS	= --cpu=cortex-m0 --ro-base=0x0 --info=totals --map

ARMCC = arm-none-eabi-gcc

# Extract RAM binary image from ELF file
ram.bin:	$(CPROGRAM).elf
	fromelf --bin --output $@ $<

# Link object file with library to produce ELF
%.elf:	%.o
	armlink $(ARMLDFLAGS) --first='$<(vectors)' -o $@ $<

# Compile C program to object file
%.o:	%.c
	$(ARMCC) $(ARMCCFLAGS) -o $@ $<

#-------------------------------------------------------------------------------
# Example targets to build example testbench and run example program
# using some commercial Verilog simulators
#-------------------------------------------------------------------------------

# The Verilog files provided with the Cortex-M0 DesignStart are designed
# to be simulated and synthesised by tools supporting Verilog2001 (IEEE
# Std 1364-2001). Simple simulation examples to build and use the
# Cortex-M0 DesignStart to execute the binary above are provided below:

TBENCHPATH	= .
CM0DSPATH	= ../verilog
TBENCHSRC	= $(TBENCHPATH)/cortexm0ds_tb.v
VERILOGSRC	= $(TBENCHSRC)
VERILOGCOMPILE	= +v2k +libext+.v -y $(CM0DSPATH) $(TBENCHSRC)
VERILOGTOP	= cortexm0ds_tb

# Cadence Design Systems NC Verilog
ncverilog:	$(VERILOGSRC)
	ncverilog $(VERILOGCOMPILE)

# Mentor Graphics QuestaSim/ModelSim
questasim:	$(VERILOGSRC)
	vlib work
	vlog $(VERILOGCOMPILE)
	vsim -c $(VERILOGTOP) -do "run -a; quit -f"

# Synopsys VCS
vcs:	$(VERILOGSRC)
	vcs -R $(VERILOGCOMPILE)



test:
	arm-none-eabi-gcc -c -mthumb -mcpu=cortex-m0 -g test.c -o test.o

# Extract RAM binary image from ELF file
test.bin:	$(CPROGRAM).elf
	fromelf --bin --output $@ $<

# Link object file with library to produce ELF
%.elf:	%.o
	armlink $(ARMLDFLAGS) --first='$<(vectors)' -o $@ $<
