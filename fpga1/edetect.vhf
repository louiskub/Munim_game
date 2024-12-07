--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : edetect.vhf
-- /___/   /\     Timestamp : 11/08/2024 18:52:31
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl D:/project/merge/add_special_btn/fpga1/edetect.vhf -w D:/project/merge/add_special_btn/fpga1/edetect.sch
--Design Name: edetect
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

entity edetect is
   port ( CLK : in    std_logic; 
          I   : in    std_logic; 
          CEO : out   std_logic);
end edetect;

architecture BEHAVIORAL of edetect is
   attribute BOX_TYPE   : string ;
   signal XLXN_5 : std_logic;
   signal XLXN_6 : std_logic;
   component FD
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
begin
   XLXI_1 : FD
      port map (C=>CLK,
                D=>I,
                Q=>XLXN_6);
   
   XLXI_2 : FD
      port map (C=>CLK,
                D=>XLXN_6,
                Q=>XLXN_5);
   
   XLXI_5 : AND2B1
      port map (I0=>XLXN_5,
                I1=>XLXN_6,
                O=>CEO);
   
end BEHAVIORAL;


