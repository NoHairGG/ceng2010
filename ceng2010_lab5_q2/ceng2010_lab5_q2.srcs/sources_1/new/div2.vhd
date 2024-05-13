----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2023/10/17 18:36:15
-- Design Name: 
-- Module Name: div2 - Behavioral
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

entity div2 is
--  Port ( );
    Port(
        btnC: in std_logic;
        led: out std_logic_vector(0 downto 0)
    );
end div2;

architecture Behavioral of div2 is
    component D_FF
    Port(
        sw: in std_logic_vector(0 downto 0);
        btnC: in std_logic;
        led: out std_logic_vector(1 downto 0)
    );
    end component;
    signal Q : std_logic := '0';
    signal Qbar : std_logic;
begin
    led(0) <= Q;
    DFF0 : D_FF port map (
        sw(0) => Qbar,
        btnC => btnC,
        led(0) => Q,
        led(1) => Qbar
    );
end Behavioral;
