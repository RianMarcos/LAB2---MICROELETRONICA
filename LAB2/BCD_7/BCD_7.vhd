
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity BCD_7 is
    Port ( INPUT : in  STD_LOGIC_VECTOR (3 downto 0);
           OUTPUT : out  STD_LOGIC_VECTOR (6 downto 0);
			  anodo : out  STD_LOGIC_VECTOR (3 downto 0));
end BCD_7;

architecture Behavioral of BCD_7 is
begin
	anodo <= "1110";
	OUTPUT <="0000001" when INPUT = "0000" else
				"1001111" when INPUT = "0001" else
				"0010010" when INPUT = "0010" else
				"0000110" when INPUT = "0011" else
				"1001100" when INPUT = "0100" else
				"0100100" when INPUT = "0101" else
				"0100000" when INPUT = "0110" else
				"0001111" when INPUT = "0111" else
				"0000000" when INPUT = "1000" else
				"0000100" when INPUT = "1001" else
				"1111111";

end Behavioral;

