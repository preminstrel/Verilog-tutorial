module top_module (
	input clk,
	input L,
	input r_in,
	input q_in,
	output reg Q);
    wire d;
    assign d = L ? r_in : q_in;  //2 to 1 选择器
    always @ (posedge clk ) //触发器
        begin
           Q <= d; 
        end
endmodule
