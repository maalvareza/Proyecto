module peripheral_board#(parameter inouts = 2, tamPro = 16, tamAddr = 4)
						(clk, din, cs, addr, rd, wr, dout, cols, rows);
    input clk, rd, wr, cs;
    input [tamPro - 1:0] din;
    input [3:0] cols;
    input [tamAddr - 1:0] addr; 
    output reg [tamPro - 1:0] dout;
    output [3:0] rows;

    reg [inouts - 1:0] s;
    
    wire [3:0] n;//Output
    reg init;//Input
    
    always @(*) begin//Address decoder
        case (addr)
            4'h0: s = (cs && rd) ? 2'b01 : 0;   //n

            4'h2: s = (cs && wr) ? 2'b10 : 0;   //init
            default: s = 0;
        endcase
    end

    always @(negedge clk) begin//Inputs
        init = (s[1]) ? din[0] : init;
    end

    always @(negedge clk) begin//Outputs
        case (s)
            2'b01: dout[3:0] = n;
            default: dout = 0;
        endcase
    end

    board board(init, clk, cols, rows, n);

endmodule
