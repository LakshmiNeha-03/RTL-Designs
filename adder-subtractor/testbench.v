module test_bench();
  
  reg [3:0]a,b;
  reg sub;
  wire [3:0]sum;
  wire cout;
  
  top_module dut(a,b,sub,sum,cout);
  
  initial begin
    #0 a=3'b0;b=3'b0;sub=0;
    #5 a=3'b1;
    #5 a=3'b10;
    #5 b=3'b1;sub=1;
    #5 b=3'b10;
    #5 a=3'b11;b=3'b1;
  end
  
  initial begin
    $dumpfile("test_bench.vcd");
    $dumpvars();
  end
  
  always@(*) begin
    $display("time =%d, a=%b, b=%b, sub=%b sum=%b ", $time,a,b,sub,sum);
  end
  
endmodule
