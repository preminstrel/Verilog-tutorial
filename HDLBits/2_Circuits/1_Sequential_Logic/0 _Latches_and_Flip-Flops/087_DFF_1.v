module top_module (
    input clk,
    input d, 
    input ar,   // asynchronous reset
    output reg q);
    always @(posedge clk or posedge ar) begin
        if (ar) begin
            q <= 0;
        end
        else
            q <= d;
    end
endmodule
