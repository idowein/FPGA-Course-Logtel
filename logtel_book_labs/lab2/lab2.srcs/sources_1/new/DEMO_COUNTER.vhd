----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/23/2025 10:39:36 AM
-- Design Name: 
-- Module Name: DEMO_COUNTER - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

    entity DEMO_COUNTER is
        Port ( CLOCK : in STD_LOGIC;
               RESET : in STD_LOGIC;
               CE : in STD_LOGIC;
               COUNTER : out STD_LOGIC_VECTOR (9 downto 0));
    end DEMO_COUNTER;


architecture Behavioral of DEMO_COUNTER is

    signal COUNT : std_logic_vector(9 downto 0);

begin

    process (CLOCK)
    begin
       if CLOCK='1' and CLOCK'event then -- or: if rising_edge(CLOCK) then
          if RESET='1' then
             COUNT <= (others => '0');
          elsif CE='1' then
             COUNT <= COUNT + 1;
          end if;
       end if;
    end process;
	
    
    COUNTER <= COUNT; -- Connect COUNT to the output signal (COUNTER)
    
end Behavioral;
