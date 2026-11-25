// top_tb.v
// 测试程序：实例化一个 clk_gen_o，先后测试两种周期和占空比
module top_tb;
	reg [7:0] zkb;
	reg [7:0] zq;
	wire clk;

	clk_gen_o uut(zkb, zq, clk);

	initial
	begin
		$dumpfile("top_tb.vcd");
		$dumpvars(0, top_tb);

		zq  = 8'd20;            // 周期 20 ns（50 MHz）
		zkb = 8'd50;            // 占空比参数 50
		#200;

		zq  = 8'd50;            // 周期 50 ns（20 MHz）
		zkb = 8'd20;            // 占空比参数 20
		#400;

		$finish;
	end
endmodule
