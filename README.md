# CSE224 Spring 2025 - ASIC Design Projects  
This repository contains six OpenLane-based ASIC design projects completed as part of the CSE224 course during Spring 2025.

## 🧠 Overview of Projects

### 📁 `project1_openlane/twos_complement`
Design of a Two's Complement logic block. The module converts binary input into its two's complement form.  
This design was previously uploaded in archived `.tar.gz` format, which remains in the repository as a historical reference. The current folder structure was later pushed for visual clarity and consistency across all projects.

### 📁 `project2_openlane/alu`
Implements a simple Arithmetic Logic Unit (ALU). It includes basic operations such as addition, subtraction, and bitwise logic, synthesized and implemented using the OpenLane toolchain.

### 📁 `project3_openlane/seven_seg_counter`
A counter module from 0 to 5, with its binary output decoded and displayed using a 7-segment display module. This project demonstrates hierarchical Verilog design and ASIC synthesis via OpenLane.

### 📁 `project4_register_alu`
Combines a Register File with an ALU.  
- **Folder:** `project4_register_alu`  
- **Contents:**  
  - `src/RegisterFile.v` – 32×32‐bit register file with read/write ports  
  - `src/ALU.v` – ALU supporting add, sub, AND, OR, XOR operations  
  - `src/TopModule.v` – Top‐level wrapper that instantiates the Register File and ALU  
  - `config.json` – OpenLane configuration for synthesis  
  - Additional testbenches and constraint files under `project4_register_alu/src/`  

### 📁 `project5_TopCPU`
Simple CPU core design (TopCPU).  
- **Folder:** `project5_TopCPU`  
- **Contents:**  
  - `src/ProgramCounter.v` – Program Counter with synchronous reset and enable  
  - `src/InstructionMemory.v` – ROM holding instruction codes  
  - `src/InstructionDecoder.v` – Control unit decoding instruction opcodes  
  - `src/RegisterFile.v` – 32×32‐bit register file shared by CPU pipeline  
  - `src/ALU.v` – Arithmetic Logic Unit for execute stage  
  - `src/TopCPU.v` – Top‐level CPU module integrating all submodules  
  - `config.json` – OpenLane flow settings  
  - Testbench files and constraint scripts (e.g., `TopCPU.sdc`)  

### 📁 `project6_TopModule`
Full processor design with I/O integration (TopModule).  
- **Folder:** `project6_TopModule`  
- **Contents:**  
  - `src/ProgramCounter.v` – Program Counter supporting branch/jump  
  - `src/InstructionMemory.v` – On‐chip instruction ROM  
  - `src/InstructionDecoder.v` – Control logic for multi-cycle operations  
  - `src/RegisterFile.v` – Register bank with hazard detection support  
  - `src/ALU.v` – ALU extended to handle shift and set-on-less-than  
  - `src/TopModule.v` – Top‐level module hooking CPU core to simple UART I/O  
  - `config.json` – OpenLane configuration parameters  
  - `TopModule.sdc` – Timing constraints for synthesis  
  - Testbenches and sample program files under `project6_TopModule/src/`  

---

## 📦 Archive Note
> **Note:** The `twos_complement_project.tar.gz` file corresponds to Project 1 and was uploaded earlier. Its presence is retained intentionally as a backup.  
The folder `project1_openlane/twos_complement/` reflects the same design, structured to match the format of later projects.

---

## 🛠 Tools Used
- [OpenLane](https://github.com/The-OpenROAD-Project/OpenLane)  
- Sky130A PDK  
- Verilog HDL  
- Docker

---

## ✍ Authors
Kerem Eren  
CSE224 – Spring 2025  
Student ID: 20200702048

Begüm Hamarat (https://github.com/begumhamarat)
CSE224 – Spring 2025  
Student ID: 20210702111

> Both students equally contributed to all six projects. Project 1 was initially uploaded in archived format (`.tar.gz`), and the structured folder version was added later for clarity and consistency.

---
