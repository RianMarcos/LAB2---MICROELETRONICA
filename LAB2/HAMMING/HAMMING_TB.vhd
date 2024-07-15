
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

ENTITY HAMMING_TB IS
END HAMMING_TB;
 
ARCHITECTURE behavior OF HAMMING_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT HAMMING
    PORT(
         INPUT : IN  std_logic_vector(7 downto 0);
         OUTPUT : OUT  std_logic_vector(6 downto 0);
         anodo : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal INPUT : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal OUTPUT : std_logic_vector(6 downto 0);
   signal anodo : std_logic_vector(3 downto 0);
	
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: HAMMING PORT MAP (
          INPUT => INPUT,
          OUTPUT => OUTPUT,
          anodo => anodo
        );
	input <= "00000000" after 100ns,
				"00000001" after 200ns,
				"00000011" after 300ns,
				"00000111" after 400ns;


END;
