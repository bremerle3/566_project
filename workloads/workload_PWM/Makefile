DESIGN_NAME = gen_pwm
ROOTDIR = $(realpath .)
IMPL =  $(ROOTDIR)/hls_pwm/solution_pwm/impl
SIM_TBS = $(IMPL)/verilog/sim_tbs
OUTPUT_DIR = pwm_synth

PHONY: all

#Debug target
all:
	$(info $$SIM_TBS is [${SIM_TBS}])
	$(info $$IMPL is [${IMPL}])
#Run the C simulation
csim: 
	gcc -g gen_pwm.c gen_pwm.h pwm_tb.c -o pwm_tb.o
#Run high level synthesis, copy output and tb material to OUTPUT_DIR
hls:
	vivado_hls -f run_pwm.tcl
	rm -rf $(OUTPUT_DIR)
	mkdir $(OUTPUT_DIR)
	cp $(IMPL)/verilog/$(DESIGN_NAME).v $(ROOTDIR)/$(OUTPUT_DIR)/
	cp $(SIM_TBS)/$(DESIGN_NAME).autotb.v $(ROOTDIR)/$(OUTPUT_DIR)/
	cp $(SIM_TBS)/cdatafile/*.dat $(ROOTDIR)/$(OUTPUT_DIR)/
	cp $(SIM_TBS)/rtldatafile/*.dat $(ROOTDIR)/$(OUTPUT_DIR)/ 
#Run vcs
vcs:
	cd $(SIM_TBS) && vcs $(SIM_TBS)/gen_pwm.autotb.v $(IMPL)/verilog/gen_pwm.v

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
		
