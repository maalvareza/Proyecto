module comparator16 #(parameter nBits = 32)(x, z);
	input [$clog2(nBits)-1:0] x;
	output reg z;
	
	always @ (*) begin
		if(x < nBits/2) 
			z <= 0;
		else 
			z <= 1;
	end
endmodule 
