module top_tb;
	reg [7:0] zkb1;
	reg [7:0] zq1;
	wire clk_50;
	reg [7:0] zkb2;
	reg [7:0] zq2;
	wire clk_25;
	reg [7:0] zkb3;
	reg [7:0] zq3;
	wire clk_75;
	reg [7:0] zkb4;
	reg [7:0] zq4;
	wire clk_slow;
	
	clk_gen_o u1(zkb1,zq1,clk_50);
	clk_gen_o u2(zkb2,zq2,clk_25);
	clk_gen_o u3(zkb3,zq3,clk_75);
	clk_gen_o u4(zkb4,zq4,clk_slow);
	
	initial
	begin
		$dumpfile("top_tb.vcd");
		$dumpvars();
		zkb1=50;
		zq1=20;
		zkb2=25;
		zq2=20;
		zkb3=75;
		zq3=20;
		zkb4=50;
		zq4=40;
		#200 $finish();
	end
endmodule
