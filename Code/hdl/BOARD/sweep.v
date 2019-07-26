module sweep(init, clk, out);
    input clk, init;
    output reg [3:0] out = 4'b0001;

    reg [32:0] count = 0;

    always @ (posedge clk) begin
        if (init) begin
            count = count + 1;
            if (count == 5) begin
                if (out== 4'b1000) out = 4'b0001;
                else out = out << 1;
                count = 0;
            end
        end       
    end
endmodule  
