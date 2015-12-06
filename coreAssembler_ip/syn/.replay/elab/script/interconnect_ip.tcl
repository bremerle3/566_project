set rtWorkingDir [pwd]
define_design_lib work -path ./lib/work
elaborate -library work interconnect_ip
cd $rtWorkingDir

set ::rt_top_design interconnect_ip
set ::rtSaveHierarchically 0
