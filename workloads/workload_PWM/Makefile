DESIGN_NAME = gen_pwm
ROOTDIR = $(realpath .)
IMPL =  $(ROOTDIR)/hls_pwm/solution_pwm/impl
SIM_TBS = $(IMPL)/verilog/sim_tbs
HLS_DIR = pwm_synth
SIM_SRCS = gen_pwm.autotb.v gen_pwm.v
SIM_PATHS = $(addprefix $(ROOTDIR)/$(HLS_DIR)/, $(SIM_SRCS))

PHONY: all

#Debug target
all:
	$(info $$SIM_TBS is [${SIM_TBS}])
	$(info $$IMPL is [${IMPL}])
	$(info $$SIM_PATHS is [${SIM_PATHS}])
#Run the C simulation
csim: 
	gcc -g gen_pwm.c gen_pwm.h pwm_tb.c -o pwm_tb.o
#Run high level synthesis, copy output and tb material to HLS_DIR
hls:
	vivado_hls -f run_pwm.tcl
	rm -rf $(HLS_DIR)
	mkdir $(HLS_DIR)
	cp $(IMPL)/verilog/$(DESIGN_NAME).v $(ROOTDIR)/$(HLS_DIR)/
	cp $(SIM_TBS)/$(DESIGN_NAME).autotb.v $(ROOTDIR)/$(HLS_DIR)/
	cp $(SIM_TBS)/cdatafile/*.dat $(ROOTDIR)/$(HLS_DIR)/
	cp $(SIM_TBS)/rtldatafile/*.dat $(ROOTDIR)/$(HLS_DIR)/ 
#Run vcs
vcs:
	#cd $(HLS_DIR) && vcs $(HLS_DIR)/gen_pwm.autotb.v $(IMPL)/verilog/gen_pwm.v
	cd $(HLS_DIR)
	vcs $(SIM_PATHS)

dc_shell:
	dc_shell-t -f compiledc_pwm.tcl
	rm -rf dc_shell_output/
	mkdir dc_shell_output
	mv *.repC ./dc_shell_output
	mv *.svf ./dc_shell_output
	mv *.sdc ./dc_shell_output
	mv *.sdf ./dc_shell_output
	mv *.syn.v ./dc_shell_output
	mv gen_pwm ./dc_shell_output
		
