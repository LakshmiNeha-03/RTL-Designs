module test_bench();
  
  reg [99:0]a, b;
  reg cin;
  wire [99:0]cout;
  wire [99:0]sum;
  
  top_module dut (a,b,cin,cout,sum);
  
  initial begin
    #0 a='b0;b='b0;cin=1;
    #5 b='b1;
    #5 a='b1; b='b0;
    #5 b='b1;
    #5 a='b0;
    #5 a='b1;b='b011;cin=0;
    #5 a='b011;
    #5 a='hffff;b='b0;
    #5 b='b1; 
	end
  
  initial begin
    $dumpfile("test_bench.vcd");
    $dumpvars();
  end
  
  always@(*)
    $display("time=%d; a=%b,b=%b,cin=%b,cout=%b,sum=%b ",$time,a,b,cin,cout,sum);
            

endmodule
