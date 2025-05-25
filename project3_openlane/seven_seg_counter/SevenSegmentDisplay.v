module SevenSegmentDisplay (
    input [3:0] binary_input,
    output reg [6:0] segments
);

    always @(*) begin
        case (binary_input)
            4'd0: segments = 7'b1000000; // 0
            4'd1: segments = 7'b1111001; // 1
            4'd2: segments = 7'b0100100; // 2
            4'd3: segments = 7'b0110000; // 3
            4'd4: segments = 7'b0011001; // 4
            4'd5: segments = 7'b0010010; // 5
            default: segments = 7'b1111111; // boş / hata
        endcase
    end

endmodule
