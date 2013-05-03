module Gray(RGB, BNW);
	input  [23:0] RGB;
	output [23:0] BNW;

	wire [7:0] R;
	wire [7:0] G;
	wire [7:0] B;
	wire [7:0] Scale;
	assign R = RGB[23:16];
	assign G = RGB[15:8];
	assign B = RGB[7:0];
	assign BNW = {Scale,Scale,Scale};
	assign Scale = (54*R + 183*G + 19*B) >> 8;
endmodule
