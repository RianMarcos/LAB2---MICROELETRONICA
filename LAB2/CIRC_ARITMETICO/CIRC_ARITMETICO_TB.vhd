LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY CIRC_ARITMETICO_TB IS
END CIRC_ARITMETICO_TB;
 
ARCHITECTURE behavior OF CIRC_ARITMETICO_TB IS 
 
 
    COMPONENT CIRC_ARITMETICO
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         cin : IN  std_logic;
         opcode : IN  std_logic_vector(2 downto 0);
         y : OUT  std_logic_vector(3 downto 0);
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal cin : std_logic := '0';
   signal opcode : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal y : std_logic_vector(3 downto 0);
   signal cout : std_logic;

BEGIN
   uut: CIRC_ARITMETICO PORT MAP (
          A => A,
          B => B,
          cin => cin,
          opcode => opcode,
          y => y,
          cout => cout
        );
   -- Stimulus process
   stim_proc: process
   begin		
		A<= "0101";  --5
		B<= "0101";  --5
		cin<='1';
		opcode <= "000";
		wait for 100 ns;
		opcode <= "001";
		wait for 100 ns;	
		opcode <= "011";
		wait for 100 ns;	
		opcode <= "010";	
		wait for 100 ns;	
		opcode <= "110";
		wait for 100 ns;	
		opcode <= "111";
		wait for 100 ns;
      wait;
   end process;
END;