library ieee;
use ieee.std_logic_1164.all;

entity alu is
	port( Cin, A, B, less : in std_logic;
			Ctrol : in std_logic_vector(3 downto 0);
			Result : out std_logic;
			Cout, set : buffer std_logic);
end alu;

architecture func of alu is
	signal at, bt : std_logic;
begin
	set <= at xor bt xor Cin;
	with Ctrol(3) select
		at <= a when '0',
				not a when '1';
	with Ctrol(2) select
		bt <= b when '0',
				not b when '1';
	with Ctrol(1 downto 0) select
		Result <= at and bt when "00",
					 at or bt when "01",
					 set when "10",
					 less when "11";
	Cout <= (at and bt) or (at and Cin) or (bt and Cin);
end func;
	