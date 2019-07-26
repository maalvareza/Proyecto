module divisor #(parameter fin = 100000000, fout = 1411200)(init, clki, clko);
    input clki, init;
    output reg clko = 0;

    reg [$clog2(fin/2/fout):0] count = 0;

    always @ (posedge clki) begin
        if (init == 1) begin
            count = count + 1;
            if (count == fin/2/fout) begin
                clko = ~clko;
                count = 0;
            end
        end
    end
endmodule
