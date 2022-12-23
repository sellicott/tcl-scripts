set TopLevelWfms_GroupName "top level"
# delete the group "top level" if it exists
delete wave $TopLevelWfms_GroupName

# Add in top level waveforms from ScanChainTop_tb 
add wave \
-group $TopLevelWfms_GroupName \
   -unsigned -label "clock count" sim:/ScanChainTop_tb/clock_count \
   -logic    -label "clk" sim:/ScanChainTop_tb/clk \
   -logic    -label "reset" sim:/ScanChainTop_tb/reset \
   -divider ""\
   -unsigned -label "sc shift count" sim:/ScanChainTop_tb/tx_shift_count  \
   -logic    -label "start transfer"  sim:/ScanChainTop_tb/start_transfer  \
   -logic    -label "transfer complete"  sim:/ScanChainTop_tb/transfer_complete \
   -divider ""\
   -logic    -label "sc data" sim:/ScanChainTop_tb/sc_data \
   -logic    -label "tdc data" sim:/ScanChainTop_tb/tdc_data