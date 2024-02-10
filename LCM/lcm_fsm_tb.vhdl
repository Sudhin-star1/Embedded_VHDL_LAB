library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lcm_fsm_tb is
end entity lcm_fsm_tb;

architecture testbench of lcm_fsm_tb is
    component lcm_fsm
        port (
            clk, rst, start: in std_logic;
            ready: out std_logic;
            num1, num2: in unsigned(15 downto 0);
            lcm_result: out unsigned(15 downto 0)
        );
    end component;

    signal clk, rst, start, ready: std_logic := '0';
    signal num1, num2, lcm_result: unsigned(15 downto 0);
begin
    dut: lcm_fsm
    port map (
        clk => clk,
        rst => rst,
        start => start,
        ready => ready,
        num1 => num1,
        num2 => num2,
        lcm_result => lcm_result
    );

    clk_process: process
    begin
        clk <= '0';
        wait for 5 ns;
        clk <= '1';
        wait for 5 ns;
    end process;

    stimulus_process: process
    begin
        rst <= '1';
        wait for 10 ns;
        rst <= '0';
        wait for 10 ns;

        num1 <= to_unsigned(4, num1'length);
        num2 <= to_unsigned(6, num2'length);
        start <= '1';
        wait for 10 ns;
        start <= '0';
        wait until ready = '1';
        wait for 10 ns;

        num1 <= to_unsigned(8, num1'length);
        num2 <= to_unsigned(12, num2'length);
        start <= '1';
        wait for 10 ns;
        start <= '0';
        wait until ready = '1';
        wait for 10 ns;

        -- Add more test cases here if needed

        wait;
    end process;
end architecture testbench;
