module top_tb;
    wire clk;
    reg  clr;
    reg  en;
    wire [9:0] q;

    clk_gen u_clk_gen(
        .clk(clk)
    );

    cd4017 u_cd4017(
        .clk(clk),
        .clr(clr),
        .en(en),
        .q(q)
    );

    initial
    begin
        clr = 1'b1;
        en  = 1'b1;
        #25;
        clr = 1'b0;

        #300;
        $finish;
    end

    initial
    begin
        $dumpfile("wave.vcd");
        $dumpvars(0, top_tb);
    end
endmodule
