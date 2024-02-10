library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Define the states for the FSM
type gcd_state_type is (compare, subtract_x, subtract_y, done);

-- Top-level entity for the GCD processor
entity gcd_processor is
    Port (
        clk : in std_logic;
        reset : in std_logic;
        num_a : in unsigned(7 downto 0);
        num_b : in unsigned(7 downto 0);
        gcd : out unsigned(7 downto 0);
        done : out std_logic
    );
end gcd_processor;

-- Architecture for the GCD processor
architecture Behavioral of gcd_processor is
    -- Declare internal signals for the state and inputs
    signal current_state, next_state : gcd_state_type;
    signal a, b : unsigned(7 downto 0);

begin
    -- State transition process
    process (current_state, a, b)
    begin
        case current_state is
            when compare =>
                -- Compare a and b, decide next state
                if a = b then
                    next_state <= done;
                elsif a > b then
                    next_state <= subtract_x;
                else
                    next_state <= subtract_y;
                end if;
            when subtract_x =>
                -- Subtract b from a
                a <= a - b;
                next_state <= compare;
            when subtract_y =>
                -- Subtract a from b
                b <= b - a;
                next_state <= compare;
            when done =>
                -- Final state, no transition needed
                next_state <= done;
        end case;
    end process;

    -- Register update process
    process (clk, reset)
    begin
        if reset = '1' then
            current_state <= compare;
            a <= (others => '0');
            b <= (others => '0');
        elsif rising_edge(clk) then
            current_state <= next_state;
            if next_state = done then
                done <= '1';
                gcd <= a when a >= b else b;
            else
                done <= '0';
            end if;
        end if;
    end process;
end Behavioral;
