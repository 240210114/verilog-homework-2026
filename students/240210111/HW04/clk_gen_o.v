module clk_gen
#(
    parameter HIGH_TIME  = 15,    
    parameter LOW_TIME   = 10     
)
(
    output reg clk
);
	initial 
	begin
       		 clk = 1'b0;
       		 forever begin
           	 #LOW_TIME    clk = 1'b1;
            	 #HIGH_TIME   clk = 1'b0;
        end
    end
endmodule
