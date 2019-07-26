module shift #(parameter nBits = 32)(load, SH, SD, data);
	input load, SH;
	input [nBits-1:0] data;
	output SD;
	
	reg [nBits-1:0] tmp;
	assign SD = tmp[nBits-1];
	
	initial tmp = 0;

	always @(posedge load, negedge SH) begin
		if (load) tmp <= data;
		else tmp <= {tmp[nBits-2:0], 1'b0};
	end
endmodule 
