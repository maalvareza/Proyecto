module peripheral_i2s# (parameter nBits = 32, inouts = 5, tamPro = 16, tamAddr = 4)
					   (clk, rst, din, cs, addr, rd, wr, dout, SD, SCK, WS);
    input clk, rd, wr, cs, rst;
    input [tamPro - 1:0] din;
    input [tamAddr - 1:0] addr; 
    output SD, SCK, WS;
    output reg [tamPro - 1:0] dout;

    reg [inouts - 1:0] s;
    //Inputs
    reg load;
    reg [nBits - 1:0] data;
    //Outputs
    wire empty, full;
    
    always @(*) begin//Address decoder
        case (addr)
            4'h0: s = (cs && wr) ? 5'b00001 : 0; //load
            4'h2: s = (cs && wr) ? 5'b00010 : 0; //Left
            4'h4: s = (cs && wr) ? 5'b00100 : 0; //Right

            4'h6: s = (cs && rd) ? 5'b01000 : 0; //empty
            4'h8: s = (cs && rd) ? 5'b10000 : 0; //full
            default: s = 0;
        endcase
    end


    always @(negedge clk) begin//Ins
        load = (s[0]) ? din[0] : load;
        data[tamPro-1:0] = (s[1]) ? din[tamPro-1:0] : data[tamPro-1:0];
        data[2*tamPro-1:tamPro] = (s[2]) ? din[tamPro-1:0] : data[2*tamPro-1:tamPro];
    end	

    always @(negedge clk) begin//Outs
        case (s)
            5'b01000: dout[0] = empty;
            5'b10000: dout[0] = full;
            default: dout = 0;
        endcase
    end

    SimI2S I2S(clk, load, rst, empty, full, SD, SCK, WS, data);
endmodule
