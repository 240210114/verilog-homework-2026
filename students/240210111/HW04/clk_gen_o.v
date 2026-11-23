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
    initial
    begin
        cnt = 0;
        clk = 0;
    end

    always @(posedge tick)
    begin
        if(cnt < zkb - zq - 1)
        begin
            cnt = cnt + 1;
            clk = 0;
        end
        else if(cnt < zkb - 1)
        begin
            cnt = cnt + 1;
            clk = 1;
        end
        else
        begin
            cnt = 0;
            clk = 0;
        end
    end
endmodule
