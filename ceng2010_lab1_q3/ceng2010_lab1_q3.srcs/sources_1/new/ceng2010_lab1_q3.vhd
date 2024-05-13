----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/11/2023 06:08:20 PM
-- Design Name: 
-- Module Name: ceng2010_lab1_q3 - Behavioral
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

entity ceng2010_lab1_q3 is
--  Port ( );
    port(
        sw0, sw1, sw2, sw3, sw4, sw5, sw6, sw7: in std_logic;
        seg0, seg1, seg2, seg3, seg4, seg5, seg6, dp: buffer std_logic;
        an0, an1, an2, an3: out std_logic
    );
end ceng2010_lab1_q3;

architecture Behavioral of ceng2010_lab1_q3 is

begin
    seg0 <= sw0;
    seg1 <= sw1;
    seg2 <= sw2;
    seg3 <= sw3;
    seg4 <= sw4;
    seg5 <= sw5;
    seg6 <= sw6;
    dp <= sw7;
    an0 <= '0';
    an1 <= '1';
    an2 <= '1';
    an3 <= '1';

end Behavioral;
