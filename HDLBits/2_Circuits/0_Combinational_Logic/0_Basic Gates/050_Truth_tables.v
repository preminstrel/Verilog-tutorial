module top_module( 
    input x3,
    input x2,
    input x1,  // three inputs
    output reg f   // one output
);
  wire [2:0]k;
  assign k = {x3, x2, x1};
  always @(*) begin
    case(k)
      0: f = 0;
      1: f = 0;
      2: f = 1;
      3: f = 1;
      4: f = 0;
      5: f = 1;
      6: f = 0;
      7: f = 1;
      default : f = 0;
    endcase
  end
endmodule
