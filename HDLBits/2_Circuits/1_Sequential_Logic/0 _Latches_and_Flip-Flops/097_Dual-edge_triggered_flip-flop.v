module top_module(
    input clk,
    input d,
    output q);

    reg p, n;
    // clk的上升沿
    always @(posedge clk)
        p <= d ^ n;
    // clk的下降沿
    always @(negedge clk)
        n <= d ^ p;
    //在上升沿时候，p=d^n, 则q=d^n^n=d;
    //在下降沿时候，n=d^p, 则q=p^d^p=d;
    //加载一个新值时会取消旧值。
    assign q = p ^ n;
    // 这样写是无法综合的
    /*always @(posedge clk, negedge clk) begin
        q <= d;
    end*/
endmodule