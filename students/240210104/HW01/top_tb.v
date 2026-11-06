`timescale 1ns/1ps

module top_tb;

wire clk;
reg en;
reg clr;
wire [9:0] q;

clk_gen u_clk_gen(
    .clk(clk)
);

cd4017 u_cd4017(
    .clk(clk),
    .en(en),
    .clr(clr),
    .q(q)
);

initial
begin
    $dumpfile("top_tb.vcd");
    $dumpvars(0, top_tb);
end

initial
begin
    en = 1;
    clr = 1;
    #25 clr = 0;
    #325 en = 0;
    #45 en = 1;
    #100 clr = 1;
    #30 clr = 0;
    #200 $finish;
end

endmodule
