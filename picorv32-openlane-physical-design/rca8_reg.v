module rca8_reg (
    input clk,
    input [7:0] a,
    input [7:0] b,
    output reg [7:0] sum
);

reg [7:0] a_reg,b_reg;
wire [7:0] sum_wire;
wire cout;

rca8 adder(
    .a(a_reg),
    .b(b_reg),
    .cin(1'b0),
    .sum(sum_wire),
    .cout(cout)
);

always @(posedge clk) begin
    a_reg <= a;
    b_reg <= b;
    sum <= sum_wire;
end

endmodule
