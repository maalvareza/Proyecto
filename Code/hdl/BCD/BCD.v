module BCD(init, n, segs, anode);
    input init;
    input [3:0] n;    
    output reg [6:0] segs;
    output reg [7:0] anode;
    
    initial anode = 8'b11111110;
    reg [3:0] digit;

    always @ (*) begin
        if (init) begin
            anode = 8'b11111110;
            case (n)
                4'h1: segs = 7'b1001111;
                4'h2: segs = 7'b0010010;
                4'h3: segs = 7'b0000110;
                4'h4: segs = 7'b1001100;
                4'h5: segs = 7'b0100100;
                4'h6: segs = 7'b0100000;
                4'h7: segs = 7'b0001111;
                4'h8: segs = 7'b0000000;
                4'h9: segs = 7'b0000100;
                4'hA: segs = 7'b0001000;
                4'hB: segs = 7'b1100000;
                4'hC: segs = 7'b0110001;
                4'hD: segs = 7'b1000010;
                4'hE: segs = 7'b1111110;
                4'hF: segs = 7'b1001000;
                default: segs = 7'b1111110;
            endcase	
        end
        else anode = 8'b11111111; 
    end
endmodule