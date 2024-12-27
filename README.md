**🚀 RISC-V Pipeline Architecture Implementation
Welcome to the RISC-V Pipeline Architecture repository, implemented in SystemVerilog. This project builds on a basic single-cycle RISC-V processor and introduces a 5-stage pipelined design with Control and Status Register (CSR) support, significantly enhancing performance and functionality.**

**🌟 Features**

**🏗️ Pipeline Stages**/n
      Instruction Fetch (IF): Fetches the instruction from memory based on the program counter.
      Instruction Decode (ID): Decodes the fetched instruction and reads the required registers.
      Execute (EX): Performs arithmetic or logical operations and calculates memory addresses.
      Memory Access (MEM): Accesses data memory for load and store operations.
      Write Back (WB): Writes the result back to the register file.
      
**📜 Supported Instruction Types**
      R-Type: ADD, SUB, AND, OR, XOR, etc.
      I-Type: ADDI, SLTI, LW, etc.
      U-Type: LUI, AUIPC.
      B-Type: BEQ, BNE, BLT, etc.
      J-Type: JAL, JALR.
      
**📦 Load and Store Instructions**
      Load: LW (Load Word), LH/UH (Load Halfword/Unsigned), LB/UB (Load Byte/Unsigned).
      Store: SW (Store Word), SH (Store Halfword), SB (Store Byte).
    
**🔄 Control and Status Register (CSR) Suppor**t
      Provides privileged operation functionality for handling system-level tasks and interrupt handling.

**📋 Prerequisites**
      To run and simulate this project, ensure you have:
          A SystemVerilog-compatible simulator (e.g., ModelSim, QuestaSim, or Vivado).
          GTKWave for waveform visualization.
          
**🛠️ Running the Project**

**🖥️ Compilation**
      Use the following command to compile all SystemVerilog files in the directory:
        vlog *.sv
      
**🚀 Simulation**
      To simulate the compiled design, use:
        vsim -c tb_processor -voptargs=+acc -do "run -all"
      This generates a .vcd file (e.g., processor.vcd) capturing the simulation results.
    
**📈 Waveform Visualization**
      Open the .vcd file in GTKWave:
        gtkwave processor.vcd
      Analyze the signals and validate the processor's behavior.
      
**⚙️ Design Highlights**

**🛡️ Hazard Handling**
      Structural Hazards: Avoided by separating instruction and data memory.
      Data Hazards: Resolved using forwarding and stalling mechanisms.
      Control Hazards: Flushing pipeline stages as needed for branch and jump instructions.
      
**📂 Example Programs Tested**
      Factorial: Demonstrates the processor's handling of loops and calculations.
      GCD (Greatest Common Divisor): Validates branching, arithmetic, and memory operations.
      
**🤝 Contributing**
      Contributions are welcome! If you’d like to improve the design or report issues, feel free to:

**Fork the repository.
Create a pull request with your changes.
Open an issue to discuss improvements.**

**📧 Contact**
      For any queries or collaborations, feel free to reach out:
        Name: A.G.Hasan Zarook
        Email: hasanzarook46@gmail.com
        
**🔖 Tags**
#RISC-V #ProcessorDesign #PipelineArchitecture #SystemVerilog #HardwareDevelopment #OpenSource
