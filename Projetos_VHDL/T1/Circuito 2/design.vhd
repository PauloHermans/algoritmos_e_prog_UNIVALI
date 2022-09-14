library IEEE;
use IEEE.std_logic_1164.all;

entity demux2_1bit is
port( i_SEL : in std_logic;
      i_A : in std_logic;
      o_R : out std_logic;
      o_S : out std_logic);
end demux2_1bit;

architecture arch_1 of demux2_1bit is
begin
  process(i_SEL, i_A)
    begin
    if (i_SEL='0') then
    o_R <= i_A;
    else
    o_S <= i_A;
    end if;
  end process;
end arch_1;
