module clk_gen(
    output reg clk,
    input [31:0] period_high,
    input [31:0] period_low
);
    initial begin
        clk = 1'b0;
        #(period_low);     
        forever begin
            clk = 1'b1;
            #(period_high);
            clk = 1'b0;
            #(period_low);
        end
    end
endmodule