module logic_gates(a,b,c,d,e,f,g,h,i);
    
    input  a,b;
    output c,d,e,f,g,h,i;
  
    and(c,a,b);
    or(d,a,b);
    nor(e,a,b);
    nand(f,a,b);
    xor(g,a,b);
    not(h,a);
    xnor(i,a,b);
  
    endmodule
