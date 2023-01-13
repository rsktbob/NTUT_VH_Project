library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity comparator is
	port ( counter1 : in integer;
			counter2 : in integer;
			sw : in std_logic_vector(2 downto 0);
			ouput : out std_logic_vector(7 downto 0));
end;

architecture func of comparator is
begin
	process(counter1, counter2)
	begin 
		if counter1>counter2 then
			ouput(conv_integer(sw)) <= '1';
		else
			ouput(conv_integer(sw)) <= '0';
		end if;
	end process;
end;