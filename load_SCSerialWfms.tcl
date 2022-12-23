set SCSerialWfms_GroupName "scan chain serial interface"
# delete the group "top level" if it exists
delete wave $SCSerialWfms_GroupName

# Add in top level waveforms from ScanChainTop_tb 
add wave \
-group $SCSerialWfms_GroupName \
    -label "sdi" sim:/ScanChainTop_tb/sdi \
    -label "sdo" sim:/ScanChainTop_tb/sdo \
    -label "rw" sim:/ScanChainTop_tb/rw \
    -label "sck" sim:/ScanChainTop_tb/sck \
    -label "latch" sim:/ScanChainTop_tb/latch
