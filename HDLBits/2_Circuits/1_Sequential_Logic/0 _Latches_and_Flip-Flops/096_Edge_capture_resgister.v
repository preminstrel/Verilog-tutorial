module top_module (
    input clk,
    input reset,
    input [31:0] in,
    output reg [31:0] out
);
    reg [31:0] temp;
    wire [31:0] capture;
    //检测输入信号的上升沿
    always @ (posedge clk)
        begin
           temp <= in; 
        end
    assign capture = ~in & temp;
    //确定输出
    always @ (posedge clk)
        begin
            if(reset)
                out <= 32'b0;
            else
                begin
                    for (integer i=0; i<32; i=i+1)
                        begin
                            if(capture[i] == 1'b1)
                                out[i] <= 1'b1;
                        end
                end
        end
endmodule
