# Half Adder VHDL Implementation

This repository contains VHDL code for a half adder (`Half_Adder`) and its corresponding testbench (`HA_tb`). The half adder computes the sum of two input bits and generates a carry-out bit.

## Files

- `Half_Adder.vhdl`: VHDL code for the half adder entity and architecture.
- `HA_tb.vhdl`: VHDL code for the testbench entity and architecture.

## `Half_Adder` Entity

The `Half_Adder` entity represents a half adder with the following ports:

- `A`, `B`: Input bits to be added.
- `S`: Output representing the sum of `A` and `B`.
- `C`: Output representing the carry-out of the addition.

## Behavior

The half adder computes the sum output (`S`) using the XOR operation on the inputs `A` and `B`. It calculates the carry-out (`C`) using the AND operation on the inputs.

## Testbench (`HA_tb`)

The testbench (`HA_tb`) verifies the functionality of the `Half_Adder` entity. It provides stimulus to the half adder inputs (`A`, `B`) and monitors the outputs (`S`, `C`).

## Running the Testbench

To run the testbench:

1. Compile the VHDL files (`Half_Adder.vhdl` and `HA_tb.vhdl`) using a VHDL compiler (e.g., GHDL).
2. Simulate the compiled design using a simulator (e.g., GHDL or ModelSim).

## Screenshots
