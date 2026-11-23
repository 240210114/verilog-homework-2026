`timescale 1ns/1ps

module top_tb;
        wire clk_a;
        wire clk_b;

        clk_gen_o #(14, 6)  u_a(clk_a);
        clk_gen_o #(5, 25)  u_b(clk_b);

        initial begin
                $dumpfile("report.vcd");
                $dumpvars(0, top_tb);

                #2000 $finish;
        end

        initial
                $monitor("time=%0t  clk_a=%b  clk_b=%b", $time, clk_a, clk_b);
endmodule