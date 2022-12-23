# tcl script to recompile, reload and, plot signals
set file_path "./srcs"

set file_list {
    counters.v
    ldo_en_if.v
    led_counter.v
    pcb_leds_if.v
    ScanChainShiftRegister.v
    ScanChainTop.v
    TRNGTestPCB.v
    DebounceButton.v
    LDO_en_if.v
    modelsim_buffers.v
    ScanChainIO.v
    ScanChainTop_tb.v
    ShiftRegister_tb.v
    ClkDiv_tb.v
}

# compile each file in the list
foreach file $file_list {
    vlog -work work "$file_path/$file"
}

# restart the simulation (and disable the dialog box)
restart -force

run "100 us"
