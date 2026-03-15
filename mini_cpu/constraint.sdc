# Define the clock period (10ns = 100MHz)
create_clock -name clk -period 10.0 [get_ports clk]

# Set basic input/output delays so the tool doesn't optimize the ports away
set_input_delay 2.0 -clock clk [get_ports reset]
set_output_delay 2.0 -clock clk [get_ports result[*]]
