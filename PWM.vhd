library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity PWM is
    Port (
        clk  : in  STD_LOGIC;              
        w    : in  STD_LOGIC_VECTOR(3 downto 0); 
        pwm_out : out STD_LOGIC             
    );
end PWM;

architecture Behavioral of PWM is
    signal counter : unsigned(3 downto 0) := (others => '0');
begin

    process(clk)
    begin
        if rising_edge(clk) then
            counter <= counter + 1;
        end if;
    end process;

    process(counter, w)
    begin
        if w = "0000" then
            pwm_out <= '1';   
        elsif counter < unsigned(w) then
            pwm_out <= '1';
        else
            pwm_out <= '0';
        end if;
    end process;

end Behavioral;
