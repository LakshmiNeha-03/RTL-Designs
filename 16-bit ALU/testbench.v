module testbench();
reg [15:0]a,b;
wire [15:0] sum;
wire zero_flag, sign_flag, carry_flag, parity_flag, overflow_flag;

ALU dut(a,b,sum,zero_flag, sign_flag, carry_flag, parity_flag, overflow_flag);

initial begin
a = 16'hffff; b=16'h0001;
#10 b = 16'hffff;
#10 b=16'h8000;
#10 $finish;
end

initial begin
$monitor("time=%d,a=%b,b=%b,sum=%b,zero_flag=%b, sign_flag=%b, carry_flag=%b, parity_flag=%b, overflow_flag=%b",$time,a,b,sum,zero_flag, sign_flag, carry_flag, parity_flag, overflow_flag);
end

endmodule
