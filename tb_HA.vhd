LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tb_HA IS
END tb_HA;
 
ARCHITECTURE behavior OF tb_HA IS 
    COMPONENT HA
    PORT (KEY1,KEY2: IN std_logic; LED1,LED2: OUT std_logic);
    END COMPONENT;
   --Inputs
   signal tb_KEY1 : std_logic := '1';
   signal tb_KEY2 : std_logic := '1';
 	--Outputs
   signal tb_LED1 : std_logic;
   signal tb_LED2 : std_logic;
 
BEGIN
   uut: HA PORT MAP (tb_KEY1,tb_KEY2,tb_LED1,tb_LED2);
END;