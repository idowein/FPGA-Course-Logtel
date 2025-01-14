----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/14/2025 07:50:22 PM
-- Design Name: 
-- Module Name: REG8 - Behavioral
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
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity REG8 is
    Port ( CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           DIN : in STD_LOGIC_VECTOR (7 downto 0);
           CE : in STD_LOGIC;
           DOUT : out STD_LOGIC_VECTOR (7 downto 0));
end REG8;

architecture Behavioral of REG8 is

begin

-- D-FF
process (CLK)
begin
   if CLK 'event and CLK ='1' then
      if RST='1' then
         DOUT <= (OTHERS => '0'); -- DOUT has 8 bits. OTHERS define 0 when undefine. 
      elsif CE ='1' then
         DOUT <= DIN;
      end if;
   end if;
end process;
		
						
end Behavioral;
