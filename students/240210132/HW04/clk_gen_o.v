`timescale 1ns/1ps

module clk_gen_o(zkb, zq, clk);
        input  [7:0] zkb;
        input  [7:0] zq;
        output       clk;
        reg          clk;

        initial
        begin
                clk = 1'b0;
                forever
                begin
                        clk = 1'b1;
                        if (zkb >= 8'd128)
                                #zq;
                        else
                                #(zq/2);
                        clk = 1'b0;
                        if (zkb >= 8'd128)
                                #(zq/2);
                        else
                                #zq;
                end
        end
endmodule
