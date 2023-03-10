`timescale 1ns / 1ps

module johnson_counter(input clk,reset, output [3:0]q);

d_ff ff0(~q[3],clk,reset,q[0]);
d_ff ff1(q[0],clk,reset,q[1]);
d_ff ff2(q[1],clk,reset,q[2]);
d_ff ff3(q[2],clk,reset,q[3]);

endmodule

module d_ff(input d, clk,reset, output reg q);
always@(posedge clk)
if(reset)
q<=0;
else
q<=d;
endmodule

