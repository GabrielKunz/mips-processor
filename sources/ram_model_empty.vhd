--------------------------------------------------------------------------------
--MIPS Based Processor
--Nomes:Amanda Wagner e Gabriel Kunz
--Disciplina: Organização de Computadores
--Professora: Débora Matos
--Ram Model
--------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity ram_model is
    Port ( data_out : in STD_LOGIC_VECTOR (15 downto 0); --Data_Path->RAM
           data_in : out STD_LOGIC_VECTOR (15 downto 0); --RAM->Data_Path
           ram_addr :in STD_LOGIC_VECTOR (7 downto 0); --Data_Path->RAM
           write_ram_enable : in STD_LOGIC; --Unidade de Controle->RAM
           clk : in STD_LOGIC;
           rst : in STD_LOGIC);
end ram_model;

architecture Behavioral of ram_model is

    type ram_type is array (255 downto 0) of std_logic_vector (7 downto 0); 
    signal RAM : ram_type;
begin
	
    process (clk, rst)
    begin
        if (clk'event and clk = '1') then
        	if (rst = '0') then
        		--  RESETA RAMÓRIA 
			RAM(0)    <= "00000000";
			RAM(1)    <= "00000000"; 
			RAM(2)    <= "00000000"; 
			RAM(3)    <= "00000000"; 
			RAM(4)    <= "00000000"; 
			RAM(5)    <= "00000000"; 
			RAM(6)    <= "00000000"; 
			RAM(7)    <= "00000000";  
			RAM(8)    <= "00000000"; 
			RAM(9)    <= "00000000"; 
			RAM(10)   <= "00000000"; 
			RAM(11)   <= "00000000"; 
			RAM(12)   <= "00000000"; 
			RAM(13)   <= "00000000"; 
			RAM(14)   <= "00000000"; 
			RAM(15)   <= "00000000"; 
			RAM(16)   <= "00000000"; 
			RAM(17)   <= "00000000"; 
			RAM(18)   <= "00000000";
			RAM(19)   <= "00000000";
			RAM(20)   <= "00000000";
			RAM(21)   <= "00000000"; 
			RAM(22)   <= "00000000"; 
			RAM(23)   <= "00000000"; 
			RAM(24)   <= "00000000"; 
			RAM(25)   <= "00000000"; 
			RAM(26)   <= "00000000"; 
			RAM(27)   <= "00000000";    
			RAM(28)   <= "00000000"; 
			RAM(29)   <= "00000000"; 
			RAM(30)   <= "00000000"; 
			RAM(31)   <= "00000000"; 
			RAM(32)   <= "00000000"; 
			RAM(33)   <= "00000000"; 
			RAM(34)   <= "00000000"; 
			RAM(35)   <= "00000000";
			RAM(36)   <= "00000000";
			RAM(37)   <= "00000000";
			RAM(38)   <= "00000000";
			RAM(39)   <= "00000000";
			RAM(40)   <= "00000000";
			RAM(41)   <= "00000000";
			RAM(42)   <= "00000000";
			RAM(43)   <= "00000000";
			RAM(44)   <= "00000000";
			RAM(45)   <= "00000000";
			RAM(46)   <= "00000000";
			RAM(47)   <= "00000000";
			RAM(48)   <= "00000000";
			RAM(49)   <= "00000000";
			RAM(50)   <= "00000000";
			RAM(51)   <= "00000000";
			RAM(52)   <= "00000000";
			RAM(53)   <= "00000000";
			RAM(54)   <= "00000000";
			RAM(55)   <= "00000000";
			RAM(56)   <= "00000000";
			RAM(57)   <= "00000000";
			RAM(58)   <= "00000000";
			RAM(59)   <= "00000000";
			RAM(60)   <= "00000000";
			RAM(61)   <= "00000000";
			RAM(62)   <= "00000000";
			RAM(63)   <= "00000000";
			RAM(64)   <= "00000000";
			RAM(65)   <= "00000000";
			RAM(66)   <= "00000000";
			RAM(67)   <= "00000000";
			RAM(68)   <= "00000000";
			RAM(69)   <= "00000000";
			RAM(70)   <= "00000000";
			RAM(71)   <= "00000000";
			RAM(72)   <= "00000000";
			RAM(73)   <= "00000000";
			RAM(74)   <= "00000000";
			RAM(75)   <= "00000000";
			RAM(76)   <= "00000000";
			RAM(77)   <= "00000000";
			RAM(78)   <= "00000000";
			RAM(79)   <= "00000000";
			RAM(80)   <= "00000000";
			RAM(81)   <= "00000000";
			RAM(82)   <= "00000000";
			RAM(83)   <= "00000000";
			RAM(84)   <= "00000000";
			RAM(85)   <= "00000000";
			RAM(86)   <= "00000000";
			RAM(87)   <= "00000000";
			RAM(88)   <= "00000000";
			RAM(89)   <= "00000000";
			RAM(90)   <= "00000000";
			RAM(91)   <= "00000000";
			RAM(92)   <= "00000000";
			RAM(93)   <= "00000000";
			RAM(94)   <= "00000000";
			RAM(95)   <= "00000000";
			RAM(96)   <= "00000000";
			RAM(97)   <= "00000000";
			RAM(98)   <= "00000000";
			RAM(99)   <= "00000000";
			RAM(100)   <= "00000000";
			RAM(101)   <= "00000000";
			RAM(102)   <= "00000000";
			RAM(103)   <= "00000000";
			RAM(104)   <= "00000000";
			RAM(105)   <= "00000000";
			RAM(106)   <= "00000000";
			RAM(107)   <= "00000000";
			RAM(108)   <= "00000000";
			RAM(109)   <= "00000000";
			RAM(110)   <= "00000000";
			RAM(111)   <= "00000000";
			RAM(112)   <= "00000000";
			RAM(113)   <= "00000000";
			RAM(114)   <= "00000000";
			RAM(115)   <= "00000000";
			RAM(116)   <= "00000000";
			RAM(117)   <= "00000000";
			RAM(118)   <= "00000000";
			RAM(119)   <= "00000000";
			RAM(120)   <= "00000000";
			RAM(121)   <= "00000000";
			RAM(122)   <= "00000000";
			RAM(123)   <= "00000000";
			RAM(124)   <= "00000000";
			RAM(125)   <= "00000000";
			RAM(126)   <= "00000000";
			RAM(127)   <= "00000000";
			RAM(128)   <= "00000000";
			RAM(129)   <= "00000000"; 
			RAM(130)   <= "00000000"; 
			RAM(131)   <= "00000000";
			RAM(132)   <= "00000000";
			RAM(133)   <= "00000000";
			RAM(134)   <= "00000000";
			RAM(135)   <= "00000000";
			RAM(136)   <= "00000000";
			RAM(137)   <= "00000000";
			RAM(138)   <= "00000000";
			RAM(139)   <= "00000000";
			RAM(140)   <= "00000000";
			RAM(141)   <= "00000000";
			RAM(142)   <= "00000000";
			RAM(143)   <= "00000000";
			RAM(144)   <= "00000000";
			RAM(145)   <= "00000000";
			RAM(146)   <= "00000000";
			RAM(147)   <= "00000000";
			RAM(148)   <= "00000000";
			RAM(149)   <= "00000000";
			RAM(150)   <= "00000000";
			RAM(151)   <= "00000000";
			RAM(152)   <= "00000000";
			RAM(153)   <= "00000000";
			RAM(154)   <= "00000000";
			RAM(155)   <= "00000000";
			RAM(156)   <= "00000000";
			RAM(157)   <= "00000000";
			RAM(158)   <= "00000000";
			RAM(159)   <= "00000000";
			RAM(160)   <= "00000000";
			RAM(161)   <= "00000000";
			RAM(162)   <= "00000000";
			RAM(163)   <= "00000000";
			RAM(164)   <= "00000000";
			RAM(165)   <= "00000000";
			RAM(166)   <= "00000000";
			RAM(167)   <= "00000000";
			RAM(168)   <= "00000000";
			RAM(169)   <= "00000000";
			RAM(170)   <= "00000000";
			RAM(171)   <= "00000000";
			RAM(172)   <= "00000000";
			RAM(173)   <= "00000000";
			RAM(174)   <= "00000000";
			RAM(175)   <= "00000000";
			RAM(176)   <= "00000000";
			RAM(177)   <= "00000000";
			RAM(178)   <= "00000000";
			RAM(179)   <= "00000000";
			RAM(180)   <= "00000000";
			RAM(181)   <= "00000000";
			RAM(182)   <= "00000000";
			RAM(183)   <= "00000000";
			RAM(184)   <= "00000000";
			RAM(185)   <= "00000000";
			RAM(186)   <= "00000000";
			RAM(187)   <= "00000000";
			RAM(188)   <= "00000000";
			RAM(189)   <= "00000000";
			RAM(190)   <= "00000000";
			RAM(191)   <= "00000000";
			RAM(192)   <= "00000000";
			RAM(193)   <= "00000000";
			RAM(194)   <= "00000000";
			RAM(195)   <= "00000000";
			RAM(196)   <= "00000000";
			RAM(197)   <= "00000000";
			RAM(198)   <= "00000000";
			RAM(199)   <= "00000000";
			RAM(200)   <= "00000000";
			RAM(201)   <= "00000000";
			RAM(202)   <= "00000000";
			RAM(203)   <= "00000000";
			RAM(204)   <= "00000000";
			RAM(205)   <= "00000000";
			RAM(206)   <= "00000000";
			RAM(207)   <= "00000000";
			RAM(208)   <= "00000000";
			RAM(209)   <= "00000000";
			RAM(210)   <= "00000000";
			RAM(211)   <= "00000000";
			RAM(212)   <= "00000000";
			RAM(213)   <= "00000000";
			RAM(214)   <= "00000000";
			RAM(215)   <= "00000000";
			RAM(216)   <= "00000000";
			RAM(217)   <= "00000000";
			RAM(218)   <= "00000000";
			RAM(219)   <= "00000000";
			RAM(220)   <= "00000000";
			RAM(221)   <= "00000000";
			RAM(222)   <= "00000000";
			RAM(223)   <= "00000000";
			RAM(224)   <= "00000000";
			RAM(225)   <= "00000000";
			RAM(226)   <= "00000000";
			RAM(227)   <= "00000000";
			RAM(228)   <= "00000000";
			RAM(229)   <= "00000000";
			RAM(230)   <= "00000000";
			RAM(231)   <= "00000000";
			RAM(232)   <= "00000000";
			RAM(233)   <= "00000000";
			RAM(234)   <= "00000000";
			RAM(235)   <= "00000000";
			RAM(236)   <= "00000000";
			RAM(237)   <= "00000000";
			RAM(238)   <= "00000000";
			RAM(239)   <= "00000000";
			RAM(240)   <= "00000000";
			RAM(241)   <= "00000000";
			RAM(242)   <= "00000000";
			RAM(243)   <= "00000000";
			RAM(244)   <= "00000000";
			RAM(245)   <= "00000000";
			RAM(246)   <= "00000000";
			RAM(247)   <= "00000000";
			RAM(248)   <= "00000000";
			RAM(249)   <= "00000000";
			RAM(250)   <= "00000000";
			RAM(251)   <= "00000000";
			RAM(252)   <= "00000000";
			RAM(253)   <= "00000000";
			RAM(254)   <= "00000000";
			RAM(255)   <= "00000000";
				---------------------------------------
			else
			 	if ram_write_enable = '1' then
                	RAM(to_integer(unsigned(ram_addr))) <= data_out (15 downto 8);
                	RAM(to_integer(unsigned(ram_addr)) + 1) <= data_out (7 downto 0);
            	else
                 	data_in <= RAM(to_integer(unsigned(ram_addr))) & RAM(to_integer(unsigned(ram_addr)) + 1);
	         	end if;
        	end if ; 
        end if;
    end process;

end Behavioral;