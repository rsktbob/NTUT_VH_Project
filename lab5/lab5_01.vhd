library ieee;
use ieee.std_logic_1164.all;

entity lab5_01 is
	generic (N : integer := 7);
	port( clk : in std_logic;
			clear : in std_logic;
			load : in std_logic;
			lr_sel : in std_logic;
			di : in std_logic_vector( N downto 0);
			sdi : in std_logic;
			qo : buffer std_logic_vector( N downto 0));
end lab5_01;

architecture func of lab5_01 is
begin
	process(clk)
	begin
		if rising_edge(clk) then
			if clear='1' then
				qo <= "00000000";
			elsif load='1' then			
					qo <= di;
			else
				if lr_sel='0' then
					for i in 1 to N loop
						qo(i) <= qo(i-1);
					end loop;
					qo(0) <= sdi;
				else
					for i in 0 to N-1 loop
						qo(i) <= qo(i+1);
					end loop;
					qo(7) <= sdi;
				end if;
			end if;
		end if;
	end process;
end func;
			