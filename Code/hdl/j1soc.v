module j1soc #(parameter bootram_file = "../firmware/j1.mem")
              (sys_clk_i, sys_rst_i, SD, SCK, WS, uart_rx, uart_tx, segs, anode, cols, rows);
    input sys_clk_i, sys_rst_i;
    output SD, SCK, WS;         //I2S
    output uart_rx, uart_tx;    //UART
                                //I2C
                                //SPI
    output [6:0] segs;          //BCD
    output [7:0] anode;
    input [3:0] cols;           //BOARD
    output [3:0] rows;

    //Regs and wires-----------------------------------------------------------------------------------------------------------------------------------
    wire j1_io_rd;
    wire j1_io_wr;
    wire [15:0] j1_io_addr;
    reg [15:0] j1_io_din;
    wire [15:0] j1_io_dout;

    reg [6:0] cs;
    
    wire [15:0] dp_ram_dout;

    wire [15:0] i2s_dout;
    wire [15:0] i2c_dout;
    wire [15:0] spi_dout;
    wire [15:0] uart_dout;
    wire [15:0] board_dout;
    wire [15:0] bcd_dout;

    //Peripherals-------------------------------------------------------------------------------------------------------------------------------
    j1 #(bootram_file) cpu0 (sys_clk_i, sys_rst_i, j1_io_din, j1_io_rd, j1_io_wr, j1_io_addr, j1_io_dout);
    dpRAM_interface dpRm (sys_clk_i, j1_io_dout, cs[0], j1_io_addr[7:0], j1_io_rd, j1_io_wr, dp_ram_dout);

    peripheral_i2s per_i2s (sys_clk_i, sys_rst_i, j1_io_dout, cs[1], j1_io_addr[3:0], j1_io_rd, j1_io_wr, i2s_dout, SD, SCK, WS);

    //peripheral_I2C per_i2c (sys_clk_i, sys_rst_i, j1_io_dout, cs[2], j1_io_addr[3:0], j1_io_rd, j1_io_wr, i2c_dout...

    //peripheral_SPI per_spi (sys_clk_i, sys_rst_i, j1_io_dout, cs[3], j1_io_addr[3:0], j1_io_rd, j1_io_wr, spi_dout, 

    peripheral_uart per_uart (sys_clk_i, sys_rst_i, j1_io_dout, cs[4], j1_io_addr[3:0], j1_io_rd, j1_io_wr, uart_dout, uart_rx, uart_tx);

    peripheral_board per_board (sys_clk_i, j1_io_dout, cs[5], j1_io_addr[3:0], j1_io_rd, j1_io_wr, board_dout, cols, rows);

    peripheral_bcd per_bcd (sys_clk_i, j1_io_dout, cs[6], j1_io_addr[3:0], j1_io_rd, j1_io_wr, bcd_dout, segs, anode);

    //Chip select-------------------------------------------------------------------------------------------------------------------------------
    always @(*) begin
        case (j1_io_addr[15:8])
            8'h68: cs = 7'b0000010;      //I2S
            8'h69: cs = 7'b0000100;      //I2C 
            8'h6A: cs = 7'b0001000;      //SPI 
            8'h6B: cs = 7'b0010000;      //UART
            8'h6C: cs = 7'b0100000;      //BOARD
            8'h6D: cs = 7'b1000000;      //BCD

            8'h70: cs = 7'b0000001;      //dp_ram 
            default: cs = 0;
        endcase
    end


    //MUX-----------------------------------------------------------------------------------------------------------------------------------------------------
    always @(*) begin
        case (cs)
            7'b0000001: j1_io_din = dp_ram_dout;
            7'b0000010: j1_io_din = i2s_dout;
            7'b0000100: j1_io_din = i2c_dout;
            7'b0001000: j1_io_din = spi_dout;
            7'b0010000: j1_io_din = uart_dout;
            7'b0100000: j1_io_din = board_dout;
            7'b1000000: j1_io_din = bcd_dout;
            default j1_io_din = 16'h0666;
        endcase
    end
endmodule
