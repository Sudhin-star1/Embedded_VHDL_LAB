# GCD (Greatest Common Divisor) VHDL Implementation

This repository contains the VHDL implementation of a GCD (Greatest Common Divisor) calculator along with its testbench for verification. The GCD calculator is a digital circuit that computes the greatest common divisor of two integers.

## Description

The GCD calculator is implemented using a finite state machine (FSM) architecture. It takes two integer inputs (`NUM1` and `NUM2`) and calculates their greatest common divisor, which is output as `GCD`. The calculation is performed based on the Euclidean algorithm, which repeatedly divides one number by the other and replaces the larger number with the remainder until the remainder is zero. The last non-zero remainder is the GCD of the two numbers.

## Files

- `GCD.vhd`: VHDL code for the GCD entity and its behavioral architecture.
- `GCD_tb.vhd`: VHDL testbench for the GCD calculator.

## Finite State Machine (FSM) Diagram

![gcd_fsm_diagram](https://github.com/niranjandahal/Embedded_VHDL_LAB/blob/main/GCD/gcdfsm.png)


## To Run

```bash
ghdl -a your_vhdl_code.vhd
ghdl -a your_test_bench.vhd
ghdl -e your_test_bench
ghdl -r your_test_bench --vcd=result.vcd --stop-time=10us
```

## Simulation Images

![gcd_simulation_diagram](https://github.com/niranjandahal/Embedded_VHDL_LAB/blob/main/GCD/gcdsimulation.png)

