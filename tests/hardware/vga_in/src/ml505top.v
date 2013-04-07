module ml505top (
  input  [4:0]  GPIO_COMPSW,
  output [7:0]  GPIO_LED,

	input VGA_IN_DATA_CLK,
	input VGA_IN_HSOUT,
	input VGA_IN_VSOUT,
	input [7:0] VGA_IN_BLUE,
	input [7:0] VGA_IN_GREEN,
	input [7:0] VGA_IN_RED
);
	
  assign GPIO_LED = {1'b1, 1'b1, 1'b1, GPIO_COMPSW};
  
  // 8+5+8*3+2 = 39
  
  // ChipScope components:
	wire [35:0] chipscope_control;
	chipscope_icon icon(
	.CONTROL0(chipscope_control)
	) /* synthesis syn_noprune=1 */;
	chipscope_ila ila(
	.CONTROL(chipscope_control),
	.CLK(VGA_IN_DATA_CLK),
	.DATA({25'b0, GPIO_LED, GPIO_COMPSW, VGA_IN_RED, VGA_IN_GREEN, VGA_IN_BLUE, VGA_IN_HSOUT, VGA_IN_VSOUT}),
	.TRIG0(VGA_IN_VSOUT)
	) /* synthesis syn_noprune=1 */;

endmodule
