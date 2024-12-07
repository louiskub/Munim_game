<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="pb1" />
        <signal name="pb2" />
        <signal name="is_pause_in" />
        <signal name="time_remain_in(7:0)" />
        <signal name="XLXN_5(7:0)" />
        <signal name="game_state(1:0)" />
        <signal name="reset_count" />
        <signal name="lhod_per_turn(7:0)" />
        <signal name="lhod_select(7:0)" />
        <signal name="lhod_remain(7:0)" />
        <signal name="XLXN_233" />
        <signal name="clk" />
        <signal name="pb4" />
        <signal name="pb3" />
        <signal name="pb3_to_fpga2" />
        <port polarity="Input" name="pb1" />
        <port polarity="Input" name="pb2" />
        <port polarity="Input" name="is_pause_in" />
        <port polarity="Input" name="time_remain_in(7:0)" />
        <port polarity="Output" name="game_state(1:0)" />
        <port polarity="Output" name="reset_count" />
        <port polarity="Output" name="lhod_per_turn(7:0)" />
        <port polarity="Output" name="lhod_select(7:0)" />
        <port polarity="Output" name="lhod_remain(7:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="pb4" />
        <port polarity="Input" name="pb3" />
        <port polarity="Output" name="pb3_to_fpga2" />
        <blockdef name="lhod_game">
            <timestamp>2024-11-7T14:20:49</timestamp>
            <rect width="448" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="576" y1="-352" y2="-352" x1="512" />
            <rect width="64" x="512" y="-284" height="24" />
            <line x2="576" y1="-272" y2="-272" x1="512" />
            <rect width="64" x="512" y="-204" height="24" />
            <line x2="576" y1="-192" y2="-192" x1="512" />
            <rect width="64" x="512" y="-124" height="24" />
            <line x2="576" y1="-112" y2="-112" x1="512" />
            <rect width="64" x="512" y="-44" height="24" />
            <line x2="576" y1="-32" y2="-32" x1="512" />
        </blockdef>
        <blockdef name="edetect">
            <timestamp>2024-11-7T14:20:48</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <block symbolname="lhod_game" name="XLXI_52">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="pb1" name="push_button1" />
            <blockpin signalname="pb2" name="push_button2" />
            <blockpin signalname="XLXN_233" name="push_button4" />
            <blockpin signalname="is_pause_in" name="is_pause" />
            <blockpin signalname="time_remain_in(7:0)" name="time_remain(7:0)" />
            <blockpin signalname="reset_count" name="reset_count_output" />
            <blockpin signalname="game_state(1:0)" name="game_state_output(1:0)" />
            <blockpin signalname="lhod_per_turn(7:0)" name="lhod_per_turn_output(7:0)" />
            <blockpin signalname="lhod_select(7:0)" name="lhod_select_output(7:0)" />
            <blockpin signalname="lhod_remain(7:0)" name="lhod_remain_output(7:0)" />
        </block>
        <block symbolname="edetect" name="XLXI_38">
            <blockpin signalname="XLXN_233" name="CEO" />
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="pb4" name="I" />
        </block>
        <block symbolname="buf" name="XLXI_53">
            <blockpin signalname="pb3" name="I" />
            <blockpin signalname="pb3_to_fpga2" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="pb1">
            <wire x2="1536" y1="560" y2="560" x1="880" />
        </branch>
        <branch name="pb2">
            <wire x2="1536" y1="624" y2="624" x1="864" />
        </branch>
        <branch name="is_pause_in">
            <wire x2="1472" y1="912" y2="912" x1="912" />
            <wire x2="1472" y1="752" y2="912" x1="1472" />
            <wire x2="1536" y1="752" y2="752" x1="1472" />
        </branch>
        <branch name="time_remain_in(7:0)">
            <wire x2="1520" y1="960" y2="960" x1="976" />
            <wire x2="1536" y1="816" y2="816" x1="1520" />
            <wire x2="1520" y1="816" y2="960" x1="1520" />
        </branch>
        <branch name="game_state(1:0)">
            <wire x2="2192" y1="576" y2="576" x1="2112" />
        </branch>
        <branch name="reset_count">
            <wire x2="2128" y1="496" y2="496" x1="2112" />
            <wire x2="2192" y1="496" y2="496" x1="2128" />
        </branch>
        <instance x="1536" y="848" name="XLXI_52" orien="R0">
        </instance>
        <branch name="lhod_per_turn(7:0)">
            <wire x2="2128" y1="656" y2="656" x1="2112" />
            <wire x2="2192" y1="656" y2="656" x1="2128" />
        </branch>
        <branch name="lhod_select(7:0)">
            <wire x2="2128" y1="736" y2="736" x1="2112" />
            <wire x2="2192" y1="736" y2="736" x1="2128" />
        </branch>
        <branch name="lhod_remain(7:0)">
            <wire x2="2128" y1="816" y2="816" x1="2112" />
            <wire x2="2192" y1="816" y2="816" x1="2128" />
        </branch>
        <branch name="XLXN_233">
            <wire x2="1520" y1="688" y2="688" x1="1456" />
            <wire x2="1536" y1="688" y2="688" x1="1520" />
        </branch>
        <branch name="clk">
            <wire x2="1008" y1="496" y2="496" x1="880" />
            <wire x2="1536" y1="496" y2="496" x1="1008" />
            <wire x2="1008" y1="496" y2="752" x1="1008" />
            <wire x2="1072" y1="752" y2="752" x1="1008" />
        </branch>
        <branch name="pb4">
            <wire x2="880" y1="688" y2="688" x1="864" />
            <wire x2="1072" y1="688" y2="688" x1="880" />
        </branch>
        <instance x="1072" y="784" name="XLXI_38" orien="R0">
        </instance>
        <branch name="pb3">
            <wire x2="1024" y1="1088" y2="1088" x1="880" />
            <wire x2="1040" y1="1088" y2="1088" x1="1024" />
        </branch>
        <instance x="1040" y="1120" name="XLXI_53" orien="R0" />
        <branch name="pb3_to_fpga2">
            <wire x2="1280" y1="1088" y2="1088" x1="1264" />
            <wire x2="1360" y1="1088" y2="1088" x1="1280" />
        </branch>
        <iomarker fontsize="28" x="880" y="496" name="clk" orien="R180" />
        <iomarker fontsize="28" x="880" y="560" name="pb1" orien="R180" />
        <iomarker fontsize="28" x="864" y="624" name="pb2" orien="R180" />
        <iomarker fontsize="28" x="2192" y="576" name="game_state(1:0)" orien="R0" />
        <iomarker fontsize="28" x="2192" y="496" name="reset_count" orien="R0" />
        <iomarker fontsize="28" x="912" y="912" name="is_pause_in" orien="R180" />
        <iomarker fontsize="28" x="976" y="960" name="time_remain_in(7:0)" orien="R180" />
        <iomarker fontsize="28" x="2192" y="656" name="lhod_per_turn(7:0)" orien="R0" />
        <iomarker fontsize="28" x="2192" y="736" name="lhod_select(7:0)" orien="R0" />
        <iomarker fontsize="28" x="2192" y="816" name="lhod_remain(7:0)" orien="R0" />
        <iomarker fontsize="28" x="864" y="688" name="pb4" orien="R180" />
        <iomarker fontsize="28" x="880" y="1088" name="pb3" orien="R180" />
        <iomarker fontsize="28" x="1360" y="1088" name="pb3_to_fpga2" orien="R0" />
    </sheet>
</drawing>