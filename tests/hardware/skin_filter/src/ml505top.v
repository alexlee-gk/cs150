module ml505top (
  input  [4:0]  GPIO_COMPSW,
  output [7:0]  GPIO_LED,
  input        USER_CLK,
  
  input VGA_IN_DATA_CLK,
	input VGA_IN_HSOUT,
	input VGA_IN_VSOUT,
	input [7:0] VGA_IN_BLUE,
	input [7:0] VGA_IN_GREEN,
	input [7:0] VGA_IN_RED,

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
	
	Debouncer rst_parse(
      .clk(cpu_clk_g),
      .in(GPIO_COMPSW[0]),
      .out(rst));
  
  wire toggle_display;
  Debouncer toggle_parse(
      .clk(cpu_clk_g),
      .in(GPIO_COMPSW[4] | GPIO_COMPSW[3] | GPIO_COMPSW[2] | GPIO_COMPSW[1]),
      .out(toggle_display));
	
	localparam BUFFER_SIZE = 20'd120000;
	reg [23:0] frame_buffer [BUFFER_SIZE-1:0];

	wire [10:0] vga_i, vga_j;
	wire [19:0] write_addr;
	wire vga_valid;
	VGA_INDEX vga_index(
		.Reset(rst),
		.VGA_IN_DATA_CLK(VGA_IN_DATA_CLK),
		.VGA_IN_HSOUT(VGA_IN_HSOUT),
		.VGA_IN_VSOUT(VGA_IN_VSOUT),
		.i(vga_i),
		.j(vga_j),
		.valid(vga_valid));

	wire fifo_empty;
	wire fifo_full;
	wire fifo_rd_en;
	wire [43:0] fifo_dout;
	fifo_generator_v9_1 fifo(
	  .rst(rst),
	  .wr_clk(VGA_IN_DATA_CLK),
	  .wr_en(vga_valid & (write_addr < BUFFER_SIZE)),
	  .din({write_addr,VGA_IN_RED,VGA_IN_GREEN,VGA_IN_BLUE}),
	  .rd_clk(cpu_clk_g),
	  .rd_en(fifo_rd_en),
	  .dout(fifo_dout),
	  .empty(fifo_empty),
	  .full(fifo_full));
	  
	assign fifo_rd_en = !fifo_empty; // safe because dvi is faster than vga
	assign write_addr = vga_i*800 + {{9{0}},vga_j};

	reg [23:0] video;
	wire video_ready; // it's an output from DVI
	wire video_valid;
	
	reg [10:0] i, j;
	wire [19:0] read_addr;
	assign read_addr = i*800 + {{9{0}},j};
	

	localparam RGB   = 2'd0,
						 YCRCB = 2'd1,
						 MASK  = 2'd2;
	reg [1:0] display_state;
	reg [1:0] next_display_state;
	reg [23:0] rgb_video;
	wire [23:0] ycrcb_video;
	wire [23:0] mask_video;
	
	always@(posedge cpu_clk_g) begin
		if (rst)
			begin
				j <= 0;
				i <= 0;
				rgb_video <= 24'hFFFFFF;
			end
		else
			begin
				if (video_ready) begin
				 	if ((j == 799) && (i == 599)) begin
		        j <= 0;
		        i <= 0;
		      end else if (j == 799) begin
		        j <= 0;
		        i <= i + 1;
		      end else begin
		        j <= j + 1; 
		        i <= i;
		      end
        end else begin
        	j <= j;
        	i <= i;
        end
        if (read_addr < BUFFER_SIZE) begin
					rgb_video <= frame_buffer[read_addr];
				end else
					rgb_video <= 24'hFFFFFF;
			end
			
			if (fifo_rd_en)
				frame_buffer[fifo_dout[43:24]] <= fifo_dout[23:0];
	end

	always@(posedge cpu_clk_g) begin
		if (rst) display_state <= RGB;
		else display_state <= next_display_state;
	end
	always@(*) begin
		video = rgb_video;
		next_display_state = display_state;
		case (display_state)
			RGB: begin
				video = rgb_video;
				if (toggle_display) next_display_state = YCRCB;
			end
			YCRCB: begin
				video = ycrcb_video;
				if (toggle_display) next_display_state = MASK;
			end
			MASK: begin
				video = mask_video;
				if (toggle_display) next_display_state = RGB;
			end
			default: next_display_state = RGB;
		endcase
	end
	
	RGB2YCrCb color_conversion(rgb_video, ycrcb_video);
	wire mask;
	SkinMask skin_mask(ycrcb_video, mask);
	assign mask_video = {24{mask}};

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
	
endmodule
