`timescale 1ns / 1ps
module statemachine(sclk,Dout,MISO,MOSI,cs,n,sh);

input MISO;
input sclk;
input [5:0] n;


output reg [7:0] Dout;
output reg MOSI=1;
output reg cs=1;

wire [7:0] instruction;
output reg sh=0;
reg [7:0] shift_mi=0;
reg [15:0] shift_mo=0;
reg [2:0] st=0;
reg [1:0] Dim=0;


parameter Din_charge=1;
parameter MO_sh=2;
parameter MI_sh=3;
parameter MI_init=4;
parameter Dout_charge=5;

assign instruction=8'b00001011;

always @(negedge sclk)
begin
case(st)
Din_charge:
begin
if(Dim==2) Dim<=0;
else Dim<=Dim+1;

shift_mo[15:8]<=instruction;

case(Dim)
	 0:shift_mo[7:0]<=8'b00001111;
	 1:shift_mo[7:0]<=8'b00010001;
	 2:shift_mo[7:0]<=8'b00010011;
	 endcase
end


MO_sh: 
   begin //mosi
	 cs<=0;
    MOSI<=shift_mo[17-n];
	end
	
MI_sh: MOSI<=1;

Dout_charge: 
   begin //carga de dato de salida
    Dout<=shift_mi;
    cs<=1;
	end
	
	endcase
	end

always @(posedge sclk)
begin

case(st)
MI_sh:
   begin
	 shift_mi[25-n]<=MISO;
	end
endcase	
end

always@(negedge sclk)
begin
case(n)
1: st<=Din_charge;
2: st<=MO_sh;
18: st<=MI_sh;
26:st<=Dout_charge;
default:sh<=sh+1;
endcase
end

endmodule
