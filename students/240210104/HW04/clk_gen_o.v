module clk_gen_o(clk);
	parameter HIGH = 10;
	parameter LOW = 10;
	output clk;
	reg clk;

	initial
	begin
		clk = 1;
		forever
		begin
			#HIGH clk = 0;
			#LOW clk = 1;
		end
	end
endmodule
