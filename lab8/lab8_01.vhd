library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.lab8_01_package.all;

entity lab8_01 is
	port ( clk, reset : in std_logic;
			divisor, dividend : in std_logic_vector(7 downto 0);
			quotient : buffer std_logic_vector(7 downto 0);
			remainder : buffer std_logic_vector(15 downto 0);
			hex0, hex1, hex2, hex3 : out std_logic_vector(6 downto 0));
	end;
	
architecture func of lab8_01 is
	signal state : std_logic_vector(2 downto 0) := "000";
	signal times : integer range 0 to 8;
begin
	f1:hex port map(remainder(3 downto 0), hex0);
	f2:hex port map(remainder(7 downto 4), hex1);
	f3:hex port map(quotient(3 downto 0), hex2);
	f4:hex port map(quotient(7 downto 4), hex3);
	process(clk)
		variable r, d : std_logic_vector(15 downto 0);
	begin
		remainder <= r(15 downto 0);
		if rising_edge(clk) then
			if reset='1' then
				state <= "000";
			else
				case state is
					when "000" =>
						d(15 downto 8) := divisor;
						d(7 downto 0) := "00000000";
						r(15 downto 8) := "00000000";
						r(7 downto 0) := dividend;
						quotient <= "00000000";
						times <= 0;
						state <= "001";
					when "001" =>
						r := r - d;
						if r(15)='0' then
							state <= "010";
						elsif r(15) = '1' then
							state <= "011";
						end if;
					when "010" =>
						for i in 7 downto 1 loop
							quotient(i) <= quotient(i-1);
						end loop;
						quotient(0) <= '1';
						state <= "100";
					when "011" =>
						r := r + d;
						for i in 7 downto 1 loop
							quotient(i) <= quotient(i-1);
						end loop;
						quotient(0) <= '0';
						state <= "100";
					when "100" =>
						for i in 0 to 14 loop
							d(i) := d(i+1);
						end loop;
						d(15) := '0';
						if times=8 then
							state <= "101";
						else
							state <= "001";
							times <= times + 1;
						end if;
					when others =>
				end case;
			end if;
		end if;
	end process;
end;
