module seqDetect( input in,clk,reset, output reg y);
    parameter S0=0,S1=1,S2=2,S3=3;
    reg [1:0] ps, ns;
    
    always@(posedge clk or posedge reset)begin
    if(reset)
    ps<=S0;
    else 
    ps<=ns;
    end
    
    always@(ps,in) begin
    case(ps)
    
    S0: begin
        y = in ? 0:0;
        ns= in ? S0 : S1;
        end  
    S1: begin
        y = in ? 0:0;
        ns= in ? S2 : S1;
        end 
    S2: begin
        y = in ? 0:0;
        ns= in ? S3 : S1;
        end 
    S3: begin
        y = in ? 0:1;
        ns= in ? S0 : S1;
        end 
    endcase
    end
    endmodule   
