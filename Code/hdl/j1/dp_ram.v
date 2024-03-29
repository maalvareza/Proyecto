//------------------------------------------------------------------
// Dual port memory (one read and one write port, same width)
//------------------------------------------------------------------
module dp_ram # (parameter adr_width = 13, dat_width = 16, mem_file_name = "none")
                (clk_a, en_a, en_b, adr_a, dat_a, clk_b, adr_b, dat_b, dat_a_out, we_a);
    // write port a 
	input                       clk_a;
	input                       en_a;
	input                       en_b;
	input      [adr_width-1:0]  adr_a;
	input 	   [dat_width-1:0]  dat_a;
	// read port b
	input                       clk_b;
	input      [adr_width-1:0]  adr_b;
	output reg [dat_width-1:0]  dat_b;
	output reg [dat_width-1:0]  dat_a_out;
	input                       we_a;

    parameter depth = (1 << adr_width);
    // actual ram cells
    reg [dat_width-1:0] ram [0:depth-1];

    //Read port B------------------------------------------------------------------
    always @(posedge clk_b) begin
        if (en_b) dat_b <= ram[adr_b];
    end

    //Write port A
    always @(posedge clk_a) begin
        if (en_a) begin
            if (we_a) begin
                ram[adr_a] <= dat_a;
            end else  dat_a_out<=ram[adr_a];
        end 
    end

    initial begin
        if (mem_file_name != "none") begin
            $readmemh(mem_file_name, ram);
        end
    end
endmodule
