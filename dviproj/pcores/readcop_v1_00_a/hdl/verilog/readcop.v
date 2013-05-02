//----------------------------------------------------------------------------
// readcop - module
//----------------------------------------------------------------------------
// IMPORTANT:
// DO NOT MODIFY THIS FILE EXCEPT IN THE DESIGNATED SECTIONS.
//
// SEARCH FOR --USER TO DETERMINE WHERE CHANGES ARE ALLOWED.
//
// TYPICALLY, THE ONLY ACCEPTABLE CHANGES INVOLVE ADDING NEW
// PORTS AND GENERICS THAT GET PASSED THROUGH TO THE INSTANTIATION
// OF THE USER_LOGIC ENTITY.
//----------------------------------------------------------------------------
//
// ***************************************************************************
// ** Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.            **
// **                                                                       **
// ** Xilinx, Inc.                                                          **
// ** XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"         **
// ** AS A COURTESY TO YOU, SOLELY FOR USE IN DEVELOPING PROGRAMS AND       **
// ** SOLUTIONS FOR XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE,        **
// ** OR INFORMATION AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE,        **
// ** APPLICATION OR STANDARD, XILINX IS MAKING NO REPRESENTATION           **
// ** THAT THIS IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,     **
// ** AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE      **
// ** FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY              **
// ** WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE               **
// ** IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR        **
// ** REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF       **
// ** INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS       **
// ** FOR A PARTICULAR PURPOSE.                                             **
// **                                                                       **
// ***************************************************************************
//
//----------------------------------------------------------------------------
// Filename:          readcop
// Version:           1.00.a
// Description:       Example FSL core (Verilog).
// Date:              Mon Mar  4 12:51:06 2013 (by Create and Import Peripheral Wizard)
// Verilog Standard:  Verilog-2001
//----------------------------------------------------------------------------
// Naming Conventions:
//   active low signals:                    "*_n"
//   clock signals:                         "clk", "clk_div#", "clk_#x"
//   reset signals:                         "rst", "rst_n"
//   generics:                              "C_*"
//   user defined types:                    "*_TYPE"
//   state machine next state:              "*_ns"
//   state machine current state:           "*_cs"
//   combinatorial signals:                 "*_com"
//   pipelined or register delay signals:   "*_d#"
//   counter signals:                       "*cnt*"
//   clock enable signals:                  "*_ce"
//   internal version of output port:       "*_i"
//   device pins:                           "*_pin"
//   ports:                                 "- Names begin with Uppercase"
//   processes:                             "*_PROCESS"
//   component instantiations:              "<ENTITY_>I_<#|FUNC>"
//----------------------------------------------------------------------------

////////////////////////////////////////////////////////////////////////////////
//
//
// Definition of Ports
// FSL_Clk             : Synchronous clock
// FSL_Rst           : System reset, should always come from FSL bus
// FSL_S_Clk       : Slave asynchronous clock
// FSL_S_Read      : Read signal, requiring next available input to be read
// FSL_S_Data      : Input data
// FSL_S_Control   : Control Bit, indicating the input data are control word
// FSL_S_Exists    : Data Exist Bit, indicating data exist in the input FSL bus
// FSL_M_Clk       : Master asynchronous clock
// FSL_M_Write     : Write signal, enabling writing to output FSL bus
// FSL_M_Data      : Output data
// FSL_M_Control   : Control Bit, indicating the output data are contol word
// FSL_M_Full      : Full Bit, indicating output FSL bus is full
//
////////////////////////////////////////////////////////////////////////////////

