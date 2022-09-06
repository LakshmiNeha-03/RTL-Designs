module my_dff8(input clk, [7:0]d, output reg [7:0]q);
  
  always@(posedge clk)
    
    begin
      case(d)
        8'b0:q=8'b0;
        default:q=d;
      endcase
    end
  
endmodule

module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output reg [7:0] q 
);
    
    wire [7:0]q0,q1,q2;
    
    my_dff8 d0(clk,d,q0);
    my_dff8 d1(clk,q0,q1);
    my_dff8 d2(clk,q1,q2);
    
  always@(d,sel)
            case(sel)
                2'b00:q=d;
                2'b01:q=q0;
                2'b10:q=q1;
                2'b11:q=q2;
            endcase
endmodule
