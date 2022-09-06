module test_bench();
  
  reg [254:0]in;
  wire [7:0]out;
  
  top_module dut (in, out);
  
  initial begin
    #0 in=0;
    #10 in=1;
    #10 in=3;
    #10 in=7;
    #10 in='haaaa;
    #10 in='hffff;
    
	end
  
  initial begin
    $dumpfile("test_bench.vcd");
    $dumpvars();
  end
  
  always@(*)
    $display("time=%d; in =%b; out =%b ",$time,in,out);
             

endmodule
