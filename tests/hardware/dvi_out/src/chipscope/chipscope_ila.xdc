#
# Clock constraints
#
set_false_path -from [get_cells -hierarchical * -filter {NAME =~ */U0/*/U_STAT/U_DIRTY_LDC}] -to [all_registers -edge_triggered]
set_false_path -from [all_registers -edge_triggered] -to [get_cells -hierarchical * -filter {NAME =~ */U0/*/U_STAT/U_DIRTY_LDC}]
