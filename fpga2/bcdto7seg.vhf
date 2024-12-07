--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : bcdto7seg.vhf
-- /___/   /\     Timestamp : 11/07/2024 19:06:42
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl D:/project/merge/fpga2/bcdto7seg.vhf -w D:/project/merge/fpga2/bcdto7seg.sch
--Design Name: bcdto7seg
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL OR6_HXILINX_bcdto7seg -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity OR6_HXILINX_bcdto7seg is
  
port(
    O  : out std_logic;

    I0  : in std_logic;
    I1  : in std_logic;
    I2  : in std_logic;
    I3  : in std_logic;
    I4  : in std_logic;
    I5  : in std_logic
  );
end OR6_HXILINX_bcdto7seg;

architecture OR6_HXILINX_bcdto7seg_V of OR6_HXILINX_bcdto7seg is
begin
  O <=  (I0 or I1 or I2 or I3 or I4 or I5);
end OR6_HXILINX_bcdto7seg_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity bcdto7seg is
   port ( A_P59 : in    std_logic; 
          B_P61 : in    std_logic; 
          C_P62 : in    std_logic; 
          D_P66 : in    std_logic; 
          a_P41 : out   std_logic; 
          b_P40 : out   std_logic; 
          c_P35 : out   std_logic; 
          d_P34 : out   std_logic; 
          e_P32 : out   std_logic; 
          f_P29 : out   std_logic; 
          g_P27 : out   std_logic);
end bcdto7seg;

architecture BEHAVIORAL of bcdto7seg is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal XLXN_6   : std_logic;
   signal XLXN_13  : std_logic;
   signal XLXN_15  : std_logic;
   signal XLXN_17  : std_logic;
   signal XLXN_39  : std_logic;
   signal XLXN_40  : std_logic;
   signal XLXN_41  : std_logic;
   signal XLXN_42  : std_logic;
   signal XLXN_44  : std_logic;
   signal XLXN_60  : std_logic;
   signal XLXN_61  : std_logic;
   signal XLXN_62  : std_logic;
   signal XLXN_64  : std_logic;
   signal XLXN_65  : std_logic;
   signal XLXN_72  : std_logic;
   signal XLXN_73  : std_logic;
   signal XLXN_74  : std_logic;
   signal XLXN_75  : std_logic;
   signal XLXN_84  : std_logic;
   signal XLXN_91  : std_logic;
   signal XLXN_92  : std_logic;
   signal XLXN_93  : std_logic;
   signal XLXN_94  : std_logic;
   signal XLXN_95  : std_logic;
   signal XLXN_102 : std_logic;
   signal XLXN_106 : std_logic;
   signal XLXN_107 : std_logic;
   signal XLXN_110 : std_logic;
   signal XLXN_111 : std_logic;
   signal XLXN_117 : std_logic;
   signal XLXN_124 : std_logic;
   signal XLXN_125 : std_logic;
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component OR6_HXILINX_bcdto7seg
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             I5 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component OR5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR5 : component is "BLACK_BOX";
   
   component OR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_44 : label is "XLXI_44_0";
