module test_bench;
  
  reg p1a,p1b,p1c,p1d,p1e,p1f,p2a,p2b,p2c,p2d;
  wire p1y,p2y;
  
  top_module dut(p1a,p1b,p1c,p1d,p1e,p1f,p1y,p2a,p2b,p2c,p2d,p2y);
  
  initial begin
    #0  p1a=1'b0;p1b=1'b0;p1c=1'b0;p1d=1'b0;p1e=1'b0;p1f=1'b0;p2a=1'b0;p2b=1'b0;p2c=1'b0;p2d=1'b0;
    #20 p1a=1'b0;p1b=1'b0;p1c=1'b1;p1d=1'b0;p1e=1'b0;p1f=1'b0;p2a=1'b0;p2b=1'b0;p2c=1'b0;p2d=1'b1;
    #10 p1a=1'b0;p1b=1'b1;p1c=1'b0;p1d=1'b0;p1e=1'b0;p1f=1'b1;p2a=1'b0;p2b=1'b0;p2c=1'b1;p2d=1'b0;
    #10 p1a=1'b0;p1b=1'b1;p1c=1'b1;p1d=1'b0;p1e=1'b0;p1f=1'b1;p2a=1'b0;p2b=1'b0;p2c=1'b1;p2d=1'b1;
  end
  
  initial begin
    $dumpfile("test_bench.vcd");
    $dumpvars();
  end
  
  always@(*)
  $display("time=%d, p1a=%b, p1b=%b, p1c=%b, p1d=%b, p1e=%b, p1f=%b, p2a=%b, p2b=%b, p2c=%b, p2d=%b, p1y=%b, p2y=%b",$time,p1a,p1b,p1c,p1d,p1e,p1f,p2a,p2b,p2c,p2d,p1y,p2y);
  
endmodule
