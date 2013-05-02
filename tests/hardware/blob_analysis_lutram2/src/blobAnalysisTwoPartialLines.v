`include "blob.vh"
`define BLOB_WIDTH          75
`define BLOBS_SIZE          512
`define MAX_RL_CODES        512
`define RL_CODE_LABEL_SIZE  `MAX_RL_CODES

module blobAnalysisTwoPartialLines(
	input clk,
	input rst,
	
	input analyze_two_partial_lines,
	
	input [10:0] s0,
	input [10:0] e0,
	input [10:0] s0_next,
	input [10:0] ind0,
	input [10:0] s1,
	input [10:0] e1,
	input [10:0] s1_next,
	input [10:0] ind1,
	
	input rl_code_label0_we,
	input [8:0] rl_code_label0_addr,
	input [8:0] rl_code_label0_din,
	input rl_code_label1_we,
	input [8:0] rl_code_label1_addr,
	input [8:0] rl_code_label1_din,
	
	input [10:0] row1,
	input [10:0] valid_ind, // rl_code is valid for indices = 0,1,2,...,(valid_ind-1)*2; i.e. valid when (ind+2) <= valid_ind)
	output [BLOB_WIDTH-1:0] blob0);
);
	reg [10:0] cleared_labels_count,

	reg [8:0] rl_code_label0 [`RL_CODE_LABEL_SIZE-1:0];
	reg [8:0] rl_code_label1 [`RL_CODE_LABEL_SIZE-1:0];
	reg [`BLOB_WIDTH-1:0] blobs [`BLOBS_SIZE-1:0];

	wire overlap;	
	assign overlap = ((s1<(e0+2)) & (s0<(e1+2)));
	
	wire [`BLOB_WIDTH-1:0] blob_rl_code_label0, blob_rl_code_label1;
	assign blob_rl_code_label0 = blobs[rl_code_label0[ind0]];
	assign blob_rl_code_label1 = blobs[rl_code_label1[ind1]];

	wire [`BLOB_WIDTH-1:0] merged_blob0_from_new, merged_blob1_from_new;
	wire [`BLOB_WIDTH-1:0] merged_blob0_from_blob1, merged_blob1_from_blob1, merged_blob1_from_blob0, merged_blob0_from_blob0;
	mergeBlobs merge_new_into_blob0(
		.blob0(blob_rl_code_label0), 
		.blob1({0, 0, e1-s1+1, s1, e1, row1, row1}), 
		.merged_blob0(merged_blob0_from_new));
	mergeBlobs merge_new_into_blob1(
		.blob0(blob_rl_code_label1), 
		.blob1({0, 0, e0-s0+1, s0, e0, row1-1, row1}),
		.merged_blob0(merged_blob1_from_new));
	mergeBlobs merge_blob1_into_blob0(
		.blob0(blob_rl_code_label0), 
		.blob1(blob_rl_code_label1), 
		.merged_blob0(merged_blob0_from_blob1)
		.merged_blob1(merged_blob1_from_blob1));
	mergeBlobs merge_blob0_into_blob1(
		.blob0(blob_rl_code_label1), 
		.blob1(blob_rl_code_label0), 
		.merged_blob0(merged_blob1_from_blob0),
		.merged_blob1(merged_blob0_from_blob0));

	wire [`BLOB_WIDTH-1:0] new_blob_row0, new_blob_row1, new_blob_row0_and_row1;
	assign new_blob_row0 = {1, new_label, e0-s0+1, s0, e0, row1-1, row1-1, 1};
	assign new_blob_row1 = {1, new_label, e1-s1+1, s1, e1, row1, row1, 1};
	assign new_blob_row0_and_row1 = {1, new_label, e0-s0+e1-s1+2, (s0<s1)?s0:s1, (e0>e1)?e0:e1, row1-1, row1, 1};
	
	reg [8:0] free_labels;
	wire [8:0] new_label;
	assign new_label = free_labels;
	
	always@(posedge clk) begin
		if (rst) begin
			cleared_labels_count <= 0;
			free_labels <= 0;
		end else if (analyze_two_partial_lines) begin
			if (overlap) begin
				if (rl_code_label0[ind0]==0 && rl_code_label1[ind1]!=0) begin
					rl_code_label0[ind0] <= blob_rl_code_label1[`EQ_IND];
					blobs[rl_code_label1[ind1]] <= merged_blob1_from_new;
					if (merged_blob1_from_new[`COUNT] > blob0[`COUNT])
						blob0 <= merged_blob1_from_new;
				end else if (rl_code_label0[ind0]!=0 && rl_code_label1[ind1]==0) begin
					rl_code_label1[ind1] <= blob_rl_code_label0[`EQ_IND];
					blobs[rl_code_label0[ind0]] <= merged_blob0_from_new;
					if (merged_blob0_from_new[`COUNT] > blob0[`COUNT])
						blob0 <= merged_blob0_from_new;
				end else if (rl_code_label0[ind0]==0 && rl_code_label1[ind1]==0) begin
					if ((free_labels.size() - cleared_labels_count) > 0) begin
						rl_code_label0[ind0] <= new_label;
						rl_code_label1[ind1] <= new_label;
						blobs[new_label] <= new_blob_row0_and_row1;
						free_labels <= free_labels+1;
						if (new_blob_row0_and_row1[`COUNT] > blob0[`COUNT])
							blob0 <= new_blob_row0_and_row1;
						free_labels <= free_labels + 1;
					end
				end else begin
					if (rl_code_label0[ind0] > rl_code_label1[ind1]) begin
						blobs[rl_code_label1[ind1]] <= merged_blob1_from_blob0;
						if (blob_rl_code_label0[`FIRST_CLEAR]) begin
							//free_labels.push(rl_code_label0[ind0]);
							blobs[rl_code_label0[ind0]] <= {merged_blob0_from_blob0[`BLOB_WIDTH-1:1], 1'b0};
							cleared_labels_count <= cleared_labels_count + 1;
						end else begin
							blobs[rl_code_label0[ind0]] <= merged_blob0_from_blob0;
						end
						rl_code_label0[ind0] <= rl_code_label1[ind1];
						if (merged_blob1_from_blob0[`COUNT] > blob0[`COUNT])
							blob0 <= merged_blob1_from_blob0;
					end else if (rl_code_label0[ind0] < rl_code_label1[ind1]) begin
						blobs[rl_code_label0[ind0]] <= merged_blob0_from_blob1;
						if (blob_rl_code_label1[`FIRST_CLEAR]) begin
							//free_labels.push(rl_code_label1[ind1]);
							cleared_labels_count <= cleared_labels_count + 1;
							blobs[rl_code_label1[ind1]] <= {merged_blob1_from_blob1[`BLOB_WIDTH-1:1], 1'b0};
						end else begin
							blobs[rl_code_label1[ind1]] <= merged_blob1_from_blob1;
						end
						rl_code_label1[ind1] <= rl_code_label0[ind0];
						if (merged_blob0_from_blob1[`COUNT] > blob0[`COUNT])
							blob0 <= merged_blob0_from_blob1;
					end
				end
			end else begin
				if (s0<1024 && rl_code_label0[ind0]==0) begin
					if ((free_labels.size() - cleared_labels_count) > 0) begin
						rl_code_label0[ind0] <= new_label;
						blobs[new_label] <= new_blob_row0;
						if (new_blob_row0[`COUNT] > blob0[`COUNT])
							blob0 <= new_blob_row0;
						free_labels <= free_labels + 1;
					end
				end
				if (s1<1024 && rl_code_label1[ind1]==0) begin
					if ((free_labels.size() - cleared_labels_count) > 0) begin
						rl_code_label1[ind1] <= new_label;
						blobs[new_label] <= new_blob_row1;
						if (new_blob_row1[`COUNT] > blob0[`COUNT])
							blob0 <= new_blob_row1;
						free_labels <= free_labels + 1;
					end
				end
			end
		end
	end

endmodule
