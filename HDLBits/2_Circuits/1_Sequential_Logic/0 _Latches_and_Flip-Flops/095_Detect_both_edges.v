module top_module (
    input clk,
    input [7:0] in,
    output reg [7:0] anyedge
);
    reg [7:0] temp;

    always @ (posedge clk)
        begin
            temp <= in; //temp始终比in晚一个周期
            anyedge <= in ^ temp; //当输出为1时检测到上升沿
            //检测下降沿是对in取反就好。
        end
endmodule
