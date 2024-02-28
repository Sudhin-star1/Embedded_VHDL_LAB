# 3-to-8 Decoder VHDL Implementation

This repository contains VHDL code for a 3-to-8 decoder (`decoder_3to8`) and its corresponding testbench (`decoder_3to8_tb`). The decoder takes a 3-bit input and activates one of eight output lines based on the input combination.

## Files

- `decoder_3to8.vhdl`: VHDL code for the 3-to-8 decoder entity and architecture.
- `decoder_3to8_tb.vhdl`: VHDL code for the testbench entity and architecture.

## `decoder_3to8` Entity

The `decoder_3to8` entity represents a 3-to-8 decoder with the following ports:

- `A`, `B`, `C`: Input signals representing the 3-bit input.
- `Y0` to `Y7`: Output signals representing the activated output line based on the input combination.

## Testbench (`decoder_3to8_tb`)

The testbench (`decoder_3to8_tb`) is used to verify the functionality of the `decoder_3to8` entity. It provides stimulus to the decoder and observes its output.

## Running the Testbench

To run the testbench:

1. Compile the VHDL files (`decoder_3to8.vhdl` and `decoder_3to8_tb.vhdl`) using a VHDL compiler (e.g., GHDL).
2. Simulate the compiled design using a simulator (e.g., GHDL or ModelSim).

## Test Cases

The testbench includes the following test cases:

1. Input `000`: Only `Y0` is expected to be '1'.
2. Input `001`: Only `Y1` is expected to be '1'.
3. Input `010`: Only `Y2` is expected to be '1'.
4. Input `011`: Only `Y3` is expected to be '1'.
5. Input `100`: Only `Y4` is expected to be '1'.
6. Input `101`: Only `Y5` is expected to be '1'.
7. Input `110`: Only `Y6` is expected to be '1'.
8. Input `111`: Only `Y7` is expected to be '1'.

Each test case is applied for a duration of 10 ns.

## Observing Output

The testbench observes the output lines (`Y0` to `Y7`) of the decoder and reports them accordingly.

## Screenshot
(https://github.com/Sudhin-star1/Embedded_VHDL_LAB/edit/main/3to8Decoder/Readme.md#:~:text=3to8.-,png,-Readme.md)
