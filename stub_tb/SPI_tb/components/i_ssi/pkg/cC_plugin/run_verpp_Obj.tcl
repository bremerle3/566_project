# Preprocess Verilog Files To get Rid Of Leftover ifdefs
add_activity_hook -after  SpecifyConfiguration {

  set dir [get_logical_dir]
  exec /bin/rm -rf ${dir}/sim/passed ${dir}/sim/failed ${dir}/sim/timeout
  exec mkdir -p    ${dir}/sim/passed ${dir}/sim/failed ${dir}/sim/timeout


  if { [file exists [ file join [ get_logical_dir ] pkg perl verpp ] ] } {

    set name [glob -join [get_logical_dir] src DW_apb_ssi.lst]
    set outfile "[file rootname $name]_verpp.lst"
    [exec grep -v "//" $name > $outfile]

    set verpp_lists ""
    foreach i [exec cat $outfile] {
      lappend verpp_lists $i
    }

    set encrypt_txt_val [::RCE::isUnencrypted]
    if { $encrypt_txt_val == 1 } {

      if { [ info exists env(RUN_COVERAGE) ] } {
        eval exec [get_logical_dir]/pkg/perl/verpp -lni -i=DW_MODEL_MISSAMPLES -n $verpp_lists
      } else {
        eval exec [get_logical_dir]/pkg/perl/verpp -i=DW_MODEL_MISSAMPLES -n $verpp_lists
      }
    } else {
      # Clean the top level only if encrypted code
      eval exec [get_logical_dir]/pkg/perl/verpp -n  [get_logical_dir]/src/[get_file_prefix]DW_apb_ssi_cc_constants.v [get_logical_dir]/src/[get_file_prefix]DW_apb_ssi.v
    }
    [exec rm -f $outfile]
  }
}

