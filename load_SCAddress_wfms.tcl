set SCAddressWfms_GroupName "scan chain register select"
# delete the group "top level" if it exists
delete wave $SCAddressWfms_GroupName

# Add in top level waveforms from ScanChainTop_tb 
add wave \
-group $SCAddressWfms_GroupName \
    -label "system ctrl register" sim:/ScanChainTop_tb/system_ctrl_sel \
    -label "TRNG1 timing register" sim:/ScanChainTop_tb/timing_ctrl_trng1_sel \
    -label "TRNG2 timing register" sim:/ScanChainTop_tb/timing_ctrl_trng2_sel \
    -label "TRNG1 DAC1" sim:/ScanChainTop_tb/dac_ctrl_trng1_1_sel \
    -label "TRNG1 DAC2" sim:/ScanChainTop_tb/dac_ctrl_trng1_2_sel \
    -label "TRNG2 DAC1" sim:/ScanChainTop_tb/dac_ctrl_trng2_1_sel \
    -label "TRNG2 DAC2" sim:/ScanChainTop_tb/dac_ctrl_trng2_2_sel