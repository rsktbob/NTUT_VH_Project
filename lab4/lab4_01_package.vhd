library ieee;
use ieee.std_logic_1164.all;
package lab4_01_package is
	component alu
		port( Cin, a, b, less : in std_logic;
				Ctrol : in std_logic_vector(3 downto 0);
				Result : out std_logic;
				Cout, set : buffer std_logic);
	end component;
	component hex
		port( sw0,sw1,sw2,sw3,sw4,sw5,sw6,sw7 : in std_logic;
				a0,b0,c0,d0,e0,f0,g0,a1,b1,c1,d1,e1,f1,g1 : out std_logic);
	end component;
end lab4_01_package;
