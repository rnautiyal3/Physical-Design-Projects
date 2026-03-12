module soc_top (
    input clk,
    input reset,
output [31:0] debug
);

// PicoRV32 memory interface signals
wire mem_valid;
wire mem_instr;
wire mem_ready;
wire [31:0] mem_addr;
wire [31:0] mem_wdata;
wire [31:0] mem_rdata;
wire [3:0] mem_wstrb;

// instantiate PicoRV32 CPU
picorv32 cpu (
    .clk(clk),
    .resetn(~reset),

    .mem_valid(mem_valid),
    .mem_instr(mem_instr),
    .mem_ready(mem_ready),
    .mem_addr(mem_addr),
    .mem_wdata(mem_wdata),
    .mem_wstrb(mem_wstrb),
    .mem_rdata(mem_rdata)
);

// temporary dummy memory response
assign mem_ready = 1'b1;
assign mem_rdata = 32'h00000000;
assign debug =mem_addr;
endmodule
