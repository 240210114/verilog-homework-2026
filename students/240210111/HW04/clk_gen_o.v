module clk_gen
(
    input [7:0] HIGH_TIME,
    input [7:0] LOW_TIME,
    output reg clk
);
	initial
	begin
   		 clk = 1'b0;
   		 forever begin
        		#LOW_TIME  clk = 1'b1;
       		 #HIGH_TIME clk = 1'b0;
    end
end
endmodule
