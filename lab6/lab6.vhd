library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity lab6 is
	port ( a, b : in std_logic_vector(7 downto 0);
			control : in std_logic_vector(3 downto 0);
			s : out std_logic_vector(7 downto 0));
end;

architecture func of lab6 is
	signal at, bt, set, less : std_logic_vector(7 downto 0);
begin
	set <= at + bt + control(2);
	less(0) <= set(7);
	less(7 downto 1) <= "0000000";
	with control(3) select
		at <= a when '0',
		not a when '1';
	with control(2) select
		bt <= b when '0',
		not b when '1';
	with control(1 downto 0) select
		s <= at and bt when "00",
		at or bt when "01",
		set when "10",
		less when "11";
end;
		