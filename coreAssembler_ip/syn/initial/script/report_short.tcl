echo "RPT_INFO:Input Ports  "

echo "RPT_INFO:Port Group Interface PRESETn"
report_timing -from PRESETn_presetn -path short -nosplit
echo "RPT_INFO:Port Group Interface ex_i_ahb_AHB_MASTER_CORTEXM0"
report_timing -from ex_i_ahb_AHB_MASTER_CORTEXM0_haddr -path short -nosplit
report_timing -from ex_i_ahb_AHB_MASTER_CORTEXM0_hburst -path short -nosplit
report_timing -from ex_i_ahb_AHB_MASTER_CORTEXM0_hlock -path short -nosplit
report_timing -from ex_i_ahb_AHB_MASTER_CORTEXM0_hprot -path short -nosplit
report_timing -from ex_i_ahb_AHB_MASTER_CORTEXM0_hsize -path short -nosplit
report_timing -from ex_i_ahb_AHB_MASTER_CORTEXM0_htrans -path short -nosplit
report_timing -from ex_i_ahb_AHB_MASTER_CORTEXM0_hwdata -path short -nosplit
report_timing -from ex_i_ahb_AHB_MASTER_CORTEXM0_hwrite -path short -nosplit
echo "RPT_INFO:Port Group Interface ex_i_ahb_AHB_Slave_PID"
report_timing -from ex_i_ahb_AHB_Slave_PID_hrdata -path short -nosplit
report_timing -from ex_i_ahb_AHB_Slave_PID_hready_resp -path short -nosplit
report_timing -from ex_i_ahb_AHB_Slave_PID_hresp -path short -nosplit
echo "RPT_INFO:Port Group Interface ex_i_ahb_AHB_Slave_PWM"
report_timing -from ex_i_ahb_AHB_Slave_PWM_hrdata -path short -nosplit
report_timing -from ex_i_ahb_AHB_Slave_PWM_hresp -path short -nosplit
report_timing -from ex_i_ahb_AHB_Slave_PWM_hready_resp -path short -nosplit
echo "RPT_INFO:Port Group Interface ex_i_ahb_AHB_Slave_RAM"
report_timing -from ex_i_ahb_AHB_Slave_RAM_hrdata -path short -nosplit
report_timing -from ex_i_ahb_AHB_Slave_RAM_hready_resp -path short -nosplit
report_timing -from ex_i_ahb_AHB_Slave_RAM_hresp -path short -nosplit
echo "RPT_INFO:Port Group Manually exported pins"
report_timing -from i_apb_pclk_en -path short -nosplit
report_timing -from i_i2c_ic_clk_in_a -path short -nosplit
report_timing -from i_i2c_ic_data_in_a -path short -nosplit
report_timing -from i_ssi_rxd    -path short -nosplit
report_timing -from i_ssi_ss_in_n -path short -nosplit
report_timing -from i_ssi_ssi_rst_n -path short -nosplit


echo "RPT_INFO:Output Ports  "

