DESIGN_NAME = PID_Controller
ROOTDIR = $(realpath .)
IMPL =  $(ROOTDIR)/hls_fixedp_pid_prj/solution_fixedp/impl
SIM_TBS = $(IMPL)/verilog/sim_tbs
HLS_DIR = pid_synth
SIM_SRCS = PID_Controller_tb.v PID_Controller.v
SIM_PATHS = $(addprefix $(ROOTDIR)/$(HLS_DIR)/, $(SIM_SRCS))
SIM_DATA = synth_sim_datfiles
CXX = /project/linuxlab/xilinx/xilinx/Vivado_HLS/Vivado_HLS/lnx64/tools/gcc/bin/g++
LD_FLAGS = /project/linuxlab/xilinx/xilinx/Vivado_HLS/2014.4/include

PHONY: all

#Debug target
all:
#	$(info $$SIM_TBS is [${SIM_TBS}])
#	$(info $$IMPL is [${IMPL}])
#	$(info $$SIM_PATHS is [${SIM_PATHS}])
	$(info $$INC_DIR is [${INC_DIR}])
#Run the C simulation
csim: 
	$(CXX) -g xapp_pid.cpp xapp_pid.h test_xapp_pid.cpp -o pid_tb.o -I$(LD_FLAGS)
#Run high level synthesis, copy output and tb material to HLS_DIR
hls:
	vivado_hls -f run_pid_fixp_script.tcl
	rm -rf $(HLS_DIR)/$(SIM_DATA)
	mkdir $(HLS_DIR)/$(SIM_DATA)
	cp $(IMPL)/verilog/$(DESIGN_NAME).v $(ROOTDIR)/$(HLS_DIR)
	cp $(SIM_TBS)/$(DESIGN_NAME).autotb.v $(ROOTDIR)/$(HLS_DIR)
	cp $(SIM_TBS)/cdatafile/*.dat $(ROOTDIR)/$(HLS_DIR)/$(SIM_DATA)
	cp $(SIM_TBS)/rtldatafile/*.dat $(ROOTDIR)/$(HLS_DIR)/$(SIM_DATA) 
#Run vcs
vcs:
	#cd $(HLS_DIR) && vcs $(HLS_DIR)/gen_pwm.autotb.v $(IMPL)/verilog/gen_pwm.v
	cd $(HLS_DIR) && vcs $(SIM_PATHS)

dc_shell:
	dc_shell-t -f compiledc_pid.tcl
	rm -rf dc_shell_output/
	mkdir dc_shell_output
	mv *.repC ./dc_shell_output
	mv *.svf ./dc_shell_output
	mv *.sdc ./dc_shell_output
	mv *.sdf ./dc_shell_output
	mv *.syn.v ./dc_shell_output
	mv gen_pwm ./dc_shell_output	
