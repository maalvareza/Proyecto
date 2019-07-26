module peripheral_bcd#(parameter inouts = 2, tamPro = 16, tamAddr = 4)
					  (clk, din, cs, addr, rd, wr, dout, segs, anode);
    input clk, rd, wr, cs;
    input [tamPro - 1:0] din;
    input [tamAddr - 1:0] addr; 
    output [6:0] segs;
    output [7:0] anode;
    output reg [tamPro - 1:0] dout;

    reg [inouts-1:0] s;

    //Inputs
    reg init;
    reg [3:0] n;
    
    always @(*) begin//Address decoder
        case (addr)
            4'h0: s = (cs && wr) ? 2'b01 : 0; //init
            4'h2: s = (cs && wr) ? 2'b10 : 0; //n
            default: s = 0;
        endcase
    end


    always @(negedge clk) begin//Inputs
        init = (s[0]) ? din[0] : init;
        n = (s[1]) ? din[3:0] : n;
    end

    BCD display(init, n, segs, anode);
endmodule
