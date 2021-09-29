module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
  wire [7:0]out1, out2, out3;
  my_dff8 instance1 (.q(out1), .d(d), .clk(clk));
  my_dff8 instance2 (.q(out2), .d(out1), .clk(clk));
  my_dff8 instance3 (.q(out3), .d(out2), .clk(clk));
  always @(*) 
    begin
      case(sel)
        0 : q = d;
        1 : q = out1;
        2 : q = out2;
        3 : q = out3;
      endcase
    end
endmodule
