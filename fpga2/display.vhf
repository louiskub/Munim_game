--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : display.vhf
-- /___/   /\     Timestamp : 11/07/2024 19:06:43
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl D:/project/merge/fpga2/display.vhf -w D:/project/merge/fpga2/display.sch
--Design Name: display
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL OR6_HXILINX_display -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity OR6_HXILINX_display is
  
port(
    O  : out std_logic;

    I0  : in std_logic;
    I1  : in std_logic;
    I2  : in std_logic;
    I3  : in std_logic;
    I4  : in std_logic;
    I5  : in std_logic
  );
end OR6_HXILINX_display;

architecture OR6_HXILINX_display_V of OR6_HXILINX_display is
begin
  O <=  (I0 or I1 or I2 or I3 or I4 or I5);
end OR6_HXILINX_display_V;
----- CELL M4_1E_HXILINX_display -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M4_1E_HXILINX_display is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    D2  : in std_logic;
    D3  : in std_logic;
    E   : in std_logic;
    S0  : in std_logic;
    S1  : in std_logic
  );
end M4_1E_HXILINX_display;

architecture M4_1E_HXILINX_display_V of M4_1E_HXILINX_display is
begin
  process (D0, D1, D2, D3, E, S0, S1)
  variable sel : std_logic_vector(1 downto 0);
  begin
    sel := S1&S0;
    if( E = '0') then
    O <= '0';
    else
      case sel is
      when "00" => O <= D0;
      when "01" => O <= D1;
      when "10" => O <= D2;
      when "11" => O <= D3;
      when others => NULL;
      end case;
    end if;
    end process; 
end M4_1E_HXILINX_display_V;
----- CELL FJKC_HXILINX_display -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FJKC_HXILINX_display is
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
end FJKC_HXILINX_display;

architecture Behavioral of FJKC_HXILINX_display is
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

----- CELL D2_4E_HXILINX_display -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity D2_4E_HXILINX_display is
  
port(
    D0  : out std_logic;
    D1  : out std_logic;
    D2  : out std_logic;
    D3  : out std_logic;

    A0  : in std_logic;
    A1  : in std_logic;
    E   : in std_logic
  );
end D2_4E_HXILINX_display;

architecture D2_4E_HXILINX_display_V of D2_4E_HXILINX_display is
  signal d_tmp : std_logic_vector(3 downto 0);
begin
  process (A0, A1, E)
  variable sel   : std_logic_vector(1 downto 0);
  begin
    sel := A1&A0;
    if( E = '0') then
    d_tmp <= "0000";
    else
      case sel is
      when "00" => d_tmp <= "0001";
      when "01" => d_tmp <= "0010";
      when "10" => d_tmp <= "0100";
      when "11" => d_tmp <= "1000";
      when others => NULL;
      end case;
    end if;
  end process; 

    D3 <= d_tmp(3);
    D2 <= d_tmp(2);
    D1 <= d_tmp(1);
    D0 <= d_tmp(0);

end D2_4E_HXILINX_display_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity btw4_MUSER_display is
   port ( I  : in    std_logic_vector (3 downto 0); 
          O0 : out   std_logic; 
          O1 : out   std_logic; 
          O2 : out   std_logic; 
          O3 : out   std_logic);
end btw4_MUSER_display;

architecture BEHAVIORAL of btw4_MUSER_display is
   attribute BOX_TYPE   : string ;
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
begin
   XLXI_1 : BUF
      port map (I=>I(0),
                O=>O0);
   
   XLXI_2 : BUF
      port map (I=>I(1),
                O=>O1);
   
   XLXI_3 : BUF
      port map (I=>I(2),
                O=>O2);
   
   XLXI_4 : BUF
      port map (I=>I(3),
                O=>O3);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity counter4_MUSER_display is
   port ( clock_in : in    std_logic; 
          D0       : out   std_logic; 
          D1       : out   std_logic);
end counter4_MUSER_display;

