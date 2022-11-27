library ieee;
use ieee.std_logic_1164.all;

entity alu is
	port( Cin, A, B, less : in std_logic;
			Ctrol : in std_logic_vector(3 downto 0);
			Result: out std_logic;
			Cout, set : buffer std_logic);
end alu;

architecture func of alu is
	signal At, Bt : std_logic;
begin
	set <= At xor Bt xor Cin;
	with Ctrol(3) select
		At <= A when '0',
				not A when '1';
	with Ctrol(2) select
		Bt <= B when '0',
				not B when '1';
	with Ctrol(1 downto 0) select
		Result <= At and Bt when "00",
					 At or Bt when "01",
					 set when "10",
					 less when "11";
	Cout <= (At and Bt) or (At and Cin) or (Bt and Cin);
end func;