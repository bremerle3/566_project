#  ------------------------------------------------------------------------
#
#                    (C) COPYRIGHT 2002 - 2014 SYNOPSYS, INC.
#                            ALL RIGHTS RESERVED
#
#  This software and the associated documentation are confidential and
#  proprietary to Synopsys, Inc.  Your use or disclosure of this
#  software is subject to the terms and conditions of a written
#  license agreement between you, or your company, and Synopsys, Inc.
#
# The entire notice above must be reproduced on all authorized copies.
#
#  ------------------------------------------------------------------------

# Revision: $Id: //dwh/DW_ocb/DW_apb_ssi/amba_dev/pkg/cC_plugin/modTopLevel_Obj.tcl#6 $
add_activity_hook -after SpecifyConfiguration {

  set SourceFileName [file join [get_logical_dir] src [get_file_prefix]DW_apb_ssi.v]
  set TargetFileName [file join [get_logical_dir] src DW_apb_ssi_tgt.v]
  set is_master  [get_configuration_parameter SSI_IS_MASTER]
  set num_slaves [get_configuration_parameter SSI_NUM_SLAVES]

  if { ($is_master==1) && ($num_slaves==1) } {

    set SourceFile [ open $SourceFileName r]
    set TargetFile [ open $TargetFileName w+]

    while { [gets $SourceFile line] >=0 } {
      regsub {output\s* \[`SSI_NUM_SLAVES-1:0\]\s* ss_n} $line "output                         ss_n" line
      puts $TargetFile $line
    }

    close $SourceFile
    close $TargetFile
    file rename -force $TargetFileName $SourceFileName

    file delete -force ${SourceFileName}.update
    create_update_file $SourceFileName

  }

}
