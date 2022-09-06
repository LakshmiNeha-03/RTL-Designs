module test_bench();
  
  reg [7:0]in;
  wire[2:0]pos;
  
  top_module dut(in,pos);
  
  initial begin
    #0  in=8'b0000_0001;
    #10 in=8'b0000_0010;
    #10 in=8'b0000_0100;
    #10 in=8'b0000_1000;
    #10 in=8'b0001_0000;
    #10 in=8'b0010_0000;
    #10 in=8'b0100_0000;
    #10 in=8'b1000_0000;
  end
  
  initial begin
    $dumpfile("test_bench.vcd");
    $dumpvars();
  end
  
  always@(*)
    $display("time=%d; in =%b; pos =%b ",$time,in,pos);
             
  endmodule
