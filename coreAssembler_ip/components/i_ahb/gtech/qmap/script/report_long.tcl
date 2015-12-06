echo "RPT_INFO:Input Ports  "

report_timing -from hready_resp_s3 -path only -nosplit -net
report_timing -from hwrite_m1    -path only -nosplit -net
report_timing -from hwdata_m1    -path only -nosplit -net
report_timing -from htrans_m1    -path only -nosplit -net
report_timing -from hsize_m1     -path only -nosplit -net
report_timing -from hresp_s4     -path only -nosplit -net
report_timing -from hresp_s3     -path only -nosplit -net
report_timing -from hresp_s2     -path only -nosplit -net
report_timing -from hresp_s1     -path only -nosplit -net
report_timing -from hready_resp_s4 -path only -nosplit -net
report_timing -from haddr_m1     -path only -nosplit -net
report_timing -from hready_resp_s2 -path only -nosplit -net
report_timing -from hready_resp_s1 -path only -nosplit -net
report_timing -from hrdata_s4    -path only -nosplit -net
report_timing -from hrdata_s3    -path only -nosplit -net
report_timing -from hrdata_s2    -path only -nosplit -net
report_timing -from hrdata_s1    -path only -nosplit -net
report_timing -from hprot_m1     -path only -nosplit -net
report_timing -from hlock_m1     -path only -nosplit -net
report_timing -from hburst_m1    -path only -nosplit -net


echo "RPT_INFO:Output Ports  "

report_timing -to   hresp        -path only  -nosplit -net
report_timing -to   hwrite       -path only  -nosplit -net
report_timing -to   hwdata       -path only  -nosplit -net
report_timing -to   htrans       -path only  -nosplit -net
report_timing -to   hsize        -path only  -nosplit -net
report_timing -to   hsel_s4      -path only  -nosplit -net
report_timing -to   hsel_s3      -path only  -nosplit -net
report_timing -to   hsel_s2      -path only  -nosplit -net
report_timing -to   hsel_s1      -path only  -nosplit -net
report_timing -to   haddr        -path only  -nosplit -net
report_timing -to   hready       -path only  -nosplit -net
report_timing -to   hrdata       -path only  -nosplit -net
report_timing -to   hprot        -path only  -nosplit -net
report_timing -to   hmastlock    -path only  -nosplit -net
report_timing -to   hmaster_data -path only  -nosplit -net
report_timing -to   hmaster      -path only  -nosplit -net
report_timing -to   hburst       -path only  -nosplit -net


