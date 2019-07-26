module counter #(parameter nBits = 32)(count, rst, num);
    input count, rst;
    output reg [$clog2(nBits) - 1:0] num;

    initial num = 0;

    always @ (negedge count) begin
        if (rst) num <= nBits - 1;
        else num <= num - 1;
    end
endmodule
