set rtWorkingDir [pwd]
# Design specific setup variables.
# dc_shell setup variables for i_i2c_DW_apb_i2c
set_app_var hdlin_vrlg_std 2001
set_app_var suppress_errors {DDB-74 DDB-95 EQN-10 HDL-176 HDL-395 HDL-410 LINT-2 LINT-28 LINT-29 LINT-3 LINT-30 LINT-31 LINT-32 LINT-33 LINT-45 OPT-915 SR-9 SYNDB-26 TIM-103 TIM-134 UID-348 VO-2 VO-4 EQN-10 VER-936 VER-318 ELAB-349 LINT-0 OPT-800 OPT-801 UCN-4 EQN-10 UCN-1 VHDL-286 WL-40 TIM-175 LINT-1 ATTR-1}
set_app_var synlib_wait_for_design_license {DesignWare DC-Ultra-Opt DC-Ultra-Features}
set_app_var template_parameter_style %d
# dc_shell setup variables for i_apb_DW_apb
set_app_var hdlin_vrlg_std 2001
set_app_var suppress_errors {DDB-74 DDB-95 EQN-10 HDL-176 HDL-395 HDL-410 LINT-2 LINT-28 LINT-29 LINT-3 LINT-30 LINT-31 LINT-32 LINT-33 LINT-45 OPT-915 SR-9 SYNDB-26 TIM-103 TIM-134 UID-348 VO-2 VO-4 ELAB-335 VER-61 VER-314 UCN-4 OPT-800 OPT-801 UIO-78 WL-40 UCN-1 TIM-175 LINT-1 ATTR-1}
set_app_var synlib_wait_for_design_license {DesignWare DC-Ultra-Opt DC-Ultra-Features}
set_app_var template_parameter_style %d
# dc_shell setup variables for i_ahb_DW_ahb
set_app_var hdlin_vrlg_std 2001
set_app_var suppress_errors {DDB-74 DDB-95 EQN-10 HDL-176 HDL-395 HDL-410 LINT-52 LINT-2 LINT-28 LINT-29 LINT-3 LINT-30 LINT-31 LINT-32 LINT-33 LINT-45 OPT-915 SR-9 SYNDB-26 TIM-103 TIM-134 UID-348 VO-2 VO-4 VER-61 VER-318 VER-314 UCN-4 UCN-1 OPT-800 OPT-801 UIO-78 WL-40 TIM-175 LINT-1 ATTR-1}
set_app_var synlib_wait_for_design_license {DesignWare DC-Ultra-Opt DC-Ultra-Features}
set_app_var template_parameter_style %d
# dc_shell setup variables for i_ssi_DW_apb_ssi
set_app_var hdlin_vrlg_std 2001
set_app_var suppress_errors {DDB-74 DDB-95 EQN-10 HDL-176 HDL-395 HDL-410 LINT-2 LINT-28 LINT-29 LINT-3 LINT-30 LINT-31 LINT-32 LINT-33 LINT-45 OPT-915 SR-9 SYNDB-26 TIM-103 TIM-134 UID-348 VO-2 VO-4 VER-936 VER-318 VER-61 VER-314 UCN-4 VHDL-286 UIO-78 WL-40 UCN-1 TIM-175 LINT-1 ATTR-1}
set_app_var synlib_wait_for_design_license {DesignWare DC-Ultra-Opt DC-Ultra-Features}
set_app_var template_parameter_style %d
cd ../components/i_i2c/syn
define_design_lib work -path $rtWorkingDir/./lib/work
# Let DC find include files
set old_dc_search_path $::search_path
set rt_syn_path [pwd]
set rt_src_dirs ../src
foreach rtLoopVar $rt_src_dirs {
  lappend ::search_path [file join $rt_syn_path $rtLoopVar]
}

set rt_files_to_analyze { \
  ../src/DW_apb_i2c_cc_constants.v
  ../src/DW_apb_i2c_bcm_params.v
  ../src/DW_apb_i2c_bcm57.v
  ../src/DW_apb_i2c_bcm21.v
  ../src/DW_apb_i2c_bcm41.v
  ../src/DW_apb_i2c_bcm06.v
  ../src/DW_apb_i2c_biu.v
  ../src/DW_apb_i2c_regfile.v
  ../src/DW_apb_i2c_fifo.v
  ../src/DW_apb_i2c_intctl.v
  ../src/DW_apb_i2c_rx_filter.v
  ../src/DW_apb_i2c_clk_gen.v
  ../src/DW_apb_i2c_mstfsm.v
  ../src/DW_apb_i2c_sync.v
  ../src/DW_apb_i2c_slvfsm.v
  ../src/DW_apb_i2c_tx_shift.v
  ../src/DW_apb_i2c_rx_shift.v
  ../src/DW_apb_i2c_toggle.v
  ../src/DW_apb_i2c_dma.v
  ../src/DW_apb_i2c.v
  ../src/DW_apb_i2c-undef.v
}
if { ![analyze -format verilog -lib work $rt_files_to_analyze] } {
  error "Could not analyze HDL files"
}

# Put the search path back
set ::search_path $old_dc_search_path
cd $rtWorkingDir
