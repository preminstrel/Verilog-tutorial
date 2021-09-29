/*
Given several input vectors, concatenate them together then split them up into several output vectors. 
There are six 5-bit input vectors: a, b, c, d, e, and f, for a total of 30 bits of input. 
There are four 8-bit output vectors: w, x, y, and z, for 32 bits of output. 
The output should be a concatenation of the input vectors followed by two 1 bits.
*/

module top_module (
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z );//

    assign w = { a, b[4:2] };
    assign x = { b[1:0], c, d[4]};
    assign y = { d[3:0], e[4:1]};
    assign z = { e[0], f, 2'b11};

endmodule
