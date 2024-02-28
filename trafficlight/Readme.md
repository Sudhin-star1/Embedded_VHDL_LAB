# Traffic Light Controller

This repository contains VHDL code for a traffic light controller (`traffic_light_controller`) and its corresponding testbench (`traffic_light_controller_tb`). The traffic light controller manages the signals for a four-way intersection.

## Files

- `traffic_light_controller.vhd`: VHDL code for the traffic light controller entity and architecture.
- `traffic_light_controller_tb.vhd`: VHDL code for the testbench entity and architecture.

## `traffic_light_controller` Entity

The `traffic_light_controller` entity represents a traffic light controller with the following ports:

- `clk`: Clock signal.
- `rst`: Reset signal.
- `north_green`, `north_red`, `north_yellow`: Output signals for the north direction traffic lights.
- `south_green`, `south_red`, `south_yellow`: Output signals for the south direction traffic lights.
- `east_green`, `east_red`, `east_yellow`: Output signals for the east direction traffic lights.
- `west_green`, `west_red`, `west_yellow`: Output signals for the west direction traffic lights.

## Behavior

The traffic light controller operates based on a finite state machine (FSM) to transition between different states, controlling the traffic lights' behavior.

## Testbench (`traffic_light_controller_tb`)

The testbench (`traffic_light_controller_tb`) verifies the functionality of the `traffic_light_controller` entity. It provides a clock signal and monitors the output signals.

## Running the Testbench

To run the testbench:

1. Compile the VHDL files (`traffic_light_controller.vhd` and `traffic_light_controller_tb.vhd`) using a VHDL compiler (e.g., GHDL).
2. Simulate the compiled design using a simulator (e.g., GHDL or ModelSim).
