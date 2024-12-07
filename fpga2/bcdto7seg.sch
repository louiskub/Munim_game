<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_13" />
        <signal name="B_P61" />
        <signal name="XLXN_15" />
        <signal name="C_P62" />
        <signal name="XLXN_17" />
        <signal name="D_P66" />
        <signal name="XLXN_6" />
        <signal name="A_P59" />
        <signal name="XLXN_40" />
        <signal name="XLXN_41" />
        <signal name="XLXN_42" />
        <signal name="XLXN_44" />
        <signal name="XLXN_39" />
        <signal name="a_P41" />
        <signal name="XLXN_60" />
        <signal name="XLXN_61" />
        <signal name="XLXN_62" />
        <signal name="XLXN_64" />
        <signal name="XLXN_65" />
        <signal name="b_P40" />
        <signal name="XLXN_72" />
        <signal name="XLXN_73" />
        <signal name="XLXN_74" />
        <signal name="XLXN_75" />
        <signal name="XLXN_84" />
        <signal name="XLXN_91" />
        <signal name="XLXN_92" />
        <signal name="XLXN_93" />
        <signal name="XLXN_94" />
        <signal name="XLXN_95" />
        <signal name="c_P35" />
        <signal name="d_P34" />
        <signal name="XLXN_102" />
        <signal name="XLXN_106" />
        <signal name="XLXN_107" />
        <signal name="e_P32" />
        <signal name="XLXN_110" />
        <signal name="XLXN_111" />
        <signal name="XLXN_117" />
        <signal name="XLXN_124" />
        <signal name="XLXN_125" />
        <signal name="f_P29" />
        <signal name="g_P27" />
        <port polarity="Input" name="B_P61" />
        <port polarity="Input" name="C_P62" />
        <port polarity="Input" name="D_P66" />
        <port polarity="Input" name="A_P59" />
        <port polarity="Output" name="a_P41" />
        <port polarity="Output" name="b_P40" />
        <port polarity="Output" name="c_P35" />
        <port polarity="Output" name="d_P34" />
        <port polarity="Output" name="e_P32" />
        <port polarity="Output" name="f_P29" />
        <port polarity="Output" name="g_P27" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="or6">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="48" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-320" y2="-320" x1="0" />
            <line x2="48" y1="-384" y2="-384" x1="0" />
            <line x2="192" y1="-224" y2="-224" x1="256" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <arc ex="112" ey="-272" sx="192" sy="-224" r="88" cx="116" cy="-184" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
            <arc ex="192" ey="-224" sx="112" sy="-176" r="88" cx="116" cy="-264" />
            <arc ex="48" ey="-272" sx="48" sy="-176" r="56" cx="16" cy="-224" />
            <line x2="48" y1="-272" y2="-272" x1="112" />
            <line x2="48" y1="-64" y2="-176" x1="48" />
            <line x2="48" y1="-272" y2="-384" x1="48" />
        </blockdef>
        <blockdef name="or5">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="48" y1="-128" y2="-128" x1="0" />
            <line x2="72" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="48" y1="-320" y2="-320" x1="0" />
            <line x2="192" y1="-192" y2="-192" x1="256" />
            <arc ex="192" ey="-192" sx="112" sy="-144" r="88" cx="116" cy="-232" />
            <line x2="48" y1="-240" y2="-240" x1="112" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <line x2="48" y1="-64" y2="-144" x1="48" />
            <line x2="48" y1="-320" y2="-240" x1="48" />
            <arc ex="112" ey="-240" sx="192" sy="-192" r="88" cx="116" cy="-152" />
            <arc ex="48" ey="-240" sx="48" sy="-144" r="56" cx="16" cy="-192" />
        </blockdef>
        <blockdef name="or4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <arc ex="112" ey="-208" sx="192" sy="-160" r="88" cx="116" cy="-120" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <line x2="48" y1="-112" y2="-112" x1="112" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="192" ey="-160" sx="112" sy="-112" r="88" cx="116" cy="-200" />
        </blockdef>
        <block symbolname="inv" name="XLXI_4">
            <blockpin signalname="D_P66" name="I" />
            <blockpin signalname="XLXN_17" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_3">
            <blockpin signalname="C_P62" name="I" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="B_P61" name="I" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_1">
            <blockpin signalname="A_P59" name="I" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_17">
            <blockpin signalname="XLXN_15" name="I0" />
            <blockpin signalname="B_P61" name="I1" />
            <blockpin signalname="XLXN_6" name="I2" />
            <blockpin signalname="XLXN_117" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_15">
            <blockpin signalname="XLXN_13" name="I0" />
            <blockpin signalname="A_P59" name="I1" />
            <blockpin signalname="XLXN_84" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_16">
            <blockpin signalname="C_P62" name="I0" />
            <blockpin signalname="A_P59" name="I1" />
            <blockpin signalname="XLXN_106" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_31">
            <blockpin signalname="XLXN_17" name="I0" />
            <blockpin signalname="XLXN_13" name="I1" />
            <blockpin signalname="XLXN_65" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_32">
            <blockpin signalname="XLXN_17" name="I0" />
            <blockpin signalname="C_P62" name="I1" />
            <blockpin signalname="XLXN_107" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_14">
            <blockpin signalname="C_P62" name="I0" />
            <blockpin signalname="B_P61" name="I1" />
            <blockpin signalname="XLXN_44" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_33">
            <blockpin signalname="XLXN_17" name="I0" />
            <blockpin signalname="A_P59" name="I1" />
            <blockpin signalname="XLXN_42" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_34">
            <blockpin signalname="C_P62" name="I0" />
            <blockpin signalname="XLXN_6" name="I1" />
            <blockpin signalname="XLXN_41" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_37">
            <blockpin signalname="XLXN_15" name="I0" />
            <blockpin signalname="XLXN_13" name="I1" />
            <blockpin signalname="A_P59" name="I2" />
            <blockpin signalname="XLXN_40" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_38">
            <blockpin signalname="D_P66" name="I0" />
            <blockpin signalname="B_P61" name="I1" />
            <blockpin signalname="XLXN_6" name="I2" />
            <blockpin signalname="XLXN_39" name="O" />
        </block>
        <block symbolname="or6" name="XLXI_44">
            <blockpin signalname="XLXN_39" name="I0" />
            <blockpin signalname="XLXN_40" name="I1" />
            <blockpin signalname="XLXN_41" name="I2" />
            <blockpin signalname="XLXN_42" name="I3" />
            <blockpin signalname="XLXN_44" name="I4" />
            <blockpin signalname="XLXN_65" name="I5" />
            <blockpin signalname="a_P41" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_45">
            <blockpin signalname="XLXN_15" name="I0" />
            <blockpin signalname="XLXN_13" name="I1" />
            <blockpin signalname="XLXN_60" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_46">
            <blockpin signalname="D_P66" name="I0" />
            <blockpin signalname="C_P62" name="I1" />
            <blockpin signalname="XLXN_6" name="I2" />
            <blockpin signalname="XLXN_61" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_47">
            <blockpin signalname="D_P66" name="I0" />
            <blockpin signalname="XLXN_15" name="I1" />
            <blockpin signalname="A_P59" name="I2" />
            <blockpin signalname="XLXN_62" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_48">
            <blockpin signalname="XLXN_17" name="I0" />
            <blockpin signalname="XLXN_15" name="I1" />
            <blockpin signalname="XLXN_6" name="I2" />
            <blockpin signalname="XLXN_64" name="O" />
        </block>
        <block symbolname="or5" name="XLXI_50">
            <blockpin signalname="XLXN_64" name="I0" />
            <blockpin signalname="XLXN_62" name="I1" />
            <blockpin signalname="XLXN_61" name="I2" />
            <blockpin signalname="XLXN_60" name="I3" />
            <blockpin signalname="XLXN_65" name="I4" />
            <blockpin signalname="b_P40" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_51">
            <blockpin signalname="D_P66" name="I0" />
            <blockpin signalname="XLXN_15" name="I1" />
            <blockpin signalname="XLXN_75" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_52">
            <blockpin signalname="B_P61" name="I0" />
            <blockpin signalname="XLXN_6" name="I1" />
            <blockpin signalname="XLXN_74" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_53">
            <blockpin signalname="D_P66" name="I0" />
            <blockpin signalname="XLXN_6" name="I1" />
            <blockpin signalname="XLXN_73" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_54">
            <blockpin signalname="XLXN_15" name="I0" />
            <blockpin signalname="XLXN_13" name="I1" />
            <blockpin signalname="XLXN_72" name="O" />
        </block>
        <block symbolname="or5" name="XLXI_55">
            <blockpin signalname="XLXN_72" name="I0" />
            <blockpin signalname="XLXN_73" name="I1" />
            <blockpin signalname="XLXN_74" name="I2" />
            <blockpin signalname="XLXN_75" name="I3" />
            <blockpin signalname="XLXN_84" name="I4" />
            <blockpin signalname="c_P35" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_56">
            <blockpin signalname="XLXN_15" name="I0" />
            <blockpin signalname="A_P59" name="I1" />
            <blockpin signalname="XLXN_92" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_57">
            <blockpin signalname="XLXN_17" name="I0" />
            <blockpin signalname="XLXN_13" name="I1" />
            <blockpin signalname="XLXN_6" name="I2" />
            <blockpin signalname="XLXN_93" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_58">
            <blockpin signalname="D_P66" name="I0" />
            <blockpin signalname="C_P62" name="I1" />
            <blockpin signalname="XLXN_13" name="I2" />
            <blockpin signalname="XLXN_91" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_59">
            <blockpin signalname="D_P66" name="I0" />
            <blockpin signalname="XLXN_15" name="I1" />
            <blockpin signalname="B_P61" name="I2" />
            <blockpin signalname="XLXN_94" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_60">
            <blockpin signalname="XLXN_17" name="I0" />
            <blockpin signalname="C_P62" name="I1" />
            <blockpin signalname="B_P61" name="I2" />
            <blockpin signalname="XLXN_95" name="O" />
        </block>
        <block symbolname="or5" name="XLXI_61">
            <blockpin signalname="XLXN_95" name="I0" />
            <blockpin signalname="XLXN_94" name="I1" />
            <blockpin signalname="XLXN_91" name="I2" />
            <blockpin signalname="XLXN_93" name="I3" />
            <blockpin signalname="XLXN_92" name="I4" />
            <blockpin signalname="d_P34" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_62">
            <blockpin signalname="B_P61" name="I0" />
            <blockpin signalname="A_P59" name="I1" />
            <blockpin signalname="XLXN_102" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_63">
            <blockpin signalname="XLXN_102" name="I0" />
            <blockpin signalname="XLXN_107" name="I1" />
            <blockpin signalname="XLXN_106" name="I2" />
            <blockpin signalname="XLXN_65" name="I3" />
            <blockpin signalname="e_P32" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_65">
            <blockpin signalname="XLXN_17" name="I0" />
            <blockpin signalname="B_P61" name="I1" />
            <blockpin signalname="XLXN_111" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_66">
            <blockpin signalname="XLXN_17" name="I0" />
            <blockpin signalname="XLXN_15" name="I1" />
            <blockpin signalname="XLXN_110" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_67">
            <blockpin signalname="C_P62" name="I0" />
            <blockpin signalname="XLXN_13" name="I1" />
            <blockpin signalname="XLXN_125" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_68">
            <blockpin signalname="D_P66" name="I0" />
            <blockpin signalname="A_P59" name="I1" />
            <blockpin signalname="XLXN_124" name="O" />
        </block>
        <block symbolname="or5" name="XLXI_64">
            <blockpin signalname="XLXN_110" name="I0" />
            <blockpin signalname="XLXN_111" name="I1" />
            <blockpin signalname="XLXN_117" name="I2" />
            <blockpin signalname="XLXN_106" name="I3" />
            <blockpin signalname="XLXN_84" name="I4" />
            <blockpin signalname="f_P29" name="O" />
        </block>
        <block symbolname="or5" name="XLXI_69">
            <blockpin signalname="XLXN_124" name="I0" />
            <blockpin signalname="XLXN_125" name="I1" />
            <blockpin signalname="XLXN_117" name="I2" />
            <blockpin signalname="XLXN_107" name="I3" />
            <blockpin signalname="XLXN_84" name="I4" />
            <blockpin signalname="g_P27" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="7040">
        <branch name="C_P62">
            <wire x2="1136" y1="496" y2="496" x1="1040" />
            <wire x2="1136" y1="496" y2="1120" x1="1136" />
            <wire x2="1552" y1="1120" y2="1120" x1="1136" />
            <wire x2="1136" y1="1120" y2="1184" x1="1136" />
            <wire x2="1552" y1="1184" y2="1184" x1="1136" />
            <wire x2="1136" y1="1184" y2="1712" x1="1136" />
            <wire x2="1888" y1="1712" y2="1712" x1="1136" />
            <wire x2="1136" y1="1712" y2="1968" x1="1136" />
            <wire x2="1888" y1="1968" y2="1968" x1="1136" />
            <wire x2="1136" y1="1968" y2="2688" x1="1136" />
            <wire x2="1888" y1="2688" y2="2688" x1="1136" />
            <wire x2="1136" y1="2688" y2="4288" x1="1136" />
            <wire x2="1888" y1="4288" y2="4288" x1="1136" />
            <wire x2="1136" y1="4288" y2="4640" x1="1136" />
            <wire x2="1888" y1="4640" y2="4640" x1="1136" />
            <wire x2="1136" y1="4640" y2="5968" x1="1136" />
            <wire x2="1136" y1="5968" y2="6784" x1="1136" />
            <wire x2="1888" y1="5968" y2="5968" x1="1136" />
            <wire x2="1120" y1="352" y2="416" x1="1120" />
            <wire x2="1136" y1="416" y2="416" x1="1120" />
            <wire x2="1136" y1="416" y2="496" x1="1136" />
        </branch>
        <instance x="432" y="496" name="XLXI_1" orien="R90" />
        <instance x="720" y="496" name="XLXI_2" orien="R90" />
        <instance x="1008" y="496" name="XLXI_3" orien="R90" />
        <branch name="A_P59">
            <wire x2="576" y1="496" y2="496" x1="464" />
            <wire x2="576" y1="496" y2="928" x1="576" />
            <wire x2="1552" y1="928" y2="928" x1="576" />
            <wire x2="576" y1="928" y2="1056" x1="576" />
            <wire x2="1552" y1="1056" y2="1056" x1="576" />
            <wire x2="576" y1="1056" y2="1776" x1="576" />
            <wire x2="576" y1="1776" y2="2016" x1="576" />
            <wire x2="1888" y1="2016" y2="2016" x1="576" />
            <wire x2="576" y1="2016" y2="2800" x1="576" />
            <wire x2="1888" y1="2800" y2="2800" x1="576" />
            <wire x2="576" y1="2800" y2="3936" x1="576" />
            <wire x2="1888" y1="3936" y2="3936" x1="576" />
            <wire x2="576" y1="3936" y2="5008" x1="576" />
            <wire x2="1888" y1="5008" y2="5008" x1="576" />
            <wire x2="576" y1="5008" y2="6032" x1="576" />
            <wire x2="576" y1="6032" y2="6736" x1="576" />
            <wire x2="1888" y1="6032" y2="6032" x1="576" />
            <wire x2="1888" y1="1776" y2="1776" x1="576" />
            <wire x2="576" y1="368" y2="496" x1="576" />
        </branch>
        <branch name="D_P66">
            <wire x2="1376" y1="512" y2="512" x1="1264" />
            <wire x2="1376" y1="512" y2="2320" x1="1376" />
            <wire x2="1888" y1="2320" y2="2320" x1="1376" />
            <wire x2="1376" y1="2320" y2="2752" x1="1376" />
            <wire x2="1888" y1="2752" y2="2752" x1="1376" />
            <wire x2="1376" y1="2752" y2="2928" x1="1376" />
            <wire x2="1888" y1="2928" y2="2928" x1="1376" />
            <wire x2="1376" y1="2928" y2="3344" x1="1376" />
            <wire x2="1376" y1="3344" y2="3600" x1="1376" />
            <wire x2="1888" y1="3600" y2="3600" x1="1376" />
            <wire x2="1376" y1="3600" y2="4352" x1="1376" />
            <wire x2="1888" y1="4352" y2="4352" x1="1376" />
            <wire x2="1376" y1="4352" y2="4528" x1="1376" />
            <wire x2="1888" y1="4528" y2="4528" x1="1376" />
            <wire x2="1376" y1="4528" y2="6096" x1="1376" />
            <wire x2="1376" y1="6096" y2="6800" x1="1376" />
            <wire x2="1888" y1="6096" y2="6096" x1="1376" />
            <wire x2="1888" y1="3344" y2="3344" x1="1376" />
            <wire x2="1376" y1="384" y2="512" x1="1376" />
        </branch>
        <instance x="1232" y="512" name="XLXI_4" orien="R90" />
        <branch name="XLXN_17">
            <wire x2="1264" y1="736" y2="864" x1="1264" />
            <wire x2="1552" y1="864" y2="864" x1="1264" />
            <wire x2="1264" y1="864" y2="1248" x1="1264" />
            <wire x2="1552" y1="1248" y2="1248" x1="1264" />
            <wire x2="1264" y1="1248" y2="1840" x1="1264" />
            <wire x2="1264" y1="1840" y2="3104" x1="1264" />
            <wire x2="1888" y1="3104" y2="3104" x1="1264" />
            <wire x2="1264" y1="3104" y2="4176" x1="1264" />
            <wire x2="1888" y1="4176" y2="4176" x1="1264" />
            <wire x2="1264" y1="4176" y2="4704" x1="1264" />
            <wire x2="1888" y1="4704" y2="4704" x1="1264" />
            <wire x2="1264" y1="4704" y2="5472" x1="1264" />
            <wire x2="1888" y1="5472" y2="5472" x1="1264" />
            <wire x2="1264" y1="5472" y2="5600" x1="1264" />
            <wire x2="1264" y1="5600" y2="6768" x1="1264" />
            <wire x2="1888" y1="5600" y2="5600" x1="1264" />
            <wire x2="1888" y1="1840" y2="1840" x1="1264" />
        </branch>
        <instance x="1552" y="928" name="XLXI_31" orien="R0" />
        <instance x="1552" y="1056" name="XLXI_15" orien="R0" />
        <instance x="1552" y="1184" name="XLXI_16" orien="R0" />
        <instance x="1552" y="1312" name="XLXI_32" orien="R0" />
        <instance x="1552" y="1504" name="XLXI_17" orien="R0" />
        <branch name="XLXN_15">
            <wire x2="1040" y1="6752" y2="6752" x1="1024" />
            <wire x2="1040" y1="720" y2="1440" x1="1040" />
            <wire x2="1552" y1="1440" y2="1440" x1="1040" />
            <wire x2="1040" y1="1440" y2="2144" x1="1040" />
            <wire x2="1888" y1="2144" y2="2144" x1="1040" />
            <wire x2="1040" y1="2144" y2="2576" x1="1040" />
            <wire x2="1888" y1="2576" y2="2576" x1="1040" />
            <wire x2="1040" y1="2576" y2="2864" x1="1040" />
            <wire x2="1888" y1="2864" y2="2864" x1="1040" />
            <wire x2="1040" y1="2864" y2="3040" x1="1040" />
            <wire x2="1888" y1="3040" y2="3040" x1="1040" />
            <wire x2="1040" y1="3040" y2="3280" x1="1040" />
            <wire x2="1888" y1="3280" y2="3280" x1="1040" />
            <wire x2="1040" y1="3280" y2="3728" x1="1040" />
            <wire x2="1888" y1="3728" y2="3728" x1="1040" />
            <wire x2="1040" y1="3728" y2="4000" x1="1040" />
            <wire x2="1888" y1="4000" y2="4000" x1="1040" />
            <wire x2="1040" y1="4000" y2="4464" x1="1040" />
            <wire x2="1888" y1="4464" y2="4464" x1="1040" />
            <wire x2="1040" y1="4464" y2="5536" x1="1040" />
            <wire x2="1040" y1="5536" y2="6752" x1="1040" />
            <wire x2="1888" y1="5536" y2="5536" x1="1040" />
        </branch>
        <instance x="1888" y="1776" name="XLXI_14" orien="R0" />
        <instance x="1888" y="2032" name="XLXI_34" orien="R0" />
        <instance x="1888" y="2208" name="XLXI_37" orien="R0" />
        <instance x="1888" y="2384" name="XLXI_38" orien="R0" />
        <branch name="XLXN_44">
            <wire x2="2368" y1="1680" y2="1680" x1="2144" />
            <wire x2="2368" y1="1680" y2="1808" x1="2368" />
            <wire x2="2592" y1="1808" y2="1808" x1="2368" />
        </branch>
        <branch name="XLXN_42">
            <wire x2="2160" y1="1808" y2="1808" x1="2144" />
            <wire x2="2160" y1="1808" y2="1872" x1="2160" />
            <wire x2="2592" y1="1872" y2="1872" x1="2160" />
        </branch>
        <branch name="XLXN_40">
            <wire x2="2160" y1="2080" y2="2080" x1="2144" />
            <wire x2="2160" y1="2000" y2="2080" x1="2160" />
            <wire x2="2592" y1="2000" y2="2000" x1="2160" />
        </branch>
        <branch name="XLXN_39">
            <wire x2="2592" y1="2256" y2="2256" x1="2144" />
            <wire x2="2592" y1="2064" y2="2256" x1="2592" />
        </branch>
        <branch name="XLXN_41">
            <wire x2="2592" y1="1936" y2="1936" x1="2144" />
        </branch>
        <instance x="2592" y="2128" name="XLXI_44" orien="R0" />
        <branch name="a_P41">
            <wire x2="2880" y1="1904" y2="1904" x1="2848" />
        </branch>
        <iomarker fontsize="28" x="2880" y="1904" name="a_P41" orien="R0" />
        <instance x="1888" y="2640" name="XLXI_45" orien="R0" />
        <instance x="1888" y="2816" name="XLXI_46" orien="R0" />
        <instance x="1888" y="2992" name="XLXI_47" orien="R0" />
        <instance x="1888" y="3168" name="XLXI_48" orien="R0" />
        <branch name="XLXN_6">
            <wire x2="464" y1="720" y2="1312" x1="464" />
            <wire x2="1552" y1="1312" y2="1312" x1="464" />
            <wire x2="464" y1="1312" y2="1904" x1="464" />
            <wire x2="1888" y1="1904" y2="1904" x1="464" />
            <wire x2="464" y1="1904" y2="2192" x1="464" />
            <wire x2="1888" y1="2192" y2="2192" x1="464" />
            <wire x2="464" y1="2192" y2="2624" x1="464" />
            <wire x2="1888" y1="2624" y2="2624" x1="464" />
            <wire x2="464" y1="2624" y2="2976" x1="464" />
            <wire x2="1888" y1="2976" y2="2976" x1="464" />
            <wire x2="464" y1="2976" y2="3408" x1="464" />
            <wire x2="1888" y1="3408" y2="3408" x1="464" />
            <wire x2="464" y1="3408" y2="3536" x1="464" />
            <wire x2="1888" y1="3536" y2="3536" x1="464" />
            <wire x2="464" y1="3536" y2="4048" x1="464" />
            <wire x2="1888" y1="4048" y2="4048" x1="464" />
            <wire x2="464" y1="4048" y2="6800" x1="464" />
        </branch>
        <branch name="XLXN_61">
            <wire x2="2560" y1="2688" y2="2688" x1="2144" />
        </branch>
        <branch name="XLXN_64">
            <wire x2="2560" y1="3040" y2="3040" x1="2144" />
            <wire x2="2560" y1="2816" y2="3040" x1="2560" />
        </branch>
        <branch name="b_P40">
            <wire x2="2832" y1="2688" y2="2688" x1="2816" />
            <wire x2="2848" y1="2688" y2="2688" x1="2832" />
        </branch>
        <instance x="2560" y="2880" name="XLXI_50" orien="R0" />
        <branch name="XLXN_65">
            <wire x2="2464" y1="832" y2="832" x1="1808" />
            <wire x2="2464" y1="832" y2="1744" x1="2464" />
            <wire x2="2464" y1="1744" y2="2560" x1="2464" />
            <wire x2="2560" y1="2560" y2="2560" x1="2464" />
            <wire x2="2464" y1="2560" y2="4848" x1="2464" />
            <wire x2="2512" y1="4848" y2="4848" x1="2464" />
            <wire x2="2592" y1="1744" y2="1744" x1="2464" />
        </branch>
        <branch name="XLXN_60">
            <wire x2="2160" y1="2544" y2="2544" x1="2144" />
            <wire x2="2160" y1="2544" y2="2624" x1="2160" />
            <wire x2="2560" y1="2624" y2="2624" x1="2160" />
        </branch>
        <branch name="XLXN_62">
            <wire x2="2160" y1="2864" y2="2864" x1="2144" />
            <wire x2="2560" y1="2752" y2="2752" x1="2160" />
            <wire x2="2160" y1="2752" y2="2864" x1="2160" />
        </branch>
        <instance x="1888" y="1904" name="XLXI_33" orien="R0" />
        <instance x="1888" y="3408" name="XLXI_51" orien="R0" />
        <instance x="1888" y="3536" name="XLXI_52" orien="R0" />
        <instance x="1888" y="3664" name="XLXI_53" orien="R0" />
        <instance x="1888" y="3792" name="XLXI_54" orien="R0" />
        <branch name="XLXN_75">
            <wire x2="2144" y1="3312" y2="3328" x1="2144" />
            <wire x2="2352" y1="3328" y2="3328" x1="2144" />
            <wire x2="2352" y1="3328" y2="3408" x1="2352" />
            <wire x2="2560" y1="3408" y2="3408" x1="2352" />
        </branch>
        <branch name="XLXN_72">
            <wire x2="2560" y1="3696" y2="3696" x1="2144" />
            <wire x2="2560" y1="3600" y2="3696" x1="2560" />
        </branch>
        <instance x="2560" y="3664" name="XLXI_55" orien="R0" />
        <branch name="XLXN_74">
            <wire x2="2160" y1="3440" y2="3440" x1="2144" />
            <wire x2="2160" y1="3440" y2="3472" x1="2160" />
            <wire x2="2560" y1="3472" y2="3472" x1="2160" />
        </branch>
        <branch name="XLXN_73">
            <wire x2="2160" y1="3568" y2="3568" x1="2144" />
            <wire x2="2560" y1="3536" y2="3536" x1="2160" />
            <wire x2="2160" y1="3536" y2="3568" x1="2160" />
        </branch>
        <instance x="1888" y="4064" name="XLXI_56" orien="R0" />
        <instance x="1888" y="4240" name="XLXI_57" orien="R0" />
        <instance x="1888" y="4416" name="XLXI_58" orien="R0" />
        <instance x="1888" y="4592" name="XLXI_59" orien="R0" />
        <instance x="1888" y="4768" name="XLXI_60" orien="R0" />
        <branch name="XLXN_13">
            <wire x2="752" y1="720" y2="800" x1="752" />
            <wire x2="1552" y1="800" y2="800" x1="752" />
            <wire x2="752" y1="800" y2="992" x1="752" />
            <wire x2="1552" y1="992" y2="992" x1="752" />
            <wire x2="752" y1="992" y2="2080" x1="752" />
            <wire x2="1888" y1="2080" y2="2080" x1="752" />
            <wire x2="752" y1="2080" y2="2512" x1="752" />
            <wire x2="1888" y1="2512" y2="2512" x1="752" />
            <wire x2="752" y1="2512" y2="3664" x1="752" />
            <wire x2="1888" y1="3664" y2="3664" x1="752" />
            <wire x2="752" y1="3664" y2="4112" x1="752" />
            <wire x2="1888" y1="4112" y2="4112" x1="752" />
            <wire x2="752" y1="4112" y2="4224" x1="752" />
            <wire x2="1888" y1="4224" y2="4224" x1="752" />
            <wire x2="752" y1="4224" y2="5904" x1="752" />
            <wire x2="752" y1="5904" y2="6736" x1="752" />
            <wire x2="1888" y1="5904" y2="5904" x1="752" />
        </branch>
        <branch name="B_P61">
            <wire x2="864" y1="496" y2="496" x1="752" />
            <wire x2="864" y1="496" y2="1376" x1="864" />
            <wire x2="1552" y1="1376" y2="1376" x1="864" />
            <wire x2="864" y1="1376" y2="1648" x1="864" />
            <wire x2="1888" y1="1648" y2="1648" x1="864" />
            <wire x2="864" y1="1648" y2="2256" x1="864" />
            <wire x2="1888" y1="2256" y2="2256" x1="864" />
            <wire x2="864" y1="2256" y2="3472" x1="864" />
            <wire x2="1888" y1="3472" y2="3472" x1="864" />
            <wire x2="864" y1="3472" y2="4400" x1="864" />
            <wire x2="1888" y1="4400" y2="4400" x1="864" />
            <wire x2="864" y1="4400" y2="4576" x1="864" />
            <wire x2="1888" y1="4576" y2="4576" x1="864" />
            <wire x2="864" y1="4576" y2="5072" x1="864" />
            <wire x2="1888" y1="5072" y2="5072" x1="864" />
            <wire x2="864" y1="5072" y2="5408" x1="864" />
            <wire x2="864" y1="5408" y2="6768" x1="864" />
            <wire x2="1888" y1="5408" y2="5408" x1="864" />
            <wire x2="864" y1="384" y2="496" x1="864" />
        </branch>
        <branch name="XLXN_91">
            <wire x2="2560" y1="4288" y2="4288" x1="2144" />
        </branch>
        <branch name="XLXN_92">
            <wire x2="2560" y1="3968" y2="3968" x1="2144" />
            <wire x2="2560" y1="3968" y2="4160" x1="2560" />
        </branch>
        <branch name="XLXN_95">
            <wire x2="2560" y1="4640" y2="4640" x1="2144" />
            <wire x2="2560" y1="4416" y2="4640" x1="2560" />
        </branch>
        <instance x="2560" y="4480" name="XLXI_61" orien="R0" />
        <branch name="XLXN_93">
            <wire x2="2160" y1="4112" y2="4112" x1="2144" />
            <wire x2="2160" y1="4112" y2="4224" x1="2160" />
            <wire x2="2560" y1="4224" y2="4224" x1="2160" />
        </branch>
        <branch name="XLXN_94">
            <wire x2="2160" y1="4464" y2="4464" x1="2144" />
            <wire x2="2560" y1="4352" y2="4352" x1="2160" />
            <wire x2="2160" y1="4352" y2="4464" x1="2160" />
        </branch>
        <branch name="c_P35">
            <wire x2="2848" y1="3472" y2="3472" x1="2816" />
        </branch>
        <iomarker fontsize="28" x="2848" y="3472" name="c_P35" orien="R0" />
        <branch name="d_P34">
            <wire x2="2848" y1="4288" y2="4288" x1="2816" />
        </branch>
        <iomarker fontsize="28" x="2848" y="4288" name="d_P34" orien="R0" />
        <instance x="2512" y="5104" name="XLXI_63" orien="R0" />
        <instance x="1888" y="5136" name="XLXI_62" orien="R0" />
        <branch name="XLXN_102">
            <wire x2="2512" y1="5040" y2="5040" x1="2144" />
        </branch>
        <branch name="XLXN_107">
            <wire x2="2256" y1="1216" y2="1216" x1="1808" />
            <wire x2="2256" y1="1216" y2="4976" x1="2256" />
            <wire x2="2512" y1="4976" y2="4976" x1="2256" />
            <wire x2="2256" y1="4976" y2="5840" x1="2256" />
            <wire x2="2528" y1="5840" y2="5840" x1="2256" />
        </branch>
        <branch name="e_P32">
            <wire x2="2800" y1="4944" y2="4944" x1="2768" />
        </branch>
        <iomarker fontsize="28" x="2800" y="4944" name="e_P32" orien="R0" />
        <instance x="1888" y="5536" name="XLXI_65" orien="R0" />
        <instance x="1888" y="5664" name="XLXI_66" orien="R0" />
        <branch name="XLXN_110">
            <wire x2="2512" y1="5568" y2="5568" x1="2144" />
            <wire x2="2512" y1="5536" y2="5568" x1="2512" />
        </branch>
        <branch name="XLXN_111">
            <wire x2="2320" y1="5440" y2="5440" x1="2144" />
            <wire x2="2320" y1="5440" y2="5472" x1="2320" />
            <wire x2="2512" y1="5472" y2="5472" x1="2320" />
        </branch>
        <branch name="XLXN_106">
            <wire x2="2320" y1="1088" y2="1088" x1="1808" />
            <wire x2="2320" y1="1088" y2="4912" x1="2320" />
            <wire x2="2512" y1="4912" y2="4912" x1="2320" />
            <wire x2="2320" y1="4912" y2="5344" x1="2320" />
            <wire x2="2512" y1="5344" y2="5344" x1="2320" />
        </branch>
        <branch name="XLXN_84">
            <wire x2="2400" y1="960" y2="960" x1="1808" />
            <wire x2="2400" y1="960" y2="3344" x1="2400" />
            <wire x2="2560" y1="3344" y2="3344" x1="2400" />
            <wire x2="2400" y1="3344" y2="5280" x1="2400" />
            <wire x2="2512" y1="5280" y2="5280" x1="2400" />
            <wire x2="2400" y1="5280" y2="5776" x1="2400" />
            <wire x2="2528" y1="5776" y2="5776" x1="2400" />
        </branch>
        <branch name="XLXN_117">
            <wire x2="2176" y1="1376" y2="1376" x1="1808" />
            <wire x2="2176" y1="1376" y2="5408" x1="2176" />
            <wire x2="2512" y1="5408" y2="5408" x1="2176" />
            <wire x2="2176" y1="5408" y2="5904" x1="2176" />
            <wire x2="2528" y1="5904" y2="5904" x1="2176" />
        </branch>
        <instance x="2512" y="5600" name="XLXI_64" orien="R0" />
        <instance x="2528" y="6096" name="XLXI_69" orien="R0" />
        <branch name="XLXN_125">
            <wire x2="2512" y1="5936" y2="5936" x1="2144" />
            <wire x2="2512" y1="5936" y2="5968" x1="2512" />
            <wire x2="2528" y1="5968" y2="5968" x1="2512" />
        </branch>
        <branch name="XLXN_124">
            <wire x2="2512" y1="6064" y2="6064" x1="2144" />
            <wire x2="2528" y1="6032" y2="6032" x1="2512" />
            <wire x2="2512" y1="6032" y2="6064" x1="2512" />
        </branch>
        <instance x="1888" y="6160" name="XLXI_68" orien="R0" />
        <instance x="1888" y="6032" name="XLXI_67" orien="R0" />
        <branch name="f_P29">
            <wire x2="2800" y1="5408" y2="5408" x1="2768" />
        </branch>
        <iomarker fontsize="28" x="2800" y="5408" name="f_P29" orien="R0" />
        <branch name="g_P27">
            <wire x2="2816" y1="5904" y2="5904" x1="2784" />
        </branch>
        <iomarker fontsize="28" x="2816" y="5904" name="g_P27" orien="R0" />
        <iomarker fontsize="28" x="2848" y="2688" name="b_P40" orien="R0" />
        <iomarker fontsize="28" x="1376" y="384" name="D_P66" orien="R270" />
        <iomarker fontsize="28" x="1120" y="352" name="C_P62" orien="R270" />
        <iomarker fontsize="28" x="864" y="384" name="B_P61" orien="R270" />
        <iomarker fontsize="28" x="576" y="368" name="A_P59" orien="R270" />
    </sheet>
</drawing>