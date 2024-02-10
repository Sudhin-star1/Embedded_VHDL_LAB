library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lcm_fsm is
    port (
        clk: in std_logic;
        rst: in std_logic;
        start: in std_logic;
        ready: out std_logic;
        num1: in unsigned(15 downto 0);
        num2: in unsigned(15 downto 0);
        lcm_result: out unsigned(15 downto 0)
    );
end entity lcm_fsm;

architecture behavioral of lcm_fsm is
    type state_type is (IDLE, INIT, COMPUTE, DONE);
    signal state: state_type;
    signal x, y: unsigned(15 downto 0);
    signal count: unsigned(15 downto 0);
    signal temp: unsigned(15 downto 0);
begin
    process(clk, rst)
    begin
        if rst = '1' then
            state <= IDLE;
            ready <= '0';
            count <= (others => '0');
            temp <= (others => '0');
            lcm_result <= (others => '0');
        elsif rising_edge(clk) then
            case state is
                when IDLE =>
                    if start = '1' then
                        state <= INIT;
                        ready <= '0';
                    end if;
                when INIT =>
                    x <= num1;
                    y <= num2;
                    state <= COMPUTE;
                when COMPUTE =>
                    temp <= x;
                    x <= x + y;
                    count <= count + 1;
                    if x > y then
                        x <= y;
                        y <= temp;
                    end if;
                    if y = 0 then
                        state <= DONE;
                        ready <= '1';
                        lcm_result <= (others => '0');
                    end if;
                when DONE =>
                    state <= IDLE;
            end case;
        end if;
    end process;
end architecture behavioral;
