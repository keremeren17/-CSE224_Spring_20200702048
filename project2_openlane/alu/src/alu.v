
module alu (
    input  [7:0] A,
    input  [7:0] B,
    input  [2:0] opcode,
    output reg [7:0] out
);

    wire [7:0] invA = ~A;
    wire [7:0] orAB = A | B;
    wire [7:0] xorAB = A ^ B;
    wire [7:0] andAB = A & B;
    wire [7:0] multAB = (A[3:0] * B[3:0]); // 4x4 multiplication
    wire [7:0] addAB = A + B;
    wire [7:0] subAB = A - B;

    always @(*) begin
        case (opcode)
            3'b000: out = invA;
            3'b001: out = orAB;
            3'b010: out = xorAB;
            3'b011: out = andAB;
            3'b100: out = multAB;
            3'b101: out = addAB;
            3'b110: out = subAB;
            3'b111: out = 8'b00000000; // NOP or can be customized
            default: out = 8'b00000000;
        endcase
    end

endmodule