echo "RPT_INFO:Port Group Interface ex_i_ahb_AHB_MASTER_CORTEXM0"
report_timing -to   ex_i_ahb_AHB_MASTER_CORTEXM0_hready -path short -nosplit
report_timing -to   ex_i_ahb_AHB_MASTER_CORTEXM0_hresp -path short -nosplit
report_timing -to   ex_i_ahb_AHB_MASTER_CORTEXM0_hrdata -path short -nosplit
echo "RPT_INFO:Port Group Interface ex_i_ahb_AHB_Slave_PID"
report_timing -to   ex_i_ahb_AHB_Slave_PID_haddr -path short -nosplit
report_timing -to   ex_i_ahb_AHB_Slave_PID_hburst -path short -nosplit
report_timing -to   ex_i_ahb_AHB_Slave_PID_hmastlock -path short -nosplit
report_timing -to   ex_i_ahb_AHB_Slave_PID_hprot -path short -nosplit
report_timing -to   ex_i_ahb_AHB_Slave_PID_hready -path short -nosplit
report_timing -to   ex_i_ahb_AHB_Slave_PID_hsel -path short -nosplit
report_timing -to   ex_i_ahb_AHB_Slave_PID_hsize -path short -nosplit
report_timing -to   ex_i_ahb_AHB_Slave_PID_htrans -path short -nosplit
report_timing -to   ex_i_ahb_AHB_Slave_PID_hwdata -path short -nosplit
report_timing -to   ex_i_ahb_AHB_Slave_PID_hwrite -path short -nosplit
echo "RPT_INFO:Port Group Interface ex_i_ahb_AHB_Slave_PWM"
report_timing -to   ex_i_ahb_AHB_Slave_PWM_hsize -path short -nosplit
report_timing -to   ex_i_ahb_AHB_Slave_PWM_hready -path short -nosplit
report_timing -to   ex_i_ahb_AHB_Slave_PWM_htrans -path short -nosplit
report_timing -to   ex_i_ahb_AHB_Slave_PWM_hwdata -path short -nosplit
report_timing -to   ex_i_ahb_AHB_Slave_PWM_hwrite -path short -nosplit
report_timing -to   ex_i_ahb_AHB_Slave_PWM_hsel -path short -nosplit
report_timing -to   ex_i_ahb_AHB_Slave_PWM_hprot -path short -nosplit
report_timing -to   ex_i_ahb_AHB_Slave_PWM_hmastlock -path short -nosplit
report_timing -to   ex_i_ahb_AHB_Slave_PWM_hburst -path short -nosplit
report_timing -to   ex_i_ahb_AHB_Slave_PWM_haddr -path short -nosplit
echo "RPT_INFO:Port Group Interface ex_i_ahb_AHB_Slave_RAM"
report_timing -to   ex_i_ahb_AHB_Slave_RAM_haddr -path short -nosplit
report_timing -to   ex_i_ahb_AHB_Slave_RAM_hburst -path short -nosplit
report_timing -to   ex_i_ahb_AHB_Slave_RAM_hmastlock -path short -nosplit
report_timing -to   ex_i_ahb_AHB_Slave_RAM_hprot -path short -nosplit
report_timing -to   ex_i_ahb_AHB_Slave_RAM_hready -path short -nosplit
report_timing -to   ex_i_ahb_AHB_Slave_RAM_hsel -path short -nosplit
report_timing -to   ex_i_ahb_AHB_Slave_RAM_hsize -path short -nosplit
report_timing -to   ex_i_ahb_AHB_Slave_RAM_htrans -path short -nosplit
report_timing -to   ex_i_ahb_AHB_Slave_RAM_hwdata -path short -nosplit
report_timing -to   ex_i_ahb_AHB_Slave_RAM_hwrite -path short -nosplit
echo "RPT_INFO:Port Group Manually exported pins"
report_timing -to   i_i2c_ic_stop_det_intr -path short -nosplit
report_timing -to   i_i2c_ic_tx_abrt_intr -path short -nosplit
report_timing -to   i_i2c_ic_tx_over_intr -path short -nosplit
report_timing -to   i_i2c_ic_tx_empty_intr -path short -nosplit
report_timing -to   i_i2c_ic_rx_done_intr -path short -nosplit
report_timing -to   i_i2c_ic_start_det_intr -path short -nosplit
report_timing -to   i_i2c_ic_rx_under_intr -path short -nosplit
report_timing -to   i_i2c_ic_rx_over_intr -path short -nosplit
report_timing -to   i_i2c_ic_rx_full_intr -path short -nosplit
report_timing -to   i_ssi_txd    -path short -nosplit
report_timing -to   i_ssi_sclk_out -path short -nosplit
report_timing -to   i_ssi_ss_0_n -path short -nosplit
report_timing -to   i_ssi_ssi_mst_intr_n -path short -nosplit
report_timing -to   i_ssi_ssi_oe_n -path short -nosplit
report_timing -to   i_ssi_ssi_rxf_intr_n -path short -nosplit
report_timing -to   i_ssi_ssi_rxo_intr_n -path short -nosplit
report_timing -to   i_ssi_ssi_rxu_intr_n -path short -nosplit
report_timing -to   i_ssi_ssi_sleep -path short -nosplit
report_timing -to   i_ssi_ssi_txe_intr_n -path short -nosplit
report_timing -to   i_ssi_ssi_txo_intr_n -path short -nosplit
report_timing -to   i_i2c_debug_s_gen -path short -nosplit
report_timing -to   i_ahb_hmaster_data -path short -nosplit
report_timing -to   i_i2c_debug_addr -path short -nosplit
report_timing -to   i_i2c_debug_addr_10bit -path short -nosplit
report_timing -to   i_i2c_debug_data -path short -nosplit
report_timing -to   i_i2c_debug_hs -path short -nosplit
report_timing -to   i_i2c_debug_master_act -path short -nosplit
report_timing -to   i_i2c_debug_mst_cstate -path short -nosplit
report_timing -to   i_i2c_debug_p_gen -path short -nosplit
report_timing -to   i_i2c_debug_rd -path short -nosplit
report_timing -to   i_i2c_ic_rd_req_intr -path short -nosplit
report_timing -to   i_i2c_debug_slave_act -path short -nosplit
report_timing -to   i_i2c_debug_slv_cstate -path short -nosplit
report_timing -to   i_i2c_debug_wr -path short -nosplit
report_timing -to   i_i2c_ic_activity_intr -path short -nosplit
report_timing -to   i_i2c_ic_clk_oe -path short -nosplit
report_timing -to   i_i2c_ic_current_src_en -path short -nosplit
report_timing -to   i_i2c_ic_data_oe -path short -nosplit
report_timing -to   i_i2c_ic_en  -path short -nosplit
report_timing -to   i_i2c_ic_gen_call_intr -path short -nosplit


