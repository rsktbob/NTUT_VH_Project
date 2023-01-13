library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity counter is
	port ( reset : in std_logic;
			clk_in : in std_logic;
			counter : buffer integer);
end;

architecture func of counter is
begin
	process(reset, clk_in)
	begin
		if reset='1' then
			counter <= 0;
		else
			if rising_edge(clk_in) then
				counter <= counter + 1;
			end if;
		end if;
	end process;
end;