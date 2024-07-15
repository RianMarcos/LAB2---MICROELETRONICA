
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity HAMMING is
	generic(n:integer:=8);
    Port ( INPUT : in  STD_LOGIC_VECTOR (n-1 downto 0);
           OUTPUT : out  STD_LOGIC_VECTOR (6 downto 0);
			  anodo : out  STD_LOGIC_VECTOR (3 downto 0));
end HAMMING;

architecture Behavioral of HAMMING is
TYPE v_int is array (0 to n) of integer range 0 to 8;
signal cont: v_int;

begin
cont(0) <= 0;

	gen: for i in 1 to n generate
		cont(i) <= cont(i-1)+1 WHEN INPUT(i-1) = '1' else cont(i-1);
	end generate;
	anodo <= "1110";
	OUTPUT <="0000001" when cont(n) = 0 else
				"1001111" when cont(n) = 1 else
				"0010010" when cont(n) = 2 else
				"0000110" when cont(n) = 3 else
				"1001100" when cont(n) = 4 else
				"0100100" when cont(n) = 5 else
				"0100000" when cont(n) = 6 else
				"0001111" when cont(n) = 7 else
				"0000000" when cont(n) = 8 else
				"1111111";
	
end Behavioral;

