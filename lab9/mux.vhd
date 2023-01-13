library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity mux is
	port ( w0 ,w1, w2, w3, w4, w5, w6, w7 : in std_logic;
			sw : in std_logic_vector(2 downto 0);
			ck_out : buffer std_logic);
end;

architecture func of mux is
begin
	with sw select
		ck_out <= w0 when "000",
					w1 when "001",
					w2 when "010",
					w2 when "011",
					w2 when "100",
					w2 when "101",
					w2 when "110",
					w2 when "111";
end;