###################################################################

# Created by write_sdc on Mon Dec  7 17:44:43 2015

###################################################################
set sdc_version 2.0

set_units -time ps -resistance kOhm -capacitance fF -power mW -voltage V       \
-current mA
create_clock [get_ports HCLK_top]  -period 50000  -waveform {0 25000}
