library ieee;
use ieee.std_logic_1164.all;

entity fullsub is
	port ( a, b, bin : in std_logic;
			d, bout : out std_logic);
end;

architecture func of fullsub is
begin
	d <= a xor b xor bin;
	bout <= (not a and b) or (not a and bin) or (b and bin);
end;