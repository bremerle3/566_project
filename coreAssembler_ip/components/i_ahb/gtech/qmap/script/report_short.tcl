echo "RPT_INFO:Input Ports  "

report_timing -from hready_resp_s3 -path short -nosplit
report_timing -from hwrite_m1    -path short -nosplit
report_timing -from hwdata_m1    -path short -nosplit
report_timing -from htrans_m1    -path short -nosplit
report_timing -from hsize_m1     -path short -nosplit
report_timing -from hresp_s4     -path short -nosplit
report_timing -from hresp_s3     -path short -nosplit
report_timing -from hresp_s2     -path short -nosplit
report_timing -from hresp_s1     -path short -nosplit
report_timing -from hready_resp_s4 -path short -nosplit
report_timing -from haddr_m1     -path short -nosplit
report_timing -from hready_resp_s2 -path short -nosplit
report_timing -from hready_resp_s1 -path short -nosplit
report_timing -from hrdata_s4    -path short -nosplit
report_timing -from hrdata_s3    -path short -nosplit
report_timing -from hrdata_s2    -path short -nosplit
report_timing -from hrdata_s1    -path short -nosplit
report_timing -from hprot_m1     -path short -nosplit
report_timing -from hlock_m1     -path short -nosplit
report_timing -from hburst_m1    -path short -nosplit


echo "RPT_INFO:Output Ports  "

report_timing -to   hresp        -path short -nosplit
report_timing -to   hwrite       -path short -nosplit
report_timing -to   hwdata       -path short -nosplit
report_timing -to   htrans       -path short -nosplit
report_timing -to   hsize        -path short -nosplit
report_timing -to   hsel_s4      -path short -nosplit
report_timing -to   hsel_s3      -path short -nosplit
report_timing -to   hsel_s2      -path short -nosplit
report_timing -to   hsel_s1      -path short -nosplit
report_timing -to   haddr        -path short -nosplit
report_timing -to   hready       -path short -nosplit
report_timing -to   hrdata       -path short -nosplit
report_timing -to   hprot        -path short -nosplit
report_timing -to   hmastlock    -path short -nosplit
report_timing -to   hmaster_data -path short -nosplit
report_timing -to   hmaster      -path short -nosplit
report_timing -to   hburst       -path short -nosplit


