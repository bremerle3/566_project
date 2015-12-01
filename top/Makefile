PROJECT_TOP     = ../
TBENCHPATH	= .
CM0DSPATH	= $(PROJECT_TOP)/cortexm0ds/verilog
TBENCHSRC	= $(TBENCHPATH)/no_ahb_tb.v
VERILOGSRC	= $(TBENCHSRC)
PIDWRAPPER = $(PROJECT_TOP)workloads/workload_PID/hls/fixp/pid_synth/pid2ahb_wrapper.v
PWMWRAPPER = $(PROJECT_TOP)workloads/workload_PWM/pwm_synth/pwm2ahb_wrapper.v
INTERCONNECTIP = $(PROJECT_TOP)/coreAssembler_ip/src/interconnect_ip.v
VERILOGCOMPILE	= +v2k +libext+.v -y $(CM0DSPATH) $(TBENCHSRC)
VERILOGCOMPILETOP = +v2k +libext+.v -y $(CMODSPATH) ./system_top_tb.v ./system_top.v $(PWMWRAPPER) ./cortexM0RAM.v $(PIDWRAPPER) $(INTERCONNECTIP)
ARMCC_OBJS       = $(TBENCHPATH)/bare_metal

# Synopsys VCS
no_ahb: $(VERILOGSRC)
	cp $(ARMCC_OBJS)/reg_write_pwm/reg_write_pwm.bin $(TBENCHPATH)/ram.bin
	vcs -R $(VERILOGCOMPILE)

top:
	vlogan $(VERILOGCOMPILETOP)
	vcs $(VERILOGCOMPILETOP) 
