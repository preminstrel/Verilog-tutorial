module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
  wire [31:0]temp;
  wire [15:0]sum1, sum2;
  wire cout;
  always @(*) begin
    if(sub)
     temp = ~b;
    else
     temp = b;
  end
  add16 instance1 (.a(a[15:0]), .b(temp[15:0]), .cin(sub), .cout(cout), .sum(sum1));
  add16 instance2 (.a(a[31:16]), .b(temp[31:16]), .cin(cout), .sum(sum2));
  assign sum = {sum2, sum1};
endmodule
