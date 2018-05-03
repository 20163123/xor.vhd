library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity process_tb is
end process_tb;

architecture behave of process_tb is
  signal r_SIG1   : std_logic_vector(2 downto 0);
  signal w_RESULT1 : std_logic_vector(3 downto 1);

  component gate is
    port (
      i_bit    : in  std_logic_vector;
	  o_bit : out std_logic_vector);
  end component gate;

begin

  and_gate_INST : gate
    port map (
      i_bit    => r_SIG1,
	  o_bit	=> w_RESULT1
      );
	  
	  
  process is
  begin
    r_SIG1 <= "000";
	wait for 10 ns;
	r_SIG1 <= "010";
	wait for 10 ns;
	r_SIG1 <= "110";
	wait for 10 ns;
	r_SIG1 <= "100";
        wait for 10 ns;
	
  end process;

end behave;
