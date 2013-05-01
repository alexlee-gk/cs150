module foo(
	input clk,
	input [10:0] s0,
	input [10:0] e0,
	input [10:0] s0_next,
	input [10:0] ind0,
	input rl_code_label0_we,
	input [8:0] rl_code_label0_addr,
	input [8:0] rl_code_label0_din,
	output [74:0] blob_rl_code_label0);
	
	reg [8:0] rl_code_label0 [511:0];
	reg [74:0] blobs [511:0];

	assign blob_rl_code_label0 = blobs[rl_code_label0[ind0]];

	always @(posedge clk) begin
		if (rl_code_label0[ind0]!=0) begin
			rl_code_label0[ind0] <= rl_code_label0_we ? rl_code_label0_din : blob_rl_code_label0[9:1] ;
			blobs[rl_code_label0[ind0]] <= {0, 0, e0-s0+1, s0, e0, 11'd1023, 11'd1023};
		end
	end
endmodule
