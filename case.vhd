library ieee;
use ieee.std_logic_1164.all;
 
entity sch is
  port (
  A,B,C :	in std_logic;
  F     :   out std_logic
    );
end sch;

architecture behavioral of sch is
begin
process (A,B,C)
begin
case (A and not B) or ( not A and not C) is
when '1'=> F <= '1';
when '0'=> F <= '0';
when others => null;
end case;
end process;
end behavioral;
