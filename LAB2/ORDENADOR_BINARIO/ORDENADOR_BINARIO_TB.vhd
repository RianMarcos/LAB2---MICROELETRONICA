
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY ORDENADOR_BINARIO_TB IS
END ORDENADOR_BINARIO_TB;
 
ARCHITECTURE behavior OF ORDENADOR_BINARIO_TB IS 
 
    COMPONENT ORDENADOR_BINARIO
    PORT(
         INPUT : IN  std_logic_vector(7 downto 0);
         OUTPUT : OUT  std_logic_vector(7 downto 0));
       
    END COMPONENT;
   --Inputs
   signal INPUT : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal OUTPUT : std_logic_vector(7 downto 0);

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ORDENADOR_BINARIO PORT MAP (
          INPUT => INPUT,
          OUTPUT => OUTPUT
        );
		  
	INPUT <= "00000001" after 100ns,
				"10100000" after 200ns,
				"00101001" after 300ns,
				"01110001" after 400ns,
				"11110001" after 500ns,
				"01011111" after 600ns,
				"01111111" after 700ns,
				"10000001" after 800ns;

END;
