module top_module (
    input clk,
    input d, 
    input r,   // synchronous reset
    output reg q);
    always @(posedge clk) begin
        if (r) begin
            q <= 0;
        end
        else
            q <= d;
    end
endmodule
