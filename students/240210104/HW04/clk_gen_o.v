module clk_gen_o(zkb, zq, clk);
	input [7:0] zkb;	// 高电平时间(ns)
	input [7:0] zq;		// 周期(ns)
	output clk;
	reg clk;

	initial
	begin
		clk = 0;
		forever
		begin
			#(zq - zkb) clk = 1;
			#zkb clk = 0;
		end
	end
endmodule