architecture BEHAVIORAL of counter4_MUSER_display is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_1   : std_logic;
   signal XLXN_9   : std_logic;
   signal D0_DUMMY : std_logic;
   component FJKC_HXILINX_display
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
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_10";
   attribute HU_SET of XLXI_5 : label is "XLXI_5_11";
begin
   D0 <= D0_DUMMY;
   XLXI_1 : FJKC_HXILINX_display
      port map (C=>clock_in,
                CLR=>XLXN_9,
                J=>XLXN_1,
                K=>XLXN_1,
                Q=>D0_DUMMY);
   
   XLXI_2 : VCC
      port map (P=>XLXN_1);
   
   XLXI_5 : FJKC_HXILINX_display
      port map (C=>clock_in,
                CLR=>XLXN_9,
                J=>D0_DUMMY,
                K=>D0_DUMMY,
                Q=>D1);
   
   XLXI_7 : GND
      port map (G=>XLXN_9);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity bcdto7seg_MUSER_display is
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
end bcdto7seg_MUSER_display;

architecture BEHAVIORAL of bcdto7seg_MUSER_display is
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
   
   component OR6_HXILINX_display
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
   
   attribute HU_SET of XLXI_44 : label is "XLXI_44_12";
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
   
   XLXI_44 : OR6_HXILINX_display
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity mux4x1x4_MUSER_display is
   port ( D0 : in    std_logic_vector (3 downto 0); 
          D1 : in    std_logic_vector (3 downto 0); 
          D2 : in    std_logic_vector (3 downto 0); 
          D3 : in    std_logic_vector (3 downto 0); 
          S0 : in    std_logic; 
          S1 : in    std_logic; 
          O  : out   std_logic_vector (3 downto 0));
end mux4x1x4_MUSER_display;

architecture BEHAVIORAL of mux4x1x4_MUSER_display is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_2 : std_logic;
   component M4_1E_HXILINX_display
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             D2 : in    std_logic; 
             D3 : in    std_logic; 
             E  : in    std_logic; 
             S0 : in    std_logic; 
             S1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_13";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_14";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_15";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_16";
begin
   XLXI_1 : M4_1E_HXILINX_display
      port map (D0=>D0(0),
                D1=>D1(0),
                D2=>D2(0),
                D3=>D3(0),
                E=>XLXN_2,
                S0=>S0,
                S1=>S1,
                O=>O(0));
   
   XLXI_2 : M4_1E_HXILINX_display
      port map (D0=>D0(1),
                D1=>D1(1),
                D2=>D2(1),
                D3=>D3(1),
                E=>XLXN_2,
                S0=>S0,
                S1=>S1,
                O=>O(1));
   
   XLXI_3 : M4_1E_HXILINX_display
      port map (D0=>D0(2),
                D1=>D1(2),
                D2=>D2(2),
                D3=>D3(2),
                E=>XLXN_2,
                S0=>S0,
                S1=>S1,
                O=>O(2));
   
   XLXI_4 : M4_1E_HXILINX_display
      port map (D0=>D0(3),
                D1=>D1(3),
                D2=>D2(3),
                D3=>D3(3),
                E=>XLXN_2,
                S0=>S0,
                S1=>S1,
                O=>O(3));
   
   XLXI_13 : VCC
      port map (P=>XLXN_2);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity display is
   port ( D0   : in    std_logic_vector (3 downto 0); 
          D1   : in    std_logic_vector (3 downto 0); 
          D2   : in    std_logic_vector (3 downto 0); 
          D3   : in    std_logic_vector (3 downto 0); 
          p123 : in    std_logic; 
          p27  : out   std_logic; 
          p29  : out   std_logic; 
          p30  : out   std_logic; 
          p32  : out   std_logic; 
          p33  : out   std_logic; 
          p34  : out   std_logic; 
          p35  : out   std_logic; 
          p40  : out   std_logic; 
          p41  : out   std_logic; 
          p43  : out   std_logic; 
          p44  : out   std_logic);
end display;

