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
      .in(GPIO_COMPSW[4] | GPIO_COMPSW[3] | GPIO_COMPSW[2] | GPIO_COMPSW[1] | GPIO_COMPSW[0]),
      .out(rst));
	
	parameter BUFFER_SIZE = 20'd20000;

	parameter Width = 800;
	parameter FrontH = 40;
	parameter PulseH = 128;
	parameter BackH = 93; //88+5
	parameter Height = 600;
	parameter FrontV = 1;
	parameter PulseV = 4;
	parameter BackV = 24; //23+1
	
	localparam VGA_IDLE = 1'd0,
						 VGA_ACTIVE = 1'd1;

	reg [23:0] frame_buffer [BUFFER_SIZE-1:0];
  
  reg [10:0] vga_h_counter, vga_v_counter;
	wire [10:0] vga_j, vga_i;
	assign vga_j = vga_h_counter - (PulseH+BackH);
	assign vga_i = vga_v_counter - (PulseV+BackV);
	wire [19:0] write_addr;
	assign write_addr = vga_i*Width + {{9{0}},vga_j};
	
	wire vga_valid;
	assign vga_valid = (vga_h_counter >= (PulseH+BackH)) & 
										 (vga_h_counter <  (PulseH+BackH+Width)) & 
										 (vga_v_counter >= (PulseV+BackV)) & 
										 (vga_v_counter <  (PulseV+BackV+Height)); 
	
	reg vga_in_hsout_delayed;
	reg vga_in_vsout_delayed;
	wire vga_in_hsout_posedge;
	wire vga_in_vsout_posedge;
	assign vga_in_hsout_posedge = VGA_IN_HSOUT & !vga_in_hsout_delayed;
	assign vga_in_vsout_posedge = VGA_IN_VSOUT & !vga_in_vsout_delayed;
	
	reg vga_state;
	always@(posedge VGA_IN_DATA_CLK) begin
		
		if (rst) begin
			vga_state <= VGA_IDLE;
			vga_in_hsout_delayed <= 1; // to prevent posedge at rst if HSOUT happened to be high
			vga_in_vsout_delayed <= 1; // same
		end else begin
			vga_in_hsout_delayed <= VGA_IN_HSOUT;
			vga_in_vsout_delayed <= VGA_IN_VSOUT;
			case (vga_state)
				VGA_IDLE: begin
					if (vga_in_vsout_posedge) begin
						vga_h_counter <= 0;
						vga_v_counter <= 0;
						vga_state <= VGA_ACTIVE;
					end
				end
				VGA_ACTIVE: begin
					if (vga_in_vsout_posedge) begin
						vga_h_counter <= 0;
						vga_v_counter <= 0;
					end else if (vga_in_hsout_posedge) begin
						vga_h_counter <= 0;
						vga_v_counter <= vga_v_counter + 1;
					end else begin
						vga_h_counter <= vga_h_counter + 1;
						vga_v_counter <= vga_v_counter;
					end
					if ( vga_valid & ((write_addr) < BUFFER_SIZE) )
						frame_buffer[write_addr] <= {VGA_IN_RED,VGA_IN_GREEN,VGA_IN_BLUE};
				end
				default:
					vga_state <= VGA_IDLE;
			endcase
		end
	end


	reg [23:0] video;
	wire [23:0] video_next;
	wire video_ready; // it's an output from DVI
	wire video_valid;
	
	reg [10:0] j, i;
	wire [19:0] read_addr;
	assign read_addr = i*800 + {{9{0}},j};
	
	always@(posedge cpu_clk_g) begin
		if (rst)
			begin
				j <= 0;
				i <= 0;
				video <= 24'hFFFFFF;
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
				video <= video_next;
			end
	end

	assign video_next = (read_addr < BUFFER_SIZE) ? frame_buffer[read_addr] : 24'hFFFFFF;

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
	.CLK(VGA_IN_DATA_CLK),
	.DATA({95'b0, 
				 read_addr,
				 write_addr,
				 video_ready, video_valid, j, i, video,
				 vga_valid, vga_j, vga_i, 
				 vga_h_counter, vga_v_counter, 
				 vga_in_hsout_posedge, vga_in_vsout_posedge, 
				 VGA_IN_HSOUT, VGA_IN_VSOUT, VGA_IN_BLUE, VGA_IN_GREEN, VGA_IN_RED}),
	.TRIG0(VGA_IN_VSOUT),
	.TRIG1(vga_v_counter)
	) /* synthesis syn_noprune=1 */;
	
endmodule
