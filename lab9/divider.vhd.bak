library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity divider is
	port ( clk_50M : in std_logic;
			clk_out : buffer std_logic);
end;

architecture func of divider is
	signal count : integer range 0 to 50000000;
begin
	process(clk_50M)
	begin
		if rising_edge(clk_50M) then
			count <= count + 1;
			if count=50000000 then
				clk_out <= not clk_out;
				count <= 0;
			end if;
		end if;
	end process;
end;