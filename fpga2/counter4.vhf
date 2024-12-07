--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : counter4.vhf
-- /___/   /\     Timestamp : 11/07/2024 19:06:43
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl D:/project/merge/fpga2/counter4.vhf -w D:/project/merge/fpga2/counter4.sch
--Design Name: counter4
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL FJKC_HXILINX_counter4 -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FJKC_HXILINX_counter4 is
generic(
    INIT : bit := '0'
    );

  port (
    Q   : out STD_LOGIC := '0';
    C   : in STD_LOGIC;
    CLR : in STD_LOGIC;
    J   : in STD_LOGIC;
    K   : in STD_LOGIC
    );
end FJKC_HXILINX_counter4;

architecture Behavioral of FJKC_HXILINX_counter4 is
signal q_tmp : std_logic := TO_X01(INIT);

begin

process(C, CLR)
begin
  if (CLR='1') then
    q_tmp <= '0';
  elsif (C'event and C = '1') then
    if(J='0') then
      if(K='1') then
      q_tmp <= '0';
    end if;
    else
      if(K='0') then
      q_tmp <= '1';
      else
      q_tmp <= not q_tmp;
      end if;
    end if;
  end if;  
end process;

Q <= q_tmp;

end Behavioral;


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity counter4 is
   port ( clock_in : in    std_logic; 
          D0       : out   std_logic; 
          D1       : out   std_logic);
end counter4;

architecture BEHAVIORAL of counter4 is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_1   : std_logic;
   signal XLXN_9   : std_logic;
   signal D0_DUMMY : std_logic;
   component FJKC_HXILINX_counter4
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             J   : in    std_logic; 
             K   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_18";
   attribute HU_SET of XLXI_5 : label is "XLXI_5_19";
begin
   D0 <= D0_DUMMY;
   XLXI_1 : FJKC_HXILINX_counter4
      port map (C=>clock_in,
                CLR=>XLXN_9,
                J=>XLXN_1,
                K=>XLXN_1,
                Q=>D0_DUMMY);
   
   XLXI_2 : VCC
      port map (P=>XLXN_1);
   
   XLXI_5 : FJKC_HXILINX_counter4
      port map (C=>clock_in,
                CLR=>XLXN_9,
                J=>D0_DUMMY,
                K=>D0_DUMMY,
                Q=>D1);
   
   XLXI_7 : GND
      port map (G=>XLXN_9);
   
end BEHAVIORAL;


