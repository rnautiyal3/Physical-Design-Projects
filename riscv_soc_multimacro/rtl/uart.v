module uart (
    input clk,
    input reset,
    output reg [31:0] data_out
);

always @(posedge clk) begin
    if (reset)
        data_out <= 32'h00000000;
    else
        data_out <= data_out + 1;
end

endmodule
