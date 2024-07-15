library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity CIRC_ARITMETICO is
	generic(N:integer:=4);
    Port ( A : in  STD_LOGIC_VECTOR (N-1 downto 0);
           B : in  STD_LOGIC_VECTOR (N-1 downto 0);
           cin : in  STD_LOGIC;
           opcode : in  STD_LOGIC_VECTOR (2 downto 0);
           y : out  STD_LOGIC_VECTOR (N-1 downto 0);
           cout : out  STD_LOGIC);
end CIRC_ARITMETICO;

architecture Behavioral of CIRC_ARITMETICO is

--CONVERSÃO DOS DADOS (CASTING) STD_LOGIC PARA SIGNAL
	signal a_aux_unsig, b_aux_unsig: unsigned (N-1 downto 0);
	signal a_aux_sig, b_aux_sig: signed (N-1 downto 0);
	signal a_unsig, b_unsig: unsigned (N downto 0);
	signal a_sig, b_sig: signed (N downto 0);
	signal soma_unsig: unsigned (N downto 0);
	signal soma_sig: signed (N downto 0);


begin
	---SIGNED TRABALHA COM DADOS NEGATIVOS E POSITIVOS 

	--RECEBE INPUT E GUARDA NA AUXILIAR
	a_aux_unsig <= unsigned(A);
	a_aux_sig <= signed(A);
	
	--RECEBE INPUT E GUARDA NA AUXILIAR
	b_aux_unsig <= unsigned(B);
	b_aux_sig <= signed(B);
	

	--UNSIG CONCATENA COM 0
	a_unsig <= ('0' & a_aux_unsig);

	--SIG CONCATENA COM A POSIÇÃO ANTERIOR
	a_sig <= (a_aux_sig(N-1) & a_aux_sig);


	--UNSIG CONCATENA COM 0
	b_unsig <= ('0' & b_aux_unsig);

	--SIG CONCATENA COM A POSIÇÃO ANTERIOR
	b_sig <= (b_aux_sig(N-1) & b_aux_sig);


	--cin_aux <= ('0' & cin);
	--cin <= cin_aux;

	soma_unsig <= a_unsig + b_unsig when opcode = "000" else
			  a_unsig - b_unsig  when opcode = "001" else
			  b_unsig - a_unsig  when opcode = "010" else
			  a_unsig + b_unsig + ('0' & cin) when opcode = "011";
			  
	soma_sig <= a_sig + b_sig  when opcode = "100" else
			  a_sig - b_sig  when opcode = "101" else
			  b_sig - a_sig  when opcode = "110" else
			  a_sig + b_sig + ('0' & cin) when opcode = "111";


	--CONVERTER/CASTING PARA STD_LOGIC (IO)

	Y <= std_logic_vector(soma_unsig (N-1 downto 0)) when opcode(2) = '0' else
		  std_logic_vector(soma_sig (N-1 downto 0));
		  
	cout <= std_logic(soma_unsig (N)) when opcode(2) = '0' else
		  std_logic(soma_sig (N));
	
end Behavioral;

