module top_tb;
wire clk;
reg en;
reg clr;
wire [9:0] q;
reg [3:0] dec;

clk_gen u_clk_gen(clk);
cd4017 u_cd4017(clk, en, clr, q);

always @(*)
begin
    case (q)
        10'b0000000001: dec = 4'd0;
        10'b0000000010: dec = 4'd1;
        10'b0000000100: dec = 4'd2;
        10'b0000001000: dec = 4'd3;
        10'b0000010000: dec = 4'd4;
        10'b0000100000: dec = 4'd5;
        10'b0001000000: dec = 4'd6;
        10'b0010000000: dec = 4'd7;
        10'b0100000000: dec = 4'd8;
        10'b1000000000: dec = 4'd9;
        default:        dec = 4'd15;
    endcase
end

initial
begin
    $dumpfile("top_tb.vcd");
    $dumpvars(0, top_tb);
    clr = 1;
    en = 1;
    #20 clr = 0;
    #200 en = 0;
    #100 en = 1;
    #120 clr = 1;
    #20 clr = 0;
    #200 $finish;
end
endmodule
