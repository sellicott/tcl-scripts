proc addWaveform{ group_name, wafeform_list } {
    # Delete the group if it exists
    delete wave $group_name
    add wave "-group $group_name $waveform_list"
}
# Add in top level waveforms from ScanChainTop_tb 
add wave \
-group $SCControlerWfms_GroupName \
    -label "rw" sim:/ScanChainTop_tb/fpga_sc_inst/sc_controler_inst/rw \
    -label "sck" sim:/ScanChainTop_tb/fpga_sc_inst/sc_controler_inst/sck \
    -label "latch" sim:/ScanChainTop_tb/fpga_sc_inst/sc_controler_inst/latch \
    -label "start_transfer" sim:/ScanChainTop_tb/fpga_sc_inst/sc_controler_inst/start_transfer \
    -divider "internals" \
    -unsigned -label "state count" sim:/ScanChainTop_tb/fpga_sc_inst/sc_controler_inst/clk_counter_reg \
    -logic -label "xfer_in_progress" sim:/ScanChainTop_tb/fpga_sc_inst/sc_controler_inst/xfer_in_progress \
    -label "start_counter" sim:/ScanChainTop_tb/fpga_sc_inst/sc_controler_inst/start_counter \
    -label "reset_counter" sim:/ScanChainTop_tb/fpga_sc_inst/sc_controler_inst/reset_counter
     