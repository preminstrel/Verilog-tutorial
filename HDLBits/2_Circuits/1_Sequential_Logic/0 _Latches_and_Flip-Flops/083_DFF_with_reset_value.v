module top_module (
    input clk,
    input reset,
    input [7:0] d,
    output reg [7:0] q
);
always @(negedge clk) begin
    if (reset) begin
        q <= 8'h34;
    end
    else 
        q <= d;
end
endmodule
