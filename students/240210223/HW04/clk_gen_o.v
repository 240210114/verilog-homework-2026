`timescale 1ns/1ps
module clk_gen_o(zkb, zq, clk);
	input [7:0] zkb;
	input [7:0] zq;
	output clk;
	reg clk;
	integer high;
	integer low;

	initial
	begin
		clk <= 0;
	end

	always
	begin
		high = zq * zkb / 100;
		if (high < 1)
			high = 1;
		if (high > zq - 1)
			high = zq - 1;
		low = zq - high;
		#(low) clk <= 1;
		#(high) clk <= 0;
	end
endmodule
