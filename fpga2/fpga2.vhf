--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : fpga2.vhf
-- /___/   /\     Timestamp : 11/09/2024 20:02:10
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl D:/project/merge/add_special_btn/fpga2/fpga2.vhf -w D:/project/merge/add_special_btn/fpga2/fpga2.sch
--Design Name: fpga2
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL M2_1_HXILINX_fpga2 -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M2_1_HXILINX_fpga2 is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    S0  : in std_logic
  );
end M2_1_HXILINX_fpga2;

architecture M2_1_HXILINX_fpga2_V of M2_1_HXILINX_fpga2 is
begin
  process (D0, D1, S0)
  begin
    case S0 is
    when '0' => O <= D0;
    when '1' => O <= D1;
    when others => NULL;
    end case;
    end process; 
end M2_1_HXILINX_fpga2_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity edetect_MUSER_fpga2 is
   port ( CLK : in    std_logic; 
          I   : in    std_logic; 
          CEO : out   std_logic);
end edetect_MUSER_fpga2;

architecture BEHAVIORAL of edetect_MUSER_fpga2 is
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

entity fpga2 is
   port ( clk                   : in    std_logic; 
          game_state            : in    std_logic_vector (1 downto 0); 
          pb3_from_fpga1        : in    std_logic; 
          reset_timer           : in    std_logic; 
          is_pause_output       : out   std_logic; 
          time_remaining_output : out   std_logic_vector (7 downto 0));
end fpga2;

architecture BEHAVIORAL of fpga2 is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_187              : std_logic;
   signal XLXN_188              : std_logic;
   signal XLXN_189              : std_logic;
   component M2_1_HXILINX_fpga2
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component edetect_MUSER_fpga2
      port ( CEO : out   std_logic; 
             CLK : in    std_logic; 
             I   : in    std_logic);
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component time_counter
      port ( clk                : in    std_logic; 
             push_button3       : in    std_logic; 
             reset_count        : in    std_logic; 
             game_state         : in    std_logic_vector (1 downto 0); 
             is_pause_output    : out   std_logic; 
             time_remain_output : out   std_logic_vector (7 downto 0));
   end component;
   
   attribute HU_SET of XLXI_30 : label is "XLXI_30_0";
begin
   XLXI_30 : M2_1_HXILINX_fpga2
      port map (D0=>pb3_from_fpga1,
                D1=>XLXN_187,
                S0=>XLXN_189,
                O=>XLXN_188);
   
   XLXI_60 : edetect_MUSER_fpga2
      port map (CLK=>clk,
                I=>pb3_from_fpga1,
                CEO=>XLXN_187);
   
   XLXI_63 : INV
      port map (I=>game_state(0),
                O=>XLXN_189);
   
   XLXI_68 : time_counter
      port map (clk=>clk,
                game_state(1 downto 0)=>game_state(1 downto 0),
                push_button3=>XLXN_188,
                reset_count=>reset_timer,
                is_pause_output=>is_pause_output,
                time_remain_output(7 downto 0)=>time_remaining_output(7 downto 
            0));
   
end BEHAVIORAL;


