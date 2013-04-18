//-----------------------------------------------------------------------------
// vga_config_stub.v
//-----------------------------------------------------------------------------

module vga_config_stub
  (
    fpga_0_RS232_Uart_1_RX_pin,
    fpga_0_RS232_Uart_1_TX_pin,
    fpga_0_clk_1_sys_clk_pin,
    fpga_0_rst_1_sys_rst_pin,
    xps_iic_0_Gpo_pin,
    xps_iic_0_Sda_pin,
    xps_iic_0_Scl_pin,
    clock_generator_0_CLKOUT1_pin
  );
  input fpga_0_RS232_Uart_1_RX_pin;
  output fpga_0_RS232_Uart_1_TX_pin;
  input fpga_0_clk_1_sys_clk_pin;
  input fpga_0_rst_1_sys_rst_pin;
  output xps_iic_0_Gpo_pin;
  inout xps_iic_0_Sda_pin;
  inout xps_iic_0_Scl_pin;
  output clock_generator_0_CLKOUT1_pin;

  (* BOX_TYPE = "user_black_box" *)
  vga_config
    vga_config_i (
      .fpga_0_RS232_Uart_1_RX_pin ( fpga_0_RS232_Uart_1_RX_pin ),
      .fpga_0_RS232_Uart_1_TX_pin ( fpga_0_RS232_Uart_1_TX_pin ),
      .fpga_0_clk_1_sys_clk_pin ( fpga_0_clk_1_sys_clk_pin ),
      .fpga_0_rst_1_sys_rst_pin ( fpga_0_rst_1_sys_rst_pin ),
      .xps_iic_0_Gpo_pin ( xps_iic_0_Gpo_pin ),
      .xps_iic_0_Sda_pin ( xps_iic_0_Sda_pin ),
      .xps_iic_0_Scl_pin ( xps_iic_0_Scl_pin ),
      .clock_generator_0_CLKOUT1_pin ( clock_generator_0_CLKOUT1_pin )
    );

endmodule

