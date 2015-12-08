Source repository for 566 class project
Team Members: Leo, Luke, Tingting, Shilai

********************************************************************************
File directory structure
********************************************************************************
    coreAssembler_ip/  <--- Contains IP generated using coreAssembler tool
	 src/ < --- Contains the interconnect_ip verilog code
    cortexM0ds/  <--- Contains Cortex M0 RTL
    DVEfiles/ <--- Contains files generated when running DVE waveforms
    encounter <--- Contains our design compiler .tcl file along with our system_top.syn.v file which was created when we routed the components together.
    src <--- Unused folder
    stub_tb <--- Contains SPI IP generated coreAssembler after creating the SPI test bench
    top/  <--- Contains top-level modules connecting our IP 
	 ./cortexM0RAM.v <--- This is the verilog file for the RAM wrapper to AHB
	 ./system_top.v <--- This is the verilog file that acts as the AHB bus and connects many components
	 ./system_top_tb.v <--- This is the test bench for system_top.  It is a step higher than system_top and it is where the original clock and reset are generated.
	 ./system_top_tb.vcd <--- This is the file used to generate the waveform of our entire system on each level, from the system_top_tb all the way down to behavioral models and hardware accelerators.
    	 bare_metal/ <--- Contains PID and PWM code generated from Keil MDK
	 Behavioral_stubs <--- Contains the CPU_stub behavioral model as well as its testbench
	 vtvt_files <--- Contains files necessary for vhdlan commands to create .sdb files used later for vcs
	 VTVT_TSMC180 <--- Contains the AN.DB folder and .sdb files created from vlogan that are necessary for vcs
    workloads/  <---  Contains C and HLS code for our accelerators
	workload_PID/hls/fixp/ <--- Contains C code for PID as well as PID .tcl files
		pid_synth/ <--- Contains verilog code for the PID and the PID-to-AHB wrapper
		/hls_fixedp_pid_prj/solution_fixedp/sim/report/PID_Controller_cosim.rpt <--- Contains PID report
	workload_PWM/ <--- Contains C code for PWM as well as PWM .tcl files
		pwm_synth/ <--- Contains verilog code for the PWM and the PWM-to-AHB wrapper
    		/hls_pwm/solution_pwm/sim/report/gen_pwm_cosim.rpt <--- Contains the PWM report

