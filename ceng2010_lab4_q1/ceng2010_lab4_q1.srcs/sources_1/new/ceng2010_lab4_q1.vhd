----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/09/2023 04:29:19 PM
-- Design Name: 
-- Module Name: ceng2010_lab4_q1 - Behavioral
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

entity ceng2010_lab4_q1 is
--  Port ( );
    Port(
        sw : in std_logic_vector(0 downto 0);
        btnC : in std_logic;
        btnD : in std_logic;
        led : out std_logic_vector(7 downto 0)
    );
end ceng2010_lab4_q1;

architecture Behavioral of ceng2010_lab4_q1 is
    type state_type is (S0, S1, S2);
    signal state, next_state : state_type;
    signal fake_clk, reset, parity, x : std_logic;
    signal led_sig : std_logic_vector (2 downto 0);
    signal output : std_logic_vector (0 downto 0);
begin
    x <= sw(0);
    led(7 downto 5) <= led_sig;
    led(0 downto 0) <= output;
    fake_clk <= btnC;
    reset <= btnD;
    SYNC_PROC : process (fake_clk, reset)
    begin
        if (reset = '1') then
            state <= S0;
        elsif rising_edge(fake_clk) then
            state <= next_state;
        end if;
    end process;
    OUTPUT_DECODE : process (state, x)
    begin
        output(0) <= '0';
        case (state) is
            when S0 =>
                output(0) <= '0';
            when S1 =>
                output(0) <= '1';
            when S2 =>
                output(0) <= '0';
            when others =>
                output(0) <= '0';
        end case;
    end process;
    NEXT_STATE_DECODE : process (state, x)
    begin
        next_state <= state;
        case (state) is
            when S0 =>
                if (x = '1') then
                    next_state <= S1;
                else
                    next_state <= S0;
                end if;
            when S1 =>
                if (x = '0') then
                    next_state <= S2;
                else
                    next_state <= S1;
                end if;
            when S2 =>
                if (x = '0') then
                    next_state <= S2;
                else
                    next_state <= S1;
                end if;
            when others =>
                next_state <= S0;
        end case;
    end process;
    DECODE_OUTPUT : process(state)
    begin
        if state = S0 then
            led_sig <= "001";
        elsif state <= S1 then
            led_sig <= "010";
        elsif state <= S2 then
            led_sig <= "100";
        else
            led_sig <= "001";
        end if;
    end process;
end Behavioral;
