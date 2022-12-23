# Clean up everything
delete wave *

proc addWaveform { group_name waveform_list } {
    # Delete the group if it exists
    delete wave $group_name
    set arguments "-group \"$group_name\" $waveform_list"
    eval "add wave $arguments"
}
# load in waveforms
source "scripts/waveform_lists.tcl"

# add the waveforms to the display
addWaveform "top level" $shift_register
add wave -divider ""
