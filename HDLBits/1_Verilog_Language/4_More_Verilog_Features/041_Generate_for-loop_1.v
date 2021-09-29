module top_module( 
    input [99:0] a, b,
    input cin,
    output reg [99:0] cout,
    output reg [99:0] sum );
    //---------------initial----------------
    assign sum[0] = a[0]^b[0]^cin;
    assign cout[0] = a[0]&b[0] | a[0]&cin | b[0]&cin;
    //---------------for loop---------------
    always @(*)begin
        for(integer i = 1;i<100;i++)begin
            sum[i] = a[i]^b[i]^cout[i-1];
            cout[i] = a[i]&b[i] | a[i]&cout[i-1] | b[i]&cout[i-1];
        end
    end
endmodule
