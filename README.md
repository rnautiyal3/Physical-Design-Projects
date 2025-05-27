# Physical-Design-Projects
# ORCA_TOP_IO – Physical Design Project (28nm Technology)

## 📌 Overview
This project is part of my hands-on Physical Design training at Takshila Institute of VLSI Technologies. The objective was to complete a full RTL to GDSII implementation of a block using Synopsys IC Compiler (ICC2).

---

## 🛠️ Specifications

| Parameter             | Value                     |
|-----------------------|---------------------------|
| Technology Node       | 28nm                      |
| Standard Cell Count   | ~50,000                   |
| No. of Macros         | 30                        |
| No. of Clocks         | 7                         |
| Target Frequency      | 400 MHz                   |
| Metal Layers          | 9                         |
| Tool Used             | Synopsys IC Compiler (ICC2) |
| Timing Sign-off Tool  | Synopsys PrimeTime        |
| Scripting             | TCL                       |

---

## 📂 Project Flow Executed

### 1. Floorplanning
- Placed 30 macros strategically for congestion and routing ease.
- Defined core area, IO ring, and hard/soft blockages.

### 2. IO Planning & Power Planning
- Assigned IO pins to all 4 sides based on connectivity.
- Created power stripes and core rings using `create_power_straps` commands.

### 3. Placement
- Standard cell placement with congestion and timing awareness.
- Checked and fixed overlapping and spacing violations.

### 4. Clock Tree Synthesis (CTS)
- Generated clock tree for 7 clocks with defined skew and latency constraints.
- Used `create_clock`, `set_clock_latency`, and `set_clock_uncertainty`.

### 5. Routing
- Global and detail routing performed.
- Focused on signal integrity and minimized antenna effects.

### 6. Physical Verification
- DRC clean design with minor antenna violations corrected.
- Layout exported post verification.

---

## 📈 Learning Outcomes
- Understood how macro and pin placements affect congestion.
- Improved timing closure through placement & CTS iterations.
- Learned use of TCL scripting to automate power planning and reporting.

---



---

## 📞 Contact
**Rahul Nautiyal**  
Email: rnautiyal3@gmail.com  
LinkedIn: [linkedin.com/in/rahul-n-1a6770149](https://linkedin.com/in/rahul-n-1a6770149)
