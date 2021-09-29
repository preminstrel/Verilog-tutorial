module top_module (input x, input y, output z);
    wire wire1,wire2,wire3,wire4;
    //--------------task A-------------------
    task A;
        input x,y;
        output z;
        
        z = (x ^ y) & x;
    endtask
    //------------------task B-----------------
    task B;
        input x,y;
        output z;
        
        z = (x == y)?1:0;
    endtask
    //---------------output---------------
    assign z = (wire1|wire2)^(wire3&wire4);
    always @(*)begin
        A(x,y,wire1);
        A(x,y,wire2);
        B(x,y,wire3);
        B(x,y,wire4);
    end
    
endmodule
