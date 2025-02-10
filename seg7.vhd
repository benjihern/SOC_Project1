library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity seg7 is
    Port ( 
        value : in STD_LOGIC_VECTOR(3 downto 0);
        enable : out STD_LOGIC;
        SEG : out STD_LOGIC_VECTOR(7 downto 0)
    );
end seg7;

architecture rtl of seg7 is
begin
    enable <= 0;
    
    process(value)
    begin
        case value is
        
            when "0000" => SEG <= "11000000"; -- 0
            when "0001" => SEG <= "11111001"; -- 1
            when "0010" => SEG <= "10100100"; -- 2
            when "0011" => SEG <= "10110000"; -- 3
            when "0100" => SEG <= "10011001"; -- 4
            when "0101" => SEG <= "10010010"; -- 5
            when "0110" => SEG <= "10000010"; -- 6
            when "0111" => SEG <= "11111000"; -- 7
            when "1000" => SEG <= "10000000"; -- 8
            when "1001" => SEG <= "10010000"; -- 9
            when "1010" => SEG <= "10001000"; -- A
            when "1011" => SEG <= "10000011"; -- b
            when "1100" => SEG <= "11000110"; -- C
            when "1101" => SEG <= "10100001"; -- d
            when "1110" => SEG <= "10000110"; -- E
            when "1111" => SEG <= "10001110"; -- F
            when others => SEG <= "11111111"; -- off
        end case;
    end process;

end rtl;