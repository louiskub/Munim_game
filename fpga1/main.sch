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
        <signal name="clk" />
        <signal name="pb4" />
        <signal name="pb3_to_fpga2" />
        <signal name="R" />
        <signal name="G" />
        <signal name="B" />
        <signal name="VSYNC" />
        <signal name="HSYNC" />
        <signal name="XLXN_291(3:0)" />
        <signal name="XLXN_292(3:0)" />
        <signal name="XLXN_293(3:0)" />
        <signal name="XLXN_294(3:0)" />
        <signal name="XLXN_295(3:0)" />
        <signal name="XLXN_296(3:0)" />
        <signal name="XLXN_297(3:0)" />
        <signal name="XLXN_298(3:0)" />
        <signal name="pb3" />
        <signal name="XLXN_347(7:0)" />
        <signal name="XLXN_348(7:0)" />
        <signal name="XLXN_349(7:0)" />
        <signal name="reset_count_to_fpga2" />
        <signal name="game_state(1:0)" />
        <signal name="game_state(0)" />
        <signal name="game_state(1)" />
        <signal name="game_state_to_fpga2(0)" />
        <signal name="game_state_to_fpga2(1)" />
        <signal name="game_state_to_fpga2(1:0)" />
        <signal name="XLXN_359" />
        <signal name="XLXN_360" />
        <signal name="XLXN_361" />
        <signal name="XLXN_362" />
        <port polarity="Input" name="pb1" />
        <port polarity="Input" name="pb2" />
        <port polarity="Input" name="is_pause_in" />
        <port polarity="Input" name="time_remain_in(7:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="pb4" />
        <port polarity="Output" name="pb3_to_fpga2" />
        <port polarity="Output" name="R" />
        <port polarity="Output" name="G" />
        <port polarity="Output" name="B" />
        <port polarity="Output" name="VSYNC" />
        <port polarity="Output" name="HSYNC" />
        <port polarity="Input" name="pb3" />
        <port polarity="Output" name="reset_count_to_fpga2" />
        <port polarity="Output" name="game_state_to_fpga2(1:0)" />
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="VGA_Display">
            <timestamp>2024-11-8T11:53:33</timestamp>
            <rect width="352" x="64" y="-704" height="704" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <rect width="64" x="0" y="-556" height="24" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="480" y1="-672" y2="-672" x1="416" />
            <line x2="480" y1="-512" y2="-512" x1="416" />
            <line x2="480" y1="-352" y2="-352" x1="416" />
            <line x2="480" y1="-192" y2="-192" x1="416" />
            <line x2="480" y1="-32" y2="-32" x1="416" />
        </blockdef>
        <blockdef name="split8x4x4">
            <timestamp>2024-11-8T11:20:23</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
        </blockdef>
        <blockdef name="game_logic">
            <timestamp>2024-11-8T11:23:29</timestamp>
            <rect width="512" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="640" y1="-352" y2="-352" x1="576" />
            <rect width="64" x="576" y="-364" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="640" y1="-288" y2="-288" x1="576" />
            <rect width="64" x="576" y="-300" height="24" />
            <line x2="640" y1="-160" y2="-160" x1="576" />
            <rect width="64" x="576" y="-172" height="24" />
            <line x2="640" y1="-224" y2="-224" x1="576" />
            <rect width="64" x="576" y="-236" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="640" y1="-96" y2="-96" x1="576" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="640" y1="-416" y2="-416" x1="576" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
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
        <block symbolname="split8x4x4" name="XLXI_55">
            <blockpin signalname="XLXN_291(3:0)" name="H(3:0)" />
            <blockpin signalname="time_remain_in(7:0)" name="I(7:0)" />
            <blockpin signalname="XLXN_292(3:0)" name="L(3:0)" />
        </block>
        <block symbolname="split8x4x4" name="XLXI_56">
            <blockpin signalname="XLXN_293(3:0)" name="H(3:0)" />
            <blockpin signalname="XLXN_347(7:0)" name="I(7:0)" />
            <blockpin signalname="XLXN_294(3:0)" name="L(3:0)" />
        </block>
        <block symbolname="split8x4x4" name="XLXI_57">
            <blockpin signalname="XLXN_297(3:0)" name="H(3:0)" />
            <blockpin signalname="XLXN_349(7:0)" name="I(7:0)" />
            <blockpin signalname="XLXN_298(3:0)" name="L(3:0)" />
        </block>
        <block symbolname="split8x4x4" name="XLXI_67">
            <blockpin signalname="XLXN_295(3:0)" name="H(3:0)" />
            <blockpin signalname="XLXN_348(7:0)" name="I(7:0)" />
            <blockpin signalname="XLXN_296(3:0)" name="L(3:0)" />
        </block>
        <block symbolname="VGA_Display" name="XLXI_54">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="is_pause_in" name="is_pause" />
            <blockpin signalname="game_state(1:0)" name="game_state(1:0)" />
            <blockpin signalname="XLXN_291(3:0)" name="time_remain_tens(3:0)" />
            <blockpin signalname="XLXN_292(3:0)" name="time_remain_ones(3:0)" />
            <blockpin signalname="XLXN_293(3:0)" name="lhod_per_turn_tens(3:0)" />
            <blockpin signalname="XLXN_294(3:0)" name="lhod_per_turn_ones(3:0)" />
            <blockpin signalname="XLXN_295(3:0)" name="lhod_select_tens(3:0)" />
            <blockpin signalname="XLXN_296(3:0)" name="lhod_select_ones(3:0)" />
            <blockpin signalname="XLXN_297(3:0)" name="lhod_remain_tens(3:0)" />
            <blockpin signalname="XLXN_298(3:0)" name="lhod_remain_ones(3:0)" />
            <blockpin signalname="R" name="R" />
            <blockpin signalname="G" name="G" />
            <blockpin signalname="B" name="B" />
            <blockpin signalname="HSYNC" name="HSYNC" />
            <blockpin signalname="VSYNC" name="VSYNC" />
        </block>
        <block symbolname="buf" name="XLXI_42">
            <blockpin signalname="game_state(0)" name="I" />
            <blockpin signalname="game_state_to_fpga2(0)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_43">
            <blockpin signalname="game_state(1)" name="I" />
            <blockpin signalname="game_state_to_fpga2(1)" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_88">
            <blockpin signalname="pb3" name="I" />
            <blockpin signalname="XLXN_362" name="O" />
        </block>
        <block symbolname="game_logic" name="XLXI_87">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="game_state(1:0)" name="game_state(1:0)" />
            <blockpin signalname="is_pause_in" name="is_pause_in" />
            <blockpin signalname="XLXN_347(7:0)" name="lhod_per_turn(7:0)" />
            <blockpin signalname="XLXN_349(7:0)" name="lhod_remain(7:0)" />
            <blockpin signalname="XLXN_348(7:0)" name="lhod_select(7:0)" />
            <blockpin signalname="XLXN_361" name="pb1" />
            <blockpin signalname="XLXN_360" name="pb2" />
            <blockpin signalname="XLXN_362" name="pb3" />
            <blockpin signalname="pb3_to_fpga2" name="pb3_to_fpga2" />
            <blockpin signalname="XLXN_359" name="pb4" />
            <blockpin signalname="reset_count_to_fpga2" name="reset_count" />
            <blockpin signalname="time_remain_in(7:0)" name="time_remain_in(7:0)" />
        </block>
        <block symbolname="inv" name="XLXI_92">
            <blockpin signalname="pb1" name="I" />
            <blockpin signalname="XLXN_361" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_93">
            <blockpin signalname="pb2" name="I" />
            <blockpin signalname="XLXN_360" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_94">
            <blockpin signalname="pb4" name="I" />
            <blockpin signalname="XLXN_359" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <branch name="pb1">
            <wire x2="832" y1="720" y2="720" x1="464" />
        </branch>
        <branch name="pb2">
            <wire x2="832" y1="784" y2="784" x1="448" />
        </branch>
        <branch name="is_pause_in">
            <wire x2="800" y1="912" y2="912" x1="512" />
            <wire x2="1120" y1="912" y2="912" x1="800" />
            <wire x2="3152" y1="480" y2="480" x1="800" />
            <wire x2="3152" y1="480" y2="496" x1="3152" />
            <wire x2="3232" y1="496" y2="496" x1="3152" />
            <wire x2="800" y1="480" y2="896" x1="800" />
            <wire x2="800" y1="896" y2="912" x1="800" />
        </branch>
        <branch name="clk">
            <wire x2="736" y1="656" y2="656" x1="464" />
            <wire x2="1120" y1="656" y2="656" x1="736" />
            <wire x2="3232" y1="432" y2="432" x1="736" />
            <wire x2="736" y1="432" y2="640" x1="736" />
            <wire x2="736" y1="640" y2="656" x1="736" />
        </branch>
        <branch name="pb4">
            <wire x2="832" y1="848" y2="848" x1="448" />
        </branch>
        <iomarker fontsize="28" x="464" y="656" name="clk" orien="R180" />
        <iomarker fontsize="28" x="464" y="720" name="pb1" orien="R180" />
        <iomarker fontsize="28" x="448" y="784" name="pb2" orien="R180" />
        <iomarker fontsize="28" x="448" y="848" name="pb4" orien="R180" />
        <branch name="R">
            <wire x2="3744" y1="432" y2="432" x1="3712" />
        </branch>
        <branch name="G">
            <wire x2="3744" y1="592" y2="592" x1="3712" />
        </branch>
        <branch name="B">
            <wire x2="3760" y1="752" y2="752" x1="3712" />
        </branch>
        <branch name="VSYNC">
            <wire x2="3744" y1="1072" y2="1072" x1="3712" />
        </branch>
        <branch name="HSYNC">
            <wire x2="3744" y1="912" y2="912" x1="3712" />
        </branch>
        <branch name="XLXN_291(3:0)">
            <wire x2="3232" y1="624" y2="624" x1="2928" />
        </branch>
        <branch name="XLXN_292(3:0)">
            <wire x2="3232" y1="688" y2="688" x1="2928" />
        </branch>
        <branch name="XLXN_293(3:0)">
            <wire x2="3232" y1="752" y2="752" x1="2928" />
        </branch>
        <branch name="XLXN_294(3:0)">
            <wire x2="3232" y1="816" y2="816" x1="2928" />
        </branch>
        <branch name="XLXN_295(3:0)">
            <wire x2="3232" y1="880" y2="880" x1="2928" />
        </branch>
        <branch name="XLXN_296(3:0)">
            <wire x2="3232" y1="944" y2="944" x1="2928" />
        </branch>
        <branch name="XLXN_297(3:0)">
            <wire x2="3232" y1="1008" y2="1008" x1="2928" />
        </branch>
        <branch name="XLXN_298(3:0)">
            <wire x2="3232" y1="1072" y2="1072" x1="2928" />
        </branch>
        <instance x="2544" y="720" name="XLXI_55" orien="R0">
        </instance>
        <instance x="2544" y="848" name="XLXI_56" orien="R0">
        </instance>
        <instance x="2544" y="1104" name="XLXI_57" orien="R0">
        </instance>
        <instance x="2544" y="976" name="XLXI_67" orien="R0">
        </instance>
        <iomarker fontsize="28" x="3744" y="432" name="R" orien="R0" />
        <iomarker fontsize="28" x="3744" y="592" name="G" orien="R0" />
        <iomarker fontsize="28" x="3760" y="752" name="B" orien="R0" />
        <iomarker fontsize="28" x="3744" y="912" name="HSYNC" orien="R0" />
        <iomarker fontsize="28" x="3744" y="1072" name="VSYNC" orien="R0" />
        <iomarker fontsize="28" x="512" y="912" name="is_pause_in" orien="R180" />
        <iomarker fontsize="28" x="560" y="976" name="time_remain_in(7:0)" orien="R180" />
        <branch name="pb3_to_fpga2">
            <wire x2="1856" y1="976" y2="976" x1="1760" />
            <wire x2="1872" y1="976" y2="976" x1="1856" />
        </branch>
        <branch name="pb3">
            <wire x2="832" y1="1040" y2="1040" x1="448" />
        </branch>
        <iomarker fontsize="28" x="448" y="1040" name="pb3" orien="R180" />
        <iomarker fontsize="28" x="1872" y="976" name="pb3_to_fpga2" orien="R0" />
        <branch name="XLXN_347(7:0)">
            <wire x2="2464" y1="784" y2="784" x1="1760" />
            <wire x2="2528" y1="752" y2="752" x1="2464" />
            <wire x2="2544" y1="752" y2="752" x1="2528" />
            <wire x2="2464" y1="752" y2="784" x1="2464" />
        </branch>
        <branch name="XLXN_348(7:0)">
            <wire x2="2464" y1="848" y2="848" x1="1760" />
            <wire x2="2464" y1="848" y2="880" x1="2464" />
            <wire x2="2528" y1="880" y2="880" x1="2464" />
            <wire x2="2544" y1="880" y2="880" x1="2528" />
        </branch>
        <branch name="XLXN_349(7:0)">
            <wire x2="2464" y1="912" y2="912" x1="1760" />
            <wire x2="2464" y1="912" y2="1008" x1="2464" />
            <wire x2="2528" y1="1008" y2="1008" x1="2464" />
            <wire x2="2544" y1="1008" y2="1008" x1="2528" />
        </branch>
        <branch name="reset_count_to_fpga2">
            <wire x2="1824" y1="656" y2="656" x1="1760" />
            <wire x2="1840" y1="656" y2="656" x1="1824" />
        </branch>
        <iomarker fontsize="28" x="1840" y="656" name="reset_count_to_fpga2" orien="R0" />
        <branch name="time_remain_in(7:0)">
            <wire x2="864" y1="976" y2="976" x1="560" />
            <wire x2="1120" y1="976" y2="976" x1="864" />
            <wire x2="2448" y1="528" y2="528" x1="864" />
            <wire x2="2448" y1="528" y2="624" x1="2448" />
            <wire x2="2544" y1="624" y2="624" x1="2448" />
            <wire x2="864" y1="528" y2="960" x1="864" />
            <wire x2="864" y1="960" y2="976" x1="864" />
        </branch>
        <instance x="3232" y="1104" name="XLXI_54" orien="R0">
        </instance>
        <branch name="game_state(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="1184" type="branch" />
            <wire x2="2048" y1="1184" y2="1184" x1="1904" />
        </branch>
        <instance x="2048" y="1216" name="XLXI_42" orien="R0" />
        <instance x="2048" y="1280" name="XLXI_43" orien="R0" />
        <branch name="game_state(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1920" y="1248" type="branch" />
            <wire x2="2048" y1="1248" y2="1248" x1="1920" />
        </branch>
        <branch name="game_state_to_fpga2(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2368" y="1184" type="branch" />
            <wire x2="2368" y1="1184" y2="1184" x1="2272" />
        </branch>
        <branch name="game_state_to_fpga2(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2352" y="1248" type="branch" />
            <wire x2="2352" y1="1248" y2="1248" x1="2272" />
        </branch>
        <branch name="game_state_to_fpga2(1:0)">
            <wire x2="2368" y1="1328" y2="1328" x1="2144" />
        </branch>
        <iomarker fontsize="28" x="2368" y="1328" name="game_state_to_fpga2(1:0)" orien="R0" />
        <instance x="832" y="880" name="XLXI_94" orien="R0" />
        <instance x="832" y="752" name="XLXI_92" orien="R0" />
        <instance x="832" y="816" name="XLXI_93" orien="R0" />
        <instance x="832" y="1072" name="XLXI_88" orien="R0" />
        <branch name="game_state(1:0)">
            <wire x2="2144" y1="720" y2="720" x1="1760" />
            <wire x2="3152" y1="576" y2="576" x1="2144" />
            <wire x2="2144" y1="576" y2="720" x1="2144" />
            <wire x2="3216" y1="560" y2="560" x1="3152" />
            <wire x2="3232" y1="560" y2="560" x1="3216" />
            <wire x2="3152" y1="560" y2="576" x1="3152" />
        </branch>
        <branch name="XLXN_362">
            <wire x2="1072" y1="1040" y2="1040" x1="1056" />
            <wire x2="1120" y1="1040" y2="1040" x1="1072" />
        </branch>
        <branch name="XLXN_359">
            <wire x2="1072" y1="848" y2="848" x1="1056" />
            <wire x2="1120" y1="848" y2="848" x1="1072" />
        </branch>
        <branch name="XLXN_360">
            <wire x2="1072" y1="784" y2="784" x1="1056" />
            <wire x2="1120" y1="784" y2="784" x1="1072" />
        </branch>
        <branch name="XLXN_361">
            <wire x2="1072" y1="720" y2="720" x1="1056" />
            <wire x2="1120" y1="720" y2="720" x1="1072" />
        </branch>
        <instance x="1120" y="1072" name="XLXI_87" orien="R0">
        </instance>
    </sheet>
</drawing>