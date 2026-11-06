module clk_gen(clk);

output clk;
reg    clk;

initial
    clk = 1'b0;

always
    #5 clk = ~clk;

endmodule
