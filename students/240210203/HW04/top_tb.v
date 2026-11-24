module top_tb;
    wire clk_fast;
    wire clk_slow;

    clk_gen_o #(20,50) u_fast(clk_fast);
    clk_gen_o #(40,25) u_slow(clk_slow);

    initial
    begin
        $dumpfile("wave.vcd");
        $dumpvars(0,top_tb);
        #400 $finish;
    end
endmodule