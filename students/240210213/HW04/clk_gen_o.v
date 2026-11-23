module clk_gen
#(
    parameter FREQ        = 50,   
    parameter DUTY_RATIO  = 0.5    
)
(
    output reg clk
);
localparam TOTAL_PERIOD = 1000 / FREQ;
localparam T_HIGH       = TOTAL_PERIOD * DUTY_RATIO;
localparam T_LOW        = TOTAL_PERIOD - T_HIGH;

initial begin
    clk = 1'b0;
    forever begin
        clk <= 1'b1;
        #(T_HIGH);
        clk <= 1'b0;
        #(T_LOW);
    end
end

endmodule