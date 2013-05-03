//----------------------------------------------------------------------------
// vgain - module
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
// Filename:          vgain
// Version:           1.00.a
// Description:       Example FSL core (Verilog).
// Date:              Sat Apr  6 14:15:33 2013 (by Create and Import Peripheral Wizard)
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
module vgain 
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
		VGA_IN_RED,
    		VGA_IN_GREEN,
    		VGA_IN_BLUE,
    		VGA_IN_DATA_CLK,
                VGA_IN_HSOUT,
		VGA_IN_VSOUT,
		VGA_IN_SOGOUT,
		VGA_IN_ODDEVEN, 
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
input [7:0] VGA_IN_RED;
input [7:0] VGA_IN_GREEN;
input [7:0] VGA_IN_BLUE;
input VGA_IN_DATA_CLK;
input VGA_IN_HSOUT;
input VGA_IN_VSOUT;
input VGA_IN_SOGOUT;
input VGA_IN_ODDEVEN;
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
// --USER parameters added here 
// ADD USER PARAMETERS ABOVE THIS LINE


//----------------------------------------
// Implementation Section
//----------------------------------------
// In this section, we povide an example implementation of MODULE vgain
// that does the following:
//
// 1. Read all inputs
// 2. Add each input to the contents of register 'sum' which
//    acts as an accumulator
// 3. After all the inputs have been read, write out the
//    content of 'sum' into the output FSL bus NUMBER_OF_OUTPUT_WORDS times
//
// You will need to modify this example for
// MODULE vgain to implement your coprocessor

   // Total number of input data.
   localparam NUMBER_OF_INPUT_WORDS  = 1;

   // Total number of output data
   localparam NUMBER_OF_OUTPUT_WORDS = 1;

   // Define the states of state machine
localparam INIT	 = 5'b00001;
localparam RDADDR  = 5'b00010;
localparam RDDATA  = 5'b00100;
localparam WRDATA  = 5'b01000;
localparam WRDATA2 = 5'b10000;
reg[4:0] state;


   // Accumulator to hold sum of inputs read at any point in time
   reg [0:31] sum;

   // Counters to store the number inputs read & outputs written
   reg [0:NUMBER_OF_INPUT_WORDS - 1] nr_of_reads;
   reg [0:NUMBER_OF_OUTPUT_WORDS - 1] nr_of_writes;
wire rst;
Debouncer rst_parse(
      .clk(FSL_S_Clk),
      .in(GPIO_COMPSW_2),
      .out(rst));
   // CAUTION:
   // The sequence in which data are read in should be
   // consistent with the sequence they are written in the
   // driver's vgain.c file
reg [31:0] ADDR_MB;
reg [31:0] TEMP_ADDR_MB;
wire [31:0] DATA_MB;
assign DATA_MB = {{4{0}}, ADDR_MB[27:0]};
assign XIL_NPI_Addr = ADDR_MB;
assign XIL_NPI_RdModWr = 1'b0; // does not have to be asserted
assign XIL_NPI_RNW = 1'b0;  // always in write mode


assign XIL_NPI_Size = 4'h0; //double word transfer, check MPMC datasheet for other mode 
assign XIL_NPI_WrFIFO_Flush = 1'b0;
assign XIL_NPI_WrFIFO_BE = 8'hFF; // we just write into the lower word -- where the address is pointing to

assign XIL_NPI_WrFIFO_Data = {DATA_MB + 32'h00000004,DATA_MB};
	
assign XIL_NPI_WrFIFO_Push = (state == WRDATA2) & XIL_NPI_InitDone & ~XIL_NPI_WrFIFO_AlmostFull;

assign XIL_NPI_AddrReq = (state == WRDATA);
always@(posedge VGA_IN_DATA_CLK)
begin
	if(FSL_Rst | rst )
		begin
			TEMP_ADDR_MB <= 32'h90000000;
			//TEMP_DATA_MB <= 32'h00000000;
		end
	else 
		begin
			if (TEMP_ADDR_MB == ADDR_MB) begin
				if (TEMP_ADDR_MB < 32'h902ffff8)
					begin
						TEMP_ADDR_MB <= TEMP_ADDR_MB + 8; //8
						//TEMP_DATA_MB <= TEMP_DATA_MB + 8;
					end
				else begin
					TEMP_ADDR_MB <= 32'h90000000;
					//TEMP_DATA_MB <= 32'h00000000;
				end
			end
		end 
end
always@(posedge FSL_S_Clk)
begin
	if(FSL_Rst | rst )
		begin
			state <= RDADDR;
			ADDR_MB <= 0;
			//DATA_MB <= 0;
		end
	else
		case(state)
			RDADDR:
				begin
					if (ADDR_MB != TEMP_ADDR_MB)
						begin
							state <= WRDATA;
							ADDR_MB <= TEMP_ADDR_MB;
							//DATA_MB <= TEMP_DATA_MB;
						end
				end
			WRDATA:
				// to write to the DRAM
				// we need to assert the addrReq
				// and wait for the ack, after ack
				// we would assert push for one cycle
				begin 
					if(XIL_NPI_AddrAck)
						state <= WRDATA2; 
				end
							
			WRDATA2:
					// make sure the DRAM is init'ed properly and we
					// have space in wrFIFO
					if(XIL_NPI_InitDone & ~XIL_NPI_WrFIFO_AlmostFull) 
						state <= RDADDR; // get ready for taking in new pair
			default:
				state <= RDADDR;	
		endcase
end
	
endmodule
