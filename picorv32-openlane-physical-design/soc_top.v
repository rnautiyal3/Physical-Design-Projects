module soc_top (
    input clk,
    input reset,
    output [31:0] debug,
inout vccd1,
inout vssd1
);

// CPU memory interface wires
wire mem_valid;
wire mem_instr;
wire mem_ready;
wire [31:0] mem_addr;
wire [31:0] mem_wdata;
wire [31:0] mem_rdata;
wire [3:0] mem_wstrb;

wire [31:0] unused_dout1;


// ---------------- CPU ----------------
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

// ---------------- SRAM ----------------
// Simple SRAM interface (blackbox macro)
// ---------------- SRAM ----------------
sky130_sram_1kbyte_1rw1r_32x256_8 sram0 (
    // Port 0 (used)
    .clk0(clk),
    .csb0(1'b0),
    .web0(1'b1),
    .addr0(mem_addr[7:0]),
    .din0(mem_wdata),
    .dout0(mem_rdata),
    .wmask0(4'b1111),

    // Port 1 (unused → tie off)
    .clk1(clk),
    .csb1(1'b1),
    .addr1(8'b0),
    .dout1(unused_dout1),

    // power
    .vccd1(vccd1),
    .vssd1(vssd1)
);

// Keep logic alive for synthesis
assign mem_ready = 1'b1;
assign debug = mem_addr;

endmodule
