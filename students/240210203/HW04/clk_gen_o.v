module clk_gen_o(clk);
    parameter PERIOD = 20;
    parameter DUTY = 50;
    output reg clk;

    initial
    begin
        clk = 0;
        forever
        begin
            #(PERIOD*(100-DUTY)/100) clk = 1;
            #(PERIOD*DUTY/100) clk = 0;
        end
    end
endmodule