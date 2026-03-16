module regfile (
    input clk,
    input we,
    input [2:0] waddr,
    input [7:0] wdata,
    input [2:0] raddr1,
    input [2:0] raddr2,
    output [7:0] rdata1,
    output [7:0] rdata2
);

reg [7:0] regs [7:0];   // 8 registers of 8 bits each

// Write operation
always @(posedge clk) begin
    if (we)
        regs[waddr] <= wdata;
end

// Read ports (combinational)
assign rdata1 = regs[raddr1];
assign rdata2 = regs[raddr2];

endmodule
