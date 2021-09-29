module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
  wire cout;
  wire [15:0]sum1, sum2, sum3, sum4;
  add16 instance1 (.a(a[15:0]), .b(b[15:0]), .cin(0), .cout(cout), .sum(sum1));
  add16 instance2 (.a(a[31:16]), .b(b[31:16]), .cin(0), .sum(sum2));
  add16 instance3 (.a(a[31:16]), .b(b[31:16]), .cin(1), .sum(sum3));
  always @(*) begin
    case(cout)
      0 : sum4 = sum2;
      1 : sum4 = sum3;
    endcase
  end
  assign sum = {sum4, sum1};
endmodule
