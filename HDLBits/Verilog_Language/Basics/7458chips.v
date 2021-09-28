// Create a module with the same functionality as the 7458 chip. It has 10 inputs and 2 outputs. 
module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
  wire and1, and2, and3, and4, or1, or2;
  assign and1 = p2a & p2b;
  assign and2 = p2c & p2d;
  assign and3 = p1a & p1c & p1b;
  assign and4 = p1f & p1e & p1d;
  assign or1 = and2 | and1;
  assign or2 = and3 | and4;
  assign p2y = or1;
  assign p1y = or2;
endmodule
