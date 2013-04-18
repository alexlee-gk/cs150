//-----------------------------------------------------------------------------
// vga_config_top.v
//-----------------------------------------------------------------------------

module vga_config_top
  (
    fpga_0_RS232_Uart_1_RX_pin,
    fpga_0_RS232_Uart_1_TX_pin,
    fpga_0_clk_1_sys_clk_pin,
    fpga_0_rst_1_sys_rst_pin,
    xps_iic_0_Gpo_pin,
    xps_iic_0_Sda_pin,
    xps_iic_0_Scl_pin,
    clock_generator_0_CLKOUT1_pin,
	 
	 GPIO_COMPSW,
	 GPIO_LED,

	VGA_IN_DATA_CLK,
	VGA_IN_HSOUT,
	VGA_IN_VSOUT,
	VGA_IN_BLUE,
	VGA_IN_GREEN,
	VGA_IN_RED
	 
	 
	 
  );
  input fpga_0_RS232_Uart_1_RX_pin;
  output fpga_0_RS232_Uart_1_TX_pin;
  input fpga_0_clk_1_sys_clk_pin;
  input fpga_0_rst_1_sys_rst_pin;
  output xps_iic_0_Gpo_pin;
  inout xps_iic_0_Sda_pin;
  inout xps_iic_0_Scl_pin;
  output clock_generator_0_CLKOUT1_pin;
  
  
  
  input  [4:0]  GPIO_COMPSW;
		output [7:0]  GPIO_LED;

	input VGA_IN_DATA_CLK;
	input VGA_IN_HSOUT;
	input VGA_IN_VSOUT;
	input [7:0] VGA_IN_BLUE;
	input [7:0] VGA_IN_GREEN;
	input [7:0] VGA_IN_RED;
	
	
	assign GPIO_LED = {1'b1, 1'b1, 1'b1, GPIO_COMPSW};
  
  // 8+5+8*3+2 = 39
  
  // ChipScope components:
	wire [35:0] chipscope_control;
	chipscope_icon icon(
	.CONTROL0(chipscope_control)
	) /* synthesis syn_noprune=1 */;
	chipscope_ila ila(
	.CONTROL(chipscope_control),
	.CLK(clock_generator_0_CLKOUT1_pin),
	.DATA({25'b0, GPIO_LED, 4'b0,VGA_IN_DATA_CLK , VGA_IN_RED, VGA_IN_GREEN, VGA_IN_BLUE, VGA_IN_HSOUT, VGA_IN_VSOUT}),
	.TRIG0(VGA_IN_VSOUT)
	) /* synthesis syn_noprune=1 */;
	
  

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

