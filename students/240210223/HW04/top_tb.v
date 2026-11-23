`timescale 1ns/1ps
module top_tb;
	wire clk_1;
	wire clk_2;
	wire clk_3;

	clk_gen_o u_clk_1(8'd25,8'd20,clk_1);
	clk_gen_o u_clk_2(8'd75,8'd40,clk_2);
	clk_gen_o u_clk_3(8'd80,8'd100,clk_3);

	initial
	begin
		$dumpfile("top_tb.vcd");
		$dumpvars(0,top_tb);
		#1000 $finish;
	end
endmodule
