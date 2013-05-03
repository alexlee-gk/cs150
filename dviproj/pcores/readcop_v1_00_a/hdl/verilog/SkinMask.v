module SkinMask(YCrCb, mask);
	input [23:0] YCrCb;
	output mask;
	
	wire [7:0] Y;
	wire [7:0] Cr;
	wire [7:0] Cb;
	assign Y = YCrCb[23:16];
	assign Cr = YCrCb[15:8];
	assign Cb = YCrCb[7:0];
	
	assign mask = (Cr >= 140) & (Cr < 159) & (Cb >= 85) & (Cb < 135);
	
endmodule
