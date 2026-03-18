PD Analyzer using OpenROAD (TCL)

Overview

This project is a TCL-based Physical Design (PD) analysis tool built using OpenROAD.
It extracts key design and timing metrics from a post-route database (.odb) generated through a physical design flow.

The goal of this project is to demonstrate practical understanding of:
	•	OpenROAD database handling
	•	Static Timing Analysis (STA)
	•	TCL scripting for EDA automation

⸻

Features
	•	Total cell count extraction
	•	Sequential cell (flip-flop) detection
	•	Net count analysis
	•	Integration with OpenROAD STA engine
	•	Worst Slack (WNS) reporting
	•	Total Negative Slack (TNS) reporting

⸻

Tools & Technologies
	•	OpenROAD
	•	TCL scripting
	•	Sky130 PDK (via OpenLane flow)


## Project Structure

```
pd-analyzer-openroad/
 ├── scripts/
 │    └── pd_analyzer.tcl
 ├── reports/
 │    └── sample_output.txt
 ├── run_commands.txt
 └── README.md
```
 ## How It Works

The script operates on a fully placed-and-routed design database (.odb) and performs analysis using:
	•	Liberty file (.lib) → timing models
	•	SDC file → design constraints
	•	OpenROAD STA engine → timing analysis

  ## Usage 

1. Launch openroad
2. Load design and constraints
  
   ### Code

```tcl
read_db <path_to_odb>
read_liberty <path_to_lib>
read_sdc <path_to_sdc>
set_propagated_clock [all_clocks]
```

3. Run Analyzer
 ### Code

```tcl
source scripts/pd_analyzer.tcl
```


## Sample Output

```
===== PD ANALYZER =====

Total Cells : 63143
Flops       : 1592
Total Nets  : 7082

Timing Metrics:
worst slack 3.84
tns 0.00

========================
```


## Key Learnings
	•	Handling OpenROAD design database (.odb)
	•	Understanding STA requirements (Liberty + SDC)
	•	Debugging timing issues (missing linking, constraints)
	•	Differences in TCL support across EDA tools
	•	Writing tool-aware automation scripts

⸻

## Limitations
	•	Timing values are printed directly from OpenROAD (not parsed into variables)
	•	High fanout detection not implemented (OpenROAD API limitation)
	•	Depends on availability of .odb, .lib, and .sdc


⸻

Author

Rahul Nautiyal
Physical Design / VLSI Enthusiast
