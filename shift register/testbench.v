module test_bench;
    reg clk;
    reg [7:0]d;
    reg[1:0]sel;
    wire [7:0]q;
  
  top_module dut(clk,d,sel,q);
    
  initial begin
    clk=1;
    for(int i=0;i<37;i++)
      #5 clk=~clk;
  end
  
   initial begin 
        #0  d=8'b011;sel=2'b00;
        #10 d=8'b100;sel=2'b00;
        #10 d=8'b101;sel=2'b00;
        #10 d=8'b110;sel=2'b00;
        #10 d=8'b111;sel=2'b00;
        #10 d=8'b1000;sel=2'b01;
        #10 d=8'b1001;sel=2'b01;
        #10 d=8'b1010;sel=2'b01;
        #10 d=8'b1011;sel=2'b01;
        #10 d=8'b1100;sel=2'b01;
        #10 d=8'b1101;sel=2'b10;
        #10 d=8'b1110;sel=2'b10;
        #10 d=8'b1111;sel=2'b10;
        #10 d=8'b1010;sel=2'b10;
        #10 d=8'b1011;sel=2'b10;
        #10 d=8'b1100;sel=2'b11;
        #10 d=8'b1101;sel=2'b11;
        #10 d=8'b1110;sel=2'b11;
        #10 d=8'b1111;sel=2'b11;
        #10 d=8'b10000;sel=2'b11;
    end
  
  always@(*)
    $display("time =%d, d=%b, sel=%b, q=%b",$time,d,sel,q);
  
  initial begin
    $dumpfile("test_bench.vcd");
    $dumpvars();
  end
endmodule
