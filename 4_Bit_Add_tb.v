module four_bit_adder_tb;
    reg [3:0]a,b;
    reg c;
    wire [3:0]sum,carry;
    fulladd f(.a(a),.b(b),.c(c),.sum(sum),.carry(carry));
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,four_bit_adder_tb);
    end
    initial begin  
        $monitor(a[3],a[2],a[1],a[0],"+",b[3],b[2],b[1],b[0],"=",carry[3],sum[3],sum[2],sum[1],sum[0]);
        a=4'b1011;b=4'b0011;c=1'b0;
        #10
        a=4'b0001;b=4'b0001;c=1'b0;
    end
endmodule
