library ieee;
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity ROM_176x4 is
  port (--Clock : in std_logic;
  		CS_L : in std_logic;
        R_W  : in std_logic;
        Addr   : in std_logic_vector(7 downto 0);
        Data  : out std_logic_vector(3 downto 0));
end ROM_176x4;

architecture ROM_176x4_Arch of ROM_176x4 is
  type rom_type is array (0 to 175)
        of std_logic_vector (3 downto 0);
  signal ROM : rom_type;
  signal Read_Enable : std_logic;
begin

ROM(0) <= X"7";
ROM(1) <= X"0";
ROM(2) <= X"4";
ROM(3) <= X"2";
ROM(4) <= X"4";
ROM(5) <= X"1";
ROM(6) <= X"D";
ROM(7) <= X"0";
ROM(8) <= X"B";
ROM(9) <= X"D";
ROM(10) <= X"1";
ROM(11) <= X"B";
ROM(12) <= X"5";
ROM(13) <= X"0";
ROM(14) <= X"B";
ROM(15) <= X"C";
ROM(16) <= X"3";
ROM(17) <= X"F";
ROM(18) <= X"0";
ROM(19) <= X"B";
ROM(20) <= X"6";
ROM(21) <= X"7";
ROM(22) <= X"A";
ROM(23) <= X"3";
ROM(24) <= X"2";
ROM(25) <= X"6";
ROM(26) <= X"A";
ROM(27) <= X"D";
ROM(28) <= X"0";
ROM(29) <= X"B";
ROM(30) <= X"4";
ROM(31) <= X"2";
ROM(32) <= X"9";
ROM(33) <= X"C";
ROM(34) <= X"0";
ROM(35) <= X"7";
ROM(36) <= X"0";
ROM(37) <= X"D";
ROM(38) <= X"0";
ROM(39) <= X"B";
ROM(40) <= X"4";
ROM(41) <= X"2";
ROM(42) <= X"F";
ROM(43) <= X"1";
ROM(44) <= X"B";
ROM(45) <= X"6";
ROM(46) <= X"7";
ROM(47) <= X"A";
ROM(48) <= X"0";
ROM(49) <= X"0";
ROM(50) <= X"6";
ROM(51) <= X"A";
ROM(52) <= X"D";
ROM(53) <= X"1";
ROM(54) <= X"B";
ROM(55) <= X"4";
ROM(56) <= X"1";
ROM(57) <= X"9";
ROM(58) <= X"C";
ROM(59) <= X"0";
ROM(60) <= X"F";
ROM(61) <= X"0";
ROM(62) <= X"B";
ROM(63) <= X"A";
ROM(64) <= X"C";
ROM(65) <= X"4";
ROM(66) <= X"6";
ROM(67) <= X"F";
ROM(68) <= X"D";
ROM(69) <= X"0";
ROM(70) <= X"B";
ROM(71) <= X"4";
ROM(72) <= X"2";
ROM(73) <= X"9";
ROM(74) <= X"C";
ROM(75) <= X"0";
ROM(76) <= X"7";
ROM(77) <= X"9";
ROM(78) <= X"D";
ROM(79) <= X"0";
ROM(80) <= X"B";
ROM(81) <= X"4";
ROM(82) <= X"2";
ROM(83) <= X"F";
ROM(84) <= X"1";
ROM(85) <= X"B";
ROM(86) <= X"A";
ROM(87) <= X"3";
ROM(88) <= X"6";
ROM(89) <= X"6";
ROM(90) <= X"F";
ROM(91) <= X"D";
ROM(92) <= X"1";
ROM(93) <= X"B";
ROM(94) <= X"4";
ROM(95) <= X"1";
ROM(96) <= X"9";
ROM(97) <= X"C";
ROM(98) <= X"0";
ROM(99) <= X"7";
ROM(100) <= X"9";
ROM(101) <= X"D";
ROM(102) <= X"0";
ROM(103) <= X"B";
ROM(104) <= X"4";
ROM(105) <= X"2";
ROM(106) <= X"D";
ROM(107) <= X"1";
ROM(108) <= X"B";
ROM(109) <= X"4";
ROM(110) <= X"1";
ROM(111) <= X"9";
ROM(112) <= X"C";
ROM(113) <= X"0";
ROM(114) <= X"0";
ROM(115) <= X"0";
ROM(116) <= X"0";
ROM(117) <= X"0";
ROM(118) <= X"0";
ROM(119) <= X"0";
ROM(120) <= X"0";
ROM(121) <= X"0";
ROM(122) <= X"0";
ROM(123) <= X"0";
ROM(124) <= X"0";
ROM(125) <= X"0";
ROM(126) <= X"0";
ROM(127) <= X"0";
ROM(128) <= X"0";
ROM(129) <= X"0";
ROM(130) <= X"0";
ROM(131) <= X"0";
ROM(132) <= X"0";
ROM(133) <= X"0";
ROM(134) <= X"0";
ROM(135) <= X"0";
ROM(136) <= X"0";
ROM(137) <= X"0";
ROM(138) <= X"0";
ROM(139) <= X"0";
ROM(140) <= X"0";
ROM(141) <= X"0";
ROM(142) <= X"0";
ROM(143) <= X"0";
ROM(144) <= X"0";
ROM(145) <= X"0";
ROM(146) <= X"0";
ROM(147) <= X"0";
ROM(148) <= X"0";
ROM(149) <= X"0";
ROM(150) <= X"0";
ROM(151) <= X"0";
ROM(152) <= X"0";
ROM(153) <= X"0";
ROM(154) <= X"0";
ROM(155) <= X"0";
ROM(156) <= X"0";
ROM(157) <= X"0";
ROM(158) <= X"0";
ROM(159) <= X"0";
ROM(160) <= X"0";
ROM(161) <= X"0";
ROM(162) <= X"0";
ROM(163) <= X"0";
ROM(164) <= X"0";
ROM(165) <= X"0";
ROM(166) <= X"0";
ROM(167) <= X"0";
ROM(168) <= X"0";
ROM(169) <= X"0";
ROM(170) <= X"0";
ROM(171) <= X"0";
ROM(172) <= X"0";
ROM(173) <= X"0";
ROM(174) <= X"0";
ROM(175) <= X"0";
	Read_Enable <=  '0' when(CS_L='0' and R_W = '1') else '1';

	process (Read_Enable)
	begin
		--if(Clock='0') then
			if(Read_Enable = '0') then
			  Data  <= ROM(conv_integer(Addr));
		  	else
			  Data <= "ZZZZ";
	      	end if;
		--else Data <= "ZZZZ";
		--end if;

	end process;

	end ROM_176x4_Arch;
