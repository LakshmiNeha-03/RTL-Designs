module ALU( input [15:0]a,b, output [15:0]sum, output zero_flag, sign_flag, carry_flag, parity_flag, overflow_flag );
wire [3:1]c;

assign sign_flag = sum[15];
assign zero_flag = ~| sum;
assign parity_flag = ~^sum;
assign overflow_flag = ((a[15]&b[15]&~sum[15])|(~a[15]&~b[15]&sum[15]));

adder4 a1(a [3:0],  b[3:0],   1'b0, sum[3:0],  c[1]);
adder4 a2(a [7:4],  b[7:4],   c[1], sum[7:4],  c[2]);
adder4 a3(a [11:8], b[11:8],  c[2], sum[11:8], c[3]);
adder4 a4(a[15:12], b[15:12], c[3], sum[15:12],carry_flag);

endmodule

module adder4(input[3:0]a,b, input cin, output[3:0]sum, output carry);
assign {carry,sum} = a+b+cin;
endmodule
