library ieee;
use ieee.std_logic_1164.all;
package lab7_01_package is
	component hex
			port ( sw : in std_logic_vector(3 downto 0);
			seg : out std_logic_vector(6 downto 0));
	end component;
end lab7_01_package;
	