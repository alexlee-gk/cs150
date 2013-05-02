module dram_write_frame(
dram_clk,
data_clk,
data,
data_mask,
pixel_ind);

input dram_clk;
input data_clk;
input [63:0] data;
input [63:0] data_mask;
input [19:0] pixel_ind;

wire fifo_wr_en;
assign fifo_wr_en = (data_mask == 64'hffffffffffffffff);
parameter start_addr = 32'h90000000;
wire wr_en;
assign wr_en = | data_mask;
localparam INIT	 = 5'b00001;
localparam RDADDR  = 5'b00010;
localparam RDDATA  = 5'b00100;
localparam WRDATA  = 5'b01000;
localparam WRDATA2 = 5'b10000;
reg[4:0] state;
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

fifo_generator_v9_1 fifo(
    	.rst(rst || ~XIL_NPI_InitDone),
    	.wr_clk(FSL_S_Clk),
    	.rd_clk(FSL_Clk),
    	.din(rdf_dout),
    	.wr_en(pixel_rdf_valid),
    	.rd_en(video_valid),
    	.dout(video_32),
    	.full(fifo_full),
    	.wr_data_count(data_count),
    	.empty(fifo_empty));
 
