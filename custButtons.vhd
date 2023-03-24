----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.03.2023 09:27:12
-- Design Name: 
-- Module Name: custButtons - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity custButtons is
port(
        clk : in std_logic;
        reset : in std_logic;
        pause : in std_logic;
        unhappy : in std_logic;
        neutral : in std_logic;
        pleased : in std_logic;
        delighted : in std_logic;
        display_unhappy : out integer range 0 to 9999;
        display_neutral : out integer range 0 to 9999;
        display_pleased : out integer range 0 to 9999;
        display_delighted : out integer range 0 to 9999;
        warning_light : out std_logic
    );
end custButtons;

architecture Behavioral of custButtons is
begin

process(clk)
-- Counters for satisfaction levels
variable count_unhappy : integer range 0 to 9999 := 0;
variable count_neutral : integer range 0 to 9999 := 0;
variable count_pleased : integer range 0 to 9999 := 0;
variable count_delighted : integer range 0 to 9999 := 0;
begin
if rising_edge(clk) then
if reset = '1' then
count_unhappy := 0;
count_neutral := 0;
count_pleased := 0;
count_delighted := 0;
elsif pause = '0' then
-- Increment counters based on inputs
if unhappy = '1' then
count_unhappy := count_unhappy + 1;
elsif neutral = '1' then
count_neutral := count_neutral + 1;
elsif pleased = '1' then
count_pleased := count_pleased + 1;
elsif delighted = '1' then
count_delighted := count_delighted + 1;
end if;

end Behavioural;

