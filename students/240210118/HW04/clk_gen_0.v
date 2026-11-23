module clk_gen_0(clk);
parameter PERIOD = 20;                  // 时钟周期，决定频率 f = 1/PERIOD
parameter DUTY   = 50;                  // 高电平占整个周期的百分比，决定占空比
output reg clk;

localparam HIGH = PERIOD * DUTY / 100;  // 高电平持续时间
localparam LOW  = PERIOD - HIGH;        // 低电平持续时间

initial begin
    clk = 0;
    forever begin
        #LOW  clk = 1;                  // 先低电平 LOW
        #HIGH clk = 0;                  // 再高电平 HIGH
    end
end
endmodule
