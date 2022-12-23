# scan chain testbench
set scan_chain_controller { \
    -label "rw" sim:/ScanChainTop_tb/fpga_sc_inst/sc_controler_inst/rw\
    -label "sck" sim:/ScanChainTop_tb/fpga_sc_inst/sc_controler_inst/sck\
    -label "latch" sim:/ScanChainTop_tb/fpga_sc_inst/sc_controler_inst/latch\
    -label "start_transfer" sim:/ScanChainTop_tb/fpga_sc_inst/sc_controler_inst/start_transfer\
    -divider "internals" \
    -unsigned -label "state count" sim:/ScanChainTop_tb/fpga_sc_inst/sc_controler_inst/clk_counter_reg\
    -logic -label "xfer_in_progress" sim:/ScanChainTop_tb/fpga_sc_inst/sc_controler_inst/xfer_in_progress\
    -label "start_counter" sim:/ScanChainTop_tb/fpga_sc_inst/sc_controler_inst/start_counter\
    -label "reset_counter" sim:/ScanChainTop_tb/fpga_sc_inst/sc_controler_inst/reset_counter\
}

set scan_chain_address { \
    -label "System ctrl register"  sim:/ScanChainTop_tb/system_ctrl_sel \
    -label "TRNG1 timing register" sim:/ScanChainTop_tb/timing_ctrl_trng1_sel \
    -label "TRNG2 timing register" sim:/ScanChainTop_tb/timing_ctrl_trng2_sel \
    -label "TRNG1 DAC1" sim:/ScanChainTop_tb/dac_ctrl_trng1_1_sel \
    -label "TRNG1 DAC2" sim:/ScanChainTop_tb/dac_ctrl_trng1_2_sel \
    -label "TRNG2 DAC1" sim:/ScanChainTop_tb/dac_ctrl_trng2_1_sel \
    -label "TRNG2 DAC2" sim:/ScanChainTop_tb/dac_ctrl_trng2_2_sel \
}

set scan_chain_top { \
    -unsigned -label "clock count" sim:/ScanChainTop_tb/clock_count \
    -logic    -label "clk" sim:/ScanChainTop_tb/clk \
    -logic    -label "reset" sim:/ScanChainTop_tb/reset \
    -divider "Control Signals" \
    -unsigned -label "sc shift count" sim:/ScanChainTop_tb/tx_shift_count  \
    -logic    -label "start transfer"  sim:/ScanChainTop_tb/start_transfer  \
    -logic    -label "transfer complete"  sim:/ScanChainTop_tb/transfer_complete \
    -divider "Data registers" \
    -hex -label "FPGA addr out" sim:/ScanChainTop_tb/fpga_sc_inst/addr_int \
    -hex -label "IC addr in" sim:/ScanChainTop_tb/ic_addr_reg \
    -hex -label "FPGA data out" sim:/ScanChainTop_tb/sc_data \
    -hex -label "IC data in" sim:/ScanChainTop_tb/ic_data_reg \
    -hex -label "IC tdc out" sim:/ScanChainTop_tb/ic_tdc_reg \
    -hex -label "FPGA tdc in" sim:/ScanChainTop_tb/tdc_data \

}

set scan_chain_serial { \
    -label "sdi"   sim:/ScanChainTop_tb/sdi \
    -label "sdo"   sim:/ScanChainTop_tb/sdo \
    -label "rw"    sim:/ScanChainTop_tb/rw \
    -label "sck"   sim:/ScanChainTop_tb/sck \
    -label "latch" sim:/ScanChainTop_tb/latch \
}

set scan_chain_shift_register { \
    -label "rw"              sim:/ScanChainTop_tb/fpga_sc_inst/sc_shift_register_inst/write_shift \
    -label "sdi"             sim:/ScanChainTop_tb/fpga_sc_inst/sc_shift_register_inst/addr_register_inst/pass_in \
    -label "addr shift out"  sim:/ScanChainTop_tb/fpga_sc_inst/sc_shift_register_inst/addr_to_data_wire \
    -label "data1 shift out" sim:/ScanChainTop_tb/fpga_sc_inst/sc_shift_register_inst/data_to_data_wire \
    -label "data2 shift out" sim:/ScanChainTop_tb/fpga_sc_inst/sc_shift_register_inst/sdo \
    -divider "internal registers" \
    -label "address register"    sim:/ScanChainTop_tb/fpga_sc_inst/sc_shift_register_inst/in_addr \
    -label "data register"       sim:/ScanChainTop_tb/fpga_sc_inst/sc_shift_register_inst/in_data \
    -divider "data inputs" \
    -label "addr data in"        sim:/ScanChainTop_tb/fpga_sc_inst/sc_shift_register_inst/addr_register_inst/par_in \
    -label "scan chain data1 in" sim:/ScanChainTop_tb/fpga_sc_inst/sc_shift_register_inst/data_register1_inst/par_in \
    -label "scan chain data2 in" sim:/ScanChainTop_tb/fpga_sc_inst/sc_shift_register_inst/data_register2_inst/par_in \
}

# shift register testbench
set shift_register { \
    -label "sdi"         sim:/ShiftRegister_tb/sdi1 \
    -label "rw"          sim:/ShiftRegister_tb/rw \
    -label "sdo"         sim:/ShiftRegister_tb/sdo1 \
    -unsigned -label "clock count" sim:/ShiftRegister_tb/count_out \
    -logic -label "clk"         sim:/ShiftRegister_tb/clock \
    -label "reset"       sim:/ShiftRegister_tb/reset \
    -divider "parallel data registers" \
    -hex -label "reg1 in" sim:/ShiftRegister_tb/sc_load_data1 \
    -label "reg1 out" sim:/ShiftRegister_tb/sc_data_out1 \
    -label "reg2 in" sim:/ShiftRegister_tb/sc_load_data2 \
    -label "reg2 out" sim:/ShiftRegister_tb/sc_data_out2 \
}