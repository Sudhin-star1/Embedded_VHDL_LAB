-- File: gcd_processor_tb.vhd
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity gcd_processor_tb is
end gcd_processor_tb;

architecture tb of gcd_processor_tb is
    signal clk: std_logic := '0'; -- Changed from 'bit' to 'std_logic'
    signal lfsr1_out, lfsr2_out: std_logic_vector(7 downto   0); -- Changed from 'bit_vector' to 'std_logic_vector'
    signal num_a, num_b: std_logic_vector(7 downto   0);
    signal gcd: std_logic_vector(7 downto   0);
    signal done: std_logic;

    component lfsr_8
        generic (initval: std_logic_vector (7 downto   0)); -- Changed from 'bit_vector' to 'std_logic_vector'
        port (clk: in std_logic; -- Changed from 'bit' to 'std_logic'
              randout: out std_logic_vector(7 downto   0)); -- Changed from 'buffer bit_vector' to 'out std_logic_vector'
    end component;

    component gcd_processor
        Port (
            clk : in std_logic;
            reset : in std_logic;
            num_a : in std_logic_vector(7 downto   0);
            num_b : in std_logic_vector(7 downto   0);
            gcd : out std_logic_vector(7 downto   0);
            done : out std_logic
        );
    end component;

begin
    -- LFSRs
    UUT1: lfsr_8 generic map (initval => "00000001") port map (clk => clk, randout => lfsr1_out);
    UUT2: lfsr_8 generic map (initval => "00000010") port map (clk => clk, randout => lfsr2_out);

    -- GCD Processor
    UUT: gcd_processor port map (
        clk => clk,
        reset => '0', -- No reset needed for this testbench
        num_a => num_a,
        num_b => num_b,
        gcd => gcd,
        done => done
    );

    -- Clock generation
    clk_process: process
    begin
        clk <= '0';
        wait for   10 ns;
        clk <= '1';
        wait for   10 ns;
    end process;

    -- Stimulus process
    stimulus_process: process
    begin
        -- Apply inputs from LFSRs
        num_a <= lfsr1_out;
        num_b <= lfsr2_out;
        wait for   20 ns;

        -- Check if GCD computation is done
        if done = '1' then
            report "GCD calculation complete." severity note;
            assert false report "Testbench complete." severity failure;
        end if;

        -- Continue generating new inputs
        wait for   100 ns;
    end process stimulus_process;
end tb;
