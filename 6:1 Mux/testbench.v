module test_bench();
  
  reg [2:0]sel;
  reg [3:0]data0;
  reg [3:0]data1;
  reg [3:0]data2;
  reg [3:0]data3;
  reg [3:0]data4;
  reg [3:0]data5;
  wire[3:0]out;
  
  top_module dut(sel,data0,data1,data2,data3,data4,data5,out);
  
  initial begin
    #0 data0=4'ha; data1=4'hb; data2=4'hc; data3=4'hd; data4=4'he; data5=4'hf; sel=4'b0111;
    #5  sel=4'b0000;
    #10 sel=4'b0001;
    #10 sel=4'b0010;
    #10 sel=4'b0011;
    #10 sel=4'b0100;
    #10 sel=4'b0101;
    #10 sel=4'b0110;
    #10 sel=4'b0111;
  end
  
  initial begin
    $dumpfile("test_bench.vcd");
    $dumpvars();
  end
  
  always@(*)
    $display("time=%d; sel =%b; data0=%b; data1=%b; data2=%b; data3=%b; data4=%b; data5=%b; out=%b",$time,sel,data0,data1,data2,data3,data4,data5,out);
             
  endmodule
