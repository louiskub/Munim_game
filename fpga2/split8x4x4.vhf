--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : split8x4x4.vhf
-- /___/   /\     Timestamp : 11/07/2024 19:06:43
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl D:/project/merge/fpga2/split8x4x4.vhf -w D:/project/merge/fpga2/split8x4x4.sch
--Design Name: split8x4x4
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

entity split8x4x4 is
   port ( I : in    std_logic_vector (7 downto 0); 
          H : out   std_logic_vector (3 downto 0); 
          L : out   std_logic_vector (3 downto 0));
end split8x4x4;

architecture BEHAVIORAL of split8x4x4 is
   attribute BOX_TYPE   : string ;
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
begin
   XLXI_1 : BUF
      port map (I=>I(0),
                O=>L(0));
   
   XLXI_2 : BUF
      port map (I=>I(1),
                O=>L(1));
   
   XLXI_3 : BUF
      port map (I=>I(2),
                O=>L(2));
   
   XLXI_4 : BUF
      port map (I=>I(3),
                O=>L(3));
   
   XLXI_5 : BUF
      port map (I=>I(4),
                O=>H(0));
   
   XLXI_6 : BUF
      port map (I=>I(5),
                O=>H(1));
   
   XLXI_7 : BUF
      port map (I=>I(6),
                O=>H(2));
   
   XLXI_8 : BUF
      port map (I=>I(7),
                O=>H(3));
   
end BEHAVIORAL;


