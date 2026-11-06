module top_tb;
    wire       clk;
    reg        clr;
    reg        en;
    wire [9:0] q;

    clk_gen u_clk_gen(clk);

    cd4017 u_cd4017(clk, clr, en, q);

    initial
    begin
        clr = 1'b1;
        en  = 1'b1;
        #35 clr = 1'b0;

        #400 $finish;
    end

    initial
    begin
        $dumpfile("wave.vcd");
        $dumpvars(0, top_tb);
    end
endmodule
