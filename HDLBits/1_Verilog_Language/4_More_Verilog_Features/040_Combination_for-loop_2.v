module top_module( 
    input [254:0] in,
    output reg [7:0] out );
  always @(*) begin
    out = 0;  // Do not forget Initialize!
    for (integer i = 0 ; i < 255; i++) begin
      if (in[i]) begin
        out = out + 1;
      end
    end
  end
endmodule
