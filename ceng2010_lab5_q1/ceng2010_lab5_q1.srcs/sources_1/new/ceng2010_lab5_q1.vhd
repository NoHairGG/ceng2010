----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/16/2023 04:55:17 PM
-- Design Name: 
-- Module Name: ceng2010_lab5_q1 - Behavioral
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

entity ceng2010_lab5_q1 is
--  Port ( );
    port(
        sw : in std_logic_vector(0 downto 0);
        btnC : in std_logic;
        led : out std_logic_vector(1 downto 0)
    );
end ceng2010_lab5_q1;

architecture Behavioral of ceng2010_lab5_q1 is

begin
    process (sw, btnC)
    begin
        if rising_edge(btnc) then
            led(0) <= sw(0);
            led(1) <= not(sw(0));
        end if;
    end process;

end Behavioral;
