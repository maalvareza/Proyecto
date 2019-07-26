module SimI2S #(parameter nBits = 32)
				(clk, load, rst, empty, full, SD, SCK, WS, data);
	input clk, load, rst;
	input [nBits-1:0] data;
	output empty, full, SD, SCK, WS;
	
	wire [nBits-1:0] serial;
	wire busy;
	
	I2S i2s(clk, busy, serial, ~empty, SD, SCK, WS);
	fifo mem(~busy, load, data, serial, rst, empty, full);
endmodule
