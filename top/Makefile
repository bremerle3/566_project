PROJECT_TOP     = ../
TBENCHPATH	= .
COREASSEM       = $(PROJECT_TOP)coreAssembler_ip/
I2CPATH         = $(COREASSEM)components/i_i2c/src
CM0DSPATH	= $(PROJECT_TOP)/cortexm0ds/verilog
TBENCHSRC	= $(TBENCHPATH)/system_top_tb.v
VERILOGSRC	= $(TBENCHSRC)
PIDWRAPPER = $(PROJECT_TOP)workloads/workload_PID/hls/fixp/pid_synth/pid2ahb_wrapper.v
PWMWRAPPER = $(PROJECT_TOP)workloads/workload_PWM/pwm_synth/pwm2ahb_wrapper.v
INTERCONNECTIP = $(PROJECT_TOP)/coreAssembler_ip/src/interconnect_ip.v
VERILOGCOMPILE	= +v2k +libext+.v -y $(CM0DSPATH) $(TBENCHSRC)
VERILOGCOMPILETOP = +v2k +incdir+$(COREASSEM) +libext+.v \
		    -y $(CM0DSPATH) \
		    -y $(COREASSEM) \
		    ./system_top_tb.v \
		    ./system_top.v \
		    $(PWMWRAPPER) \
		    ./cortexM0RAM.v \
		    $(PIDWRAPPER) 
#VERILOGCOMPILETOP = +v2k +libext+.v -y $(CM0DSPATH)  ./system_top_tb.v ./system_top.v $(PWMWRAPPER) ./cortexM0RAM.v $(PIDWRAPPER) $(INTERCONNECTIP) $(CM0DSPATH)/CORTEXM0DS.v
ARMCC_OBJS       = $(TBENCHPATH)/bare_metal


# Synopsys VCS
no_ahb: $(VERILOGSRC)
	cp $(ARMCC_OBJS)/reg_write_pwm/reg_write_pwm.bin $(TBENCHPATH)/ram.bin
	vcs -R $(VERILOGCOMPILE)

top:
	#vlogan $(VERILOGCOMPILETOP) $(I2CPATH)/*.v
	#vlogan -work vtvt_tsmc180 $(VERILOGCOMPILETOP)
	vlogan -f $(COREASSEM)export/interconnect_ip_sim.lst  $(VERILOGCOMPILETOP)
	vcs system_top_tb -o simv 
	#vcs $(VERILOGCOMPILETOP)

inst:
	vhdlan -work vtvt_tscm180 vtvt_tsmc180_Vtables.vhd
	vhdlan -work vtvt_tscm180 vtvt_tsmc180_Vcomponents.vhd
	vhdlan -work vtvt_tscm180 vtvt_tsmc180_VITAL.vhd
vlogan:
	vlogan $(CM0DSPATH)/CORTEXM0DS.v
	vlogan $(CM0DSPATH)/cortexm0ds_logic.v
	vlogan ./system_top_tb.v 
	vlogan ./system_top.v
	vlogan $(PWMWRAPPER)
	vlogan ./cortexM0RAM.v 
	vlogan $(PIDWRAPPER) 
	vlogan $(INTERCONNECTIP)
