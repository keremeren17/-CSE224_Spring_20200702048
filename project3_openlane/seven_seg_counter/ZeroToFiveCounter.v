
module ZeroToFiveCounter (
    input wire clk,
    input wire rst,
    output reg [3:0] count
);

always @(posedge clk or posedge rst) begin
    if (rst) begin
        count <= 0;
    end else if (count == 4) begin
        count <= 0;
    end else begin
        count <= count + 1;
    end
end

endmodule
