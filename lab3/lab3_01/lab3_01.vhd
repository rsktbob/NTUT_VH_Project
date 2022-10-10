library ieee;
use ieee.std_logic_1164.all;
use work.lab3_01_package.all;

entity lab3_01 is
	port( A0,B0 : in std_logic_vector(3 downto 0);
			seg : out std_logic_vector(13 downto 0));
end lab3_01;

architecture func of lab3_01 is
	signal s0,s1 : std_logic_vector(3 downto 0);
	signal c0,c1 : std_logic_vector(4 downto 0);
	signal A13,A10 : std_logic;
	signal Cout : std_logic;
	signal bit1 : std_logic_vector(3 downto 0);
begin
	c0(0) <= '0';
	stage0 : fulladd port map(c0(0),A0(0),B0(0),s0(0),c0(1));
	stage1 : fulladd port map(c0(1),A0(1),B0(1),s0(1),c0(2));
	stage2 : fulladd port map(c0(2),A0(2),B0(2),s0(2),c0(3));
	stage3 : fulladd port map(c0(3),A0(3),B0(3),s0(3),c0(4));
	Cout <= c0(4) or (s0(3) and s0(1)) or (s0(3) and s0(2));
	c1(0) <= '0';
	A13 <= '0';
	A10 <= '0';
	bit1(2) <= '0';
	bit1(1) <= '0';
	bit1(0) <= '0';
 	stage4 : fulladd port map(c1(0),A13,s0(0),s1(0),c1(1));
	stage5 : fulladd port map(c1(1),Cout,s0(1),s1(1),c1(2));
	stage6 : fulladd port map(c1(2),Cout,s0(2),s1(2),c1(3));
	stage7 : fulladd port map(c1(3),A10,s0(3),s1(3),c1(4));
	stage8 : hex port map(s1(0),s1(1),s1(2),s1(3),Cout,bit1(0),bit1(1),bit1(2),seg(6),seg(5),seg(4),seg(3),seg(2),seg(1),seg(0),seg(13),seg(12),seg(11),seg(10),seg(9),seg(8),seg(7));
end func;
	