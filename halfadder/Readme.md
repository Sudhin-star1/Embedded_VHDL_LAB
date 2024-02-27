# Half Adder VHDL Implementation

This repository contains the VHDL implementation of a half adder along with its testbench for verification. The half adder is a fundamental digital circuit that adds two bits and produces a sum and carry output.

## Description

A half adder is a combinational circuit that performs the addition of two single binary digits. It has two inputs: A and B, representing the two bits to be added. It produces two outputs: S (Sum) and C (Carry). The truth table for a half adder is as follows:

| A | B | S | C |
|---|---|---|---|
| 0 | 0 | 0 | 0 |
| 0 | 1 | 1 | 0 |
| 1 | 0 | 1 | 0 |
| 1 | 1 | 0 | 1 |


## Circuit Diagram

![Half Adder Circuit](https://github.com/niranjandahal/Embedded_VHDL_LAB/blob/main/halfadder/halfadder.jpg)



## Files

- `Half_Adder.vhd`: VHDL code for the half adder entity and its behavioral architecture.
- `HA_tb.vhd`: VHDL testbench for the half adder.


## To Run

    ```bash
   
    ghdl -a your_vhdl_code.vhd
    ghdl -a your_test_bench.vhd
    ghdl -e your_test_bench
    ghdl -r your_test_bench --vcd=result.vcd --stop-time=10us
    
    ```

## Usage

1. **Simulation**: To simulate and verify the functionality of the half adder, use any VHDL simulator such as ModelSim.
   - Compile both `Half_Adder.vhd` and `HA_tb.vhd`.
   - Run the simulation on the testbench `HA_tb`.


  #Simulation Image
![Half Adder Circuit_outpur](https://github.com/niranjandahal/Embedded_VHDL_LAB/blob/main/halfadder/halfaddersimulation.jpg)  

2. **Integration**: Integrate the half adder module into your larger VHDL designs for arithmetic operations.

