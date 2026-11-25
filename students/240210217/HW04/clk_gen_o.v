// clk_gen_o.v
// 频率、占空比可调的方波发生器（课堂订正版）
// zq：周期（ns）；zkb：占空比参数（%）；clk：输出方波
module clk_gen_o(zkb,zq,clk);
	input [7:0] zkb;
	input [7:0] zq;
	output reg clk;
	integer high;

	initial
	begin
		clk=0;
		forever
		begin
			high=zq*zkb/100;
			#(zq-high) clk=1;
			#(high) clk=0;
		end
	end
endmodule
