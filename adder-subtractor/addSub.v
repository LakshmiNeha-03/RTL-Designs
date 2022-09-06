module top_module(
    input [3:0] a,
    input [3:0] b,
    input sub,
  output  [3:0] sum,
  output cout
);

  wire[3:0]b_xor;
  
  assign b_xor={4{sub}}^b;
      
  add4 inst1 (a,b_xor,sub,sum,cout);
    
endmodule

module add1(input a,b,cin, output sum,cout);
  assign sum=a^b^cin;
  assign cout=a&b|b&cin|cin&a;
endmodule

module add4 ( input[3:0]a, b ,input cin,output [3:0]sum, output cout);
wire cout0,cout1,cout2;
  
  add1 a0(a[0],b[0],cin ,sum[0],cout0);
  add1 a1(a[1],b[1],cout0,sum[1],cout1);
  add1 a2(a[2],b[2],cout1,sum[2],cout2);
  add1 a3(a[3],b[3],cout2,sum[3],cout3);
endmodule
