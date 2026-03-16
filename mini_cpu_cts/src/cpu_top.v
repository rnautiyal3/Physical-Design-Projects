module cpu_top(
    input clk,
    input reset,
    output [7:0] result
);

wire [7:0] pc_out;
wire [7:0] inst;
wire [7:0] alu_out;

pc pc0(
    .clk(clk),
    .reset(reset),
    .pc(pc_out)
);

pipeline_regs if_id(
    .clk(clk),
    .d(pc_out),
    .q(inst)
);

alu alu0(
    .a(inst),
    .b(8'h03),
    .y(alu_out)
);

pipeline_regs id_ex(
    .clk(clk),
    .d(alu_out),
    .q(result)
);

endmodule
