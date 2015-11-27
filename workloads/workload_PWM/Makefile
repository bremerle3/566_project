ROOTDIR = $(realpath .)
IMPL =  $(ROOTDIR)/hls_pwm/solution_pwm/impl
SIM_TBS = $(IMPL)/verilog/sim_tbs

PHONY: all
all:
	$(info $$SIM_TBS is [${SIM_TBS}])
	$(info $$IMPL is [${IMPL}])

csim: 
	gcc -g gen_pwm.c gen_pwm.h pwm_tb.c -o pwm_tb.o

hls:
	vivado_hls -f run_pwm.tcl

vcs:
	vcs $(SIM_TBS)/gen_pwm.autotb.v $(IMPL)/verilog/gen_pwm.v
