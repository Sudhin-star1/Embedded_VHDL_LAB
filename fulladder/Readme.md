# Full Adder VHDL Implementation

This repository contains the VHDL implementation of a full adder along with its testbench for verification. The full adder is a fundamental digital circuit that adds three bits (two single binary digits and a carry input) and produces a sum and carry output.

## Description

A full adder is a combinational circuit that performs the addition of three single binary digits. It has three inputs: A, B, and Cin, representing the two bits to be added and a carry input from the previous stage. It produces two outputs: Sum and Cout (Carry out). The truth table for a full adder is as follows:

| A | B | Cin | Sum | Cout |
|---|---|-----|-----|------|
| 0 | 0 |  0  |  0  |  0   |
| 0 | 0 |  1  |  1  |  0   |
| 0 | 1 |  0  |  1  |  0   |
| 0 | 1 |  1  |  0  |  1   |
| 1 | 0 |  0  |  1  |  0   |
| 1 | 0 |  1  |  0  |  1   |
| 1 | 1 |  0  |  0  |  1   |
| 1 | 1 |  1  |  1  |  1   |



![Full Adder Circuit](https://github.com/niranjandahal/Embedded_VHDL_LAB/blob/main/halfadder/fulladder.png)

## Files

- `full_adder.vhd`: VHDL code for the full adder entity and its behavioral architecture.
- `full_adder_tb.vhd`: VHDL testbench for the full adder.

## Circuit Diagram

![Full Adder Circuit](path_to_full_adder_circuit_image)

## To Run

  ```bash
  ghdl -a your_vhdl_code.vhd
  ghdl -a your_test_bench.vhd
  ghdl -e your_test_bench
  ghdl -r your_test_bench --vcd=result.vcd --stop-time=10us
  ```

## SImulation Images


![Full Adder Circuit_outpur](https://github.com/niranjandahal/Embedded_VHDL_LAB/blob/main/halfadder/fulladdersimulation.png)


