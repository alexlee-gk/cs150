module dram_write_frame(
rst,
dram_clk,
data_clk,
data,
data_mask,
star_addr,
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
XIL_NPI_InitDone);

input rst;
input dram_clk;
input data_clk;
input [83:0] data;
input [63:0] data_mask;
input [31:0] star_addr;
	/** NPI interface parameters 			**/
	parameter C_PI_ADDR_WIDTH = 32; 
	parameter C_PI_DATA_WIDTH = 64; 
	parameter C_PI_BE_WIDTH = 8; 
	parameter C_PI_RDWDADDR_WIDTH = 4;
	/** End of NPI parameter definition **/
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

	wire fifo_wr_en;
	assign fifo_wr_en = (data_mask == 64'hffffffffffffffff);
	//parameter start_addr = 32'h90000000;
	localparam INIT	 = 5'b00001;
	localparam RDADDR  = 5'b00010;
	localparam RDDATA  = 5'b00100;
	localparam WRDATA  = 5'b01000;
	localparam WRDATA2 = 5'b10000;
	localparam FLUSH = 5'b00011;
	localparam WAIT = 5'b00101;
	reg[4:0] state;
	wire [12:0]data_count;
	reg [4:0] rd_counter;
	reg fifo_rd_en;
	//assign fifo_rd_en = (rd_counter > 0) & ;
	reg [31:0] ADDR_MB;
	wire [83:0] data_out_84;
	//reg [63:0] DATA_MB;
	//assign DATA_MB = {{4{0}}, ADDR_MB[27:0]};
	assign XIL_NPI_Addr = ADDR_MB;
	assign XIL_NPI_RdModWr = 1'b0; // does not have to be asserted
	assign XIL_NPI_RNW = 1'b0;  // always in write mode


	assign XIL_NPI_Size = 4'h4; //double word transfer, check MPMC datasheet for other mode 
	assign XIL_NPI_WrFIFO_Flush = 1'b0;
	assign XIL_NPI_WrFIFO_BE = 8'hFF; // we write into 2 words, means 64 bits

	assign XIL_NPI_WrFIFO_Data = data_out_84[63:0];
	
	assign XIL_NPI_WrFIFO_Push = (rd_counter < 5'd16) & (state == RDDATA) & XIL_NPI_InitDone & ~XIL_NPI_WrFIFO_AlmostFull; 

	assign XIL_NPI_AddrReq = (rd_counter == 0) | (state == FLUSH);
always@(posedge dram_clk)
	begin
		if(rst)
			begin
				state <= FLUSH; //RDADDR;
				fifo_rd_en <= 0;
				rd_counter <= 5'd16;
				ADDR_MB <= 0;
			end
		else
			case(state)
				FLUSH:
					begin
						if (XIL_NPI_AddrAck) begin
								state <= WAIT; 
								rd_counter <= 5'd16;
							end
					end
				WAIT:
					begin
						if (XIL_NPI_RdFIFO_Empty) state <= RDADDR;
					end
				RDADDR:
					begin
						if ((data_count > 13'd15) & XIL_NPI_InitDone & ~XIL_NPI_WrFIFO_AlmostFull)
							begin
								state <= RDDATA;
								fifo_rd_en <= 1;
								//rd_counter <= 5'd16;
								//ADDR_MB <= TEMP_ADDR_MB;
								//DATA_MB <= TEMP_DATA_MB;
							end
					end
				RDDATA:
					begin
						if (rd_counter)rd_counter <= rd_counter - 1;
						else begin
							if (XIL_NPI_AddrAck) begin
								state <= RDADDR; 
								rd_counter <= 5'd16;
							end
							else state <= WRDATA;
						end
						if (rd_counter == 5'd1) fifo_rd_en <= 0;
						if (rd_counter == 5'd15) ADDR_MB <= star_addr + 4 * {12'b0, data_out_84 [83:64]};
							/*else begin 
								fifo_rd_en <= 0;
								rd_counter <= 5'd16;
								state <= RDADDR;
							end */
						
					end
				WRDATA:
					// to write to the DRAM
					// we need to assert the addrReq
					// and wait for the ack, after ack
					// we would assert push for one cycle
					begin 
						if(XIL_NPI_AddrAck) begin
							state <= RDADDR; 
							rd_counter <= 5'd16;
						end
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
	
fifo_generator_v9_4 fifo(
    	.rst(rst || ~XIL_NPI_InitDone),
    	.wr_clk(data_clk),
    	.rd_clk(dram_clk),
    	.din(data),
    	.wr_en(fifo_wr_en),
    	.rd_en(fifo_rd_en),
    	.dout(data_out_84),
    	.full(fifo_full),
    	.rd_data_count(data_count),
    	.empty(fifo_empty));	
endmodule


 
