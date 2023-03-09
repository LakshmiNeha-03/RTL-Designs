module testbench();
reg [3:0]a,b;
reg c0;
wire [3:0] sum;
wire cout;

carrylookAheadAdder dut(a,b,c0,sum,cout);

initial begin
a = 4'b0001; b=4'b1000; c0=1'b0; 
#10 a = 4'b1001; b=4'b0010; c0=1'b1;
#10 a = 4'b1111; b=4'b1111; c0=1'b0;
#10 $finish;
end

initial begin
$monitor("time=%d,a=%b,b=%b,c0=%b,sum=%b,cout=%b",$time,a,b,c0,sum,cout);
end

endmodule
