library ieee;
use ieee.std_logic_1164.all;

entity if_tb is
end if_tb;

architecture behave of if_tb is
  signal r_SIG1   : std_logic := '0';
  signal r_SIG2   : std_logic := '0';
  signal r_SIG3   : std_logic := '0';
  signal w_RESULT1 : std_logic;


  component sch is
    port (
        A : in std_logic;
        B : in std_logic;
        C : in std_logic;
        F : out std_logic)
;
  end component sch;

begin
  and_gate_INST : sch
    port map (
      A    => r_SIG1,
	  B    => r_SIG2,
	  C    => r_SIG3,
      F    => w_RESULT1
      );
	  
  process is
  begin
    r_SIG1 <= '1';
	r_SIG2 <= '1';
	r_SIG3 <= '1';
    wait for 10 ns;
    r_SIG1 <= '0';
	r_SIG2 <= '0';
	r_SIG3 <= '0';
    wait for 10 ns;
    r_SIG1 <= '1';
	r_SIG2 <= '0';
	r_SIG3 <= '0';
    wait for 10 ns;
	r_SIG1 <= '1';
	r_SIG2 <= '1';
	r_SIG3 <= '0';
	wait for 10 ns;
	r_SIG1 <= '1';
	r_SIG2 <= '0';
	r_SIG3 <= '1';
	wait for 10 ns;
  end process;

end behave;