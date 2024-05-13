----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/25/2023 05:05:57 PM
-- Design Name: 
-- Module Name: ceng2010_lab3_q1 - Behavioral
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

entity ceng2010_lab3_q1 is
--  Port ( );
    Port ( 
        btnC : in std_logic;
        sw : in std_logic_vector (6 downto 0);
        seg : buffer std_logic_vector (6 downto 0);
        dp : buffer std_logic;
        an : buffer std_logic_vector (3 downto 0));
end ceng2010_lab3_q1;

architecture Behavioral of ceng2010_lab3_q1 is
    signal output : std_logic_vector (3 downto 0):= "0011" ;
begin
    dp <= '1';
    an <= output;
    seg(0) <= sw(0);
    seg(1) <= sw(1);
    seg(2) <= sw(2);
    seg(3) <= sw(3);
    seg(4) <= sw(4);
    seg(5) <= sw(5);
    seg(6) <= sw(6);
    process(btnC, output) begin
        if rising_edge(btnC) then
            if (output = "1100") then
                output <= "0011";
            elsif (output = "0011") then
                output <= "1100";
            else
            end if;
        else
        end if;
    end process;
end Behavioral;
