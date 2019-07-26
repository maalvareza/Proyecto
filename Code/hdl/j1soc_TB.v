module j1soc_TB ();
    reg sys_clk_i, sys_rst_i;
    wire uart_tx, uart_rx;  //UART
    wire SD, SCK, WS;       //I2S
    wire [6:0] segs;        //BCD
    wire [7:0] anode;
    wire [3:0] rows;  //BOARD
    reg [3:0] cols;

    j1soc uut (sys_clk_i, sys_rst_i, SD, SCK, WS, uart_rx, uart_tx, segs, anode, cols, rows);

    initial begin
        sys_clk_i = 1;
        sys_rst_i = 1; #10;
        sys_rst_i = 0;
    end

    always sys_clk_i = #1 ~sys_clk_i;

    initial begin:  TEST_CASE
        $dumpfile("j1soc_TB.vcd");
        $dumpvars(-1, uut);
        #300000 $finish;
    end
endmodule
