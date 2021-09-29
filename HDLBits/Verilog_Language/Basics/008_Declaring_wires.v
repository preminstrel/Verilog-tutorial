//Declaring wires
`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
  wire check1_1, check1_2, check2, check3;
  assign check1_1 = a & b;
  assign check1_2 = c & d;
  assign check2 = check1_1 | check1_2;
  assign check3  = ~check2;
  assign out = check2;
  assign out_n = check3;
endmodule
