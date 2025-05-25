set ::env(DESIGN_NAME) alu

set ::env(VERILOG_FILES) "$::env(DESIGN_DIR)/src/alu.v"

# Eğer clk sinyali varsa bu satırları tut, yoksa sil:
set ::env(CLOCK_PORT) "clk"
set ::env(CLOCK_PERIOD) "10"

set ::env(FP_CORE_UTIL) 30

