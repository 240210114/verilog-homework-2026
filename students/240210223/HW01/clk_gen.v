`timescale 1ns / 1ps

module clk_gen(
    clk
);

parameter PERIOD      = 100;
parameter HALF_PERIOD = PERIOD / 2;

output reg clk;

initial
    begin
        clk = 1'b0;
        forever #(HALF_PERIOD) clk = ~clk;
    end

endmodule
