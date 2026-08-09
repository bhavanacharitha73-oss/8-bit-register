# 8-Bit Register Using Verilog

## Description

An **8-bit register** is a sequential digital circuit used to store and hold an 8-bit binary value. The register stores the input data on the active edge of a clock signal and maintains the stored value until the next clock edge.

This project implements an 8-bit register using **Verilog HDL** with a clock and reset input. A testbench is provided to verify the functionality through simulation.

## Features

* Stores 8-bit binary data
* Synchronous operation using a clock
* Reset functionality
* Verilog HDL implementation
* Testbench for functional verification
* Simulation waveform generation

## Inputs and Outputs

| Signal         | Direction | Description       |
| -------------- | --------- | ----------------- |
| clk            | Input     | Clock signal      |
| reset          | Input     | Reset signal      |
| data_in [7:0]  | Input     | 8-bit input data  |
| data_out [7:0] | Output    | 8-bit stored data |

## Working Principle

At every rising edge of the clock:

* If `reset = 1`, the register is cleared to `00000000`.
* If `reset = 0`, the input data is stored in the register.
* The stored data remains unchanged until the next rising clock edge.

## Applications

8-bit registers are used in:

* Microprocessors
* Digital systems
* CPUs
* Data storage circuits
* Shift and storage registers
* Control units
* Communication systems

## Tools Used

* Verilog HDL
* Icarus Verilog / ModelSim / Vivado
* GTKWave for waveform viewing
* GitHub

## How to Run

### Compile the design and testbench

```bash
iverilog -o register_sim register_8bit.v register_8bit_tb.v
```

### Run the simulation

```bash
vvp register_sim
```

### View the waveform

```bash
gtkwave register_8bit.vcd
```

## Expected Result

The simulation verifies that the register correctly stores input data on the rising edge of the clock and clears the output when reset is activated.

## Project Files

* `register_8bit.v` - 8-bit register design.
* `register_8bit_tb.v` - Testbench.
* `simulation_output.txt` - Expected simulation output.
* `README.md` - Project documentation.

## Author

Verilog HDL 8-bit Register Project.
