----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/18/2023 05:00:55 PM
-- Design Name: 
-- Module Name: ceng2010_lab2_q1 - Behavioral
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

entity ceng2010_lab2_q1 is
--  Port ( );
    Port ( sw : in std_logic_vector (5 downto 0);
           led : out std_logic_vector (0 downto 0));
end ceng2010_lab2_q1;

architecture Behavioral of ceng2010_lab2_q1 is
    
begin

    led(0) <= sw(0) when sw(4) = '0' and sw(5) = '0' else
           sw(1) when sw(4) = '1' and sw(5) = '0' else
           sw(2) when sw(4) = '0' and sw(5) = '1' else
           sw(3);
end Behavioral;
