module wire_test(
    input clk,
    input [15:0] a,
    output reg [15:0] y
);

wire [15:0] w1;
wire [15:0] w2;
wire [15:0] w3;

assign w1 = a + 16'h1234;
assign w2 = w1 ^ 16'hABCD;
assign w3 = w2 + 16'h5678;

always @(posedge clk)
    y <= w3;

endmodule
