module ml505top (
  input  [4:0]  GPIO_COMPSW,
  output [7:0]  GPIO_LED,
  input        USER_CLK,
  
  output [11:0] DVI_D,
	output        DVI_DE,
	output        DVI_H,
	output        DVI_RESET_B,
	output        DVI_V,
	output        DVI_XCLK_N,
	output        DVI_XCLK_P,
	
	inout         IIC_SCL_VIDEO,
	inout         IIC_SDA_VIDEO
);
	
  wire rst;
  
	// Clocks
	wire user_clk_g;

  wire cpu_clk;
  wire cpu_clk_g;

  wire clk0;
  wire clk0_g;

  wire clk90;
  wire clk90_g;

  wire clkdiv0;
  wire clkdiv0_g;

  wire clk200;
  wire clk200_g;

  wire pll_lock;

  wire clk50;
  wire clk50_g;
  
  PLL_BASE
  #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT(24),
    .CLKFBOUT_PHASE(0.0),
    .CLKIN_PERIOD(10.0),

    .CLKOUT0_DIVIDE(12),
    .CLKOUT0_DUTY_CYCLE(0.5),
    .CLKOUT0_PHASE(0.0),

    .CLKOUT1_DIVIDE(3),
    .CLKOUT1_DUTY_CYCLE(0.5),
    .CLKOUT1_PHASE(0.0),

    .CLKOUT2_DIVIDE(3),
    .CLKOUT2_DUTY_CYCLE(0.5),
    .CLKOUT2_PHASE(0.0),

    .CLKOUT3_DIVIDE(3),
    .CLKOUT3_DUTY_CYCLE(0.5),
    .CLKOUT3_PHASE(90.0),

    .CLKOUT4_DIVIDE(6),
    .CLKOUT4_DUTY_CYCLE(0.5),
    .CLKOUT4_PHASE(0.0),

    .CLKOUT5_DIVIDE(12),
    .CLKOUT5_DUTY_CYCLE(0.5),
    .CLKOUT5_PHASE(0.0),

    .COMPENSATION("SYSTEM_SYNCHRONOUS"),
    .DIVCLK_DIVIDE(4),
    .REF_JITTER(0.100)
  )
  user_clk_pll
  (
    .CLKFBOUT(pll_fb),
    .CLKOUT0(cpu_clk),
    .CLKOUT1(clk200),
    .CLKOUT2(clk0),
    .CLKOUT3(clk90),
    .CLKOUT4(clkdiv0),
    .CLKOUT5(clk50),
    .LOCKED(pll_lock),
    .CLKFBIN(pll_fb),
    .CLKIN(user_clk_g),
    .RST(1'b0)
  );

  IBUFG user_clk_buf ( .I(USER_CLK), .O(user_clk_g) );
  BUFG  cpu_clk_buf  ( .I(cpu_clk),  .O(cpu_clk_g)  );
  BUFG  clk200_buf   ( .I(clk200),   .O(clk200_g)   );
  BUFG  clk0_buf     ( .I(clk0),     .O(clk0_g)     );
  BUFG  clkdiv50_buf ( .I(clk50),    .O(clk50_g)    );
  BUFG  clk90_buf    ( .I(clk90),    .O(clk90_g)    );
  BUFG  clkdiv0_buf  ( .I(clkdiv0),  .O(clkdiv0_g)  );
	
	wire [23:0] video;
	wire video_ready; // it's an output from DVI
	wire video_valid;
	
	Debouncer rst_parse(
      .clk(cpu_clk_g),
      .in(GPIO_COMPSW[4] | GPIO_COMPSW[3] | GPIO_COMPSW[2] | GPIO_COMPSW[1] | GPIO_COMPSW[0]),
      .out(rst));
	
	assign video = 24'hFF00FF;
	assign video_valid = 1'b1;

  DVI #(
		.ClockFreq(                 50000000),
		.Width(                     1040),   
		.FrontH(                    56),     
		.PulseH(                    120),    
		.BackH(                     64),    
		.Height(                    666),    
		.FrontV(                    37),      
		.PulseV(                    6),      
		.BackV(                     23)      
	) dvi(         
		.Clock(                     cpu_clk_g),
		.Reset(                     rst),
		.DVI_D(                     DVI_D),
		.DVI_DE(                    DVI_DE),
		.DVI_H(                     DVI_H),
		.DVI_V(                     DVI_V),
		.DVI_RESET_B(               DVI_RESET_B),
		.DVI_XCLK_N(                DVI_XCLK_N),
		.DVI_XCLK_P(                DVI_XCLK_P),
		.I2C_SCL_DVI(               IIC_SCL_VIDEO),
		.I2C_SDA_DVI(               IIC_SDA_VIDEO),
		/* Ready/Valid interface for 24-bit pixel values */
		.Video(                     video),
		.VideoReady(                video_ready),
		.VideoValid(                video_valid)
	);
  
  assign GPIO_LED = {1'b1, 1'b1, rst, rst, pll_lock, pll_lock, video_ready, video_ready};
  
  // ChipScope components:
	wire [35:0] chipscope_control;
	chipscope_icon icon(
	.CONTROL0(chipscope_control)
	) /* synthesis syn_noprune=1 */;
	chipscope_ila ila(
	.CONTROL(chipscope_control),
	.CLK(clk200_g),
	.DATA({4'b1100, video_valid, video_ready, pll_lock, clk50_g, cpu_clk_g, user_clk_g, GPIO_COMPSW[4], GPIO_COMPSW[3],
    GPIO_COMPSW[2], GPIO_COMPSW[1], GPIO_COMPSW[0], rst}),
	.TRIG0(rst)
	) /* synthesis syn_noprune=1 */;

endmodule
