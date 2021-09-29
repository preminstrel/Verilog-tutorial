//Create a module that implements an XNOR gate 同或门
module top_module( 
    input a, 
    input b, 
    output out );
  assign out = ~(a^b);
endmodule
