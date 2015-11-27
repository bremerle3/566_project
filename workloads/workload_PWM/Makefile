ROOTDIR = $(realpath .)
IMPL =  $(ROOTDIR)/hls_pwm/solution_pwm/impl
SIM_TBS = $(IMPL)/verilog/sim_tbs

PHONY: all

#Debug target
all:
	$(info $$SIM_TBS is [${SIM_TBS}])
	$(info $$IMPL is [${IMPL}])
#Run the C simulation
csim: 
	gcc -g gen_pwm.c gen_pwm.h pwm_tb.c -o pwm_tb.o
#Run high level synthesis, copy stimulus data to testbench directory
hls:
	vivado_hls -f run_pwm.tcl
	cp $(SIM_TBS)/cdatafile/*.dat $(SIM_TBS)
	cp $(SIM_TBS)/rtldatafile/*.dat $(SIM_TBS) 
#Run vcs
vcs:
	cd $(SIM_TBS) && vcs $(SIM_TBS)/gen_pwm.autotb.v $(IMPL)/verilog/gen_pwm.v
