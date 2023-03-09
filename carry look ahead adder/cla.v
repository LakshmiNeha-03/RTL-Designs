module carrylookAheadAdder(input [3:0]a,b, input c0, output reg [3:0]sum, output reg cout );
wire [3:0]g,p;
reg [3:0]c;

genvar i;
generate for(i=0;i<4;i=i+1) begin
    assign g[i]= a[i]&b[i];
    assign p[i]= a[i]^b[i];
end
endgenerate

always@(*) begin
    c[0]<=c0;
    c[1]<= g[0] | (p[0]&c[0]);
    c[2]<= g[1] | (p[1]& (g[0]| (p[0]&c[0])));
    c[3]<= g[2] | (p[2]&(g[1] | (p[1]& (g[0] | (p[0]&c[0])))));
    cout<= g[3] | (p[3]&(g[2] | (p[2]&(g[1] | (p[1]& (g[0] | (p[0]&c[0])))))));
    sum[0]<= c[0]^p[0]; 
    sum[1]<= c[1]^p[1];
    sum[2]<= c[2]^p[2];
    sum[3]<= c[3]^p[3];
end
endmodule
