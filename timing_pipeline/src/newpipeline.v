module pipeline(
    input clk,
    input rst,
    input [15:0] a,
    input [15:0] b,
    input [15:0] c,
    output reg [31:0] result
);

reg [15:0] add_reg;
reg [31:0] mult_reg;

always @(posedge clk) begin
    if (rst)
        add_reg <= 0;
    else
        add_reg <= a + b;
end

always @(posedge clk) begin
    if (rst)
        mult_reg <= 0;
    else
        mult_reg <= add_reg * c;
end

always @(posedge clk) begin
    if (rst)
        result <= 0;
    else
        result <= mult_reg ^ 32'hAAAA5555;
end

endmodule
