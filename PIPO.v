module pipo(d, clk, q);
input [7:0]d;
input clk;
output [7:0]q;
//output [2:0]q1[8:0];
//output [2:0]q2[8:0];
    dff uua(d[7], clk, q[7]);
    dff uub(d[6], clk, q[6]);
    dff uuc(d[5], clk, q[5]);
    dff uud(d[4], clk, q[4]);
    dff uue(d[3], clk, q[3]);
    dff uuf(d[2], clk, q[2]);
    dff uug(d[1], clk, q[1]);
    dff uuh(d[0], clk, q[0]);
endmodule