architecture BEHAVIORAL of display is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_4  : std_logic;
   signal XLXN_5  : std_logic;
   signal XLXN_11 : std_logic_vector (3 downto 0);
   signal XLXN_12 : std_logic;
   signal XLXN_13 : std_logic;
   signal XLXN_14 : std_logic;
   signal XLXN_15 : std_logic;
   signal XLXN_28 : std_logic;
   signal XLXN_29 : std_logic;
   signal XLXN_30 : std_logic;
   signal XLXN_31 : std_logic;
   signal XLXN_32 : std_logic;
   component mux4x1x4_MUSER_display
      port ( D0 : in    std_logic_vector (3 downto 0); 
             D1 : in    std_logic_vector (3 downto 0); 
             D2 : in    std_logic_vector (3 downto 0); 
             D3 : in    std_logic_vector (3 downto 0); 
             O  : out   std_logic_vector (3 downto 0); 
             S0 : in    std_logic; 
             S1 : in    std_logic);
   end component;
   
   component bcdto7seg_MUSER_display
      port ( a_P41 : out   std_logic; 
             A_P59 : in    std_logic; 
             b_P40 : out   std_logic; 
             B_P61 : in    std_logic; 
             c_P35 : out   std_logic; 
             C_P62 : in    std_logic; 
             d_P34 : out   std_logic; 
             D_P66 : in    std_logic; 
             e_P32 : out   std_logic; 
             f_P29 : out   std_logic; 
             g_P27 : out   std_logic);
   end component;
   
   component D2_4E_HXILINX_display
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             E  : in    std_logic; 
             D0 : out   std_logic; 
             D1 : out   std_logic; 
             D2 : out   std_logic; 
             D3 : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component counter4_MUSER_display
      port ( clock_in : in    std_logic; 
             D0       : out   std_logic; 
             D1       : out   std_logic);
   end component;
   
   component btw4_MUSER_display
      port ( I  : in    std_logic_vector (3 downto 0); 
             O0 : out   std_logic; 
             O1 : out   std_logic; 
             O2 : out   std_logic; 
             O3 : out   std_logic);
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_16 : label is "XLXI_16_17";
begin
   XLXI_13 : mux4x1x4_MUSER_display
      port map (D0(3 downto 0)=>D0(3 downto 0),
                D1(3 downto 0)=>D1(3 downto 0),
                D2(3 downto 0)=>D2(3 downto 0),
                D3(3 downto 0)=>D3(3 downto 0),
                S0=>XLXN_4,
                S1=>XLXN_5,
                O(3 downto 0)=>XLXN_11(3 downto 0));
   
   XLXI_14 : bcdto7seg_MUSER_display
      port map (A_P59=>XLXN_12,
                B_P61=>XLXN_13,
                C_P62=>XLXN_14,
                D_P66=>XLXN_15,
                a_P41=>p41,
                b_P40=>p40,
                c_P35=>p35,
                d_P34=>p34,
                e_P32=>p32,
                f_P29=>p29,
                g_P27=>p27);
   
   XLXI_16 : D2_4E_HXILINX_display
      port map (A0=>XLXN_4,
                A1=>XLXN_5,
                E=>XLXN_32,
                D0=>XLXN_28,
                D1=>XLXN_29,
                D2=>XLXN_30,
                D3=>XLXN_31);
   
   XLXI_18 : VCC
      port map (P=>XLXN_32);
   
   XLXI_19 : counter4_MUSER_display
      port map (clock_in=>p123,
                D0=>XLXN_4,
                D1=>XLXN_5);
   
   XLXI_20 : btw4_MUSER_display
      port map (I(3 downto 0)=>XLXN_11(3 downto 0),
                O0=>XLXN_15,
                O1=>XLXN_14,
                O2=>XLXN_13,
                O3=>XLXN_12);
   
   XLXI_21 : INV
      port map (I=>XLXN_28,
                O=>p30);
   
   XLXI_22 : INV
      port map (I=>XLXN_29,
                O=>p33);
   
   XLXI_23 : INV
      port map (I=>XLXN_30,
                O=>p43);
   
   XLXI_24 : INV
      port map (I=>XLXN_31,
                O=>p44);
   
end BEHAVIORAL;


