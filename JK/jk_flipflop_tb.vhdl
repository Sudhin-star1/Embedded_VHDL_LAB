library ieee;
use ieee.std_logic_1164.all;

entity jk_flipflop_tb is
end entity jk_flipflop_tb;

architecture testbench of jk_flipflop_tb is
    component jk_flipflop
        port (
            J, K, CLK, RESET: in std_logic;
            Q, Q_bar: out std_logic
        );
    end component;

    signal J, K, CLK, RESET: std_logic;
    signal Q, Q_bar: std_logic;
begin
    uut: jk_flipflop
    port map (
        J => J,
        K => K,
        CLK => CLK,
        RESET => RESET,
        Q => Q,
        Q_bar => Q_bar
    );

    -- Clock process
    clk_process: process
    begin
        while now < 1000 ns loop
            CLK <= '0';
            wait for 5 ns;
            CLK <= '1';
            wait for 5 ns;
        end loop;
        wait;
    end process;

    -- Stimulus process
    stimulus_process: process
    begin
        -- Apply reset
        RESET <= '1';
        wait for 10 ns;
        RESET <= '0';

        -- Test JK flip-flop behavior
        wait for 20 ns;
        J <= '1'; K <= '0';  -- Set J=1, K=0
        wait for 10 ns;
        J <= '0'; K <= '1';  -- Set J=0, K=1
        wait for 10 ns;
        J <= '1'; K <= '1';  -- Set J=1, K=1
        wait for 10 ns;
        J <= '0'; K <= '0';  -- Set J=0, K=0
        wait for 10 ns;

        -- Finish simulation
        wait;
    end process;
end architecture testbench;
