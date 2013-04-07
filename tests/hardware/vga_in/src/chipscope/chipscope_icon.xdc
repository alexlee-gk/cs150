# icon XDC
create_clock -name J_CLK -period 30 -waveform {15 30} [get_pins -of [get_cells -hier * -filter {LIB_CELL =~ BSCAN*}] -filter {name =~ */U_ICON/*/DRCK}]
create_clock -name U_CLK -period 30 [get_pins -of [get_cells -hier * -filter {LIB_CELL =~ BSCAN*}] -filter {NAME =~ */U_ICON/*/UPDATE}]
set_false_path -through [get_pins -of [get_cells -hier * -filter {LIB_CELL =~ BSCAN*}] -filter {NAME =~ */U_ICON/*/SHIFT}]
set_multicycle_path -from [get_clocks U_CLK] -to [get_clocks J_CLK] -setup 2
set_multicycle_path -from [get_clocks U_CLK] -to [get_clocks J_CLK] -hold 1
set_clock_group -asynchronous -name cross_jtag_clock_domains -group {J_CLK U_CLK}
