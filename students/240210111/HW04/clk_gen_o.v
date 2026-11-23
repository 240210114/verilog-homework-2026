module clk_gen(zkb,zq,clk);
   	 input [7:0] zkb;
  	 input [7:0] zq;
    	 output clk;
   	 reg clk;
   	 reg [7:0] cnt;
   	 reg tick;
	 initial 
	 begin
           tick = 0;
       	 forever #5 tick = ~tick;
    end
   	 initial begin
       		 cnt = 0;
      		  clk = 0;
    end
    	always @(posedge tick) begin
        		cnt <= cnt + 1;
        if(cnt >= zkb - zq)
           	 clk <= 1;
        else
         		  clk <= 0;
        if(cnt >= zkb - 1)
         		  cnt <= 0;
    end
endmodule
