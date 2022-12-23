# Clean up everything
delete wave *

proc addWaveform { group_name waveform_list } {
    # Delete the group if it exists
    delete wave $group_name
    set arguments "-group \"$group_name\" $waveform_list"
    eval "add wave $arguments"
}
# load in waveforms
source "scripts/clk_div_wfms.tcl"

# add the waveforms to the display
addWaveform "top level" $scan_chain_top
add wave -divider ""
#addWaveform "scan chain address" $scan_chain_address
#add wave -divider ""
addWaveform "scan chain serial" $scan_chain_serial
add wave -divider ""
addWaveform "scan chain controller" $scan_chain_controller
add wave -divider ""
addWaveform "FPGA shift register" $scan_chain_shift_register
add wave -divider ""
addWaveform "Clock Divider" $clk_div
