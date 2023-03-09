module test_MUX();

reg [7:0]I;
reg [2:0] s;
wire Y;

MUX_8_1 uut(I,s,Y);

initial begin
I=8'b10101101; s=3'b000;
#10 I=8'b10101101; s=3'b001;
#10 I=8'b10101101; s=3'b010;
#10 I=8'b10101101; s=3'b011;
#10 I=8'b10101101; s=3'b100;
#10 I=8'b10101101; s=3'b101;
#10 I=8'b10101101; s=3'b110;
#10 I=8'b10101101; s=3'b111;
#10 $finish;
end

initial begin
$monitor("time=%d,I=%b, s=%b,Y=%b",$time,I,s,Y);
end
endmodule
