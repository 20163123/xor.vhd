library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
 
entity gate is
  port (i_bit :	in std_logic_vector(2 downto 0);
        o_bit : out std_logic_vector(3 downto 1)
    );
end gate;
 
architecture rtl of gate is
begin
process (i_bit)
begin
      if i_bit = "000" then o_bit <= "011";
   elsif i_bit = "010" then o_bit <= "100";
   elsif i_bit = "100" then o_bit <= "101";
   else                o_bit <= "110";
   end if;
   --wait;
end process;
end rtl;
