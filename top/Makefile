PROJECT_TOP     = ../
TBENCHPATH	= .
CM0DSPATH	= $(PROJECT_TOP)/cortexm0ds/verilog
TBENCHSRC	= $(TBENCHPATH)/system_top_tb.v
VERILOGSRC	= $(TBENCHSRC)
VERILOGCOMPILE	= +v2k +libext+.v -y $(CM0DSPATH) $(TBENCHSRC)
VERILOGTOP	= system_top_tb
ARMCC_OBJS       = $(TBENCHPATH)/bare_metal

# Synopsys VCS
vcs_pwm: $(VERILOGSRC)
	cp $(ARMCC_OBJS)/reg_write_pwm/reg_write_pwm.bin $(TBENCHPATH)/ram.bin
	vcs -R $(VERILOGCOMPILE)
