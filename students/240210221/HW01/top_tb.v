module top_tb;

wire clk;
reg en;
reg clr;
wire [9:0] q;

clk_gen u_clk_gen(clk);

cd4017 u_cd4017(clk, en, clr, q);

initial begin
    en = 1'b0;
    clr = 1'b1;
    #12;
    clr = 1'b0;
    #8;

    en = 1'b1;
    #100;

    en = 1'b0;
    #20;

    clr = 1'b1;
    #12;
    clr = 1'b0;
    #8;

    en = 1'b1;
    #50;

    $finish;
end

initial begin
    $dumpfile("waveform.vcd");
    $dumpvars(0, top_tb);
end

endmodule
