module cd4017(clk, clr, en, q);
    input clk, clr, en;
    output [9:0] q;
    reg [3:0] count;

    always@(posedge clk or posedge clr)
    begin
        if(clr)
            count <= 4'd0;
        else if(en)
        begin
            if(count == 4'd9)
                count <= 4'd0;
            else
                count <= count + 1'd1;
        end
    end

    assign q = 10'b0000_0000_01 << count;
endmodule
