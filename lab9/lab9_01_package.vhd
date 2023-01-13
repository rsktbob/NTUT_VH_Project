library ieee;
use ieee.std_logic_1164.all;
package lab9_01_package is
	component ring_oscillator_7
		port ( enable : in std_logic;
			ck_out : buffer std_logic);
	end component;
	component ring_oscillator_9
		port ( enable : in std_logic;
			ck_out : buffer std_logic);
	end component;
	component ring_oscillator_13
		port ( enable : in std_logic;
			ck_out : buffer std_logic);
	end component;
	component ring_oscillator_15
		port ( enable : in std_logic;
			ck_out : buffer std_logic);
	end component;
	component ring_oscillator_17
		port ( enable : in std_logic;
			ck_out : buffer std_logic);
	end component;
	component ring_oscillator_21
		port ( enable : in std_logic;
			ck_out : buffer std_logic);
	end component;
	component mux
		port ( w0 ,w1, w2, w3, w4, w5, w6, w7 : in std_logic;
			sw : in std_logic_vector(2 downto 0);
			ck_out : out std_logic);
	end component;
	component divider
		port ( clk_50M : in std_logic;
			clk_out : out std_logic);
	end component;
	component counter
		port ( reset : in std_logic;
			clk_in : in std_logic;
			counter : buffer integer);
	end component;
	component comparator
		port ( counter1 : in integer;
			counter2 : in integer;
			sw : in std_logic_vector(2 downto 0);
			ouput : out std_logic_vector(7 downto 0));
	end component;	
end package;