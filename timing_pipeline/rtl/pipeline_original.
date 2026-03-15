module pipeline(
    input clk,
    input rst,
    input [15:0] a,
    input [15:0] b,
    input [15:0] c,
    output reg [31:0] result
);

wire [15:0] add_out;
wire [31:0] mult_out;
wire [31:0] logic_out;

assign add_out  = a + b;
assign mult_out = add_out * c;
assign logic_out = mult_out ^ 32'hAAAA5555;

always @(posedge clk) begin
    if(rst)
        result <= 0;
    else
        result <= logic_out;
end

endmodule
