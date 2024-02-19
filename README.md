# VHDL_Assignment 😓

This repository contains VHDL code, test cases and all other relevant files  the solutions of past paper questions of embedded system. The code is compiled using GHDL and the waveforms is visualized using GTKWave.

## Prerequisites

Ensure you have the following software installed on your system:

* GHDL

* GTKWave 

## Installing GHDL🔃
Follow the instructions on the [GHDL github repository](https://github.com/ghdl/ghdl/releases) to install GHDL on your system.

## Installing GTKWave🔃
Follow the instructions on the [GTKWave github repository](https://github.com/gtkwave/gtkwave) to install GTKWave on your system.

``` git clone https://github.com/Sudhin-star1/Embedded_VHDL_LAB/

  ``` # Example command for running GHDL
  ghdl -a your_test_bench.vhd
  ghdl -e your_test_bench
  ghdl -r your_test_bench --wave=wave.ghw

```# Example command for GTKWave
gtkwave wave.ghw
