module test_bench();
  
  reg [3:0]in;
  wire[1:0]pos;
  
  top_module dut(in,pos);
  
  initial begin
    #0  in=4'h1;
    #10 in=4'h2;
    #10 in=4'h4;
    #10 in=4'h8;
    #10 in=4'h0;
    #10 in=4'h1;
    #10 in=4'h2;
    #10 in=4'h3;
    #10 in=4'h4;
    #10 in=4'h5;
    #10 in=4'h6;
    #10 in=4'h7;
    #10 in=4'h8;
    #10 in=4'h9;
    #10 in=4'ha;
    #10 in=4'hb;
    #10 in=4'hc;
    #10 in=4'hd;
    #10 in=4'he;
    #10 in=4'hf;
  end
  
  initial begin
    $dumpfile("test_bench.vcd");
    $dumpvars();
  end
  
  always@(*)
    $display("time=%d; in =%b; pos =%b ",$time,in,pos);
             
  endmodule
