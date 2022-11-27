library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity lab7 is
	port ( clk, reset : in std_logic; 
			a, b : in std_logic_vector(3 downto 0);
			q : buffer std_logic_vector(3 downto 0));
end;

architecture func of lab7 is
	signal state : std_logic_vector(1 downto 0);
	signal divisior, remainder : std_logic_vector(7 downto 0);
	signal times : std_logic_vector(2 downto 0);
begin
	process(clk)
	begin
		if rising_edge(clk) then
			if reset='1' then
				remainder(3 downto 0) <= a;
				divisior(7 downto 4) <= b;
				state <= "01";
				times <= "000";
			else
				if state="01" then
					remainder <= remainder - divisior;
					state <= "10";
				elsif state="10" then
					for i in 3 downto 1 loop
						q(i) <= q(i-1);
					end loop;
					if remainder(7)='0' then
						q(0) <= '1';
					elsif remainder(7)='1' then
						remainder <= remainder + divisior;
						q(0) <= '0';
					end if;
					state <= "11";
				elsif state="11" then
					if times="100" then
						state <= "00";
					else
						for i in 0 to 6 loop
							divisior(i) <= divisior(i+1);
						end loop;
						divisior(7) <= '0';
						state <= "01";
						times <= times + '1';
					end if;
				end if;
			end if;
		end if;
	end process;
end;
						
				
	