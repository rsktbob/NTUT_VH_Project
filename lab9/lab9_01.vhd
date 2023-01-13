library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.lab9_01_package.all;

entity lab9_01 is
	port (	clk_50Mhz, reset : in std_logic;
			sw : in std_logic_vector(2 downto 0);
			ouput : out std_logic_vector(7 downto 0) := "11111111");
end;

architecture func of lab9_01 is
	signal w0, w1, w2, w3, w4, w5, w6, w7 : std_logic;
	signal c0, c1, c2, c3, c4, c5, c6, c7 : std_logic;
	signal resetn, reset_ris : std_logic;
	signal count : integer range 0 to 50000000 := 0;
	signal counter1, counter2 : integer range 0 to 50000000 := 0; 
	signal counter1_clk50Mhz, counter2_clk50Mhz, counter1_clk1hz, counter2_clk1hz : std_logic;
	attribute syn_keep : boolean;
	attribute syn_keep of reset : signal is true;
	attribute syn_keep of resetn : signal is true;
	attribute syn_keep of reset_ris : signal is true; 
begin
	resetn <= not reset;
	reset_ris <= reset and resetn;
	f1 : ring_oscillator_13 port map (clk_50Mhz, w0);
	f2 : ring_oscillator_7 port map (clk_50Mhz, w1);
	f3 : ring_oscillator_7 port map (clk_50Mhz, w2);
	f4 : ring_oscillator_21 port map (clk_50Mhz, w3);
	f5 : ring_oscillator_17 port map (clk_50Mhz, w4);
	f6 : ring_oscillator_7 port map (clk_50Mhz, w5);
	f7 : ring_oscillator_9 port map (clk_50Mhz, w6);
	f8 : ring_oscillator_9 port map (clk_50Mhz, w7);
	e1 : ring_oscillator_9 port map (clk_50Mhz, c0);
	e2 : ring_oscillator_9 port map (clk_50Mhz, c1);
	e3 : ring_oscillator_17 port map (clk_50Mhz, c2);
	e4 : ring_oscillator_7 port map (clk_50Mhz, c3);
	e5 : ring_oscillator_7 port map (clk_50Mhz, c4);
	e6 : ring_oscillator_9 port map (clk_50Mhz, c5);
	e7 : ring_oscillator_15 port map (clk_50Mhz, c6);
	e8 : ring_oscillator_17 port map (clk_50Mhz, c7);
	k1 : mux port map (w0, w1, w2, w3, w4, w5, w6, w7, sw, counter1_clk50Mhz);
	k2 : mux port map (c0, c1, c2, c3, c4, c5, c6, c7, sw, counter2_clk50Mhz);
	g1 : divider port map (counter1_clk50Mhz, counter1_clk1hz);
	g2 : divider port map (counter2_clk50Mhz, counter2_clk1hz);
	s1 : counter port map ( reset_ris, counter1_clk1hz, counter1);
	s2 : counter port map ( reset_ris, counter2_clk1hz, counter2);
	p1 : comparator port map (counter1, counter2, sw, ouput);
end;	