<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_11(3:0)" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="p41" />
        <signal name="p40" />
        <signal name="p35" />
        <signal name="p34" />
        <signal name="p32" />
        <signal name="p29" />
        <signal name="p27" />
        <signal name="D0(3:0)" />
        <signal name="D1(3:0)" />
        <signal name="D2(3:0)" />
        <signal name="D3(3:0)" />
        <signal name="p123" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <signal name="XLXN_31" />
        <signal name="XLXN_32" />
        <signal name="p30" />
        <signal name="p33" />
        <signal name="p43" />
        <signal name="p44" />
        <port polarity="Output" name="p41" />
        <port polarity="Output" name="p40" />
        <port polarity="Output" name="p35" />
        <port polarity="Output" name="p34" />
        <port polarity="Output" name="p32" />
        <port polarity="Output" name="p29" />
        <port polarity="Output" name="p27" />
        <port polarity="Input" name="D0(3:0)" />
        <port polarity="Input" name="D1(3:0)" />
        <port polarity="Input" name="D2(3:0)" />
        <port polarity="Input" name="D3(3:0)" />
        <port polarity="Input" name="p123" />
        <port polarity="Output" name="p30" />
        <port polarity="Output" name="p33" />
        <port polarity="Output" name="p43" />
        <port polarity="Output" name="p44" />
        <blockdef name="mux4x1x4">
            <timestamp>2024-11-6T8:1:16</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <rect width="64" x="320" y="-364" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="bcdto7seg">
            <timestamp>2024-11-6T7:57:16</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="d2_4e">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-384" height="320" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="counter4">
            <timestamp>2024-11-6T8:11:13</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="btw4">
            <timestamp>2024-11-6T8:13:40</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="mux4x1x4" name="XLXI_13">
            <blockpin signalname="D0(3:0)" name="D0(3:0)" />
            <blockpin signalname="D1(3:0)" name="D1(3:0)" />
            <blockpin signalname="D2(3:0)" name="D2(3:0)" />
            <blockpin signalname="D3(3:0)" name="D3(3:0)" />
            <blockpin signalname="XLXN_11(3:0)" name="O(3:0)" />
            <blockpin signalname="XLXN_4" name="S0" />
            <blockpin signalname="XLXN_5" name="S1" />
        </block>
        <block symbolname="bcdto7seg" name="XLXI_14">
            <blockpin signalname="p41" name="a_P41" />
            <blockpin signalname="XLXN_12" name="A_P59" />
            <blockpin signalname="p40" name="b_P40" />
            <blockpin signalname="XLXN_13" name="B_P61" />
            <blockpin signalname="p35" name="c_P35" />
            <blockpin signalname="XLXN_14" name="C_P62" />
            <blockpin signalname="p34" name="d_P34" />
            <blockpin signalname="XLXN_15" name="D_P66" />
            <blockpin signalname="p32" name="e_P32" />
            <blockpin signalname="p29" name="f_P29" />
            <blockpin signalname="p27" name="g_P27" />
        </block>
        <block symbolname="d2_4e" name="XLXI_16">
            <blockpin signalname="XLXN_4" name="A0" />
            <blockpin signalname="XLXN_5" name="A1" />
            <blockpin signalname="XLXN_32" name="E" />
            <blockpin signalname="XLXN_28" name="D0" />
            <blockpin signalname="XLXN_29" name="D1" />
            <blockpin signalname="XLXN_30" name="D2" />
            <blockpin signalname="XLXN_31" name="D3" />
        </block>
        <block symbolname="vcc" name="XLXI_18">
            <blockpin signalname="XLXN_32" name="P" />
        </block>
        <block symbolname="counter4" name="XLXI_19">
            <blockpin signalname="p123" name="clock_in" />
            <blockpin signalname="XLXN_4" name="D0" />
            <blockpin signalname="XLXN_5" name="D1" />
        </block>
        <block symbolname="btw4" name="XLXI_20">
            <blockpin signalname="XLXN_11(3:0)" name="I(3:0)" />
            <blockpin signalname="XLXN_15" name="O0" />
            <blockpin signalname="XLXN_14" name="O1" />
            <blockpin signalname="XLXN_13" name="O2" />
            <blockpin signalname="XLXN_12" name="O3" />
        </block>
        <block symbolname="inv" name="XLXI_21">
            <blockpin signalname="XLXN_28" name="I" />
            <blockpin signalname="p30" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_22">
            <blockpin signalname="XLXN_29" name="I" />
            <blockpin signalname="p33" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_23">
            <blockpin signalname="XLXN_30" name="I" />
            <blockpin signalname="p43" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_24">
            <blockpin signalname="XLXN_31" name="I" />
            <blockpin signalname="p44" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1296" y="1504" name="XLXI_16" orien="R0" />
        <instance x="1296" y="1008" name="XLXI_13" orien="R0">
        </instance>
        <instance x="1168" y="1376" name="XLXI_18" orien="R0" />
        <instance x="624" y="1264" name="XLXI_19" orien="R0">
        </instance>
        <branch name="XLXN_4">
            <wire x2="1152" y1="1168" y2="1168" x1="1008" />
            <wire x2="1152" y1="1168" y2="1184" x1="1152" />
            <wire x2="1296" y1="1184" y2="1184" x1="1152" />
            <wire x2="1296" y1="912" y2="912" x1="1152" />
            <wire x2="1152" y1="912" y2="1168" x1="1152" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1152" y1="1232" y2="1232" x1="1008" />
            <wire x2="1152" y1="1232" y2="1248" x1="1152" />
            <wire x2="1232" y1="1248" y2="1248" x1="1152" />
            <wire x2="1296" y1="1248" y2="1248" x1="1232" />
            <wire x2="1296" y1="976" y2="976" x1="1232" />
            <wire x2="1232" y1="976" y2="1248" x1="1232" />
        </branch>
        <instance x="2480" y="1072" name="XLXI_14" orien="R0">
        </instance>
        <instance x="1936" y="624" name="XLXI_20" orien="M180">
        </instance>
        <branch name="XLXN_11(3:0)">
            <wire x2="1808" y1="656" y2="656" x1="1680" />
            <wire x2="1808" y1="656" y2="848" x1="1808" />
            <wire x2="1936" y1="848" y2="848" x1="1808" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="2480" y1="656" y2="656" x1="2320" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="2480" y1="720" y2="720" x1="2320" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="2480" y1="784" y2="784" x1="2320" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="2480" y1="848" y2="848" x1="2320" />
        </branch>
        <branch name="p41">
            <wire x2="2896" y1="656" y2="656" x1="2864" />
        </branch>
        <iomarker fontsize="28" x="2896" y="656" name="p41" orien="R0" />
        <branch name="p40">
            <wire x2="2896" y1="720" y2="720" x1="2864" />
        </branch>
        <iomarker fontsize="28" x="2896" y="720" name="p40" orien="R0" />
        <branch name="p35">
            <wire x2="2896" y1="784" y2="784" x1="2864" />
        </branch>
        <iomarker fontsize="28" x="2896" y="784" name="p35" orien="R0" />
        <branch name="p34">
            <wire x2="2896" y1="848" y2="848" x1="2864" />
        </branch>
        <iomarker fontsize="28" x="2896" y="848" name="p34" orien="R0" />
        <branch name="p32">
            <wire x2="2896" y1="912" y2="912" x1="2864" />
        </branch>
        <iomarker fontsize="28" x="2896" y="912" name="p32" orien="R0" />
        <branch name="p29">
            <wire x2="2896" y1="976" y2="976" x1="2864" />
        </branch>
        <iomarker fontsize="28" x="2896" y="976" name="p29" orien="R0" />
        <branch name="p27">
            <wire x2="2896" y1="1040" y2="1040" x1="2864" />
        </branch>
        <iomarker fontsize="28" x="2896" y="1040" name="p27" orien="R0" />
        <branch name="D0(3:0)">
            <wire x2="1296" y1="656" y2="656" x1="1216" />
        </branch>
        <branch name="D1(3:0)">
            <wire x2="1296" y1="720" y2="720" x1="1232" />
        </branch>
        <branch name="D2(3:0)">
            <wire x2="1296" y1="784" y2="784" x1="1232" />
        </branch>
        <branch name="D3(3:0)">
            <wire x2="1296" y1="848" y2="848" x1="1232" />
        </branch>
        <branch name="p123">
            <wire x2="624" y1="1168" y2="1168" x1="592" />
        </branch>
        <iomarker fontsize="28" x="592" y="1168" name="p123" orien="R180" />
        <iomarker fontsize="28" x="1216" y="656" name="D0(3:0)" orien="R180" />
        <iomarker fontsize="28" x="1232" y="720" name="D1(3:0)" orien="R180" />
        <iomarker fontsize="28" x="1232" y="784" name="D2(3:0)" orien="R180" />
        <iomarker fontsize="28" x="1232" y="848" name="D3(3:0)" orien="R180" />
        <branch name="XLXN_28">
            <wire x2="1712" y1="1184" y2="1184" x1="1680" />
        </branch>
        <instance x="1712" y="1216" name="XLXI_21" orien="R0" />
        <branch name="XLXN_29">
            <wire x2="1712" y1="1248" y2="1248" x1="1680" />
        </branch>
        <instance x="1712" y="1280" name="XLXI_22" orien="R0" />
        <branch name="XLXN_30">
            <wire x2="1712" y1="1312" y2="1312" x1="1680" />
        </branch>
        <instance x="1712" y="1344" name="XLXI_23" orien="R0" />
        <branch name="XLXN_31">
            <wire x2="1712" y1="1376" y2="1376" x1="1680" />
        </branch>
        <instance x="1712" y="1408" name="XLXI_24" orien="R0" />
        <branch name="XLXN_32">
            <wire x2="1232" y1="1376" y2="1456" x1="1232" />
            <wire x2="1280" y1="1456" y2="1456" x1="1232" />
            <wire x2="1280" y1="1376" y2="1456" x1="1280" />
            <wire x2="1296" y1="1376" y2="1376" x1="1280" />
        </branch>
        <branch name="p30">
            <wire x2="1968" y1="1184" y2="1184" x1="1936" />
        </branch>
        <iomarker fontsize="28" x="1968" y="1184" name="p30" orien="R0" />
        <branch name="p33">
            <wire x2="1968" y1="1248" y2="1248" x1="1936" />
        </branch>
        <iomarker fontsize="28" x="1968" y="1248" name="p33" orien="R0" />
        <branch name="p43">
            <wire x2="1968" y1="1312" y2="1312" x1="1936" />
        </branch>
        <iomarker fontsize="28" x="1968" y="1312" name="p43" orien="R0" />
        <branch name="p44">
            <wire x2="1968" y1="1376" y2="1376" x1="1936" />
        </branch>
        <iomarker fontsize="28" x="1968" y="1376" name="p44" orien="R0" />
    </sheet>
</drawing>