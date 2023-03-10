`timescale 1ns / 1ps

module johnsoncounter_tb();
reg clk,reset;
wire [3:0]q;
johnson_counter dut(clk,reset,q);

initial begin
clk=1;
forever #10 clk=~clk;
end

initial begin
 reset=1;
#10 reset =0; 
#180 $stop;
end

always@(*)begin
$display("time=%d, reset=%b, clk=%b, q=%b,Q=%d",$time,reset,clk,q,q );
end
endmodule
