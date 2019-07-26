module comparator0 #(parameter nBits = 32)(x, z);
	input [$clog2(nBits)-1:0] x;
	output z;
	
	assign z = |x;
endmodule 
