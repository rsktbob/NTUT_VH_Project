library ieee;
use ieee.std_logic_1164.all;
package lab6_package is
	component fullsub
			port ( a, b, bin : in std_logic;
			d, bout : out std_logic);
	end component;
	component hex
			port ( sw : in std_logic_vector(3 downto 0);
			seg : out std_logic_vector(6 downto 0));
	end component;
end;
	