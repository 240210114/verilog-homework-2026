Enter file contents here
module top_tb;
	wire clk;
	reg en, clr;
	wire[9:0] q;
	
	clk_gen u_clk(.clk(clk));
	cd4017 u_cd4017(
		.clk(clk),
		.en(en),
		.clr(clr),
		.q(q)
	);
	
	initial begin
		clr = 1'b1;
		en = 1'b0;
		#12;
		clr = 1'b0;
		en = 1'b1;
		#200;
		$finish;
	end
endmodule
