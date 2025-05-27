# ORCA_TOP – Physical Design Project (32nm Technology)

## 📌 Overview
This project showcases my end-to-end block-level physical design work using Synopsys ICC Compiler on a 32nm technology node. It was completed during my physical design training at Takshila Institute of VLSI Technologies.

---

## 🛠️ Specifications

| Parameter             | Value                     |
|-----------------------|---------------------------|
| Technology Node       | 32nm                      |
| Standard Cell Count   | ~56,000                   |
| No. of Macros         | 40                        |
| No. of Clocks         | 7                         |
| Target Frequency      | 416 MHz                   |
| Metal Layers          | 9                         |
| Tool Used             | Synopsys IC Compiler (ICC2) |
| Timing Sign-off Tool  | Synopsys PrimeTime        |
| Scripting             | TCL                       |

---

## 📂 Project Flow Executed

### 1. Floorplanning
- Created a floorplan accommodating 40 macros and I/O ports.
- Performed iterative floorplanning to minimize congestion and improve routability.

### 2. IO & Power Planning
- Strategically placed I/O ports on all sides.
- Executed core ring and stripe-based power grid generation using custom TCL scripts.

### 3. Placement
- Placed 56K+ standard cells with congestion analysis.
- Used soft/hard blockages to guide legal placement and reduce overlap.

### 4. Clock Tree Synthesis (CTS)
- Built clock trees for 7 clocks with defined latency and skew targets.
- Balanced clock distribution to meet setup/hold constraints.

### 5. Routing
- Routed signal nets ensuring minimal detour and fewer vias.
- Addressed antenna violations and optimized wirelength.

### 6. Physical Verification
- DRC and connectivity clean layout.
- Verified net integrity and macro placements using hierarchical checks.

---

## 📈 Learning Outcomes
- Gained confidence in dealing with larger designs (~56k cells, 40 macros).
- Understood importance of floorplan symmetry and clock tree balancing.
- Learned key ICC2 commands and scripting to speed up iterations.

---


---

## 📞 Contact
**Rahul Nautiyal**  
Email: rnautiyal3@gmail.com  
LinkedIn: [linkedin.com/in/rahul-n-1a6770149](https://linkedin.com/in/rahul-n-1a6770149)
