--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : main.vhf
-- /___/   /\     Timestamp : 11/08/2024 19:17:25
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl D:/project/merge/add_special_btn/fpga1/main.vhf -w D:/project/merge/add_special_btn/fpga1/main.sch
--Design Name: main
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

entity edetect_MUSER_main is
   port ( CLK : in    std_logic; 
          I   : in    std_logic; 
          CEO : out   std_logic);
end edetect_MUSER_main;

architecture BEHAVIORAL of edetect_MUSER_main is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity game_logic_MUSER_main is
   port ( clk            : in    std_logic; 
          is_pause_in    : in    std_logic; 
          pb1            : in    std_logic; 
          pb2            : in    std_logic; 
          pb3            : in    std_logic; 
          pb4            : in    std_logic; 
          time_remain_in : in    std_logic_vector (7 downto 0); 
          game_state     : out   std_logic_vector (1 downto 0); 
          lhod_per_turn  : out   std_logic_vector (7 downto 0); 
          lhod_remain    : out   std_logic_vector (7 downto 0); 
          lhod_select    : out   std_logic_vector (7 downto 0); 
          pb3_to_fpga2   : out   std_logic; 
          reset_count    : out   std_logic);
end game_logic_MUSER_main;

architecture BEHAVIORAL of game_logic_MUSER_main is
   attribute BOX_TYPE   : string ;
   signal XLXN_233       : std_logic;
   component edetect_MUSER_main
      port ( CEO : out   std_logic; 
             CLK : in    std_logic; 
             I   : in    std_logic);
   end component;
   
   component lhod_game
      port ( clk                  : in    std_logic; 
             push_button1         : in    std_logic; 
             push_button2         : in    std_logic; 
             push_button4         : in    std_logic; 
             is_pause             : in    std_logic; 
             time_remain          : in    std_logic_vector (7 downto 0); 
             reset_count_output   : out   std_logic; 
             game_state_output    : out   std_logic_vector (1 downto 0); 
             lhod_per_turn_output : out   std_logic_vector (7 downto 0); 
             lhod_select_output   : out   std_logic_vector (7 downto 0); 
             lhod_remain_output   : out   std_logic_vector (7 downto 0));
   end component;
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
begin
   XLXI_38 : edetect_MUSER_main
      port map (CLK=>clk,
                I=>pb4,
                CEO=>XLXN_233);
   
   XLXI_52 : lhod_game
      port map (clk=>clk,
                is_pause=>is_pause_in,
                push_button1=>pb1,
                push_button2=>pb2,
                push_button4=>XLXN_233,
                time_remain(7 downto 0)=>time_remain_in(7 downto 0),
                game_state_output(1 downto 0)=>game_state(1 downto 0),
                lhod_per_turn_output(7 downto 0)=>lhod_per_turn(7 downto 0),
                lhod_remain_output(7 downto 0)=>lhod_remain(7 downto 0),
                lhod_select_output(7 downto 0)=>lhod_select(7 downto 0),
                reset_count_output=>reset_count);
   
   XLXI_53 : BUF
      port map (I=>pb3,
                O=>pb3_to_fpga2);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity split8x4x4_MUSER_main is
   port ( I : in    std_logic_vector (7 downto 0); 
          H : out   std_logic_vector (3 downto 0); 
          L : out   std_logic_vector (3 downto 0));
end split8x4x4_MUSER_main;

architecture BEHAVIORAL of split8x4x4_MUSER_main is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity main is
   port ( clk                  : in    std_logic; 
          is_pause_in          : in    std_logic; 
          pb1                  : in    std_logic; 
          pb2                  : in    std_logic; 
          pb3                  : in    std_logic; 
          pb4                  : in    std_logic; 
          time_remain_in       : in    std_logic_vector (7 downto 0); 
          B                    : out   std_logic; 
          G                    : out   std_logic; 
          game_state_to_fpga2  : out   std_logic_vector (1 downto 0); 
          HSYNC                : out   std_logic; 
          pb3_to_fpga2         : out   std_logic; 
          R                    : out   std_logic; 
          reset_count_to_fpga2 : out   std_logic; 
          VSYNC                : out   std_logic);
end main;

