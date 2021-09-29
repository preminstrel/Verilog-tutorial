module top_module ( input clk, input d, output q );
  wire out1, out2;
  my_dff instance1 (.q(out1), .d(d), .clk(clk));
  my_dff instance2 (.q(out2), .d(out1), .clk(clk));
  my_dff instance3 (.q(q), .d(out2), .clk(clk));
endmodule
