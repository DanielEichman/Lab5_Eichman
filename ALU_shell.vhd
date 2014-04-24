-------------------------------------------------------------------------------
--
-- Title       : ALU
-- Design      : ALU
-- Author      : Daniel Eichman 
-- Company     : usafa
--
-------------------------------------------------------------------------------
--
-- File        : ALU.vhd
-- Generated   : Fri Mar 30 11:16:54 2007
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.20
--
-------------------------------------------------------------------------------
--
-- Description : This is a project that simulates a PRISM ALU. There are a 
-- total of 8 commands which is selected by OpSel. Other than that there are two inputs
-- Data and the Accumulator these will be used by operations the ALU can do.
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {ALU} architecture {ALU}}

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ALU is
	 port(
		 OpSel : in STD_LOGIC_VECTOR(2 downto 0);
		 Data : in STD_LOGIC_VECTOR(3 downto 0);
		 Accumulator : in STD_LOGIC_VECTOR(3 downto 0);
		 Result : out STD_LOGIC_VECTOR(3 downto 0)
	     );
end ALU;

--}} End of automatically maintained section

architecture ALU of ALU is	   

signal temp : std_logic_vector(3 downto 0);
begin
	
-- fill in details to create result as a function of Data and Accumulator, based on OpSel.
 -- e.g : Build a multiplexer choosing between the eight ALU operations.  Either use a case statement (and thus a process)
 --       or a conditional signal assignment statement ( x <= Y when <condition> else . . .)
 -- ALU Operations are defined as:
 -- OpSel : Function
--  0     : AND
--  1     : NEG (2s complement)
--  2     : NOT (invert)
--  3     : ROR
--  4     : OR
--  5     : IN
--  6     : ADD
--  7     : LD

--aluswitch: process (Accumulator, Data, OpSel)
--       begin
--                                -- enter your if/then/else or case statements here
--                                
--                                case opsel is
--                                
--                                when "000" => result<= (Accumulator and Data);
--                                when "001" => result<= std_logic_vector(not unsigned(Accumulator)+"0001");
--                                when "010" => result<= (not Accumulator);
--                                when "011" =>Result(0) <= Accumulator(1);
--                                                                                Result(1) <= Accumulator(2);
--                                                                                Result(2) <= Accumulator(3);
--                                                                                Result(3) <= Accumulator(0);
--                                when "100" => result<= (Accumulator or Data);
--                                when "101" => result<= Data;
--                                when "110" => result<= std_logic_vector(unsigned(Accumulator) + unsigned(Data));
--                                when "111" => result<= Data;
--                                when others => result<= "0000"; 
--                                
--                                end case;
--           end process;
aluswitch: process (Accumulator, Data, OpSel)
        begin
end process;
Result <= 	(Data and Accumulator) 													when OpSel = "000" else
				std_logic_vector(not unsigned(Accumulator)+"0001")				when OpSel = "001" else
				 Not Accumulator 															when OpSel = "010" else
				 std_logic_vector(rotate_right(unsigned(Accumulator), 1)) 	when OpSel = "011" else
				 Data or Accumulator 													when OpSel = "100" else
				 Data 																		when OpSel = "101" else
				 std_logic_vector(unsigned(Accumulator) + unsigned(Data)) 	when OpSel = "110" else
				 Data 																		when OpSel = "111" else
				 Accumulator;
end ALU;

