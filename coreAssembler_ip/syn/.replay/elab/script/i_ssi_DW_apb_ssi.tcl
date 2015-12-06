set rtWorkingDir [pwd]
define_design_lib work -path ./lib/work
elaborate  -library work i_ssi_DW_apb_ssi
set ::rtSaveHierarchically 1
cd $rtWorkingDir
