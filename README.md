RISC-V Pipeline Architecture Implementation

Welcome to the repository for the RISC-V Pipeline Architecture, implemented in SystemVerilog. This project extends the basic single-cycle RISC-V implementation by incorporating a pipelined design, including Control and Status Register (CSR) support, enhancing performance and functionality.

Features

Pipeline Stages:

Instruction Fetch (IF)

Instruction Decode (ID)

Execute (EX)

Memory Access (MEM)

Write Back (WB)

Support for R, I, U, B, and J type instructions.

Load and Store operations:

Load Word (LW), Load Halfword (LH/UH), Load Byte (LB/UB)

Store Word (SW), Store Halfword (SH), Store Byte (SB)

Branching and Jumping instructions.

CSR functionality for privileged operations.

Prerequisites

To run and simulate this project, you need:

A SystemVerilog-compatible simulator (e.g., ModelSim, QuestaSim, or Vivado)

GTKWave for waveform visualization
Use these commands to run
vlog ./*.sv
vsim -c tb_processor -voptargs=+acc -do "run -all"
gtkwave processor.vcd

Contributing

Contributions are welcome! Please create a pull request or open an issue for any enhancements or bug fixes.


Contact

For queries or collaborations, reach out to:

A.G.Hasan Zarook

Email: hasanzarook46@gmail.com
