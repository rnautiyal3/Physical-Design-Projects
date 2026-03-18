puts "\n===== PD ANALYZER =====\n"

# Cells
set total_cells [llength [get_cells]]
puts "Total Cells : $total_cells"

# Flops
set flops 0
foreach cell [get_cells] {
    set ref [get_property $cell ref_name]
    if {[regexp {df} $ref]} {
        incr flops
    }
}
puts "Flops       : $flops"

# Nets
set total_nets [llength [get_nets]]
puts "Total Nets  : $total_nets"

# Timing Metrics
puts "\nTiming Metrics:"
report_worst_slack
report_tns

puts "\n========================\n"
