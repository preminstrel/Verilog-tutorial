module top_module (
    input clk,
    input reset,
    output reg [3:0] q);
    always @(posedge clk) begin
        if (reset || q == 10) begin
            q = 1;
        end
        else
            q = q + 1;
    end
endmodule
