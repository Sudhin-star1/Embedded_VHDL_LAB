-- File: lfsr_8.vhd
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lfsr_8 is
    generic (initval: bit_vector (7 downto  0) := "00000000");
    port (clk: in bit;
          randout: buffer bit_vector(7 downto  0) := initval);
end lfsr_8;

architecture dataflow of lfsr_8 is
    signal din: bit_vector (7 downto  0);
begin  
    p1: process(clk) begin
        if(clk'event AND clk='1') then
            randout <= din;
        end if;  
    end process;  
    din(0) <= NOT (NOT (NOT (randout(7) XOR randout(5)) XOR randout(4)) XOR randout(3));
    g1: FOR i IN  1 TO  7 GENERATE
        din(i) <= randout(i-1);
    END GENERATE;
end dataflow;
