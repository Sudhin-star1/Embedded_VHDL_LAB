# VHDL Architecture Styles Overview

In VHDL, architecture can be described in three main styles: 
This repository provides an overview of two main architecture styles in VHDL: Behavioral, Structural. Each style offers distinct advantages and is used for different purposes in designing digital circuits.

## 1. Behavioral Style Architecture

This style describes the behavior or functionality of the system in an algorithmic manner. It model how the circuit outputs will behave to the circuits inputs.This model may not refleecy how the circuit is implemented when it is synthesized.in this style the internal working is implemented using sequential statements within process statements.

### Pros: 
  Quick to implement, easier to understand algorithmic behavior, suitable for high-level modeling.
  
### Cons: 
  May not reflect hardware structure accurately, lower reusability due to specific algorithms.

## Example of behavioral style architecture:



    library IEEE;
    use IEEE.STD_LOGIC_1164.ALL;
    ENTITY HALF_ADDER IS
    PORT (
        A, B : IN STD_LOGIC;
        SUM, CARRY : OUT STD_LOGIC
    );
    END ENTITY HALF_ADDER;
    
    ARCHITECTURE BEHAVIORAL OF HALF_ADDER IS
    BEGIN
        PROCESS (A, B)
        BEGIN
            SUM <= A XOR B;
            CARRY <= A AND B;
        END PROCESS;
    END ARCHITECTURE BEHAVIORAL;



## 2. Structural Style Architecture

This style describes the system as a collection of interconnected components.It is most useful when designing complex systems by breaking them down into simpler, reusable components.Each component is a placeholder for a design entity and represents a physical piece of hardware, such as a logic gate or a flip-flop.The architecture body in structural style consists of component instantiation statements, which specify how these components are interconnected.

### Pros:
Offers better control over hardware structure, facilitates component reuse, suitable for complex designs.

### Cons:
Requires more effort for interconnections, may be more complex to understand initially.

## Example of structural style architecture:


    library IEEE;
    use IEEE.STD_LOGIC_1164.ALL;
    
    ENTITY TEST IS
    PORT (
        A, B, C, D : IN STD_LOGIC;
        Z : OUT STD_LOGIC
    );
    END ENTITY TEST;
    
    ARCHITECTURE TEST_ARCH OF TEST IS
    
    COMPONENT AND_GATE
    PORT (
        X, Y : IN STD_LOGIC;
        when : OUT STD_LOGIC
    );
    END COMPONENT;
    
    COMPONENT OR_GATE
    PORT (
        X, Y : IN STD_LOGIC;
        when : OUT STD_LOGIC
    );
    END COMPONENT;
    
    SIGNAL E,F: STD_LOGIC;
    
    BEGIN
        U1: AND_GATE PORT MAP (X=>A, Y=>B, W=>E);
        U2: AND_GATE PORT MAP (X=>C, Y=>D, W=>F);
        U3: OR_GATE PORT MAP (X=>E, Y=>F, W=>Z);
    END ARCHITECTURE TEST_ARCH;



## Overall difference





|  Behavioral Style                           | Structural Style                               |
| --------------------------------------------| -----------------------------------------------|
| Describes behavior or functionality         | Describes as interconnected components         |
| Behavior and algorithmic description        | Component interconnections and hierarchy       |
| Abstract, algorithmic                       | Concrete, specific component instances         |
| Higher level of abstraction                 | Lower level of abstraction                     |
| Sequential statements within processes      | Instantiation of predefined components         |
| Quick algorithmic modeling                  | Complex system decomposition                   |
| Easier for algorithmic descriptions         | May require more effort for interconnections   |
| Suitable for less complex designs           | Better for managing complexity                 |
| May not reflect hardware implementation     | Reflects actual hardware structure             |
| Easier to debug due to algorithmic nature   | May require more attention to interconnections |
| Lower reusability due to algorithmic nature | Higher reusability of components               |





