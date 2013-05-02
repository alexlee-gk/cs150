module ml505top (
  input  [4:0]  GPIO_COMPSW,
  output [7:0]  GPIO_LED,
  input        USER_CLK,
  
  input VGA_IN_DATA_CLK,
	input VGA_IN_HSOUT,
	input VGA_IN_VSOUT,
	input [7:0] VGA_IN_BLUE,
	input [7:0] VGA_IN_GREEN,
	input [7:0] VGA_IN_RED
);
	
  wire rst;
	Debouncer rst_parse(
      .clk(USER_CLK),
      .in(GPIO_COMPSW[4] | GPIO_COMPSW[3] | GPIO_COMPSW[2] | GPIO_COMPSW[1] | GPIO_COMPSW[0]),
      .out(rst));
	
	wire [10:0] vga_i, vga_j;
	reg [10:0] vga_i_delayed;
	wire vga_valid;
	wire pre_pre_row;
	wire pre_frame;
	wire [10:0] h_counter;
	wire [10:0] v_counter;
	VGAIndex #(
		.Width(1024),
		.FrontH(24),
		.PulseH(136),
		.BackH(28), //160-126
		.Height(768),
		.FrontV(3),
		.PulseV(6),
		.BackV(24) //29-5
	) vga_index (
		.Reset(rst),
		.VGA_IN_DATA_CLK(VGA_IN_DATA_CLK),
		.VGA_IN_HSOUT(VGA_IN_HSOUT),
		.VGA_IN_VSOUT(VGA_IN_VSOUT),
		.i(vga_i),
		.j(vga_j),
		.valid(vga_valid),
		.pre_pre_row(pre_pre_row),
		.pre_frame(pre_frame),
		.h_counter(h_counter),
		.v_counter(v_counter));
	
	//wire [23:0] rgb_pixel;
	//wire [23:0] ycrcb_pixel;
	wire mask_pixel;
	//assign rgb_pixel = {VGA_IN_RED,VGA_IN_GREEN,VGA_IN_BLUE};
	//RGB2YCrCb color_conversion(rgb_pixel, ycrcb_pixel);
	//SkinMask skin_mask(ycrcb_pixel, mask_pixel);
	assign mask_pixel = (VGA_IN_GREEN > 8'd127);

	localparam IDLE        = 3'd0,
						 PRE_FRAME   = 3'd1,
						 PRE_PRE_ROW = 3'd2,
						 PRE_ROW     = 3'd3,
						 ROW         = 3'd4;

	//reg start_row;
	//wire finish_row;
	//blobAnalysisTwoPartialLines(start_row, finish_row, rl_code0, rl_code_label0,
	//					rl_code1, rl_code_label1,
	//					i, (ind+1)>>1, 1024);
	
	reg [10:0] ind;
	reg [10:0] ind0, ind1;
	
	wire [10:0] valid_ind;
	assign valid_ind = ((ind+1)>>1);
	
	wire [8:0] rlcl_ind;
	reg prev_mask_pixel;
	
	assign rlcl_ind = ind[9:1];

	//reg [10:0] rl_code0 [1039:0];
	//reg [10:0] rl_code1 [1039:0];
	reg [10:0] rl_code0 [15:0];
	reg [10:0] rl_code1 [15:0];
	reg [8:0]  rl_code_label0 [11:0];
	reg [8:0]  rl_code_label1 [11:0];
	
	wire [8:0] next_rl_code_label0, next_rl_code_label1;
	assign next_rl_code_label0 = rl_code_label0[rlcl_ind-1]+1;
	assign next_rl_code_label1 = rl_code_label1[rlcl_ind-1]+1;
	
	
	wire [10:0] s0, e0, s0_next;
	wire [10:0] s1, e1, s1_next;
	assign s0      = rl_code0[ind0*2];
	assign e0      = rl_code0[ind0*2+1];
	assign s0_next = rl_code0[ind0*2+2];
	assign s1      = rl_code1[ind1*2];
	assign e1      = rl_code1[ind1*2+1];
	assign s1_next = rl_code1[ind1*2+2];
	
	wire rl_code0_end, rl_code1_end;
	assign rl_code0_end = (s0 == 2047);
	assign rl_code1_end = (s1 == 2047);
	
	wire odd_row;
	assign odd_row = (vga_i - 2*(vga_i>>1));

	reg [2:0] state;

	reg [10:0] row_ind;
	wire analyze_two_partial_lines;
	wire proceed_ind;
	assign proceed_ind = ((((odd_row)?ind1:ind0) + 2) <= valid_ind);
	assign analyze_two_partial_lines = !(vga_i == 0) & (state == ROW) & proceed_ind & !(rl_code0_end & rl_code1_end);
	//assign analyze_two_partial_lines = (( ((odd_row)?ind1:ind0) + 2) <= valid_ind) & 
	//	!((s0_next == 2047) & (s1_next == 2047)) & !(row_ind==0) & (state==ROW);

	reg [10:0] rl_code_ind;
	
	always@(posedge VGA_IN_DATA_CLK) begin
		vga_i_delayed <= vga_i;
	end
		
	always@(posedge VGA_IN_DATA_CLK) begin
		if (rst) begin
			state <= IDLE;
		end else begin
			case (state)
				IDLE: begin // 0
					if (pre_pre_row & (vga_i == 768)) begin
						rl_code_ind <= 0;
						state <= PRE_FRAME;
					end
				end
				PRE_FRAME: begin // 1
					rl_code0[rl_code_ind] <= 2000;
					rl_code1[rl_code_ind] <= 2000;
					rl_code_ind <= rl_code_ind + 1;
					if (pre_pre_row & pre_frame)
						state <= PRE_ROW;
				end
				PRE_PRE_ROW: begin // 2
					if (pre_pre_row)
						state <= PRE_ROW;
				end
				PRE_ROW: begin // 3
					ind <= 0;
					ind0 <= 0;
					ind1 <= 0;
					prev_mask_pixel <= 0;
					state <= ROW;
				end
				ROW: begin // 4
					row_ind <= vga_i;
					if (vga_j<1024) begin
						if (!prev_mask_pixel & mask_pixel) begin
							if (odd_row)  rl_code1[ind] <= vga_j;
							else          rl_code0[ind] <= vga_j;
							if (odd_row)  begin
								rl_code_label1[rlcl_ind] <= (rlcl_ind > 0) ? next_rl_code_label1 : 0;
							end else begin
								rl_code_label0[rlcl_ind] <= (rlcl_ind > 0) ? next_rl_code_label0 : 0;
							end
						end
						if (prev_mask_pixel & !mask_pixel) begin
							if (odd_row)  rl_code1[ind] <= vga_j-1;
							else          rl_code0[ind] <= vga_j-1;
						end
						if (mask_pixel & (vga_j==1023)) begin
							if (!prev_mask_pixel & mask_pixel) begin
								if (odd_row)  rl_code1[ind+1] <= vga_j;
								else          rl_code0[ind+1] <= vga_j;
							end else begin
								if (odd_row)  rl_code1[ind] <= vga_j;
								else          rl_code0[ind] <= vga_j;
							end
						end
						
						if ((!prev_mask_pixel & mask_pixel) & (mask_pixel & (vga_j==1023)))
							ind <= ind+2;
						else if ((!prev_mask_pixel & mask_pixel) | (prev_mask_pixel & !mask_pixel) | (mask_pixel & (vga_j==1023)))
							ind <= ind+1;
						else
							ind <= ind;
					
						prev_mask_pixel <= mask_pixel; 
					end else if (vga_j==1024 || vga_j==1025) begin
						if (odd_row)  rl_code1[ind] <= 2047;
						else          rl_code0[ind] <= 2047;
						ind <= ind+1;
					end else begin
						ind <= ind+2;
					end

					///*
					if (analyze_two_partial_lines) begin
						if (rl_code1_end) begin
							ind0 <= ind0+1;
						end else if (rl_code0_end) begin
							ind1 <= ind1+1;
						end else begin
							if (s0_next <= s1_next)
								ind0 <= ind0+1;
							else
								ind1 <= ind1+1;
						end
					end
					if ((proceed_ind & rl_code0_end & rl_code1_end) | pre_pre_row) begin
						if (vga_i == 768) begin
							rl_code_ind <= 0;
							state <= PRE_FRAME;
						end else begin
							if (pre_pre_row) state <= PRE_ROW;
							else state <= PRE_PRE_ROW;
						end
					end
					//*/
					/*
					if (analyze_two_partial_lines) begin
						if ((s1==2047) || (s1_next==2047)) begin
							ind0 <= ind0+1;
						end else if ((s0==2047) || (s0_next==2047)) begin
							ind1 <= ind1+1;
						end else begin
							if (s0_next <= s1_next)
								ind0 <= ind0+1;
							else
								ind1 <= ind1+1;
						end
					end
					if ((((s0==2047) || (s0_next==2047)) & ((s1==2047) || (s1_next==2047))) | pre_pre_row) begin
						if (vga_i == 768) begin
							rl_code_ind <= 0;
							state <= PRE_FRAME;
						end else begin
							if (pre_pre_row) state <= PRE_ROW;
							else state <= PRE_PRE_ROW;
						end
					end
					*/
				end
				default:
					state <= IDLE;
			endcase
		end
	end

  wire rl_code_label0_we;
  wire [74:0] blob;
  assign rl_code_label0_we = ((state == ROW) & (vga_j<1024) & (!prev_mask_pixel & mask_pixel) & !odd_row);
  //foo foo_instance(VGA_IN_DATA_CLK, s0, e0, s0_next, ind0, rl_code_label0_we, rlcl_ind, 9'b0, blob);

  assign GPIO_LED = {4'b1111, rst, rst, rst, rst};

	// ChipScope components:
	wire [35:0] chipscope_control;
	chipscope_icon icon(
	.CONTROL0(chipscope_control)
	) /* synthesis syn_noprune=1 */;
	chipscope_ila ila(
	.CONTROL(chipscope_control),
	.CLK(VGA_IN_DATA_CLK),
	.DATA({658'b0,
				 pre_frame,
				 proceed_ind,
	
				 state,
				 blob,
				 rl_code_label0_we,       
	       1'b0,
	       
				 analyze_two_partial_lines,
				 s0, e0, s0_next, 
				 s1, e1, s1_next, 
				 
				 ind0,
				 ind1,
				 valid_ind,
				 vga_valid,
				 pre_pre_row,
				 
				 // 80 + 67 + 35 + 146 + 36
				 // 3+75+1+1 = 80
				 // 1+11*6 = 67
				 // 11*3+1+1 = 35
				 // 2*11*5+2*9*2 = 146
				 // 11+2+11+11+1 = 36
				 
				 rl_code0[0], rl_code0[1], rl_code0[2], rl_code0[3], rl_code0[4], 
				 rl_code1[0], rl_code1[1], rl_code1[2], rl_code1[3], rl_code1[4], 
				 
				 //rl_code0_at_0, rl_code0_at_1, rl_code0_at_2, rl_code0_at_3, rl_code0_at_4, 
				 //rl_code1_at_0, rl_code1_at_1, rl_code1_at_2, rl_code1_at_3, rl_code1_at_4, 
				 
				 rl_code_label0[0], rl_code_label0[1], 
				 rl_code_label1[0], rl_code_label1[1], 
				 
				 ind, 2'b0, vga_i, vga_j, mask_pixel}),
	.TRIG0(v_counter),
	.TRIG1(h_counter)
	) /* synthesis syn_noprune=1 */;
	
endmodule

