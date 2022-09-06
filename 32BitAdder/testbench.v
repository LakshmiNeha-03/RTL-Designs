module test_bench();
  
  reg [31:0]a,b;
  wire [31:0]sum;
  
  top_module dut(a,b,sum);
  
  initial begin
    #0 a=32'b0;b=32'b0;
    #5 b=32'b1;
    #5 a=32'b1; b=32'b0;
    #5 b=32'b1;
    #5 a=32'b0;
    #5 a=32'b1;b=32'b011;
    #5 a=32'b011;
    #5 a=32'hffff;b=32'b0;
    #5 b=32'b1;
  end
  
  initial begin
    $dumpfile("test_bench.vcd");
    $dumpvars();
  end
  
  always@(*) begin
    $display("time =%d, a=%b, b=%b, sum=%b", $time,a,b,sum);
  end
  
endmodule
