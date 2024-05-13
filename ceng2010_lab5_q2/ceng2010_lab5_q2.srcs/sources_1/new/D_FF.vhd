----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2023/10/17 18:07:00
-- Design Name: 
-- Module Name: D_FF - Behavioral
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

entity D_FF is
--  Port ( );
    Port(
        sw: in std_logic_vector(0 downto 0);
        btnC: in std_logic;
        led: out std_logic_vector(1 downto 0)
    );
end D_FF;

architecture Behavioral of D_FF is
signal Q: std_logic := '0';
signal Qbar: std_logic;
begin
    led(0) <= Q;
    led(1) <= Qbar;
    process (btnC)
    begin
        if (rising_edge(btnC)) then
            if sw(0) = '0' then
                Q <= '0';
                Qbar <= '1';
            else
                Q <= '1';
                Qbar <= '0';
            end if;                
        else
        end if;
    end process;

end Behavioral;
