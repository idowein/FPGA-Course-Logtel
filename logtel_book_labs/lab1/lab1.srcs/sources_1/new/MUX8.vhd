----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/14/2025 09:39:19 PM
-- Design Name: 
-- Module Name: MUX8 - Behavioral
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

entity MUX8 is
    Port ( IN1 : in STD_LOGIC;
           IN2 : in STD_LOGIC;
           IN3 : in STD_LOGIC;
           IN4 : in STD_LOGIC;
           IN5 : in STD_LOGIC;
           IN6 : in STD_LOGIC;
           IN7 : in STD_LOGIC;
           IN8 : in STD_LOGIC;
           SEL : in STD_LOGIC_VECTOR (2 downto 0);
           RES : out STD_LOGIC);
end MUX8;

architecture Behavioral of MUX8 is

begin

--MUX8
process (SEL,IN1,IN2, IN3, IN4, IN5, IN6, IN7, IN8)
begin
   case SEL is
      when "000" => RES <= IN1;
      when "001" => RES <= IN2;
      when "010" => RES <= IN3;
      when "011" => RES <= IN4;
      when "100" => RES <= IN5;
      when "101" => RES <= IN6;
      when "110" => RES <= IN7;
      when "111" => RES <= IN8;
      when others => RES <= IN1;
   end case;
end process;


end Behavioral;
