library ieee;
use ieee.std_logic_1164.all;

entity ring_oscillator_9 is
	port ( enable : in std_logic;
			ck_out : buffer std_logic);
end ring_oscillator_9;

architecture func of ring_oscillator_9 is
	signal chain : std_logic_vector(8 downto 0);
	attribute syn_keep : boolean;
	attribute syn_keep of enable : signal is true;
	attribute syn_keep of chain: signal is true;
begin
	f1:for i in 1 to 8 generate
		chain(i) <= chain(i-1);
	end generate;
	chain(0) <= enable and not chain(8);
end;