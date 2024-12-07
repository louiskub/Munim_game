<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="D0" />
        <signal name="D1" />
        <signal name="clock_in" />
        <signal name="XLXN_9" />
        <port polarity="Output" name="D0" />
        <port polarity="Output" name="D1" />
        <port polarity="Input" name="clock_in" />
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
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
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
        <block symbolname="fjkc" name="XLXI_1">
            <blockpin signalname="clock_in" name="C" />
            <blockpin signalname="XLXN_9" name="CLR" />
            <blockpin signalname="XLXN_1" name="J" />
            <blockpin signalname="XLXN_1" name="K" />
            <blockpin signalname="D0" name="Q" />
        </block>
        <block symbolname="vcc" name="XLXI_2">
            <blockpin signalname="XLXN_1" name="P" />
        </block>
        <block symbolname="fjkc" name="XLXI_5">
            <blockpin signalname="clock_in" name="C" />
            <blockpin signalname="XLXN_9" name="CLR" />
            <blockpin signalname="D0" name="J" />
            <blockpin signalname="D0" name="K" />
            <blockpin signalname="D1" name="Q" />
        </block>
        <block symbolname="gnd" name="XLXI_7">
            <blockpin signalname="XLXN_9" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1136" y="1392" name="XLXI_1" orien="R0" />
        <instance x="992" y="1040" name="XLXI_2" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="1056" y1="1040" y2="1072" x1="1056" />
            <wire x2="1136" y1="1072" y2="1072" x1="1056" />
            <wire x2="1056" y1="1072" y2="1136" x1="1056" />
            <wire x2="1136" y1="1136" y2="1136" x1="1056" />
        </branch>
        <instance x="1728" y="1392" name="XLXI_5" orien="R0" />
        <branch name="D0">
            <wire x2="1600" y1="1136" y2="1136" x1="1520" />
            <wire x2="1664" y1="1136" y2="1136" x1="1600" />
            <wire x2="1728" y1="1136" y2="1136" x1="1664" />
            <wire x2="1664" y1="656" y2="1072" x1="1664" />
            <wire x2="1664" y1="1072" y2="1136" x1="1664" />
            <wire x2="1728" y1="1072" y2="1072" x1="1664" />
        </branch>
        <branch name="D1">
            <wire x2="2128" y1="1136" y2="1136" x1="2112" />
            <wire x2="2128" y1="832" y2="1136" x1="2128" />
        </branch>
        <branch name="clock_in">
            <wire x2="1136" y1="1264" y2="1264" x1="944" />
            <wire x2="944" y1="1264" y2="1472" x1="944" />
            <wire x2="1648" y1="1472" y2="1472" x1="944" />
            <wire x2="944" y1="1472" y2="1680" x1="944" />
            <wire x2="1728" y1="1264" y2="1264" x1="1648" />
            <wire x2="1648" y1="1264" y2="1472" x1="1648" />
        </branch>
        <iomarker fontsize="28" x="1664" y="656" name="D0" orien="R270" />
        <iomarker fontsize="28" x="2128" y="832" name="D1" orien="R270" />
        <iomarker fontsize="28" x="944" y="1680" name="clock_in" orien="R90" />
        <branch name="XLXN_9">
            <wire x2="1136" y1="1360" y2="1376" x1="1136" />
            <wire x2="1728" y1="1376" y2="1376" x1="1136" />
            <wire x2="1728" y1="1360" y2="1376" x1="1728" />
        </branch>
        <instance x="1664" y="1504" name="XLXI_7" orien="R0" />
    </sheet>
</drawing>