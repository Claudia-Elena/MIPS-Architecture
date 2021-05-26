----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:05:44 03/22/2020 
-- Design Name: 
-- Module Name:    ctrl - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ctrl is
    Port ( OP : in  STD_LOGIC_VECTOR (5 downto 0);
           Funct : in  STD_LOGIC_VECTOR (5 downto 0);
           ALUSrc : out  STD_LOGIC;
           ALUOP : out  STD_LOGIC_VECTOR (1 downto 0);
           MemWr : out  STD_LOGIC;
           Mem2Reg : out  STD_LOGIC;
           RegWr : out  STD_LOGIC;
           RegDest : out  STD_LOGIC);
end ctrl;

architecture Behavioral of ctrl is

begin
	ALUSrc <= '0' when OP = b"00_0000" else '1';
	with Funct select
	ALUOP <= "01" when b"10_0010",
				"10" when b"10_0100",
				"11" when b"10_0101",
				"00" when others;
	MemWr <= '1' when OP = b"10_1011" else '0';
	Mem2Reg <= '1' when OP = b"10_0011" else '0';
	RegWr <= '0' when OP = b"10_1011" else '1';
	RegDest <= '1' when OP = b"00_0000" else '0';

end Behavioral;

