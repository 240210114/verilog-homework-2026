`timescale 1ns / 1ps

module top_tb;

reg        en;
reg        clr;
wire       clk;
wire [9:0] q;

clk_gen u_clk_gen (
    clk
);

cd4017 u_cd4017 (
    clk,
    en,
    clr,
    q
);

initial
    begin
        $dumpfile("top_tb.vcd");
        $dumpvars(0, top_tb);
    end

initial
    begin
        en  = 1'b0;
        clr = 1'b1;
        #100;
        clr = 1'b0;
        en  = 1'b1;
        #1000;
        en  = 1'b0;
        #300;
        en  = 1'b1;
        #1000;
        clr = 1'b1;
        #100;
        clr = 1'b0;
        #500;
        $stop;
    end

endmodule
