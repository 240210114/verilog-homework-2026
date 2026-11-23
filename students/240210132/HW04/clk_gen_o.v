`timescale 1ns/1ps

module clk_gen_o(clk);
        output clk;
        reg clk;
        parameter HIGH_TIME = 10;
        parameter LOW_TIME  = 10;

        initial
        begin
                clk = 1'b0;
                forever
                begin
                        #LOW_TIME  clk = 1'b1;
                        #HIGH_TIME clk = 1'b0;
                end
        end
endmodule