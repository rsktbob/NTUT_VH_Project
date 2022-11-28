library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.lab7_01_package.all;

entity lab7_01 is
	port ( clk, reset : in std_logic;
			divisor, dividend : in std_logic_vector(7 downto 0);
			quotient, remainder : buffer std_logic_vector(7 downto 0);
			hex0, hex1, hex2, hex3 : out std_logic_vector(6 downto 0));
	end;
	
architecture func of lab7_01 is
	signal r, d : std_logic_vector(15 downto 0);
	signal times : integer range 0 to 8;
	signal state : std_logic_vector(1 downto 0) := "00";
begin
	remainder <= r(7 downto 0);
	f1:hex port map(remainder(3 downto 0), hex0);
	f2:hex port map(remainder(7 downto 4), hex1);
	f3:hex port map(quotient(3 downto 0), hex2);
	f4:hex port map(quotient(7 downto 4), hex3);
	process(clk)
	begin
		if rising_edge(clk) then
			if reset='1' then
				d(15 downto 8) <= divisor;
				r(7 downto 0) <= dividend;
				quotient <= "00000000";
				state <= "01";
				times <= 0;
			else
				case state is
					when "00" =>
					when "01" =>
						r <= r - d;
						state <= "10";
					when "10" =>
						for i in 7 downto 1 loop
							quotient(i) <= quotient(i-1);
						end loop;
						if r(15)='0' then
							quotient(0) <= '1';
						elsif r(15)='1' then
							r <= r + d;
							quotient(0) <= '0';
						end if;
						state <= "11";
					when "11" =>
						for i in 0 to 14 loop
							d(i) <= d(i+1);
						end loop;
						d(15) <= '0';
							if times=8 then
								state <= "00";
							else
								state <= "01";
								times <= times + 1;
							end if;
				end case;
			end if;
		end if;
	end process;
end;

								
							
				
	
	
	