begin
   XLXI_1 : INV
      port map (I=>A_P59,
                O=>XLXN_6);
   
   XLXI_2 : INV
      port map (I=>B_P61,
                O=>XLXN_13);
   
   XLXI_3 : INV
      port map (I=>C_P62,
                O=>XLXN_15);
   
   XLXI_4 : INV
      port map (I=>D_P66,
                O=>XLXN_17);
   
   XLXI_14 : AND2
      port map (I0=>C_P62,
                I1=>B_P61,
                O=>XLXN_44);
   
   XLXI_15 : AND2
      port map (I0=>XLXN_13,
                I1=>A_P59,
                O=>XLXN_84);
   
   XLXI_16 : AND2
      port map (I0=>C_P62,
                I1=>A_P59,
                O=>XLXN_106);
   
   XLXI_17 : AND3
      port map (I0=>XLXN_15,
                I1=>B_P61,
                I2=>XLXN_6,
                O=>XLXN_117);
   
   XLXI_31 : AND2
      port map (I0=>XLXN_17,
                I1=>XLXN_13,
                O=>XLXN_65);
   
   XLXI_32 : AND2
      port map (I0=>XLXN_17,
                I1=>C_P62,
                O=>XLXN_107);
   
   XLXI_33 : AND2
      port map (I0=>XLXN_17,
                I1=>A_P59,
                O=>XLXN_42);
   
   XLXI_34 : AND2
      port map (I0=>C_P62,
                I1=>XLXN_6,
                O=>XLXN_41);
   
   XLXI_37 : AND3
      port map (I0=>XLXN_15,
                I1=>XLXN_13,
                I2=>A_P59,
                O=>XLXN_40);
   
   XLXI_38 : AND3
      port map (I0=>D_P66,
                I1=>B_P61,
                I2=>XLXN_6,
                O=>XLXN_39);
   
   XLXI_44 : OR6_HXILINX_bcdto7seg
      port map (I0=>XLXN_39,
                I1=>XLXN_40,
                I2=>XLXN_41,
                I3=>XLXN_42,
                I4=>XLXN_44,
                I5=>XLXN_65,
                O=>a_P41);
   
   XLXI_45 : AND2
      port map (I0=>XLXN_15,
                I1=>XLXN_13,
                O=>XLXN_60);
   
   XLXI_46 : AND3
      port map (I0=>D_P66,
                I1=>C_P62,
                I2=>XLXN_6,
                O=>XLXN_61);
   
   XLXI_47 : AND3
      port map (I0=>D_P66,
                I1=>XLXN_15,
                I2=>A_P59,
                O=>XLXN_62);
   
   XLXI_48 : AND3
      port map (I0=>XLXN_17,
                I1=>XLXN_15,
                I2=>XLXN_6,
                O=>XLXN_64);
   
   XLXI_50 : OR5
      port map (I0=>XLXN_64,
                I1=>XLXN_62,
                I2=>XLXN_61,
                I3=>XLXN_60,
                I4=>XLXN_65,
                O=>b_P40);
   
   XLXI_51 : AND2
      port map (I0=>D_P66,
                I1=>XLXN_15,
                O=>XLXN_75);
   
   XLXI_52 : AND2
      port map (I0=>B_P61,
                I1=>XLXN_6,
                O=>XLXN_74);
   
   XLXI_53 : AND2
      port map (I0=>D_P66,
                I1=>XLXN_6,
                O=>XLXN_73);
   
   XLXI_54 : AND2
      port map (I0=>XLXN_15,
                I1=>XLXN_13,
                O=>XLXN_72);
   
   XLXI_55 : OR5
      port map (I0=>XLXN_72,
                I1=>XLXN_73,
                I2=>XLXN_74,
                I3=>XLXN_75,
                I4=>XLXN_84,
                O=>c_P35);
   
   XLXI_56 : AND2
      port map (I0=>XLXN_15,
                I1=>A_P59,
                O=>XLXN_92);
   
   XLXI_57 : AND3
      port map (I0=>XLXN_17,
                I1=>XLXN_13,
                I2=>XLXN_6,
                O=>XLXN_93);
   
   XLXI_58 : AND3
      port map (I0=>D_P66,
                I1=>C_P62,
                I2=>XLXN_13,
                O=>XLXN_91);
   
   XLXI_59 : AND3
      port map (I0=>D_P66,
                I1=>XLXN_15,
                I2=>B_P61,
                O=>XLXN_94);
   
   XLXI_60 : AND3
      port map (I0=>XLXN_17,
                I1=>C_P62,
                I2=>B_P61,
                O=>XLXN_95);
   
   XLXI_61 : OR5
      port map (I0=>XLXN_95,
                I1=>XLXN_94,
                I2=>XLXN_91,
                I3=>XLXN_93,
                I4=>XLXN_92,
                O=>d_P34);
   
   XLXI_62 : AND2
      port map (I0=>B_P61,
                I1=>A_P59,
                O=>XLXN_102);
   
   XLXI_63 : OR4
      port map (I0=>XLXN_102,
                I1=>XLXN_107,
                I2=>XLXN_106,
                I3=>XLXN_65,
                O=>e_P32);
   
   XLXI_64 : OR5
      port map (I0=>XLXN_110,
                I1=>XLXN_111,
                I2=>XLXN_117,
                I3=>XLXN_106,
                I4=>XLXN_84,
                O=>f_P29);
   
   XLXI_65 : AND2
      port map (I0=>XLXN_17,
                I1=>B_P61,
                O=>XLXN_111);
   
   XLXI_66 : AND2
      port map (I0=>XLXN_17,
                I1=>XLXN_15,
                O=>XLXN_110);
   
   XLXI_67 : AND2
      port map (I0=>C_P62,
                I1=>XLXN_13,
                O=>XLXN_125);
   
   XLXI_68 : AND2
      port map (I0=>D_P66,
                I1=>A_P59,
                O=>XLXN_124);
   
   XLXI_69 : OR5
      port map (I0=>XLXN_124,
                I1=>XLXN_125,
                I2=>XLXN_117,
                I3=>XLXN_107,
                I4=>XLXN_84,
                O=>g_P27);
   
end BEHAVIORAL;


