library ieee;
use ieee.std_logic_1164.all;

entity FSM is
	port ( clk, reset, w : in std_logic;
			output : buffer std_logic_vector(2 downto 0) := "000");
end;

architecture func of FSM is
begin
	process(clk)
	begin
		if rising_edge(clk) then
			if reset='1' then
				output<="000";
			else
				case output is
					when "000" =>
						if w='1' then
							output <= "001";
						end if;
					when "001" =>
						if w='0' then
							output <= "010";
						elsif w='1' then
							output <= "011";
						end if;
					when "010" =>
						output <= "100";
					when "011" =>
						output <= "100";
					when "100" =>
						if w='0' then
							output <= "001";
						elsif w='1' then
							output <= "101";
						end if;
					when others =>
				end case;
			end if;
		end if;
	end process;
end;