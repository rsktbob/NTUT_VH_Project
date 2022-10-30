library ieee;
use ieee.std_logic_1164.all;
use work.lab4_01_package.all;

entity lab4_01 is
	port( A, B : in std_logic_vector(6 downto 0);
			Ctrol : in std_logic_vector(3 downto 0);
			seg : out std_logic_vector(13 downto 0)); 
end lab4_01;

architecture func of lab4_01 is			
	signal Result, cout, set : std_logic_vector(6 downto 0);
begin
	G1:for i in 0 to 6 generate
		G2:if i>0 generate
			compute1:alu port map(cout(i-1), A(i), B(i), '0', Ctrol, Result(i), cout(i), set(i));  
		end generate;
		G3:if i=0 generate
			compute2:alu port map(Ctrol(2), A(0), B(0), set(6), Ctrol, Result(0), cout(0), set(i));
		end generate;
	end generate;
	stage1:hex port map(Result(0), Result(1), Result(2), Result(3), Result(4), Result(5), Result(6), Cout(6),
					        seg(6), seg(5), seg(4), seg(3), seg(2), seg(1), seg(0), seg(13), seg(12), seg(11), seg(10), seg(9), seg(8), seg(7));
end func;