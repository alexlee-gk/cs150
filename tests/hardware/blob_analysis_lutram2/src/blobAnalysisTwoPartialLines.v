`include "blob.vh"
`define BLOBS_SIZE          512
`define MAX_RL_CODES        512
`define RL_CODE_LABEL_SIZE  `MAX_RL_CODES

module blobAnalysisTwoPartialLines(
	input clk,
	input rst,
	
	input analyze_two_partial_lines,
	
	input [10:0] s0,
	input [10:0] e0,
	input [8:0] ind0,
	input [10:0] s1,
	input [10:0] e1,
	input [8:0] ind1,
	
	input rl_code_label0_web,
	input [8:0] rl_code_label0_addrb,
	input [8:0] rl_code_label0_dinb,
	input rl_code_label1_web,
	input [8:0] rl_code_label1_addrb,
	input [8:0] rl_code_label1_dinb,
	
	input [10:0] row1,
	output reg [`BLOB_WIDTH-1:0] opt_blob,
	
	output [8:0] rl_code_label0_ind0,
	output [8:0] rl_code_label1_ind1,
	
	output reg [3:0] case_cond, //TODO
	//(1+9*2)*2 + (1+9+75)*2
	output reg rl_code_label0_wea,
	output reg [8:0] rl_code_label0_addra,
	output reg [8:0] rl_code_label0_dina,
	output reg rl_code_label1_wea,
	output reg [8:0] rl_code_label1_addra,
	output reg [8:0] rl_code_label1_dina,

	output reg blobs_wea,
	output reg [8:0] blobs_addra,
	output reg [`BLOB_WIDTH-1:0] blobs_dina,
	output reg blobs_web,
	output reg [8:0] blobs_addrb,
	output reg [`BLOB_WIDTH-1:0] blobs_dinb
);
	reg [10:0] cleared_labels_count;

	//reg [8:0] rl_code_label0 [`RL_CODE_LABEL_SIZE-1:0];
	//reg [8:0] rl_code_label1 [`RL_CODE_LABEL_SIZE-1:0];
	//reg [`BLOB_WIDTH-1:0] blobs [`BLOBS_SIZE-1:0];
	reg [8:0] rl_code_label0 [7:0];
	reg [8:0] rl_code_label1 [7:0];
	reg [`BLOB_WIDTH-1:0] blobs [7:0];

	reg [8:0] free_labels;
	wire [8:0] free_labels_size;
	assign free_labels_size = 9'b1_1111_1111;
	wire [8:0] new_label;
	assign new_label = free_labels;

	wire odd_row;
	assign odd_row = (row1 - 2*(row1>>1));

	wire overlap;	
	assign overlap = ((s1<(e0+2)) & (s0<(e1+2)));
	
	assign rl_code_label0_ind0 = odd_row ? rl_code_label0[ind0] : rl_code_label1[ind0];
	assign rl_code_label1_ind1 = odd_row ? rl_code_label1[ind1] : rl_code_label0[ind1];
	
	wire [`BLOB_WIDTH-1:0] blob_rl_code_label0, blob_rl_code_label1;
	assign blob_rl_code_label0 = blobs[rl_code_label0_ind0];
	assign blob_rl_code_label1 = blobs[rl_code_label1_ind1];

	wire [`BLOB_WIDTH-1:0] temp_new_blob_row0, temp_new_blob_row1;
	assign temp_new_blob_row0[`VALID]       = 1'b0;
	assign temp_new_blob_row0[`EQ_IND]      = 9'b0;
	assign temp_new_blob_row0[`COUNT]       = e1-s1+1;
	assign temp_new_blob_row0[`MIN_J]       = s1;
	assign temp_new_blob_row0[`MAX_J]       = e1;
	assign temp_new_blob_row0[`MIN_I]       = row1;
	assign temp_new_blob_row0[`MAX_I]       = row1;
	assign temp_new_blob_row0[`FIRST_CLEAR] = 1'b0;
	assign temp_new_blob_row1[`VALID]       = 1'b0;
	assign temp_new_blob_row1[`EQ_IND]      = 9'b0;
	assign temp_new_blob_row1[`COUNT]       = e0-s0+1;
	assign temp_new_blob_row1[`MIN_J]       = s0;
	assign temp_new_blob_row1[`MAX_J]       = e0;
	assign temp_new_blob_row1[`MIN_I]       = row1-1;
	assign temp_new_blob_row1[`MAX_I]       = row1;
	assign temp_new_blob_row1[`FIRST_CLEAR] = 1'b0;
	
	wire [`BLOB_WIDTH-1:0] new_blob_row0, new_blob_row1, new_blob_row0_and_row1;
	assign new_blob_row0[`VALID]       = 1'b1;
	assign new_blob_row0[`EQ_IND]      = new_label;
	assign new_blob_row0[`COUNT]       = e0-s0+1;
	assign new_blob_row0[`MIN_J]       = s0;
	assign new_blob_row0[`MAX_J]       = e0;
	assign new_blob_row0[`MIN_I]       = row1-1;
	assign new_blob_row0[`MAX_I]       = row1-1;
	assign new_blob_row0[`FIRST_CLEAR] = 1'b1;
	assign new_blob_row1[`VALID]       = 1'b1;
	assign new_blob_row1[`EQ_IND]      = new_label;
	assign new_blob_row1[`COUNT]       = e1-s1+1;
	assign new_blob_row1[`MIN_J]       = s1;
	assign new_blob_row1[`MAX_J]       = e1;
	assign new_blob_row1[`MIN_I]       = row1;
	assign new_blob_row1[`MAX_I]       = row1;
	assign new_blob_row1[`FIRST_CLEAR] = 1'b1;
	assign new_blob_row0_and_row1[`VALID]       = 1'b1;
	assign new_blob_row0_and_row1[`EQ_IND]      = new_label;
	assign new_blob_row0_and_row1[`COUNT]       = e0-s0+e1-s1+2;
	assign new_blob_row0_and_row1[`MIN_J]       = (s0<s1)?s0:s1;
	assign new_blob_row0_and_row1[`MAX_J]       = (e0>e1)?e0:e1;
	assign new_blob_row0_and_row1[`MIN_I]       = row1-1;
	assign new_blob_row0_and_row1[`MAX_I]       = row1;
	assign new_blob_row0_and_row1[`FIRST_CLEAR] = 1'b1;

	wire [`BLOB_WIDTH-1:0] merged_blob0_from_new, merged_blob1_from_new;
	wire [`BLOB_WIDTH-1:0] merged_blob0_from_blob1, merged_blob1_from_blob1, merged_blob1_from_blob0, merged_blob0_from_blob0;
	mergeBlobs merge_new_into_blob0(
		.blob0(blob_rl_code_label0), 
		.blob1(temp_new_blob_row0), 
		.merged_blob0(merged_blob0_from_new));
	mergeBlobs merge_new_into_blob1(
		.blob0(blob_rl_code_label1), 
		.blob1(temp_new_blob_row1),
		.merged_blob0(merged_blob1_from_new));
	mergeBlobs merge_blob1_into_blob0(
		.blob0(blob_rl_code_label0), 
		.blob1(blob_rl_code_label1), 
		.merged_blob0(merged_blob0_from_blob1),
		.merged_blob1(merged_blob1_from_blob1));
	mergeBlobs merge_blob0_into_blob1(
		.blob0(blob_rl_code_label1), 
		.blob1(blob_rl_code_label0), 
		.merged_blob0(merged_blob1_from_blob0),
		.merged_blob1(merged_blob0_from_blob0));

	always@(posedge clk) begin
		if (rst) begin
			cleared_labels_count <= 0;
			free_labels <= 1;
			opt_blob <= {1'b0, 11'b0, 11'd0, 11'd0, 11'd0, 20'd0, 9'd0, 1'b1};
		end else if (analyze_two_partial_lines) begin
			if (overlap) begin
				if (rl_code_label0_ind0==0 && rl_code_label1_ind1!=0) begin
					//rl_code_label0[ind0] <= blob_rl_code_label1[`EQ_IND];
					//blobs[rl_code_label1_ind1] <= merged_blob1_from_new;
					if (merged_blob1_from_new[`COUNT] > opt_blob[`COUNT])
						opt_blob <= merged_blob1_from_new;
				end else if (rl_code_label0_ind0!=0 && rl_code_label1_ind1==0) begin
					//rl_code_label1[ind1] <= blob_rl_code_label0[`EQ_IND];
					//blobs[rl_code_label0_ind0] <= merged_blob0_from_new;
					if (merged_blob0_from_new[`COUNT] > opt_blob[`COUNT])
						opt_blob <= merged_blob0_from_new;
				end else if (rl_code_label0_ind0==0 && rl_code_label1_ind1==0) begin
					if ((free_labels_size - cleared_labels_count) > 0) begin
						//rl_code_label0[ind0] <= new_label;
						//rl_code_label1[ind1] <= new_label;
						//blobs[new_label] <= new_blob_row0_and_row1;
						if (new_blob_row0_and_row1[`COUNT] > opt_blob[`COUNT])
							opt_blob <= new_blob_row0_and_row1;
						free_labels <= free_labels + 1;
					end
				end else begin
					if (rl_code_label0_ind0 > rl_code_label1_ind1) begin
						//blobs[rl_code_label1_ind1] <= merged_blob1_from_blob0;
						if (blob_rl_code_label0[`FIRST_CLEAR]) begin
							//free_labels.push(rl_code_label0_ind0);
							cleared_labels_count <= cleared_labels_count + 1;
							//blobs[rl_code_label0_ind0] <= {merged_blob0_from_blob0[`BLOB_WIDTH-1:1], 1'b0};
						end else begin
							//blobs[rl_code_label0_ind0] <= merged_blob0_from_blob0;
						end
						//rl_code_label0[ind0] <= rl_code_label1_ind1;
						if (merged_blob1_from_blob0[`COUNT] > opt_blob[`COUNT])
							opt_blob <= merged_blob1_from_blob0;
					end else if (rl_code_label0_ind0 < rl_code_label1_ind1) begin
						//blobs[rl_code_label0_ind0] <= merged_blob0_from_blob1;
						if (blob_rl_code_label1[`FIRST_CLEAR]) begin
							//free_labels.push(rl_code_label1_ind1);
							cleared_labels_count <= cleared_labels_count + 1;
							//blobs[rl_code_label1_ind1] <= {merged_blob1_from_blob1[`BLOB_WIDTH-1:1], 1'b0};
						end else begin
							//blobs[rl_code_label1_ind1] <= merged_blob1_from_blob1;
						end
						//rl_code_label1[ind1] <= rl_code_label0_ind0;
						if (merged_blob0_from_blob1[`COUNT] > opt_blob[`COUNT])
							opt_blob <= merged_blob0_from_blob1;
					end
				end
			end else begin
				if (s0<1024 && rl_code_label0_ind0==0) begin
					if ((free_labels_size - cleared_labels_count) > 0) begin
						//rl_code_label0[ind0] <= new_label;
						//blobs[new_label] <= new_blob_row0;
						if (new_blob_row0[`COUNT] > opt_blob[`COUNT])
							opt_blob <= new_blob_row0;
						free_labels <= free_labels + 1;
					end
				end
				if (s1<1024 && rl_code_label1_ind1==0) begin
					if ((free_labels_size - cleared_labels_count) > 0) begin
						//rl_code_label1[ind1] <= new_label;
						//blobs[new_label] <= new_blob_row1;
						if (new_blob_row1[`COUNT] > opt_blob[`COUNT])
							opt_blob <= new_blob_row1;
						free_labels <= free_labels + 1;
					end
				end
			end
		end
	end
	
	/*
	reg rl_code_label0_wea;
	reg [8:0] rl_code_label0_addra;
	reg [8:0] rl_code_label0_dina;
	reg rl_code_label1_wea;
	reg [8:0] rl_code_label1_addra;
	reg [8:0] rl_code_label1_dina;

	reg blobs_wea;
	reg [8:0] blobs_addra;
	reg [`BLOB_WIDTH-1:0] blobs_dina;
	reg blobs_web;
	reg [8:0] blobs_addrb;
	reg [`BLOB_WIDTH-1:0] blobs_dinb;
	*/
	always@(*) begin
		rl_code_label0_wea = 0;
		rl_code_label0_addra = ind0;
		rl_code_label0_dina = 0;
		rl_code_label1_wea = 0;
		rl_code_label1_addra = ind1;
		rl_code_label1_dina = 0;
		blobs_wea = 0;
		blobs_addra = 0;
		blobs_dina = 0;
		blobs_web = 0;
		blobs_addrb = 0;
		blobs_dinb = 0;
		case_cond = 0;
		if (rst) begin
		end else if (analyze_two_partial_lines) begin
			if (overlap) begin
				if (rl_code_label0_ind0==0 && rl_code_label1_ind1!=0) begin
					rl_code_label0_wea = 1;
					rl_code_label0_dina = blob_rl_code_label1[`EQ_IND];
					blobs_wea = 1;
					blobs_addra = rl_code_label1_ind1;
					blobs_dina = merged_blob1_from_new;
					case_cond = 1;
				end else if (rl_code_label0_ind0!=0 && rl_code_label1_ind1==0) begin
					rl_code_label1_wea = 1;
					rl_code_label1_dina = blob_rl_code_label0[`EQ_IND];
					blobs_wea = 1;
					blobs_addra = rl_code_label0_ind0;
					blobs_dina = merged_blob0_from_new;
					case_cond = 2;
				end else if (rl_code_label0_ind0==0 && rl_code_label1_ind1==0) begin
					if ((free_labels_size - cleared_labels_count) > 0) begin
						rl_code_label0_wea = 1;
						rl_code_label0_dina = new_label;
						rl_code_label1_wea = 1;
						rl_code_label1_dina = new_label;
						blobs_wea = 1;
						blobs_addra = new_label;
						blobs_dina = new_blob_row0_and_row1;
						case_cond = 3;
					end
				end else begin
					if (rl_code_label0_ind0 > rl_code_label1_ind1) begin
						blobs_wea = 1;
						blobs_addra = rl_code_label1_ind1;
						blobs_dina = merged_blob1_from_blob0;
						if (blob_rl_code_label0[`FIRST_CLEAR]) begin
							blobs_web = 1;
							blobs_addrb = rl_code_label0_ind0;
							blobs_dinb = {1'b0, merged_blob0_from_blob0[`BLOB_WIDTH-2:0]};
							case_cond = 4;
						end else begin
							blobs_web = 1;
							blobs_addrb = rl_code_label0_ind0;
							blobs_dinb = merged_blob0_from_blob0;
							case_cond = 5;
						end
						rl_code_label0_wea = 1;
						rl_code_label0_dina = rl_code_label1_ind1;
					end else if (rl_code_label0_ind0 < rl_code_label1_ind1) begin
						blobs_wea = 1;
						blobs_addra = rl_code_label0_ind0;
						blobs_dina = merged_blob0_from_blob1;
						if (blob_rl_code_label1[`FIRST_CLEAR]) begin
							blobs_web = 1;
							blobs_addrb = rl_code_label1_ind1;
							blobs_dinb = {1'b0, merged_blob1_from_blob1[`BLOB_WIDTH-2:0]};
							case_cond = 6;
						end else begin
							blobs_web = 1;
							blobs_addrb = rl_code_label1_ind1;
							blobs_dinb = merged_blob1_from_blob1;
							case_cond = 7;
						end
						rl_code_label1_wea = 1;
						rl_code_label1_dina = rl_code_label0_ind0;
					end
				end
			end else begin
				if (s0<1024 && rl_code_label0_ind0==0) begin
					if ((free_labels_size - cleared_labels_count) > 0) begin
						rl_code_label0_wea = 1;
						rl_code_label0_dina = new_label;
						blobs_wea = 1;
						blobs_addra = new_label;
						blobs_dina = new_blob_row0;
						case_cond = 8;
					end
				end
				if (s1<1024 && rl_code_label1_ind1==0) begin
					if ((free_labels_size - cleared_labels_count) > 0) begin
						rl_code_label1_wea = 1;
						rl_code_label1_dina = new_label;
						blobs_wea = 1;
						blobs_addra = new_label;
						blobs_dina = new_blob_row1;
						case_cond = 9;
					end
				end
			end
		end
	end
	
	always@(posedge clk) begin
		if (rl_code_label0_wea)
			if (odd_row) rl_code_label0[rl_code_label0_addra] <= rl_code_label0_dina;
			else rl_code_label1[rl_code_label0_addra] <= rl_code_label0_dina;
		if (rl_code_label0_web)
			rl_code_label0[rl_code_label0_addrb] <= rl_code_label0_dinb;
		if (rl_code_label1_wea)
			if (odd_row) rl_code_label1[rl_code_label1_addra] <= rl_code_label1_dina;
			else rl_code_label0[rl_code_label1_addra] <= rl_code_label1_dina;
		if (rl_code_label1_web)
			rl_code_label1[rl_code_label1_addrb] <= rl_code_label1_dinb;
			
		if (blobs_wea)
			blobs[blobs_addra] <= blobs_dina;
		if (blobs_web)
			blobs[blobs_addrb] <= blobs_dinb;
	end

endmodule
