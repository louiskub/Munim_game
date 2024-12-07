<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="game_state(1:0)" />
        <signal name="reset_timer" />
        <signal name="time_remaining_output(7:0)" />
        <signal name="XLXN_188" />
        <signal name="game_state(0)" />
        <signal name="XLXN_187" />
        <signal name="pb3_from_fpga1" />
        <signal name="clk" />
        <signal name="XLXN_189" />
        <signal name="is_pause_output" />
        <port polarity="Input" name="game_state(1:0)" />
        <port polarity="Input" name="reset_timer" />
        <port polarity="Output" name="time_remaining_output(7:0)" />
        <port polarity="Input" name="pb3_from_fpga1" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="is_pause_output" />
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
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="time_counter">
            <timestamp>2024-11-9T13:1:43</timestamp>
            <rect width="432" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="560" y1="-224" y2="-224" x1="496" />
            <rect width="64" x="496" y="-44" height="24" />
            <line x2="560" y1="-32" y2="-32" x1="496" />
        </blockdef>
        <block symbolname="edetect" name="XLXI_60">
            <blockpin signalname="XLXN_187" name="CEO" />
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="pb3_from_fpga1" name="I" />
        </block>
        <block symbolname="inv" name="XLXI_63">
            <blockpin signalname="game_state(0)" name="I" />
            <blockpin signalname="XLXN_189" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_30">
            <blockpin signalname="pb3_from_fpga1" name="D0" />
            <blockpin signalname="XLXN_187" name="D1" />
            <blockpin signalname="XLXN_189" name="S0" />
            <blockpin signalname="XLXN_188" name="O" />
        </block>
        <block symbolname="time_counter" name="XLXI_68">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_188" name="push_button3" />
            <blockpin signalname="reset_timer" name="reset_count" />
            <blockpin signalname="game_state(1:0)" name="game_state(1:0)" />
            <blockpin signalname="is_pause_output" name="is_pause_output" />
            <blockpin signalname="time_remaining_output(7:0)" name="time_remain_output(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="game_state(1:0)">
            <wire x2="1328" y1="864" y2="864" x1="336" />
            <wire x2="1456" y1="864" y2="864" x1="1328" />
            <wire x2="1456" y1="592" y2="864" x1="1456" />
            <wire x2="1600" y1="592" y2="592" x1="1456" />
            <wire x2="1616" y1="592" y2="592" x1="1600" />
        </branch>
        <branch name="reset_timer">
            <wire x2="1328" y1="800" y2="800" x1="320" />
            <wire x2="1376" y1="800" y2="800" x1="1328" />
            <wire x2="1376" y1="528" y2="800" x1="1376" />
            <wire x2="1600" y1="528" y2="528" x1="1376" />
            <wire x2="1616" y1="528" y2="528" x1="1600" />
        </branch>
        <branch name="time_remaining_output(7:0)">
            <wire x2="2320" y1="592" y2="592" x1="2176" />
        </branch>
        <branch name="XLXN_188">
            <wire x2="1328" y1="464" y2="496" x1="1328" />
            <wire x2="1600" y1="464" y2="464" x1="1328" />
            <wire x2="1616" y1="464" y2="464" x1="1600" />
        </branch>
        <instance x="592" y="624" name="XLXI_60" orien="R0">
        </instance>
        <branch name="game_state(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="336" y="688" type="branch" />
            <wire x2="672" y1="688" y2="688" x1="336" />
        </branch>
        <branch name="XLXN_187">
            <wire x2="1008" y1="528" y2="528" x1="976" />
        </branch>
        <branch name="pb3_from_fpga1">
            <wire x2="528" y1="464" y2="464" x1="336" />
            <wire x2="528" y1="464" y2="528" x1="528" />
            <wire x2="592" y1="528" y2="528" x1="528" />
            <wire x2="1008" y1="464" y2="464" x1="528" />
        </branch>
        <iomarker fontsize="28" x="352" y="400" name="clk" orien="R180" />
        <iomarker fontsize="28" x="336" y="464" name="pb3_from_fpga1" orien="R180" />
        <branch name="clk">
            <wire x2="432" y1="400" y2="400" x1="352" />
            <wire x2="432" y1="400" y2="592" x1="432" />
            <wire x2="592" y1="592" y2="592" x1="432" />
            <wire x2="1600" y1="400" y2="400" x1="432" />
            <wire x2="1616" y1="400" y2="400" x1="1600" />
        </branch>
        <instance x="1008" y="624" name="XLXI_30" orien="R0" />
        <branch name="XLXN_189">
            <wire x2="1008" y1="688" y2="688" x1="896" />
            <wire x2="1008" y1="592" y2="688" x1="1008" />
        </branch>
        <instance x="672" y="720" name="XLXI_63" orien="R0" />
        <branch name="is_pause_output">
            <wire x2="2224" y1="400" y2="400" x1="2176" />
            <wire x2="2304" y1="400" y2="400" x1="2224" />
        </branch>
        <iomarker fontsize="28" x="320" y="800" name="reset_timer" orien="R180" />
        <iomarker fontsize="28" x="336" y="864" name="game_state(1:0)" orien="R180" />
        <iomarker fontsize="28" x="2320" y="592" name="time_remaining_output(7:0)" orien="R0" />
        <iomarker fontsize="28" x="2304" y="400" name="is_pause_output" orien="R0" />
        <instance x="1616" y="624" name="XLXI_68" orien="R0">
        </instance>
    </sheet>
</drawing>