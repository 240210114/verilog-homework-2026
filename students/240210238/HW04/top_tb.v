module top_tb;
	wire clk_a;
	wire clk_b;
	reg [7:0] zkb_a;
	reg [7:0] zq_a;
	reg [7:0] zkb_b;
	reg [7:0] zq_b;

	initial
	begin
		zkb_a=20;
		zq_a=50;
		zkb_b=40;
		zq_b=25;
	end

	clk_gen_o u_gen_a(zkb_a,zq_a,clk_a);
	clk_gen_o u_gen_b(zkb_b,zq_b,clk_b);

	initial
	begin
		$dumpfile("top_tb.vcd");
		$dumpvars();
		#400 $finish();
	end
endmodule
