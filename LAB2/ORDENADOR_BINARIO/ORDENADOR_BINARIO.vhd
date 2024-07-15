
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ORDENADOR_BINARIO is
	 GENERIC(N: INTEGER :=8);
    Port ( INPUT : in  STD_LOGIC_VECTOR(N-1 DOWNTO 0);
           OUTPUT : out  STD_LOGIC_VECTOR(N-1 DOWNTO 0));
end ORDENADOR_BINARIO;

architecture Behavioral of ORDENADOR_BINARIO is

   signal VETOR_ORDENADOR: STD_LOGIC_VECTOR(0 TO N-1);
	TYPE type1 is array (0 to N) of integer range 0 to N;
	signal cont: type1;

begin
	cont(0) <= 0;
	gen_cont: FOR i in 1 to N GENERATE
	 cont(i) <= cont(i-1) +1 when INPUT(i-1) ='1' else cont(i-1);
	 end GENERATE;
	
	gen_out: FOR j in 0 to N-1 GENERATE
		 VETOR_ORDENADOR(j) <= '1' when j < cont(n) else '0';
	 end GENERATE;
		
	OUTPUT <= VETOR_ORDENADOR;
end architecture;


