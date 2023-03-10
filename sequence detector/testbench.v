    module testbench();
    reg in, clk, reset;
    wire y;
    
    seqDetect dut (in,clk,reset,y);
    
    initial begin
    clk=0;
    forever #5 clk = ~clk;
    end
    
    initial begin 
    reset =1;
    #10 reset = 0; in = 0; 
    #10 in = 1;
    #10 in = 0; 
    #10 in = 1;
    #10 in = 0;
    #10 in = 1; 
    #10 in = 1;
    #10 in = 0; 
    #10 in = 1;
    #10 in = 1;
    #10 in = 0;
    #10 in = 0; 
    #10 in = 1;
    #10 in = 0;
    #10 in = 1; 
    #10 in = 1;
    #10 in = 0; 
    #10 in = 1;
    #10 in = 1;
    #10 in = 1;
    #10 in = 0;
    #5 $finish;
    end
    endmodule
