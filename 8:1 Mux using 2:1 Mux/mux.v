module MUX_8_1(input [7:0]I, input [2:0]s, output Y);

wire [5:0]out;
MUX_2_1 m1(I[0],I[1],s[0],out[0]);
MUX_2_1 m2(I[2],I[3],s[0],out[1]);
MUX_2_1 m3(I[4],I[5],s[0],out[2]);
MUX_2_1 m4(I[6],I[7],s[0],out[3]);
MUX_2_1 m5(out[0],out[1],s[1],out[4]);
MUX_2_1 m6(out[2],out[3],s[1],out[5]);
MUX_2_1 m7(out[4],out[5],s[2],Y);

endmodule

module MUX_2_1(input A0, input A1,input s, output reg Y);
always@(*)
begin

if(s == 0)
   Y=A0;
else
   Y=A1;
   
end
endmodule
