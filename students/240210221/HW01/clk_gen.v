module clk_gen(
    output clk
);

reg clk_reg;

initial begin
    clk_reg = 1'b0;
    forever #5 clk_reg = ~clk_reg;
end

assign clk = clk_reg;

endmodule
