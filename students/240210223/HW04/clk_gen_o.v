`timescale 1ns/1ps
module clk_gen_o(clk);
	output clk;
	reg clk;

	parameter PERIOD = 20;
	parameter DUTY = 50;
	parameter HIGH_TIME = PERIOD * DUTY / 100;
	parameter LOW_TIME = PERIOD - HIGH_TIME;

	initial
	begin
		clk <= 0;
		forever
		begin
			#(LOW_TIME) clk <= 1;
			#(HIGH_TIME) clk <= 0;
		end
	end
endmodule
