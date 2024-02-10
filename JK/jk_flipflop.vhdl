library ieee;
use ieee.std_logic_1164.all;

entity jk_flipflop is
    port (
        J, K, CLK, RESET: in std_logic;
        Q, Q_bar: out std_logic
    );
end entity jk_flipflop;

architecture behavioral of jk_flipflop is
    signal internal_Q, internal_Q_bar: std_logic;
begin
    process (CLK, RESET)
    begin
        if (RESET = '1') then
            internal_Q <= '0';
            internal_Q_bar <= '1';
        elsif (rising_edge(CLK)) then
            if (J = '0' and K = '0') then
                internal_Q <= internal_Q;
                internal_Q_bar <= internal_Q_bar;
            elsif (J = '0' and K = '1') then
                internal_Q <= '0';
                internal_Q_bar <= '1';
            elsif (J = '1' and K = '0') then
                internal_Q <= '1';
                internal_Q_bar <= '0';
            elsif (J = '1' and K = '1') then
                internal_Q <= not internal_Q;
                internal_Q_bar <= not internal_Q_bar;
            end if;
        end if;
    end process;

    Q <= internal_Q;
    Q_bar <= internal_Q_bar;
end architecture behavioral;
