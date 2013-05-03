module RGB2YCrCb(RGB, YCrCb);
	input  [23:0] RGB;
	output [23:0] YCrCb;

	wire [7:0] R;
	wire [7:0] G;
	wire [7:0] B;
	wire [7:0] Y;
	wire [7:0] Cr;
	wire [7:0] Cb;
	assign R = RGB[23:16];
	assign G = RGB[15:8];
	assign B = RGB[7:0];
	assign YCrCb = {Y,Cr,Cb};
	
	wire [8:0] Y_tmp;
	assign Y_tmp = (306*R + 601*G + 117*B) >> 10;
	assign Y = (Y_tmp[8]) ? 255 : Y_tmp[7:0];
	
	wire signed [20:0] Cr_tmp_signed;
	wire [8:0] Cr_tmp;
	assign Cr_tmp_signed = (R - Y)*730 + 1024*128;
	assign Cr_tmp = (Cr_tmp_signed<0) ? 0 : (Cr_tmp_signed>>10);
	assign Cr = (Cr_tmp[8]) ? 255 : Cr_tmp[7:0];
	
	wire signed [20:0] Cb_tmp_signed;
	wire [8:0] Cb_tmp;
	assign Cb_tmp_signed = (B - Y)*578 + 1024*128;
	assign Cb_tmp = (Cb_tmp_signed<0) ? 0 : (Cb_tmp_signed>>10);
	assign Cb = (Cb_tmp[8]) ? 255 : Cb_tmp[7:0];

endmodule
