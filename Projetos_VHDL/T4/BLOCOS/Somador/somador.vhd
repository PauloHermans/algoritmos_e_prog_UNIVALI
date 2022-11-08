library IEEE;
use IEEE.std_logic_1164.all;

entity somador is
port ( i_A : in std_logic;
	   i_B : in std_logic;
       i_CIN : in std_logic;
       o_COUT : out std_logic;
       o_S : out std_logic);
end somador;

architecture comp of somador is
begin
	process(i_A, i_B, i_CIN)
    begin
    o_S <= (i_A xor i_B xor i_CIN);
    o_COUT <= ((i_A and i_B) or (i_A and i_CIN) or (i_B and i_CIN));
    end process;
end comp;