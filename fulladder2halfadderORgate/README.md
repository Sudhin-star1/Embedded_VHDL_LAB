## Full Adder VHDL Implementation

A VHDL implementation of a full adder circuit, composed of half adders and an OR gate, along with a testbench to verify its functionality.

## Introduction

This project provides VHDL code for a full adder circuit, which is a fundamental component in digital logic design. The full adder is implemented using two half adders and an OR gate. Additionally, a testbench is included to simulate and verify the functionality of the full adder.

- Implements a full adder circuit in VHDL.
- Includes a testbench for functional verification.
- Modular design using half adders and an OR gate.
- Clear and concise code structure for easy understanding and modification.

# Truth Table

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


## Circuit diagram
![Full Adder Using_Two_half_adder_Circuit](https://github.com/niranjandahal/Embedded_VHDL_LAB/blob/main/fulladder2halfadderORgate/fulladdertwohalfadder.png)


## Command to run

     
    ghdl -a full_adder.vhdl

    ghdl -a or_gate.vhdl

    ghdl -a full_adder_tb.vhdl

    ghdl -a half_adder.vhdl

    ghdl -e full_adder_tb

    ghdl -r full_adder_tb --vcd=result.vcd

    gtkwave result.vcd
    

## WAVEFORM 
<img src="https://github.com/Sudhin-star1/Embedded_VHDL_LAB/blob/main/fulladder2halfadderORgate/Screenshot%20(421).png">
