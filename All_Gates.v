module g_and(input wire a,b,output wire c);
    assign c=a&b;
endmodule

module g_or(input wire a,b,output wire c);
    assign c=a|b;
endmodule

module g_nand(input wire a,b,output wire c);
    assign c=~(a&b);
endmodule

module g_nor(input wire a,b,output wire c);
    assign c=~(a|b);
endmodule

module g_xor(input wire a,b,output wire c);
    assign c=(a&(~b))|((~a)&b);
endmodule

module g_xnor(input wire a,b,output wire c);
    assign c=((~a)&(~b))|(a&b);
endmodule

module g_not(input wire a,output wire b);
    assign b=~a;
endmodule