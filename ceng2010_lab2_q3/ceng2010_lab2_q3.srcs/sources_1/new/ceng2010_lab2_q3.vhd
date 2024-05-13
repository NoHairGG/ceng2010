----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/18/2023 06:08:51 PM
-- Design Name: 
-- Module Name: ceng2010_lab03_q3 - Behavioral
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

entity ceng2010_lab2_q3 is
--  Port ( );
    Port (
        sw : in std_logic_vector (1 downto 0);
        led : out std_logic_vector (1 downto 0)
    );
end ceng2010_lab2_q3;

architecture Behavioral of ceng2010_lab2_q3 is
signal Q : std_logic;
signal Qbar : std_logic;
begin
    Qbar <= (sw(0)) NAND Q;
    Q <= (sw(1)) NAND Qbar;
    led(1) <= Q;
    led(0) <= Qbar;
end Behavioral;
