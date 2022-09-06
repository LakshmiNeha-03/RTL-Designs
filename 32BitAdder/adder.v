module add1(input a,b,cin, output sum,cout);
  assign sum=a^b^cin;
  assign cout=a&b|b&cin|cin&a;
endmodule

module add16 ( input[15:0]a, b ,input cin,output [15:0]sum, output cout);
wire cout0,cout1,cout2,cout3,cout4,cout5,cout6,cout7,cout8,cout9,cout10,cout11,cout12,cout13,cout14;
  
  add1 a0(a[0],b[0],1'b0 ,sum[0],cout0);
  add1 a1(a[1],b[1],cout0,sum[1],cout1);
  add1 a2(a[2],b[2],cout1,sum[2],cout2);
  add1 a3(a[3],b[3],cout2,sum[3],cout3);
  add1 a4(a[4],b[4],cout3,sum[4],cout4);
  add1 a5(a[5],b[5],cout4,sum[5],cout5);
  add1 a6(a[6],b[6],cout5,sum[6],cout6);
  add1 a7(a[7],b[7],cout6,sum[7],cout7);
  add1 a8(a[8],b[8],cout7,sum[8],cout8);
  add1 a9(a[9],b[9],cout8,sum[9],cout9);
  add1 a10(a[10],b[10],cout9,sum[10],cout10);
  add1 a11(a[11],b[11],cout10,sum[11],cout11);
  add1 a12(a[12],b[12],cout11,sum[12],cout12);
  add1 a13(a[13],b[13],cout12,sum[13],cout13);
  add1 a14(a[14],b[14],cout13,sum[14],cout14);
  add1 a15(a[15],b[15],cout14,sum[15],cout);
  
endmodule

module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire couta,coutb;
  add16 inst1( a[15:0]  , b[15:0] , 1'b0, sum [15:0]  ,couta);
  add16 inst2( a[31:16] , b[31:16],cout0, sum [31:16] ,coutb);

endmodule
