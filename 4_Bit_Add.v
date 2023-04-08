module fulladder1(input wire a,b,c,output wire x,y);
    assign x=((a^b)^c);
    assign y=(((a^b)&c)|(a&b));
endmodule

module fulladd(a,b,c,sum,carry);
    input wire [3:0]a,b;
    input wire c;
    output wire [3:0]sum,carry;
    fulladder1 a1(a[0],b[0],c,sum[0],carry[0]);
    fulladder1 a2(a[1],b[1],carry[0],sum[1],carry[1]);
    fulladder1 a3(a[2],b[2],carry[1],sum[2],carry[2]);
    fulladder1 a4(a[3],b[3],carry[2],sum[3],carry[3]);
endmodule
