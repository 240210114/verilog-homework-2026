module top_tb;

    wire clk;
    reg en;
    reg clr;
    wire [9:0] q;

    clk_gen u1(clk);

    CD4017 u2(clk, en, clr, q);

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, top_tb);
        en = 1'b1;
        clr = 1'b1;
        #25;
        clr = 1'b0;
        #250;
        $finish;
    end

endmodule
