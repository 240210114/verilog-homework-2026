`timescale 1ns/1ps
module top_tb;
	wire clk_1;
	wire clk_2;

	clk_gen_o #(20,25) u_clk_1(clk_1);
	clk_gen_o #(100,75) u_clk_2(clk_2);

	initial
	begin
		$dumpfile("top_tb.vcd");
		$dumpvars(0,top_tb);
		#1000 $finish;
	end
endmodule
