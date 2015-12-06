# Let DC find include files
set old_dc_search_path $::search_path
set rt_syn_path [pwd]
set rt_src_dirs ../src
foreach rtLoopVar $rt_src_dirs {
  lappend ::search_path [file join $rt_syn_path $rtLoopVar]
}

set rt_files_to_analyze { \
  ../src/DW_amba_constants.v
  ../src/DW_ahb_cc_constants.v
  ../src/DW_ahb_constants.v
  ../src/DW_ahb_bcm_params.v
  ../src/DW_ahb_bcm02.v
  ../src/DW_ahb_bcm01.v
  ../src/DW_ahb_bcm53.v
  ../src/DW_ahb_arbif.v
  ../src/DW_ahb_dcdr.v
  ../src/DW_ahb_dfltslv.v
  ../src/DW_ahb_ebt.v
  ../src/DW_ahb_gctrl.v
  ../src/DW_ahb_mask.v
  ../src/DW_ahb_mux.v
  ../src/DW_ahb_cntc.v
  ../src/DW_ahb_gating.v
  ../src/DW_ahb_wtps.v
  ../src/DW_ahb_arb.v
  ../src/DW_ahb_arblite.v
  ../src/DW_ahb.v
  ../src/DW_ahb-undef.v
}
if { ![analyze -format verilog -lib work $rt_files_to_analyze] } {
  error "Could not analyze HDL files"
}

# Put the search path back
set ::search_path $old_dc_search_path
