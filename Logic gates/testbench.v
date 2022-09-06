 module test_bench;
    reg a,b;
    wire c,d,e,f,g,h,i;
  
  logic_gates dut(.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g),.h(h),.i(i));
    
   initial begin 
        #0  a=1'b0; b=1'b0;
        #10 a=1'b1; b=1'b0;
        #10 a=1'b0; b=1'b1;
        #10 a=1'b1; b=1'b1;
    end
  
  always@(*)
    $display("time =%d, a=%b, b=%b, and=%b, or=%b, nor=%b, nand=%b, xor=%b, not=%b, xnor=%b ",$time,a,b,c,d,e,f,g,h,i);
  
  initial begin
    $dumpfile("test_bench.vcd");
    $dumpvars();
  end
endmodule
