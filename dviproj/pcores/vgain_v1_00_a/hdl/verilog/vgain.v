module vgain (
	// ADD USER PORTS BELOW THIS LINE 
	/*********************************/
	/**  NPI Interface Ports below ***/
	/**  CS150 Tutorial 1			 ***/
	/*********************************/
	system_dcm_locked,
	XIL_NPI_Addr, 
	XIL_NPI_AddrReq, 
	XIL_NPI_AddrAck, 
	XIL_NPI_RNW, 
	XIL_NPI_Size, 
	XIL_NPI_WrFIFO_Data, 
	XIL_NPI_WrFIFO_BE, 
	XIL_NPI_WrFIFO_Push, 
	XIL_NPI_RdFIFO_Data, 
	XIL_NPI_RdFIFO_Pop, 
	XIL_NPI_RdFIFO_RdWdAddr, 
	XIL_NPI_WrFIFO_Empty, 
	XIL_NPI_WrFIFO_AlmostFull, 
	XIL_NPI_WrFIFO_Flush, 
	// NPI_RdFIFO_DataAvailable, // I Only used for MPMC2 connections 
	XIL_NPI_RdFIFO_Empty, 
	XIL_NPI_RdFIFO_Flush, 
	XIL_NPI_RdFIFO_Latency, 
	XIL_NPI_RdModWr, 
	XIL_NPI_InitDone, 
	VGA_IN_RED,
	VGA_IN_GREEN,
	VGA_IN_BLUE,
	VGA_IN_DATA_CLK,
        VGA_IN_HSOUT,
	VGA_IN_VSOUT,
	VGA_IN_SOGOUT,
	VGA_IN_ODDEVEN, 
	GPIO_COMPSW_2,
	//cpu_clk, // 50 MHz
	// ADD USER PORTS ABOVE THIS LINE 

	// DO NOT EDIT BELOW THIS LINE ////////////////////
	// Bus protocol ports, do not add or delete. 
	FSL_Clk,
	FSL_Rst,
	FSL_S_Clk,
	FSL_S_Read,
	FSL_S_Data,
	FSL_S_Control,
	FSL_S_Exists,
	FSL_M_Clk,
	FSL_M_Write,
	FSL_M_Data,
	FSL_M_Control,
	FSL_M_Full
	// DO NOT EDIT ABOVE THIS LINE ////////////////////
);
	// ADD USER PORTS BELOW THIS LINE 
	/*********************************/
	/**  NPI Interface Ports below ***/
	/**  CS150 Tutorial 1			 ***/
	/*********************************/ 

	/** NPI interface parameters 			**/
	parameter C_PI_ADDR_WIDTH = 32; 
	parameter C_PI_DATA_WIDTH = 64; 
	parameter C_PI_BE_WIDTH = 8; 
	parameter C_PI_RDWDADDR_WIDTH = 4;
	/** End of NPI parameter definition **/
	input		system_dcm_locked;
	output 	[C_PI_ADDR_WIDTH-1:0] XIL_NPI_Addr; 
	output 	XIL_NPI_AddrReq; 
	input 	XIL_NPI_AddrAck; 
	output 	XIL_NPI_RNW; 
	output 	[3:0] XIL_NPI_Size; 
	output 	[C_PI_DATA_WIDTH-1:0] XIL_NPI_WrFIFO_Data; 
	output 	[C_PI_BE_WIDTH-1:0] XIL_NPI_WrFIFO_BE; 
	output 	XIL_NPI_WrFIFO_Push; 
	input 	[C_PI_DATA_WIDTH-1:0] XIL_NPI_RdFIFO_Data; 
	output 	XIL_NPI_RdFIFO_Pop; 
	input 	[C_PI_RDWDADDR_WIDTH-1:0] XIL_NPI_RdFIFO_RdWdAddr; 
	input 	XIL_NPI_WrFIFO_Empty;  
	input 	XIL_NPI_WrFIFO_AlmostFull; 
	output 	XIL_NPI_WrFIFO_Flush; 
	// input NPI_RdFIFO_DataAvailable; //Only used for MPMC2 designs 
	input 	XIL_NPI_RdFIFO_Empty; 
	output 	XIL_NPI_RdFIFO_Flush; 
	input 	[1:0] XIL_NPI_RdFIFO_Latency; 
	output 	XIL_NPI_RdModWr; 
	input 	XIL_NPI_InitDone; 
	/**End of NPI Port addition **/
	input [7:0] VGA_IN_RED;
	input [7:0] VGA_IN_GREEN;
	input [7:0] VGA_IN_BLUE;
	input VGA_IN_DATA_CLK;
	input VGA_IN_HSOUT;
	input VGA_IN_VSOUT;
	input VGA_IN_SOGOUT;
	input VGA_IN_ODDEVEN;
	input GPIO_COMPSW_2;
	
	//input cpu_clk; // 50 MHz
	// ADD USER PORTS ABOVE THIS LINE 

	input                                     FSL_Clk;
	input                                     FSL_Rst;
	input                                     FSL_S_Clk;
	output                                    FSL_S_Read;
	input      [0 : 31]                       FSL_S_Data;
	input                                     FSL_S_Control;
	input                                     FSL_S_Exists;
	input                                     FSL_M_Clk;
	output                                    FSL_M_Write;
	output     [0 : 31]                       FSL_M_Data;
	output                                    FSL_M_Control;
	input                                     FSL_M_Full;

	// ADD USER PARAMETERS BELOW THIS LINE 
	// --USER parameters added here 
	// ADD USER PARAMETERS ABOVE THIS LINE

	wire rst;
	Debouncer rst_parse(
	      .clk(cpu_clk),
	      .in(GPIO_COMPSW_2),
	      .out(rst));
      
	wire [10:0] vga_i, vga_j;
	wire vga_valid;
	VGAIndex #(
		.Width(1024),
		.FrontH(24),
		.PulseH(136),
		.BackH(28), 
		.Height(768),
		.FrontV(3),
		.PulseV(6),
		.BackV(24)
	) vga_index (
		.Reset(rst),
		.VGA_IN_DATA_CLK(VGA_IN_DATA_CLK),
		.VGA_IN_HSOUT(VGA_IN_HSOUT),
		.VGA_IN_VSOUT(VGA_IN_VSOUT),
		.i(vga_i),
		.j(vga_j),
		.valid(vga_valid)
	);

	wire [19:0] pixel_ind;  
	assign pixel_ind = vga_i*1024 + {{9{0}},vga_j};
	reg [83:0] data_84;
	reg [63:0] data_mask;
	wire [31:0] data_32;
	assign data_32 = {8'b0, VGA_IN_RED,VGA_IN_GREEN,VGA_IN_BLUE};
	
	always@(posedge VGA_IN_DATA_CLK) // grouping the vga signals as a packet of 84 bits with 2 pixels and their index
	begin
		if(rst)
			begin
				data_mask <= 64'h0;
			end
		else 
			begin
				if (vga_valid) begin
					if (pixel_ind[0]) begin 
						data_84[63:32] <= data_32;
						data_mask <= 64'hffffffffffffffff;
					end else begin 
						data_84[31:0] <= data_32;
						data_mask <= 64'h0;
						data_84[83:64] <= pixel_ind;
					end
				end 
				else begin
					data_mask <= 64'h0;
				end
			end 
	end	
	
	dram_write_frame write_vga_signal(
	.rst(rst | FSL_Rst),
	.dram_clk(FSL_S_Clk),
	.data_clk(VGA_IN_DATA_CLK),
	.data(data_84),
	.data_mask(data_mask),
	.star_addr(32'h90000000),
	.XIL_NPI_Addr(XIL_NPI_Addr), 
	.XIL_NPI_AddrReq(XIL_NPI_AddrReq), 
	.XIL_NPI_AddrAck(XIL_NPI_AddrAck), 
	.XIL_NPI_RNW(XIL_NPI_RNW), 
	.XIL_NPI_Size(XIL_NPI_Size), 
	.XIL_NPI_WrFIFO_Data(XIL_NPI_WrFIFO_Data), 
	.XIL_NPI_WrFIFO_BE(XIL_NPI_WrFIFO_BE), 
	.XIL_NPI_WrFIFO_Push(XIL_NPI_WrFIFO_Push), 
	.XIL_NPI_RdFIFO_Data(XIL_NPI_RdFIFO_Data), 
	.XIL_NPI_RdFIFO_Pop(XIL_NPI_RdFIFO_Pop), 
	.XIL_NPI_RdFIFO_RdWdAddr(XIL_NPI_RdFIFO_RdWdAddr), 
	.XIL_NPI_WrFIFO_Empty(XIL_NPI_WrFIFO_Empty), 
	.XIL_NPI_WrFIFO_AlmostFull(XIL_NPI_WrFIFO_AlmostFull), 
	.XIL_NPI_WrFIFO_Flush(XIL_NPI_WrFIFO_Flush), 
	.XIL_NPI_RdFIFO_Empty(XIL_NPI_RdFIFO_Empty), 
	.XIL_NPI_RdFIFO_Flush(XIL_NPI_RdFIFO_Flush), 
	.XIL_NPI_RdFIFO_Latency(XIL_NPI_RdFIFO_Latency), 
	.XIL_NPI_RdModWr(XIL_NPI_RdModWr), 
	.XIL_NPI_InitDone(XIL_NPI_InitDone));
	
	
    	///*wire [35:0] chipscope_control;
	//chipscope_icon icon(
	//.CONTROL0(chipscope_control)
	//) /* synthesis syn_noprune=1 */;
	//chipscope_ila ila(
	//.CONTROL(chipscope_control),
	//.CLK(FSL_S_Clk),
	//.DATA({XIL_NPI_WrFIFO_AlmostFull, XIL_NPI_AddrAck, XIL_NPI_AddrReq, XIL_NPI_WrFIFO_Push, pixel_ind, rd_counter, XIL_NPI_WrFIFO_Empty, data_84, fifo_wr_en, fifo_rd_en, data_out_84, data_count, state, XIL_NPI_Addr}),
	//.TRIG0(rst)
	//) /* synthesis syn_noprune=1 */;
	
endmodule

module fifo_generator_v9_4(
  rst,
  wr_clk,
  rd_clk,
  din,
  wr_en,
  rd_en,
  dout,
  full,
  empty,
  rd_data_count
);

input rst;
input wr_clk;
input rd_clk;
input [83 : 0] din;
input wr_en;
input rd_en;
output [83 : 0] dout;
output full;
output empty;
output [12 : 0] rd_data_count;
endmodule

module chipscope_ila(
    CONTROL,
    CLK,
    DATA,
    TRIG0);


inout [35 : 0] CONTROL;
input CLK;
input [255 : 0] DATA;
input [0 : 0] TRIG0;

endmodule

module chipscope_icon(
    CONTROL0);


inout [35 : 0] CONTROL0;

endmodule
