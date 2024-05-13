----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/11/2023 05:40:49 PM
-- Design Name: 
-- Module Name: ceng2010_lab1_q2 - Behavioral
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

entity ceng2010_lab1_q2 is
--  Port ( );
    port(
        sw0, sw1, sw2, sw3, sw4, sw5, sw6, sw7: in std_logic;
        led0, led1, led2, led3, led4, led5, led6, led7: out std_logic
    );
end ceng2010_lab1_q2;

architecture Behavioral of ceng2010_lab1_q2 is

begin
    led0 <= sw0;
    led1 <= sw1;
    led2 <= sw2 or sw3;
    led3 <= sw2 and sw4;
    led4 <= not sw4;
    led5 <= not sw5;
    led6 <= sw4 and (not sw5);
    led7 <= (sw4 and sw7) and (sw5 or sw6);

end Behavioral;
