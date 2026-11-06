module cd4017(
    clk,
    en,
    clr,
    q
);

input        clk;
input        en;
input        clr;
output [9:0] q;

reg [4:0] cnt;

always @(posedge clk or posedge clr)
    begin
        if (clr)
            cnt <= 5'b00000;
        else if (en)
            cnt <= {~cnt[0], cnt[4:1]};
    end

assign q[0] = ~cnt[4] & ~cnt[3] & ~cnt[2] & ~cnt[1] & ~cnt[0];
assign q[1] =  cnt[4] & ~cnt[3] & ~cnt[2] & ~cnt[1] & ~cnt[0];
assign q[2] =  cnt[4] &  cnt[3] & ~cnt[2] & ~cnt[1] & ~cnt[0];
assign q[3] =  cnt[4] &  cnt[3] &  cnt[2] & ~cnt[1] & ~cnt[0];
assign q[4] =  cnt[4] &  cnt[3] &  cnt[2] &  cnt[1] & ~cnt[0];
assign q[5] =  cnt[4] &  cnt[3] &  cnt[2] &  cnt[1] &  cnt[0];
assign q[6] = ~cnt[4] &  cnt[3] &  cnt[2] &  cnt[1] &  cnt[0];
assign q[7] = ~cnt[4] & ~cnt[3] &  cnt[2] &  cnt[1] &  cnt[0];
assign q[8] = ~cnt[4] & ~cnt[3] & ~cnt[2] &  cnt[1] &  cnt[0];
assign q[9] = ~cnt[4] & ~cnt[3] & ~cnt[2] & ~cnt[1] &  cnt[0];

endmodule
