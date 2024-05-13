----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2023/10/24 19:25:51
-- Design Name: 
-- Module Name: ceng2010_hw1_q1a - Behavioral
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

entity ceng2010_hw1_q1 is
--  Port ( );
    Port(
        clk : in std_logic;
        btnC, btnL, btnR : in std_logic;
        seg : buffer std_logic_vector (6 downto 0);
        dp : buffer std_logic;
        an : buffer std_logic_vector (3 downto 0)
    );
end ceng2010_hw1_q1;

architecture Behavioral of ceng2010_hw1_q1 is
    component clk_div is
        generic (N : integer);
        port(
            clk : in STD_LOGIC;
            clk_out : out STD_LOGIC
        );
    end component;
    signal count : integer := 0;
    signal combination_signal : integer := 0;
    signal clk5Hz, clk1000Hz : std_logic;
    signal digitA, digitB, digitC, digitD : std_logic_vector (6 downto 0);
begin
    dp <= '1';
    u_clk1000Hz : clk_div generic map (N => 50000) port map(clk, clk1000Hz);
    u_clk5Hz : clk_div generic map (N => 10000000) port map(clk, clk5Hz);
    combination : process (combination_signal) begin
        case combination_signal is
--            when 0 to 249 =>
        when 0 =>
                digitA <= "0010000";
                digitB <= "1000000";
                digitC <= "1111001";
                digitD <= "0100100";
--            when 250 to 499 =>
        when 1 =>
                digitA <= "0100100";
                digitB <= "0010000";
                digitC <= "1000000";
                digitD <= "1111001";
--            when 500 to 749 =>
        when 2 =>
                digitA <= "1111001";
                digitB <= "0100100";
                digitC <= "0010000";
                digitD <= "1000000";
--            when 750 to 999 =>
        when 3 =>
                digitA <= "1000000";
                digitB <= "1111001";
                digitC <= "0100100";
                digitD <= "0010000";
        when others =>
        end case;
    end process;
    looping : process (clk1000Hz) begin
        if (rising_edge (clk1000Hz)) then
            case count is
                when 0 =>
                    an <= "0111";
                    seg <= digitA;
                when 1 =>
                    an <= "1011";
                    seg <= digitB;
                when 2 =>
                    an <= "1101";
                    seg <= digitC;
                when others =>
                    an <= "1110";
                    seg <= digitD;
            end case;
            count <= (count + 1) mod 4;
--            combination_signal <= (combination_signal + 1) mod 1000;
        end if;
    end process;
    reset : process (clk5Hz) begin
        if (rising_edge(clk5Hz)) then
            if (btnC = '1') then
                combination_signal <= 0;
            elsif (btnR = '1') then
                combination_signal <= (combination_signal + 1) mod 4;
            elsif (btnL = '1') then
                if (combination_signal = 0) then
                    combination_signal <= 3;
                else
                    combination_signal <= combination_signal - 1;
                end if;
            end if;
        end if;
    end process;
end Behavioral;
