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
if (A= '1' and B = '0') or (A='0' and C='0') then F <= '1';
else F<= '0';
end if;
end process;
end behavioral;
