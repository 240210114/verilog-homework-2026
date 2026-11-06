module top_tb;
    wire clk;
    reg clr, en;
    wire [9:0] q;

    clk_gen u_clk_gen(clk);
    cd4017 u_cd4017(clk, clr, en, q);

    initial
    begin
        clr = 1'b1;
        en = 1'b0;
        #25;
        clr = 1'b0;
        #15;
        en = 1'b1;
        #250;
        en = 1'b0;
        #40;
        en = 1'b1;
        #100;
        $finish;
    end

    initial
    begin
        $dumpfile("dump.vcd");
        $dumpvars(0, top_tb);
    end
endmodule
