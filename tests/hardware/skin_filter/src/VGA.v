module	VGA_INDEX(
		//------------------------------------------------------------------
		//	System I/O
		//------------------------------------------------------------------
		Reset,
		//------------------------------------------------------------------
		
		//------------------------------------------------------------------
		//	AD9880 Interface
		//------------------------------------------------------------------
		VGA_IN_DATA_CLK,
		VGA_IN_HSOUT,
		VGA_IN_VSOUT,
		//------------------------------------------------------------------
		
		//------------------------------------------------------------------
		//	Pixel
		//------------------------------------------------------------------
		i,
		j,
		valid
		//------------------------------------------------------------------
	);
	//--------------------------------------------------------------------------
	//	Parameters
	//--------------------------------------------------------------------------
	parameter Width = 800,
		FrontH = 40,
		PulseH = 128,
		BackH = 93, //88+5
		Height = 600,
		FrontV = 1,
		PulseV = 4,
		BackV = 24; //23+1
	//--------------------------------------------------------------------------
	
	//--------------------------------------------------------------------------
	//	System I/O
	//--------------------------------------------------------------------------	
	input Reset;
	//--------------------------------------------------------------------------
	
	//--------------------------------------------------------------------------
	//	AD9880 Interface
	//--------------------------------------------------------------------------
	input VGA_IN_DATA_CLK;
	input VGA_IN_HSOUT;
	input VGA_IN_VSOUT;
	//--------------------------------------------------------------------------
	
	//--------------------------------------------------------------------------
	//	Pixel Source
	//--------------------------------------------------------------------------
	output [10:0] i;
	output [10:0] j;
	output valid;
	//--------------------------------------------------------------------------
	
	localparam IDLE = 1'd0,
						 ACTIVE = 1'd1;

  reg [10:0] h_counter, v_counter;
	assign j = h_counter - (PulseH+BackH);
	assign i = v_counter - (PulseV+BackV);
	
	assign valid = (h_counter >= (PulseH+BackH)) & 
								 (h_counter <  (PulseH+BackH+Width)) & 
								 (v_counter >= (PulseV+BackV)) & 
								 (v_counter <  (PulseV+BackV+Height)); 
	
	reg hsout_delayed;
	reg vsout_delayed;
	wire hsout_posedge;
	wire vsout_posedge;
	assign hsout_posedge = VGA_IN_HSOUT & !hsout_delayed;
	assign vsout_posedge = VGA_IN_VSOUT & !vsout_delayed;
	
	reg state;
	always@(posedge VGA_IN_DATA_CLK) begin
		
		if (Reset) begin
			state <= IDLE;
			hsout_delayed <= 1; // to prevent posedge at Reset if HSOUT happened to be high
			vsout_delayed <= 1;
			h_counter <= 0; // so valid 0 at Reset
			v_counter <= 0;
		end else begin
			hsout_delayed <= VGA_IN_HSOUT;
			vsout_delayed <= VGA_IN_VSOUT;
			case (state)
				IDLE: begin
					if (vsout_posedge) begin
						h_counter <= 0;
						v_counter <= 0;
						state <= ACTIVE;
					end
				end
				ACTIVE: begin
					if (vsout_posedge) begin
						h_counter <= 0;
						v_counter <= 0;
					end else if (hsout_posedge) begin
						h_counter <= 0;
						v_counter <= v_counter + 1;
					end else begin
						h_counter <= h_counter + 1;
						v_counter <= v_counter;
					end
				end
				default:
					state <= IDLE;
			endcase
		end
	end
	
endmodule

