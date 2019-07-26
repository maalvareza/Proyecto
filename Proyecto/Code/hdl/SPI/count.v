`timescale 1ns / 1ps
module count(sclk,n);

input sclk;
output reg [5:0] n=0;

always@(posedge sclk)
case(n)
26:n=0;
default: n=n+1;
endcase

endmodule