//----------------------------------------
// Module Section
//----------------------------------------
module readcop 
	(
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
		/**End of NPI Port addition **/
                DVI_D,
                DVI_DE,
                DVI_H,
                DVI_RESET_B,
                DVI_V,
                DVI_XCLK_N,
                DVI_XCLK_P,
  
                IIC_SCL_VIDEO_I,
		IIC_SCL_VIDEO_O,
		IIC_SCL_VIDEO_T,
                IIC_SDA_VIDEO_I,
                IIC_SDA_VIDEO_O,
                IIC_SDA_VIDEO_T,
		GPIO_COMPSW_1,
		GPIO_COMPSW_2,
		
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
output [11:0] DVI_D;
output        DVI_DE;
output        DVI_H;
output        DVI_RESET_B;
output        DVI_V;
output        DVI_XCLK_N;
output        DVI_XCLK_P;
  
input IIC_SCL_VIDEO_I;
output IIC_SCL_VIDEO_O;
output IIC_SCL_VIDEO_T;
input IIC_SDA_VIDEO_I;
output IIC_SDA_VIDEO_O;
output IIC_SDA_VIDEO_T;
input GPIO_COMPSW_1;
input GPIO_COMPSW_2;
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
//----------------------------------------
// Implementation Section
//----------------------------------------
// we will build a simple state machine
// it will read one word from the FSL,
// use it as address, and then fetch
// the data from DRAM, finally write to
// FSL
localparam INIT 	= 6'b000001; 
localparam RDADDR	= 6'b000010;
localparam FTDATA	= 6'b000100;
localparam WAITEMP	= 6'b001000;
localparam WAITLAT	= 6'b010000;
localparam INIT2        = 6'b100000;
reg [5:0] state;

wire[31:0] ADDR_MB;
reg[31:0] DATA_MB;
// ADD USER PARAMETERS ABOVE THIS LINE
wire video_ready;
wire video_valid;
reg [23:0] video;
reg [2:0] counter;
reg [12:0] fifo_size;
wire [12:0] data_count;
assign XIL_NPI_Addr = ADDR_MB;
assign XIL_NPI_RdModWr = 1'b0; // does not have to be asserted
assign XIL_NPI_RNW = XIL_NPI_AddrReq;  // we will assert this to read when AddrReq is high


assign XIL_NPI_Size = 4'h4; //32-Word Cacheline read
assign XIL_NPI_WrFIFO_Flush = 1'b0;
assign XIL_NPI_WrFIFO_BE = 8'h00; // not writing

assign XIL_NPI_AddrReq = (state == FTDATA);

assign XIL_NPI_RdFIFO_Pop = (~XIL_NPI_RdFIFO_Empty) & XIL_NPI_InitDone; // the FIFO_Empty flag should be 0 after pop is one

reg [1:0] latency_counter; // this counter is used to keep track of
			   // when to latch in the returned data
			   // from DRAM

// In this module we will make both FSL_S_Clk and
// and FSL_M_Clk equivalent to the MPMC clock
wire pixel_af_wr_en;
wire fifo_empty, fifo_full;
reg [63:0] rdf_dout;
reg pixel_rdf_valid;
reg [2:0] dram_data_counter;
wire rst;
Debouncer rst_parse(
      .clk(FSL_S_Clk),
      .in(GPIO_COMPSW_1),
      .out(rst));
reg [19:0] pixel_ind;
assign ADDR_MB = 32'h90000000 + pixel_ind*4;

reg [19:0] dvi_rst_counter; // don't reset dvi until this reaches zero

reg dvi_rst;
reg dvi_rst_pending;

always @(posedge FSL_S_Clk) begin  
	if (FSL_Rst | rst)
		begin
			state <= INIT;
			latency_counter <=0;
			pixel_rdf_valid <= 0;
			pixel_ind <= 0;
			dvi_rst <= 0;
			dvi_rst_pending <= 1;
		end
	else
		case (state)
		INIT: 
			begin
			if (data_count < 13'd8176) state <= RDADDR;
			pixel_rdf_valid <= 0;
			end
		RDADDR: 
			begin
				if (data_count < 13'd8176) begin  //& fifo_size < 13'd8189
					latency_counter <= XIL_NPI_RdFIFO_Latency;
					state <= FTDATA;
					//fifo_size <= fifo_size + 4;
				end else begin
					dvi_rst <= dvi_rst_pending; // if dvi reset is pending, then reset it now
					dvi_rst_pending <= 0;
				end
				pixel_rdf_valid <= 0;
			end
		FTDATA: 
			begin
				if(XIL_NPI_AddrAck) begin
					state <= WAITEMP;
				end
				pixel_rdf_valid <= 0;
			end
		WAITEMP:// we wait for the FIFO to be non-empty 
			begin
				if((~XIL_NPI_RdFIFO_Empty) & XIL_NPI_InitDone) begin
					if(latency_counter == 0)
						begin
							rdf_dout[31:0] <= XIL_NPI_RdFIFO_Data[63:32];
							rdf_dout[63:32] <= XIL_NPI_RdFIFO_Data[31:0];
							pixel_rdf_valid <= 1;
							if (pixel_ind == 20'd786430) //1024*768-2
								pixel_ind <= 0;
							else
								pixel_ind <= pixel_ind + 2;
							if (pixel_ind[4:0] == 5'b11110)
								state <= RDADDR;
						end
					else
						begin
							pixel_rdf_valid <= 0;
							latency_counter <= latency_counter-1;
							state <= WAITLAT; 
						end
					end	
				else
					pixel_rdf_valid <= 0;			
			end
		WAITLAT:
			begin
				if(latency_counter == 0)
					begin
						rdf_dout[31:0] <= XIL_NPI_RdFIFO_Data[63:32];
						rdf_dout[63:32] <= XIL_NPI_RdFIFO_Data[31:0];
						pixel_rdf_valid <= 1;
						if (pixel_ind == 20'd786430) //1024*768-2
							pixel_ind <= 0;
						else
							pixel_ind <= pixel_ind + 2;
						if (pixel_ind[4:0] == 5'b11110)
							state <= RDADDR;
					end
				else
					begin
						pixel_rdf_valid <= 0;
						latency_counter <= latency_counter-1;
						state <= WAITLAT; 
					end	
				//if (counter != 0) counter <= counter - 1;	
			end
		default:
			state <= INIT;
		endcase
end

/*reg [19:0] video_counter;
always @(posedge FSL_Clk) begin
	if (rst | (fifo_empty & video_ready & video_counter == 0)) video_counter <= 20'd786432;
	else begin 
		if (video_ready & video_counter != 0) video_counter <= video_counter - 1;
	end
end*/
	  wire toggle_display;
  Debouncer toggle_parse(
      .clk(FSL_S_Clk),
      .in(GPIO_COMPSW_2),
      .out(toggle_display));
	localparam RGB   = 2'd0,
						 YCRCB = 2'd1,
						 MASK  = 2'd2;
	reg [1:0] display_state;
	reg [1:0] next_display_state;
	wire [23:0] rgb_video;
	wire [23:0] ycrcb_video;
	wire [23:0] mask_video;
	wire [31:0] video_32;
	assign rgb_video = video_32[23:0];
	assign video_valid = ~fifo_empty & video_ready;
fifo_generator_v9_1 fifo(
    	.rst(rst || ~XIL_NPI_InitDone),
    	.wr_clk(FSL_S_Clk),
    	.rd_clk(FSL_Clk),
    	.din(rdf_dout),
    	.wr_en(pixel_rdf_valid),
    	.rd_en(video_valid & !dvi_rst_pending),
    	.dout(video_32),
    	.full(fifo_full),
    	.wr_data_count(data_count),
    	.empty(fifo_empty));
    	
    	RGB2YCrCb color_conversion(rgb_video, ycrcb_video);
	wire mask;
	SkinMask skin_mask(ycrcb_video, mask);
	assign mask_video = {24{mask}};
	
	always@(posedge FSL_S_Clk) begin
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
 
DVI #(
    .ClockFreq(                 75000000),
    .Width(                     1328),   
    .FrontH(                    24),     
    .PulseH(                    136),    
    .BackH(                     144),    
    .Height(                    806),    
    .FrontV(                    3),      
    .PulseV(                    6),      
    .BackV(                     29)       
)
dvi(         
    .Clock(                     FSL_Clk),
    .Reset(                     dvi_rst),
    .DVI_D(                     DVI_D),
    .DVI_DE(                    DVI_DE),
    .DVI_H(                     DVI_H),
    .DVI_V(                     DVI_V),
    .DVI_RESET_B(               DVI_RESET_B),
    .DVI_XCLK_N(                DVI_XCLK_N),
    .DVI_XCLK_P(                DVI_XCLK_P),
    .I2C_SCL_DVI_I(               IIC_SCL_VIDEO_I),
    .I2C_SCL_DVI_O(               IIC_SCL_VIDEO_O),
    .I2C_SCL_DVI_T(               IIC_SCL_VIDEO_T),
    .I2C_SDA_DVI_I(               IIC_SDA_VIDEO_I),
    .I2C_SDA_DVI_O(               IIC_SDA_VIDEO_O),
    .I2C_SDA_DVI_T(               IIC_SDA_VIDEO_T),
    /* Ready/Valid interface for 24-bit pixel values */
    .Video(                     video),
    .VideoReady(                video_ready),
    .VideoValid(                video_valid)
  );

// 24 + 1 + 3 + 128 = 156

endmodule

 module fifo_generator_v9_1(
  rst,
  wr_clk,
  rd_clk,
  din,
  wr_en,
  rd_en,
  dout,
  full,
  empty,
  wr_data_count
);

input rst;
input wr_clk;
input rd_clk;
input [63 : 0] din;
input wr_en;
input rd_en;
output [31 : 0] dout;
output full;
output empty;
output [12 : 0] wr_data_count;
endmodule

