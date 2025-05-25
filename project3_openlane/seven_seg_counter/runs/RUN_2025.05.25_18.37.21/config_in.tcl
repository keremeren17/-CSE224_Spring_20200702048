set ::env(DESIGN_NAME) Top

set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/*.v]

set ::env(CLOCK_PORT) clk
set ::env(CLOCK_PERIOD) 10.0

set ::env(FP_IO_HMETAL) 1
set ::env(SYNTH_READ_BLACKBOX_LIB) 1
