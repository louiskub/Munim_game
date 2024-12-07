--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : game_logic.vhf
-- /___/   /\     Timestamp : 11/08/2024 18:52:31
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl D:/project/merge/add_special_btn/fpga1/game_logic.vhf -w D:/project/merge/add_special_btn/fpga1/game_logic.sch
--Design Name: game_logic
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

entity edetect_MUSER_game_logic is
   port ( CLK : in    std_logic; 
          I   : in    std_logic; 
          CEO : out   std_logic);
end edetect_MUSER_game_logic;

architecture BEHAVIORAL of edetect_MUSER_game_logic is
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

entity game_logic is
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
end game_logic;

architecture BEHAVIORAL of game_logic is
   attribute BOX_TYPE   : string ;
   signal XLXN_233       : std_logic;
   component edetect_MUSER_game_logic
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
   XLXI_38 : edetect_MUSER_game_logic
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


