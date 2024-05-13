----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/11/2023 05:06:07 PM
-- Design Name: 
-- Module Name: ceng2010_lab1_q1 - Behavioral
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

entity ceng2010_lab1_q1 is
--  Port ( );
    port (
        sw0, sw1, sw2, sw3: in std_logic;
        led0 : out std_logic
    );
end ceng2010_lab1_q1;

architecture Behavioral of ceng2010_lab1_q1 is
    
begin
    led0 <= (sw0 xor sw1) AND (sw2 nor sw3);
end Behavioral;
