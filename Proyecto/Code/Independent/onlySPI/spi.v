`timescale 1ns / 1ps
 
module spi(MISO, MOSI, Dout, cs, clk, sclk, copia_mo, copia_mi, copia_sclk, copia_cs, sh);

input MISO;
input clk;

output sh;
output sclk;
output wire MOSI;
output wire cs;
output wire [7:0] Dout;

wire [5:0] n;

output wire copia_mi;
output wire copia_mo;
output wire copia_sclk;
output wire copia_cs;

assign copia_mi=MISO;
assign copia_mo=MOSI;
assign copia_sclk=sclk;
assign copia_cs=cs;

div clk_system(.clk(clk), .sclk(sclk));
count st_count(.sclk(sclk), .n(n));
statemachine state(.sh(sh), .MISO(MISO), .MOSI(MOSI), .Dout(Dout), .sclk(sclk), .cs(cs), .n(n));


endmodule
