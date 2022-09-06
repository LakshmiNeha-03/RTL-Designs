module top_module (
    input [7:0] in,
    output reg [2:0] pos  );
    always@(*)
        casez (in)
        8'bzzzz_zzz1: pos=3'o0;
        8'bzzzz_zz10: pos=3'o1;
        8'bzzzz_z100: pos=3'o2;
        8'bzzzz_1000: pos=3'o3;
        8'bzzz1_0000: pos=3'o4;
        8'bzz10_0000: pos=3'o5;
        8'bz100_0000: pos=3'o6;  
        8'b1000_0000: pos=3'o7;  
          default:pos=3'o0;
    endcase
endmodule
