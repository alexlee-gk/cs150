cd /home/cc/cs150/sp13/class/cs150-bh/cs150/tests/hardware/vga_config/
if { [ catch { xload xmp vga_config.xmp } result ] } {
  exit 10
}
xset hdl verilog
run stubgen
exit 0
