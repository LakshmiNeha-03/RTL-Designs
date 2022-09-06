module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
    
    full_adder f0 (a[0],b[0],cin,cout[0],sum[0]);
    
    genvar i;
    
    generate
        for(i=1;i<100;i++)begin :full_adder_block
        full_adder fa (a[i],b[i],cout[i-1],cout[i],sum[i]);
    end
        endgenerate
endmodule



module full_adder(input a, input b, input cin, output cout, output sum);
        assign sum = a^b^cin;
    assign cout = (a&b)|(b&cin)|(cin&a);
    endmodule
