# ⏰ Digital Clock with Time Setting and Alarm (Verilog RTL)

## Overview

This repository contains my **first self-written synthesizable Verilog RTL project**, implementing a **24-hour digital clock** with configurable time setting and alarm functionality. The project also includes a Verilog testbench for functional simulation and waveform generation.

The purpose of this project was to learn the fundamentals of RTL design, sequential logic, counters, and basic verification while developing a complete digital system from scratch.

> **Note:** This repository preserves my first independently developed RTL design. Minor improvements have been made for readability and functionality while maintaining the original design intent.

---

## Features

- 24-hour digital clock (HH:MM:SS)
- Configurable time setting
- Alarm functionality
- Clock enable controlled time counting
- Synchronous reset
- Synthesizable Verilog RTL
- Verilog testbench for functional simulation
- VCD waveform generation

---

## RTL Elaborated Design 

<p align="center">
  <img src="results\RTL_elaborated_design.png" width="1000">
</p>

---

## Simulation

The included Verilog testbench demonstrates:

- Clock generation
- Time counting
- Manual time setting
- Alarm operation
- Reset functionality
- Waveform generation using VCD

Supported simulators include:

- Synopsys VCS
- Icarus Verilog
- Questa/ModelSim
- Cadence Xcelium

---

## Learning Outcomes

This project helped me understand:

- Verilog RTL design
- Sequential logic design
- Cascaded counters
- Clocked `always` blocks
- Non-blocking assignments (`<=`)
- Register-based digital systems
- Basic RTL verification
- Testbench development
- Waveform analysis

---

## Future Improvements

Possible enhancements include:

- Separate alarm registers
- Cleaner sequential logic with prioritized conditions
- Parameterized clock divider for real-time operation
- Self-checking testbench
- SystemVerilog assertions
- UVM-based verification environment
- Functional coverage

---

## Author

**Sourik Choudhury**

If you found this project helpful or interesting, consider giving it a ⭐ on GitHub.