module twos_complement(
    input [3:0] a,
    output [3:0] result
);

assign result = ~a + 4'b0001;

endmodule
