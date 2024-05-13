----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2023/10/24 20:01:36
-- Design Name: 
-- Module Name: clk_div - Behavioral
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

entity clk_div is
--  Port ( );
    generic (N : integer);
    port (
        clk : in STD_LOGIC;
        clk_out : out STD_LOGIC
    );
end clk_div;

architecture Behavioral of clk_div is
    signal count : integer := 0;
    signal pulse : STD_LOGIC := '0';
begin
    clk_out <= pulse;
    process (clk)
    begin
        if (rising_edge(clk)) then
            if (count = (N - 1)) then
                pulse <= not pulse;
                count <= 0; -- reset count
            else
                count <= count + 1;
            end if;
        end if;
    end process;
end Behavioral;
