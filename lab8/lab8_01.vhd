library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.lab8_01_package.all;

entity lab8_01 is 
	port ( clk : in std_logic;
			op : in std_logic_vector(3 downto 0);
			Data : in std_logic_vector(7 downto 0);
			Rs, Rt : in std_logic_vector(1 downto 0);
			Rs_seg0, Rs_seg1, Rt_seg0, Rt_seg1, Data_seg0, Data_seg1 : buffer std_logic_vector(6 downto 0));
end;

architecture func of lab8_01 is
	signal Data_sel, Rs_sel, Rt_sel, R3, R2, R1, R0 : std_logic_vector(7 downto 0) := "00000000";
begin
	f1 : hex port map(Rs_sel(3 downto 0), Rs_seg0);
	f2 : hex port map(Rs_sel(7 downto 4), Rs_seg1);
	f3 : hex port map(Rt_sel(3 downto 0), Rt_seg0);
	f4 : hex port map(Rt_sel(7 downto 4), Rt_seg1);
	f5 : hex port map(Data_sel(3 downto 0), Data_seg0);
	f6 : hex port map(Data_sel(7 downto 4), Data_seg1);
	process(clk)
	begin
		if rising_edge(clk) then
			Data_sel <= Data;
			case Rs is
				when "00" =>
					Rs_sel <= R0;
				when "01" =>
					Rs_sel <= R1;
				when "10" =>
					Rs_sel <= R2;
				when "11" =>
					Rs_sel <= R3;
			end case;
			case Rt is
				when "00" =>
					Rt_sel <= R0;
				when "01" =>
					Rt_sel <= R1;
				when "10" =>
					Rt_sel <= R2;
				when "11" =>
					Rt_sel <= R3;
			end case;
			case op is
				when "0000" =>
					Rs_sel <= Data;
				when "0001" =>
					Rs_sel <= Rt_sel;
				when "0010" =>
					Rs_sel <= Rs_sel + Rt_sel;
				when "0011" =>
					Rs_sel <= Rs_sel and Rt_sel;
				when "0101" =>
					Rs_sel <= Rs_sel - Rt_sel;
				when "1001" =>
					Rs_sel <= Rt_sel - Rs_sel;
				when "0100" =>
					if (Rs_sel < Rt_sel) then
						Rs_sel <= "00000001";
					else
						Rs_sel <= "00000000";
					end if;
				when others =>
			end case;
			case Rs is
				when "00" =>
					R0 <= Rs_sel;
				when "01" =>
					R1 <= Rs_sel;
				when "10" =>
					R2 <= Rs_sel;
				when "11" =>
					R3 <= Rs_sel;
			end case;
			case Rt is
				when "00" =>
					R0 <= Rt_sel;
				when "01" =>
					R1 <= Rt_sel;
				when "10" =>
					R2 <= Rt_sel;
				when "11" =>
					R3 <= Rt_sel;
			end case;
		end if;
	end process;
end;
	
		
		
		
	