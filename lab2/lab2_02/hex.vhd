library ieee;
use ieee.std_logic_1164.all;

entity hex is
	port( sw0,sw1,sw2,sw3,sw4,sw5,sw6,sw7 : in std_logic;
			a0,b0,c0,d0,e0,f0,g0,a1,b1,c1,d1,e1,f1,g1 : out std_logic);
end hex;

architecture func of hex is
begin
	a0 <= ((NOT sw3) AND (NOT sw2) AND (NOT sw1) AND sw0) OR ((NOT sw3) AND sw2 AND (NOT sw1) AND (NOT sw0)) OR (sw3 AND (NOT sw2) AND sw1 AND sw0) OR (sw3 AND sw2 AND (NOT sw1) AND (NOT sw0)) OR (sw3 AND sw2 AND (NOT sw1) AND sw0);
	b0 <= ((NOT sw3) AND sw2 AND (NOT sw1) AND sw0) OR ((NOT sw3) AND sw2 AND sw1 AND (NOT sw0)) OR (sw3 AND (NOT sw2) AND sw1 AND sw0) OR (sw3 AND sw2 AND (NOT sw1) AND (NOT sw0)) OR (sw3 AND sw2 AND sw1 AND (NOT sw0)) OR (sw3 AND sw2 AND sw1 AND sw0);
	c0 <= ((NOT sw3) AND (NOT sw2) AND sw1 AND (NOT sw0)) OR (sw3 AND sw2 AND (NOT sw0)) OR (sw3 AND sw2 AND sw1);
	d0 <= ((NOT sw2) AND (NOT sw1) AND sw0) OR ((NOT sw3) AND sw2 AND (NOT sw1) AND (NOT sw0)) OR (sw2 AND sw1 AND sw0) OR (sw3 AND (NOT sw2) AND sw1 AND (NOT sw0));
	e0 <= ((NOT sw3) AND sw0) OR ((NOT sw3) AND sw2 AND (NOT sw1)) OR ((NOT sw2) AND (NOT sw1) AND sw0);
	f0 <= ((NOT sw3) AND (NOT sw2) AND sw0) OR ((NOT sw3) AND (NOT sw2) AND sw1) OR ((NOT sw3) AND sw1 AND sw0) OR (sw3 AND sw2 AND (NOT sw1));
	g0 <= ((NOT sw3) AND (NOT sw2) AND (NOT sw1)) OR ((NOT sw3) AND sw2 AND sw1 AND sw0);
	a1 <= ((NOT sw7) AND (NOT sw6) AND (NOT sw5) AND sw4) OR ((NOT sw7) AND sw6 AND (NOT sw5) AND (NOT sw4)) OR (sw7 AND (NOT sw6) AND sw5 AND sw4) OR (sw7 AND sw6 AND (NOT sw5) AND (NOT sw4)) OR (sw7 AND sw6 AND (NOT sw5) AND sw4);
	b1 <= ((NOT sw7) AND sw6 AND (NOT sw5) AND sw4) OR ((NOT sw7) AND sw6 AND sw5 AND (NOT sw4)) OR (sw7 AND (NOT sw6) AND sw5 AND sw4) OR (sw7 AND sw6 AND (NOT sw5) AND (NOT sw4)) OR (sw7 AND sw6 AND sw5 AND (NOT sw4)) OR (sw7 AND sw6 AND sw5 AND sw4);
	c1 <= ((NOT sw7) AND (NOT sw6) AND sw5 AND (NOT sw4)) OR (sw7 AND sw6 AND (NOT sw4)) OR (sw7 AND sw6 AND sw5);
	d1 <= ((NOT sw6) AND (NOT sw5) AND sw4) OR ((NOT sw7) AND sw6 AND (NOT sw5) AND (NOT sw4)) OR (sw6 AND sw5 AND sw4) OR (sw7 AND (NOT sw6) AND sw5 AND (NOT sw4));
	e1 <= ((NOT sw7) AND sw4) OR ((NOT sw7) AND sw6 AND (NOT sw5)) OR ((NOT sw6) AND (NOT sw5) AND sw4);
	f1 <= ((NOT sw7) AND (NOT sw6) AND sw4) OR ((NOT sw7) AND (NOT sw6) AND sw5) OR ((NOT sw7) AND sw5 AND sw4) OR (sw7 AND sw6 AND (NOT sw5));
	g1 <= ((NOT sw7) AND (NOT sw6) AND (NOT sw5)) OR ((NOT sw7) AND sw6 AND sw5 AND sw4);
end func;