--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : wtb4.vhf
-- /___/   /\     Timestamp : 11/07/2024 19:06:43
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl D:/project/merge/fpga2/wtb4.vhf -w D:/project/merge/fpga2/wtb4.sch
--Design Name: wtb4
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity wtb4 is
   port ( I0 : in    std_logic; 
          I1 : in    std_logic; 
          I2 : in    std_logic; 
          I3 : in    std_logic; 
          O  : out   std_logic_vector (3 downto 0));
end wtb4;

architecture BEHAVIORAL of wtb4 is
   attribute BOX_TYPE   : string ;
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
begin
   XLXI_1 : BUF
      port map (I=>I0,
                O=>O(0));
   
   XLXI_2 : BUF
      port map (I=>I1,
                O=>O(1));
   
   XLXI_3 : BUF
      port map (I=>I2,
                O=>O(2));
   
   XLXI_4 : BUF
      port map (I=>I3,
                O=>O(3));
   
end BEHAVIORAL;


