module fifo #(parameter nBits = 32, dataMax = 100, file = "none")
			 (W, R, dataIn, dataOut, rst, empty, full);
	input R, rst, W;
	input [nBits - 1:0] dataIn;
	output reg [nBits - 1:0] dataOut;
	output reg empty, full;

	reg [nBits - 1:0] fifo [dataMax - 1:0];
	reg [$clog2(dataMax) - 1:0] p_out;
	reg [$clog2(dataMax) - 1:0] p_in;
	
	initial begin
        empty = 1;
        full = 0;
        p_in = 0;
        p_out = 0;
		if (file != "none") begin
			$readmemh(file, fifo);
		end
	end

    always @ (*) begin
        if (rst) begin
            full <= 0;
            empty <= 1;          
        end
        else begin
            if (p_in == p_out) empty = 1;
            else empty = 0;
        end
    end

	always @ (posedge rst, posedge R) begin
        if (rst) p_in <= 0;
        else begin
            if (!full) begin 
                fifo[p_in] = dataIn;
                p_in <= p_in + 1;
                if (p_in == dataMax) p_in <= 0;             
            end
        end
	end

    always @ (posedge rst, posedge W) begin
        if (rst) p_out <= 0;
        else begin
            if (!empty) begin 
                p_out <= p_out + 1;
                if (p_out == dataMax) p_out <= 0;                
                dataOut = fifo[p_out];
            end
        end
    end
endmodule 
