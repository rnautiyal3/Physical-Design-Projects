# Mini CPU – RTL to GDS Physical Design Project

## Overview
This project demonstrates the complete RTL-to-GDS physical design flow using the OpenLane open-source ASIC flow and the Sky130 PDK.

The design is a small synchronous datapath containing an ALU and registers. The goal of this project is to demonstrate the physical design flow rather than implement a full processor.

---

## Design Summary

| Parameter | Value |
|-----------|------|
| Design Name | cpu_top |
| Project | Mini CPU Physical Design |
| Technology | Sky130 (130nm) |
| Physical Design Flow | OpenLane RTL → GDS |
| Clock Domain | Single |
| Clock Port | clk |
| Target Clock Period | 10 ns |
| Target Frequency | 100 MHz |
| Design Type | Synchronous Datapath |
| Logic Implementation | Standard Cell Based |
| Tools Used | OpenLane, OpenROAD, Yosys, Magic, KLayout, Netgen |
| Verification | DRC and LVS |

## Physical Design Flow

| Stage | Description |
|------|-------------|
| RTL Synthesis | Verilog converted to gate-level netlist using Yosys |
| Floorplanning | Core area and placement rows generated |
| Placement | Standard cells placed inside core region |
| Clock Tree Synthesis | Clock buffers inserted to balance clock skew |
| Routing | Signal wires routed across metal layers |
| DRC | Layout checked against manufacturing rules |
| LVS | Layout connectivity compared with schematic |
| GDS Generation | Final layout produced for fabrication |

## Tools Used

- OpenLane
- OpenROAD
- Yosys
- Magic
- KLayout
- Netgen
- Sky130 PDK

---

## Design Description

The mini CPU performs basic arithmetic and logic operations.

Main components:

- ALU (Arithmetic Logic Unit)
- Registers / Flip-flops
- Control logic
- Datapath connecting inputs → ALU → result register

---

## Clock

The design uses a single clock domain.
All sequential elements trigger on the positive edge of the clock.

---

## Physical Design Flow

The following stages were implemented using OpenLane:

1. RTL synthesis
2. Floorplanning
3. Placement
4. Clock Tree Synthesis (CTS)
5. Routing
6. Design Rule Check (DRC)
7. Layout vs Schematic (LVS)
8. GDS generation

---

## Project Structure
mini_cpu
│
├── src/
├── config.json
├── constraint.sdc
└── README.md

---

## Learning Outcomes

This project demonstrates understanding of:

- RTL-to-GDS flow
- Standard cell placement
- Clock tree synthesis
- Routing
- DRC and LVS verification
- Layout inspection using Magic and KLayout

---

## Author

Rahul Nautiyal  
VLSI Physical Design
