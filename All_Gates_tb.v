module tb;
reg t_a;
reg t_b;
wire t_and,t_or,t_xor,t_xnor,t_nand,t_nor,t_not;

g_and a1(t_a,t_b,t_and);
g_or a2(t_a,t_b,t_or);
g_nor a3(t_a,t_b,t_nor);
g_nand a4(t_a,t_b,t_nand);
g_xnor a5(t_a,t_b,t_xnor);
g_xor a6(t_a,t_b,t_xor);
g_not a7(t_a,t_not);

initial begin
    $dumpfile("all_gates_v.vcd");
    $dumpvars(0,tb);
end

initial begin
    $monitor(t_a,t_b,t_abd,t_or,t_nand,t_xor,t_xnor,t_not);
    t_a=1'b0;
    t_b=1'b0;
    #5

    t_a=1'b1;
    t_b=1'b0;
    #5

    t_a=1'b0;
    t_b=1'b1;
    #5

    t_a=1'b1;
    t_b=1'b1;
    #5

    t_a=1'b0;
    t_b=1'b0;
end
endmodule