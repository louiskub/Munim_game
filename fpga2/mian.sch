<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="p47" />
        <signal name="p123" />
        <signal name="game_state(1:0)" />
        <signal name="XLXN_103" />
        <signal name="p48" />
        <signal name="reset_timer" />
        <signal name="p45" />
        <signal name="XLXN_113" />
        <signal name="p82" />
        <signal name="XLXN_2(7:0)" />
        <signal name="game_state(0)" />
        <signal name="p41" />
        <signal name="p40" />
        <signal name="p35" />
        <signal name="p34" />
        <signal name="p32" />
        <signal name="p29" />
        <signal name="p27" />
        <signal name="p30" />
        <signal name="p33" />
        <signal name="p43" />
        <signal name="p44" />
        <signal name="XLXN_87" />
        <signal name="XLXN_88" />
        <signal name="XLXN_89" />
        <signal name="XLXN_90" />
        <signal name="XLXN_91" />
        <signal name="XLXN_97(3:0)" />
        <signal name="XLXN_98(3:0)" />
        <signal name="XLXN_99(3:0)" />
        <signal name="game_state(1)" />
        <signal name="XLXN_187" />
        <signal name="XLXN_188" />
        <port polarity="Input" name="p47" />
        <port polarity="Input" name="p123" />
        <port polarity="Input" name="p48" />
        <port polarity="Input" name="p45" />
        <port polarity="Output" name="p82" />
        <port polarity="Output" name="p41" />
        <port polarity="Output" name="p40" />
        <port polarity="Output" name="p35" />
        <port polarity="Output" name="p34" />
        <port polarity="Output" name="p32" />
        <port polarity="Output" name="p29" />
        <port polarity="Output" name="p27" />
        <port polarity="Output" name="p30" />
        <port polarity="Output" name="p33" />
        <port polarity="Output" name="p43" />
        <port polarity="Output" name="p44" />
        <blockdef name="display">
            <timestamp>2024-11-6T16:54:0</timestamp>
            <rect width="256" x="64" y="-704" height="704" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <rect width="64" x="0" y="-684" height="24" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <rect width="64" x="0" y="-620" height="24" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-556" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
            <line x2="384" y1="-608" y2="-608" x1="320" />
            <line x2="384" y1="-672" y2="-672" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="split8x4x4">
            <timestamp>2024-11-6T7:59:26</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
        </blockdef>
        <blockdef name="wtb4">
            <timestamp>2024-11-6T8:13:8</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
        </blockdef>
        <blockdef name="clkdiv32ki">
            <timestamp>2024-11-6T8:23:20</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="fjkc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <rect width="256" x="64" y="-384" height="320" />
        </blockdef>
        <blockdef name="edetect">
            <timestamp>2024-11-6T8:22:4</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="m2_1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-64" y2="-192" x1="96" />
            <line x2="96" y1="-96" y2="-64" x1="256" />
            <line x2="256" y1="-160" y2="-96" x1="256" />
            <line x2="256" y1="-192" y2="-160" x1="96" />
            <line x2="96" y1="-32" y2="-32" x1="176" />
            <line x2="176" y1="-80" y2="-32" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-128" y2="-128" x1="320" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
        </blockdef>
        <block symbolname="fjkc" name="XLXI_22">
            <blockpin signalname="p123" name="C" />
            <blockpin signalname="XLXN_113" name="CLR" />
            <blockpin signalname="XLXN_103" name="J" />
            <blockpin signalname="XLXN_103" name="K" />
            <blockpin signalname="game_state(0)" name="Q" />
        </block>
        <block symbolname="edetect" name="XLXI_23">
            <blockpin signalname="XLXN_103" name="CEO" />
            <blockpin signalname="p123" name="CLK" />
            <blockpin signalname="p48" name="I" />
        </block>
        <block symbolname="gnd" name="XLXI_26">
            <blockpin signalname="XLXN_113" name="G" />
        </block>
        <block symbolname="edetect" name="XLXI_28">
            <blockpin signalname="reset_timer" name="CEO" />
            <blockpin signalname="p123" name="CLK" />
            <blockpin signalname="p45" name="I" />
        </block>
        <block symbolname="m2_1" name="XLXI_30">
            <blockpin signalname="p47" name="D0" />
            <blockpin signalname="XLXN_187" name="D1" />
            <blockpin signalname="game_state(0)" name="S0" />
            <blockpin signalname="XLXN_188" name="O" />
        </block>
        <block symbolname="display" name="XLXI_8">
            <blockpin signalname="XLXN_99(3:0)" name="D0(3:0)" />
            <blockpin signalname="XLXN_99(3:0)" name="D1(3:0)" />
            <blockpin signalname="XLXN_98(3:0)" name="D2(3:0)" />
            <blockpin signalname="XLXN_97(3:0)" name="D3(3:0)" />
            <blockpin signalname="XLXN_91" name="p123" />
            <blockpin signalname="p27" name="p27" />
            <blockpin signalname="p29" name="p29" />
            <blockpin signalname="p30" name="p30" />
            <blockpin signalname="p32" name="p32" />
            <blockpin signalname="p33" name="p33" />
            <blockpin signalname="p34" name="p34" />
            <blockpin signalname="p35" name="p35" />
            <blockpin signalname="p40" name="p40" />
            <blockpin signalname="p41" name="p41" />
            <blockpin signalname="p43" name="p43" />
            <blockpin signalname="p44" name="p44" />
        </block>
        <block symbolname="wtb4" name="XLXI_15">
            <blockpin signalname="XLXN_90" name="I0" />
            <blockpin signalname="XLXN_89" name="I1" />
            <blockpin signalname="XLXN_88" name="I2" />
            <blockpin signalname="XLXN_87" name="I3" />
            <blockpin signalname="XLXN_99(3:0)" name="O(3:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_17">
            <blockpin signalname="XLXN_90" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_18">
            <blockpin signalname="XLXN_89" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_19">
            <blockpin signalname="XLXN_88" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_20">
            <blockpin signalname="XLXN_87" name="G" />
        </block>
        <block symbolname="clkdiv32ki" name="XLXI_21">
            <blockpin signalname="p123" name="CLK" />
            <blockpin signalname="XLXN_91" name="CLKO" />
        </block>
        <block symbolname="split8x4x4" name="XLXI_9">
            <blockpin signalname="XLXN_98(3:0)" name="H(3:0)" />
            <blockpin signalname="XLXN_2(7:0)" name="I(7:0)" />
            <blockpin signalname="XLXN_97(3:0)" name="L(3:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_7">
            <blockpin signalname="game_state(1)" name="G" />
        </block>
        <block symbolname="edetect" name="XLXI_60">
            <blockpin signalname="XLXN_187" name="CEO" />
            <blockpin signalname="p123" name="CLK" />
            <blockpin signalname="p47" name="I" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="game_state(1:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="688" type="branch" />
            <wire x2="1488" y1="688" y2="688" x1="1424" />
        </branch>
        <branch name="reset_timer">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="624" type="branch" />
            <wire x2="1488" y1="624" y2="624" x1="1408" />
        </branch>
        <iomarker fontsize="28" x="224" y="496" name="p123" orien="R180" />
        <instance x="784" y="1664" name="XLXI_22" orien="R0" />
        <instance x="288" y="1440" name="XLXI_23" orien="R0">
        </instance>
        <branch name="XLXN_103">
            <wire x2="688" y1="1344" y2="1344" x1="672" />
            <wire x2="784" y1="1344" y2="1344" x1="688" />
            <wire x2="688" y1="1344" y2="1408" x1="688" />
            <wire x2="784" y1="1408" y2="1408" x1="688" />
        </branch>
        <branch name="p48">
            <wire x2="288" y1="1344" y2="1344" x1="256" />
        </branch>
        <iomarker fontsize="28" x="256" y="1344" name="p48" orien="R180" />
        <branch name="reset_timer">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1248" y="1888" type="branch" />
            <wire x2="1248" y1="1888" y2="1888" x1="672" />
        </branch>
        <instance x="288" y="1984" name="XLXI_28" orien="R0">
        </instance>
        <branch name="p45">
            <wire x2="288" y1="1888" y2="1888" x1="256" />
        </branch>
        <iomarker fontsize="28" x="256" y="1888" name="p45" orien="R180" />
        <branch name="p123">
            <wire x2="288" y1="1952" y2="1952" x1="208" />
            <wire x2="208" y1="1952" y2="2080" x1="208" />
            <wire x2="736" y1="2080" y2="2080" x1="208" />
            <wire x2="304" y1="496" y2="496" x1="224" />
            <wire x2="1488" y1="496" y2="496" x1="304" />
            <wire x2="304" y1="496" y2="688" x1="304" />
            <wire x2="304" y1="688" y2="1152" x1="304" />
            <wire x2="736" y1="1152" y2="1152" x1="304" />
            <wire x2="736" y1="1152" y2="1536" x1="736" />
            <wire x2="784" y1="1536" y2="1536" x1="736" />
            <wire x2="736" y1="1536" y2="2080" x1="736" />
            <wire x2="2032" y1="1152" y2="1152" x1="736" />
            <wire x2="464" y1="688" y2="688" x1="304" />
            <wire x2="288" y1="1408" y2="1408" x1="256" />
            <wire x2="256" y1="1408" y2="1536" x1="256" />
            <wire x2="736" y1="1536" y2="1536" x1="256" />
        </branch>
        <instance x="480" y="1568" name="XLXI_26" orien="R90" />
        <branch name="XLXN_113">
            <wire x2="784" y1="1632" y2="1632" x1="608" />
        </branch>
        <branch name="p82">
            <wire x2="2384" y1="496" y2="496" x1="2048" />
        </branch>
        <branch name="XLXN_2(7:0)">
            <wire x2="2192" y1="688" y2="688" x1="2048" />
        </branch>
        <branch name="game_state(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="1408" type="branch" />
            <wire x2="1392" y1="1408" y2="1408" x1="1168" />
        </branch>
        <branch name="p41">
            <wire x2="3136" y1="688" y2="688" x1="3104" />
        </branch>
        <branch name="p40">
            <wire x2="3136" y1="752" y2="752" x1="3104" />
        </branch>
        <branch name="p35">
            <wire x2="3136" y1="816" y2="816" x1="3104" />
        </branch>
        <branch name="p34">
            <wire x2="3136" y1="880" y2="880" x1="3104" />
        </branch>
        <branch name="p32">
            <wire x2="3136" y1="944" y2="944" x1="3104" />
        </branch>
        <branch name="p29">
            <wire x2="3136" y1="1008" y2="1008" x1="3104" />
        </branch>
        <branch name="p27">
            <wire x2="3136" y1="1072" y2="1072" x1="3104" />
        </branch>
        <branch name="p30">
            <wire x2="3136" y1="1136" y2="1136" x1="3104" />
        </branch>
        <branch name="p33">
            <wire x2="3136" y1="1200" y2="1200" x1="3104" />
        </branch>
        <instance x="2720" y="1360" name="XLXI_8" orien="R0">
        </instance>
        <branch name="p43">
            <wire x2="3136" y1="1264" y2="1264" x1="3104" />
        </branch>
        <branch name="p44">
            <wire x2="3136" y1="1328" y2="1328" x1="3104" />
        </branch>
        <instance x="2192" y="1040" name="XLXI_15" orien="R0">
        </instance>
        <instance x="2032" y="752" name="XLXI_17" orien="R90" />
        <instance x="2032" y="816" name="XLXI_18" orien="R90" />
        <instance x="2032" y="880" name="XLXI_19" orien="R90" />
        <branch name="XLXN_87">
            <wire x2="2192" y1="1008" y2="1008" x1="2160" />
        </branch>
        <branch name="XLXN_88">
            <wire x2="2192" y1="944" y2="944" x1="2160" />
        </branch>
        <branch name="XLXN_89">
            <wire x2="2192" y1="880" y2="880" x1="2160" />
        </branch>
        <branch name="XLXN_90">
            <wire x2="2192" y1="816" y2="816" x1="2160" />
        </branch>
        <instance x="2032" y="944" name="XLXI_20" orien="R90" />
        <instance x="2032" y="1184" name="XLXI_21" orien="R0">
        </instance>
        <branch name="XLXN_91">
            <wire x2="2592" y1="1152" y2="1152" x1="2416" />
            <wire x2="2592" y1="944" y2="1152" x1="2592" />
            <wire x2="2720" y1="944" y2="944" x1="2592" />
        </branch>
        <instance x="2192" y="784" name="XLXI_9" orien="R0">
        </instance>
        <branch name="XLXN_97(3:0)">
            <wire x2="2640" y1="688" y2="688" x1="2576" />
            <wire x2="2640" y1="688" y2="880" x1="2640" />
            <wire x2="2720" y1="880" y2="880" x1="2640" />
        </branch>
        <branch name="XLXN_98(3:0)">
            <wire x2="2624" y1="752" y2="752" x1="2576" />
            <wire x2="2624" y1="752" y2="816" x1="2624" />
            <wire x2="2720" y1="816" y2="816" x1="2624" />
        </branch>
        <branch name="XLXN_99(3:0)">
            <wire x2="2608" y1="816" y2="816" x1="2576" />
            <wire x2="2608" y1="768" y2="816" x1="2608" />
            <wire x2="2704" y1="768" y2="768" x1="2608" />
            <wire x2="2720" y1="688" y2="688" x1="2704" />
            <wire x2="2704" y1="688" y2="752" x1="2704" />
            <wire x2="2704" y1="752" y2="768" x1="2704" />
            <wire x2="2720" y1="752" y2="752" x1="2704" />
        </branch>
        <iomarker fontsize="28" x="2384" y="496" name="p82" orien="R0" />
        <iomarker fontsize="28" x="3136" y="688" name="p41" orien="R0" />
        <iomarker fontsize="28" x="3136" y="752" name="p40" orien="R0" />
        <iomarker fontsize="28" x="3136" y="816" name="p35" orien="R0" />
        <iomarker fontsize="28" x="3136" y="880" name="p34" orien="R0" />
        <iomarker fontsize="28" x="3136" y="944" name="p32" orien="R0" />
        <iomarker fontsize="28" x="3136" y="1008" name="p29" orien="R0" />
        <iomarker fontsize="28" x="3136" y="1072" name="p27" orien="R0" />
        <iomarker fontsize="28" x="3136" y="1136" name="p30" orien="R0" />
        <iomarker fontsize="28" x="3136" y="1200" name="p33" orien="R0" />
        <iomarker fontsize="28" x="3136" y="1264" name="p43" orien="R0" />
        <iomarker fontsize="28" x="3136" y="1328" name="p44" orien="R0" />
        <branch name="game_state(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1712" y="816" type="branch" />
            <wire x2="1712" y1="816" y2="816" x1="1584" />
        </branch>
        <instance x="1456" y="752" name="XLXI_7" orien="R90" />
        <iomarker fontsize="28" x="208" y="560" name="p47" orien="R180" />
        <branch name="XLXN_188">
            <wire x2="1344" y1="576" y2="576" x1="1200" />
            <wire x2="1200" y1="576" y2="592" x1="1200" />
            <wire x2="1472" y1="560" y2="560" x1="1344" />
            <wire x2="1488" y1="560" y2="560" x1="1472" />
            <wire x2="1344" y1="560" y2="576" x1="1344" />
        </branch>
        <instance x="464" y="720" name="XLXI_60" orien="R0">
        </instance>
        <branch name="game_state(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="720" y="784" type="branch" />
            <wire x2="736" y1="784" y2="784" x1="720" />
            <wire x2="880" y1="784" y2="784" x1="736" />
            <wire x2="880" y1="688" y2="784" x1="880" />
        </branch>
        <branch name="XLXN_187">
            <wire x2="864" y1="624" y2="624" x1="848" />
            <wire x2="880" y1="624" y2="624" x1="864" />
        </branch>
        <branch name="p47">
            <wire x2="400" y1="560" y2="560" x1="208" />
            <wire x2="400" y1="560" y2="624" x1="400" />
            <wire x2="464" y1="624" y2="624" x1="400" />
            <wire x2="880" y1="560" y2="560" x1="400" />
        </branch>
        <instance x="880" y="720" name="XLXI_30" orien="R0" />
    </sheet>
</drawing>