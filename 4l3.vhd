library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
 
entity gate is
  port (i_bit :	in std_logic_vector(2 downto 0);
        o_bit : out std_logic_vector(3 downto 1));
end gate;
 
architecture rtl of gate is
begin
process (i_bit)
begin
 case i_bit is
   when "000" => o_bit <= "011";
   when "010" => o_bit <= "100";
   when "100" => o_bit <= "101";
   when "110" => o_bit <= "110";
   when others => null;
 end case;
 --wait;
end process;
end rtl;


--process is 
-- end process;