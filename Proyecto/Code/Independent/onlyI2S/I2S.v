module I2S #(parameter nBits = 32)(clk, busy, data, init, SD, SCK, WS);
	input clk, init;
	input [nBits - 1:0] data;
	output busy, SD, SCK, WS;

	wire [$clog2(nBits) - 1:0] num;

	divisor f(init, clk, SCK);
	shift s(~busy, SCK, SD, data);
	counter co(SCK, ~busy, num);
	comparator0 comp0(num, busy);
	comparator16 comp16(num, WS);	 
endmodule
