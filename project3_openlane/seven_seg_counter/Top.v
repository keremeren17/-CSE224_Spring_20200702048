module Top (
    input clk,
    input rst,
    output [6:0] segments
);

    wire [2:0] count;
    wire [3:0] display_in;

    // Sayaç modülü
    ZeroToFiveCounter counter (
        .clk(clk),
        .rst(rst),
        .count(count)
    );

    // Display için 3 bit sayacı 4 bite genişletiyoruz
    assign display_in = {1'b0, count};

    // 7 segment display sürücüsü
    SevenSegmentDisplay display (
        .binary_input(display_in),
        .segments(segments)
    );

endmodule
