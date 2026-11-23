module clk_gen(zkb, zq, clk);
    input [7:0] zkb;
    input [7:0] zq;
    output clk;
    reg clk;

    initial
    begin
        clk = 0;
        forever
        begin
            if(zq < zkb)
            begin
                #(zkb - zq) clk = 1;
                #zq         clk = 0;
            end
            else
            begin
                clk = 0; 
                #1;
            end
        end
    end
endmodule