architecture BEHAVIORAL of main is
   attribute BOX_TYPE   : string ;
   signal game_state           : std_logic_vector (1 downto 0);
   signal XLXN_291             : std_logic_vector (3 downto 0);
   signal XLXN_292             : std_logic_vector (3 downto 0);
   signal XLXN_293             : std_logic_vector (3 downto 0);
   signal XLXN_294             : std_logic_vector (3 downto 0);
   signal XLXN_295             : std_logic_vector (3 downto 0);
   signal XLXN_296             : std_logic_vector (3 downto 0);
   signal XLXN_297             : std_logic_vector (3 downto 0);
   signal XLXN_298             : std_logic_vector (3 downto 0);
   signal XLXN_347             : std_logic_vector (7 downto 0);
   signal XLXN_348             : std_logic_vector (7 downto 0);
   signal XLXN_349             : std_logic_vector (7 downto 0);
   signal XLXN_359             : std_logic;
   signal XLXN_360             : std_logic;
   signal XLXN_361             : std_logic;
   signal XLXN_362             : std_logic;
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component VGA_Display
      port ( clk                : in    std_logic; 
             is_pause           : in    std_logic; 
             game_state         : in    std_logic_vector (1 downto 0); 
             time_remain_tens   : in    std_logic_vector (3 downto 0); 
             time_remain_ones   : in    std_logic_vector (3 downto 0); 
             lhod_per_turn_tens : in    std_logic_vector (3 downto 0); 
             lhod_per_turn_ones : in    std_logic_vector (3 downto 0); 
             lhod_select_tens   : in    std_logic_vector (3 downto 0); 
             lhod_select_ones   : in    std_logic_vector (3 downto 0); 
             lhod_remain_tens   : in    std_logic_vector (3 downto 0); 
             lhod_remain_ones   : in    std_logic_vector (3 downto 0); 
             R                  : out   std_logic; 
             G                  : out   std_logic; 
             B                  : out   std_logic; 
             HSYNC              : out   std_logic; 
             VSYNC              : out   std_logic);
   end component;
   
   component split8x4x4_MUSER_main
      port ( H : out   std_logic_vector (3 downto 0); 
             I : in    std_logic_vector (7 downto 0); 
             L : out   std_logic_vector (3 downto 0));
   end component;
   
   component game_logic_MUSER_main
      port ( clk            : in    std_logic; 
             game_state     : out   std_logic_vector (1 downto 0); 
             is_pause_in    : in    std_logic; 
             lhod_per_turn  : out   std_logic_vector (7 downto 0); 
             lhod_remain    : out   std_logic_vector (7 downto 0); 
             lhod_select    : out   std_logic_vector (7 downto 0); 
             pb1            : in    std_logic; 
             pb2            : in    std_logic; 
             pb3            : in    std_logic; 
             pb3_to_fpga2   : out   std_logic; 
             pb4            : in    std_logic; 
             reset_count    : out   std_logic; 
             time_remain_in : in    std_logic_vector (7 downto 0));
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
begin
   XLXI_42 : BUF
      port map (I=>game_state(0),
                O=>game_state_to_fpga2(0));
   
   XLXI_43 : BUF
      port map (I=>game_state(1),
                O=>game_state_to_fpga2(1));
   
   XLXI_54 : VGA_Display
      port map (clk=>clk,
                game_state(1 downto 0)=>game_state(1 downto 0),
                is_pause=>is_pause_in,
                lhod_per_turn_ones(3 downto 0)=>XLXN_294(3 downto 0),
                lhod_per_turn_tens(3 downto 0)=>XLXN_293(3 downto 0),
                lhod_remain_ones(3 downto 0)=>XLXN_298(3 downto 0),
                lhod_remain_tens(3 downto 0)=>XLXN_297(3 downto 0),
                lhod_select_ones(3 downto 0)=>XLXN_296(3 downto 0),
                lhod_select_tens(3 downto 0)=>XLXN_295(3 downto 0),
                time_remain_ones(3 downto 0)=>XLXN_292(3 downto 0),
                time_remain_tens(3 downto 0)=>XLXN_291(3 downto 0),
                B=>B,
                G=>G,
                HSYNC=>HSYNC,
                R=>R,
                VSYNC=>VSYNC);
   
   XLXI_55 : split8x4x4_MUSER_main
      port map (I(7 downto 0)=>time_remain_in(7 downto 0),
                H(3 downto 0)=>XLXN_291(3 downto 0),
                L(3 downto 0)=>XLXN_292(3 downto 0));
   
   XLXI_56 : split8x4x4_MUSER_main
      port map (I(7 downto 0)=>XLXN_347(7 downto 0),
                H(3 downto 0)=>XLXN_293(3 downto 0),
                L(3 downto 0)=>XLXN_294(3 downto 0));
   
   XLXI_57 : split8x4x4_MUSER_main
      port map (I(7 downto 0)=>XLXN_349(7 downto 0),
                H(3 downto 0)=>XLXN_297(3 downto 0),
                L(3 downto 0)=>XLXN_298(3 downto 0));
   
   XLXI_67 : split8x4x4_MUSER_main
      port map (I(7 downto 0)=>XLXN_348(7 downto 0),
                H(3 downto 0)=>XLXN_295(3 downto 0),
                L(3 downto 0)=>XLXN_296(3 downto 0));
   
   XLXI_87 : game_logic_MUSER_main
      port map (clk=>clk,
                is_pause_in=>is_pause_in,
                pb1=>XLXN_361,
                pb2=>XLXN_360,
                pb3=>XLXN_362,
                pb4=>XLXN_359,
                time_remain_in(7 downto 0)=>time_remain_in(7 downto 0),
                game_state(1 downto 0)=>game_state(1 downto 0),
                lhod_per_turn(7 downto 0)=>XLXN_347(7 downto 0),
                lhod_remain(7 downto 0)=>XLXN_349(7 downto 0),
                lhod_select(7 downto 0)=>XLXN_348(7 downto 0),
                pb3_to_fpga2=>pb3_to_fpga2,
                reset_count=>reset_count_to_fpga2);
   
   XLXI_88 : INV
      port map (I=>pb3,
                O=>XLXN_362);
   
   XLXI_92 : INV
      port map (I=>pb1,
                O=>XLXN_361);
   
   XLXI_93 : INV
      port map (I=>pb2,
                O=>XLXN_360);
   
   XLXI_94 : INV
      port map (I=>pb4,
                O=>XLXN_359);
   
end BEHAVIORAL;


