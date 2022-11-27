library ieee;
use ieee.std_logic_1164.all;
use work.lab3_02_package.all;

entity lab3_02 is
	port( A0,B0 : in std_logic_vector(7 downto 0);
			seg : out std_logic_vector(13 downto 0));
end lab3_02;

architecture func of lab3_02 is
	signal s0,s1,s2,s3 : std_logic_vector(3 downto 0);
	signal c0,c1,C2,c3 : std_logic_vector(4 downto 0);
	signal Cout0,Cout1 : std_logic;
begin
	c0(0) <= '0';
	stage0 : fulladd port map(c0(0),A0(0),B0(0),s0(0),c0(1));
	stage1 : fulladd port map(c0(1),A0(1),B0(1),s0(1),c0(2));
	stage2 : fulladd port map(c0(2),A0(2),B0(2),s0(2),c0(3));
	stage3 : fulladd port map(c0(3),A0(3),B0(3),s0(3),c0(4));
	Cout0 <= c0(4) or (s0(3) and s0(1)) or (s0(3) and s0(2));
	c1(0) <= '0';
 	stage4 : fulladd port map(c1(0),'0',s0(0),s1(0),c1(1));
	stage5 : fulladd port map(c1(1),Cout0,s0(1),s1(1),c1(2));
	stage6 : fulladd port map(c1(2),Cout0,s0(2),s1(2),c1(3));
	stage7 : fulladd port map(c1(3),'0',s0(3),s1(3),c1(4));
	c2(0) <= Cout0;
	stage8 : fulladd port map(c2(0),A0(4),B0(4),s2(0),c2(1));
	stage9 : fulladd port map(c2(1),A0(5),B0(5),s2(1),c2(2));
	stage10 : fulladd port map(c2(2),A0(6),B0(6),s2(2),c2(3));
	stage11 : fulladd port map(c2(3),A0(7),B0(7),s2(3),c2(4));
	Cout1 <= c2(4) or (s2(3) and s2(1)) or (s2(3) and s2(2));
	c3(0) <= '0';
 	stage12 : fulladd port map(c3(0),'0',s2(0),s3(0),c3(1));
	stage13 : fulladd port map(c3(1),Cout1,s2(1),s3(1),c3(2));
	stage14 : fulladd port map(c3(2),Cout1,s2(2),s3(2),c3(3));
	stage15 : fulladd port map(c3(3),'0',s2(3),s3(3),c3(4));
	stage16 : hex port map(s1(0),s1(1),s1(2),s1(3),s3(0),s3(1),s3(2),s3(3),seg(6),seg(5),seg(4),seg(3),seg(2),seg(1),seg(0),seg(13),seg(12),seg(11),seg(10),seg(9),seg(8),seg(7));
end func;