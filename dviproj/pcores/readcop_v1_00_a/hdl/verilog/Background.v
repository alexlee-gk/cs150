module Background(RGB, background, col);
	input  [23:0] RGB;
	input [10:0] col;
	output [23:0] background;

	wire [7:0] R;
	wire [7:0] G;
	wire [7:0] B;
	wire [23:0] color;
	assign color [23:16] = 8'd0;
	assign color [15:8] = col[9:2];
	assign color [7:0] = 8'hff - col[9:2];
	assign R = RGB[23:16];
	assign G = RGB[15:8];
	assign B = RGB[7:0];
	assign background = {(R > 150 & G > 150 & B > 150) ? color : RGB};

endmodule
