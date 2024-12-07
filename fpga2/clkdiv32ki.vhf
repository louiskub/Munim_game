--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : clkdiv32ki.vhf
-- /___/   /\     Timestamp : 11/07/2024 19:06:43
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl D:/project/merge/fpga2/clkdiv32ki.vhf -w D:/project/merge/fpga2/clkdiv32ki.sch
--Design Name: clkdiv32ki
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

entity clkdiv32ki is
   port ( CLK  : in    std_logic; 
          CLKO : out   std_logic);
end clkdiv32ki;

architecture BEHAVIORAL of clkdiv32ki is
   attribute BOX_TYPE   : string ;
   signal XLXN_3     : std_logic;
   signal XLXN_4     : std_logic;
   signal XLXN_5     : std_logic;
   signal XLXN_9999  : std_logic;
   signal XLXN_10000 : std_logic;
   signal XLXN_10001 : std_logic;
   signal XLXN_10012 : std_logic;
   signal XLXN_10013 : std_logic;
   signal XLXN_10016 : std_logic;
   signal XLXN_10017 : std_logic;
   signal XLXN_10018 : std_logic;
   signal XLXN_10019 : std_logic;
   signal XLXN_10020 : std_logic;
   signal XLXN_10021 : std_logic;
   signal XLXN_10022 : std_logic;
   signal XLXN_10023 : std_logic;
   signal XLXN_10024 : std_logic;
   signal XLXN_10025 : std_logic;
   signal XLXN_10028 : std_logic;
   signal XLXN_10049 : std_logic;
   signal XLXN_10051 : std_logic;
   signal XLXN_10052 : std_logic;
   signal XLXN_10053 : std_logic;
   signal XLXN_10054 : std_logic;
   signal XLXN_10055 : std_logic;
   signal XLXN_10056 : std_logic;
   signal XLXN_10059 : std_logic;
   signal XLXN_10061 : std_logic;
   signal XLXN_10069 : std_logic;
   signal CLKO_DUMMY : std_logic;
   component FD_1
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD_1 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
begin
   CLKO <= CLKO_DUMMY;
   XLXI_1 : FD_1
      port map (C=>CLK,
                D=>XLXN_3,
                Q=>XLXN_9999);
   
   XLXI_2 : INV
      port map (I=>XLXN_9999,
                O=>XLXN_3);
   
   XLXI_3 : FD_1
      port map (C=>XLXN_9999,
                D=>XLXN_5,
                Q=>XLXN_4);
   
   XLXI_4 : INV
      port map (I=>XLXN_4,
                O=>XLXN_5);
   
   XLXI_5 : FD_1
      port map (C=>XLXN_4,
                D=>XLXN_10001,
                Q=>XLXN_10000);
   
   XLXI_6 : INV
      port map (I=>XLXN_10000,
                O=>XLXN_10001);
   
   XLXI_7 : FD_1
      port map (C=>XLXN_10000,
                D=>XLXN_10012,
                Q=>XLXN_10013);
   
   XLXI_8 : INV
      port map (I=>XLXN_10013,
                O=>XLXN_10012);
   
   XLXI_9 : FD_1
      port map (C=>XLXN_10017,
                D=>XLXN_10018,
                Q=>XLXN_10019);
   
   XLXI_10 : INV
      port map (I=>XLXN_10019,
                O=>XLXN_10018);
   
   XLXI_11 : INV
      port map (I=>XLXN_10017,
                O=>XLXN_10016);
   
   XLXI_12 : FD_1
      port map (C=>XLXN_10013,
                D=>XLXN_10016,
                Q=>XLXN_10017);
   
   XLXI_13 : FD_1
      port map (C=>XLXN_10019,
                D=>XLXN_10020,
                Q=>XLXN_10021);
   
   XLXI_14 : INV
      port map (I=>XLXN_10021,
                O=>XLXN_10020);
   
   XLXI_15 : FD_1
      port map (C=>XLXN_10021,
                D=>XLXN_10022,
                Q=>XLXN_10023);
   
   XLXI_16 : INV
      port map (I=>XLXN_10023,
                O=>XLXN_10022);
   
   XLXI_17 : FD_1
      port map (C=>XLXN_10023,
                D=>XLXN_10024,
                Q=>XLXN_10025);
   
   XLXI_18 : INV
      port map (I=>XLXN_10025,
                O=>XLXN_10024);
   
   XLXI_19 : FD_1
      port map (C=>XLXN_10025,
                D=>XLXN_10028,
                Q=>XLXN_10069);
   
   XLXI_20 : INV
      port map (I=>XLXN_10069,
                O=>XLXN_10028);
   
   XLXI_67 : FD_1
      port map (C=>XLXN_10069,
                D=>XLXN_10051,
                Q=>XLXN_10049);
   
   XLXI_68 : INV
      port map (I=>XLXN_10049,
                O=>XLXN_10051);
   
   XLXI_69 : FD_1
      port map (C=>XLXN_10049,
                D=>XLXN_10053,
                Q=>XLXN_10052);
   
   XLXI_70 : INV
      port map (I=>XLXN_10052,
                O=>XLXN_10053);
   
   XLXI_71 : FD_1
      port map (C=>XLXN_10052,
                D=>XLXN_10055,
                Q=>XLXN_10054);
   
   XLXI_72 : INV
      port map (I=>XLXN_10054,
                O=>XLXN_10055);
   
   XLXI_73 : FD_1
      port map (C=>XLXN_10054,
                D=>XLXN_10056,
                Q=>XLXN_10059);
   
   XLXI_74 : INV
      port map (I=>XLXN_10059,
                O=>XLXN_10056);
   
   XLXI_77 : INV
      port map (I=>CLKO_DUMMY,
                O=>XLXN_10061);
   
   XLXI_78 : FD_1
      port map (C=>XLXN_10059,
                D=>XLXN_10061,
                Q=>CLKO_DUMMY);
   
end BEHAVIORAL;


