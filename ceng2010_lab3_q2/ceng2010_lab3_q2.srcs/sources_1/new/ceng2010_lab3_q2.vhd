----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/25/2023 06:38:35 PM
-- Design Name: 
-- Module Name: ceng2010_lab3_q2 - Behavioral
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

entity ceng2010_lab3_q2 is
--  Port ( );
    Port(
        sw : in std_logic_vector(3 downto 0);
        btnC : in std_logic;
        an : out std_logic_vector(3 downto 0);
        led : out std_logic_vector(1 downto 0)
    );
end ceng2010_lab3_q2;

architecture Behavioral of ceng2010_lab3_q2 is
    signal Q: std_logic;
    signal Qbar: std_logic;
    signal Xdd: std_logic;
begin
    an <= "1111"; --the 7 seg hurt my eyes
    led(1) <= Q;
    led(0) <= Qbar;
    process (btnC) begin
        if (sw(3) = '0' AND sw(2) = '1') then
            Q <= '1';
            Qbar <= '0';
        elsif (sw(3) = '1' AND sw(2) = '0') then
            Q <= '0';
            Qbar <= '1';
        elsif (sw(3) = '0' AND sw(2) = '0') then
            Q <= '1';
            Qbar <= '1'; 
        else
            if (falling_edge(btnC)) then
                if (sw(1) = '1' AND sw(0) = '1') then
                    Xdd <= not Xdd;
                elsif (sw(1) = '1' AND sw(0) = '0') then
                    Xdd <= '1';
                elsif (sw(1) = '0' AND sw(0) = '1') then
                    Xdd <= '0';
                else
                    Xdd <= Xdd;
                end if;
            else
            end if;
            Q <= Xdd;
            Qbar <= not Xdd;
        end if;
    end process;
end Behavioral;
