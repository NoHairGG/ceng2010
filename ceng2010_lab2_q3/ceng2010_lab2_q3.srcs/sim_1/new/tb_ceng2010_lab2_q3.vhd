-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 19.9.2023 04:31:41 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_ceng2010_lab2_q3 is
end tb_ceng2010_lab2_q3;

architecture tb of tb_ceng2010_lab2_q3 is

    component ceng2010_lab2_q3
        port (sw  : in std_logic_vector (1 downto 0);
              led : out std_logic_vector (1 downto 0));
    end component;

    signal sw  : std_logic_vector (1 downto 0);
    signal led : std_logic_vector (1 downto 0);

begin

    dut : ceng2010_lab2_q3
    port map (sw  => sw,
              led => led);

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        sw <= "01";

        -- EDIT Add stimuli here

        wait for 10ns;
        sw <= "10";
        wait for 10ns;
        sw <= "11";
        wait for 10ns;
        sw <= "01";
        wait for 10ns;
        sw <= "11";
        wait for 10ns;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_ceng2010_lab2_q3 of tb_ceng2010_lab2_q3 is
    for tb
    end for;
end cfg_tb_ceng2010_lab2_q3;