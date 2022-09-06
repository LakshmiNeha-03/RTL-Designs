module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    
    wire and_1,and_2,and_3,and_4;
    
    and a (and_1,p2a,p2b);
    and b (and_2,p2c,p2d);
    and c (and_3,p1a,p1b,p1c);
    and d (and_4,p1d,p1e,p1f);
    or  e (p2y,and_1,and_2);
    or  f (p1y,and_3,and_4);
    
endmodule
