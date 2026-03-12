module soc_top (
    input clk,
    input reset,
    output [31:0] debug,
    inout vccd1,
    inout vssd1
);

// CPU memory interface
wire mem_valid;
wire mem_ready;
wire [31:0] mem_addr;
wire [31:0] mem_wdata;
wire [31:0] mem_rdata;
wire [3:0] mem_wstrb;

// device outputs
wire [31:0] sram0_rdata;
wire [31:0] sram1_rdata;
wire [31:0] uart_rdata;
wire [31:0] timer_rdata;


// ---------------- CPU ----------------
picorv32 cpu (
    .clk(clk),
    .resetn(~reset),

    .mem_valid(mem_valid),
    .mem_ready(mem_ready),
    .mem_addr(mem_addr),
    .mem_wdata(mem_wdata),
    .mem_wstrb(mem_wstrb),
    .mem_rdata(mem_rdata)
);


// ---------------- Address Decode ----------------

assign mem_rdata =
       (mem_addr[9:8] == 2'b00) ? sram0_rdata :
       (mem_addr[9:8] == 2'b01) ? sram1_rdata :
       (mem_addr[9:8] == 2'b10) ? uart_rdata :
                                 timer_rdata;


// ---------------- SRAM0 ----------------
sky130_sram_1kbyte_1rw1r_32x256_8 sram0 (
    .clk0(clk),
    .csb0(1'b0),
    .web0(1'b1),
    .addr0(mem_addr[7:0]),
    .din0(mem_wdata),
    .dout0(sram0_rdata),
    .wmask0(4'b1111),

    .clk1(clk),
    .csb1(1'b1),
    .addr1(8'b0),
    .dout1(),

    .vccd1(vccd1),
    .vssd1(vssd1)
);


// ---------------- SRAM1 ----------------
sky130_sram_1kbyte_1rw1r_32x256_8 sram1 (
    .clk0(clk),
    .csb0(1'b0),
    .web0(1'b1),
    .addr0(mem_addr[7:0]),
    .din0(mem_wdata),
    .dout0(sram1_rdata),
    .wmask0(4'b1111),

    .clk1(clk),
    .csb1(1'b1),
    .addr1(8'b0),
    .dout1(),

    .vccd1(vccd1),
    .vssd1(vssd1)
);


// ---------------- Peripherals ----------------

uart uart0 (
    .clk(clk),
    .reset(reset),
    .data_out(uart_rdata)
);

timer timer0 (
    .clk(clk),
    .reset(reset),
    .data_out(timer_rdata)
);


// CPU always ready
assign mem_ready = 1'b1;

// debug signal
assign debug = mem_addr;

endmodule
