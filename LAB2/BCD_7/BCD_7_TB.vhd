
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY BCD_7_TB IS
END BCD_7_TB;
 
ARCHITECTURE behavior OF BCD_7_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT BCD_7
    PORT(
         INPUT : IN  std_logic_vector(3 downto 0);
         OUTPUT : OUT  std_logic_vector(6 downto 0);
         anodo : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal INPUT : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal OUTPUT : std_logic_vector(6 downto 0);
   signal anodo : std_logic_vector(3 downto 0);

 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: BCD_7 PORT MAP (
          INPUT => INPUT,
          OUTPUT => OUTPUT,
          anodo => anodo
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
     INPUT  <= "0001" AFTER 50 ns,
					"0010" AFTER 100 ns,
					"0011" AFTER 150 ns,
					"0100" AFTER 200 ns,
					"0101" AFTER 250 ns,
					"0110" AFTER 300 ns,
					"0111" AFTER 350 ns,
					"1000" AFTER 400 ns,
					"1001" AFTER 450 ns;
					
		wait for 50 ns;
		
      wait;
   end process;

END;
