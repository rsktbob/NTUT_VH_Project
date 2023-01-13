library ieee;
use ieee.std_logic_1164.all;

entity ring_oscillator_7 is
	port ( enable : in std_logic;
			ck_out : buffer std_logic);
end ring_oscillator_7;

architecture func of ring_oscillator_7 is
	signal chain : std_logic_vector(6 downto 0);
	attribute syn_keep : boolean;
	attribute syn_keep of enable : signal is true;
	attribute syn_keep of chain: signal is true;
begin
	f1:for i in 1 to 6 generate
		chain(i) <= not chain(i-1);
	end generate;
	chain(0) <= enable and not chain(6);
	ck_out <= chain(6);
end;