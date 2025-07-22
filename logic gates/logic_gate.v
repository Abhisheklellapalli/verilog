module logic_gates(
    input [5:0] a,
    input [5:0] b,
    output [5:0] y
    );
    assign y[0] = a[0] & b[0];
    assign y[1] = (~a[1] & b[1]);
    assign y[2] = a[2] | b[2];
    assign y[3] = ~(a[3] | b[3]);
    assign y[4] = a[4]^b[4];
    assign y[5] = ~(a[5]^b[5]);
endmodule
