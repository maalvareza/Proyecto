module board(init, clk, cols, rows, n);
    input init, clk;
    input [3:0] cols;
    output [3:0] rows;
	output reg [3:0] n;
    
    sweep s(init, clk, rows);

    always @ (*) begin
        if(rows == 4'b0001) begin
            if(cols == 4'b1000) n = 1;
            if(cols == 4'b0100) n = 2;
            if(cols == 4'b0010) n = 3;
        end

        if(rows == 4'b0010) begin
            if(cols == 4'b1000) n = 4;
            if(cols == 4'b0100) n = 5;
            if(cols == 4'b0010) n = 6;
        end

        if(rows == 4'b0100) begin   
            if(cols == 4'b1000) n = 7;
            if(cols == 4'b0100) n = 8;
            if(cols == 4'b0010) n = 9;
        end

        if(rows == 4'b1000) begin
            if(cols == 4'b0100) n = 0;
        end
    end
endmodule 
