# Placement Density vs Routing Wirelength (OpenLane / OpenROAD)

## Overview
This project demonstrates how **placement utilization affects routing wirelength and congestion** in an ASIC physical design flow.

When placement utilization is high, cells are packed closely together, increasing routing demand and resulting in longer wires.  
Reducing utilization spreads cells across the core area, allowing the router to find shorter paths.

This experiment compares two placement densities using the **OpenLane RTL-to-GDS flow**.

---

## Design Information

| Parameter | Value |
|-----------|------|
| Technology | Sky130 |
| Flow | OpenLane / OpenROAD |
| Design | wire_test |
| Clock Period | 5 ns |

---

## Experiment Setup

The same RTL design was implemented twice with different **core utilization values**.

| Experiment | Core Utilization |
|------------|------------------|
| Congested placement | 65% |
| Relaxed placement | 40% |

Lower utilization provides more routing resources and typically reduces congestion.

---

## Results

| Metric | Utilization 65% | Utilization 40% | Improvement |
|------|------|------|------|
| Total Routed Wirelength | 1672 µm | 1471 µm | **-12%** |
| Longest Routed Net | 58.48 µm | 52.62 µm | **-10%** |

### Observation

Reducing placement utilization resulted in:

- Reduced routing wirelength
- Improved routing paths
- Better routing resource availability

---

## Placement Comparison

### High Utilization (65%)

Cells are densely packed which increases routing demand.

![Placement 65](images/util65.png)

---

### Lower Utilization (40%)

Cells are more evenly distributed, allowing shorter routing paths.

![Placement 40](images/util40.png)

---

## Key Takeaway

Placement density directly affects routing complexity.  

Lower placement utilization can:

- Reduce congestion
- Decrease routing wirelength
- Improve physical design quality

This experiment illustrates a common **physical design optimization technique used during floorplanning and placement**.

---

## Project Structure

placement_wirelength_fix
│
├── src
│   └── wire_test.v
│
├── images
│   ├── placement_util65.png
│   └── placement_util40.png
│
└── README.md

---

## Tools Used

- OpenLane
- OpenROAD
- Sky130 PDK
- KLayout (layout visualization)

---

## Author

Rahul Nautiyal  
VLSI Physical Design Projects
