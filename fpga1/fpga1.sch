<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="p45" />
        <signal name="XLXN_40" />
        <signal name="p123" />
        <signal name="p47" />
        <signal name="p48" />
        <signal name="XLXN_233" />
        <signal name="is_pause_in" />
        <signal name="time_remain_in(7:0)" />
        <signal name="reset_count_out" />
        <signal name="game_state(0)" />
        <signal name="game_state(1:0)" />
        <signal name="game_state(1)" />
        <signal name="game_state_out(0)" />
        <signal name="game_state_out(1)" />
        <signal name="game_state_out(1:0)" />
        <signal name="game_state_LED_out(0)" />
        <signal name="game_state_LED_out(1)" />
        <signal name="game_state_LED_out(1:0)" />
        <signal name="XLXN_275(3:0)" />
        <signal name="XLXN_276(3:0)" />
        <signal name="XLXN_277(3:0)" />
        <signal name="XLXN_278(3:0)" />
        <signal name="XLXN_279(3:0)" />
        <signal name="XLXN_280(3:0)" />
        <signal name="XLXN_282(3:0)" />
        <signal name="XLXN_283(3:0)" />
        <signal name="XLXN_284(3:0)" />
        <signal name="XLXN_285" />
        <signal name="XLXN_288(7:0)" />
        <signal name="XLXN_289(7:0)" />
        <signal name="XLXN_290(7:0)" />
        <signal name="XLXN_293(3:0)" />
        <signal name="XLXN_294(3:0)" />
        <signal name="XLXN_295(7:0)" />
        <signal name="XLXN_296(3:0)" />
        <signal name="XLXN_297(3:0)" />
        <signal name="XLXN_298(7:0)" />
        <signal name="XLXN_299(3:0)" />
        <signal name="XLXN_300(3:0)" />
        <signal name="XLXN_301(7:0)" />
        <signal name="XLXN_302(3:0)" />
        <signal name="XLXN_303(3:0)" />
        <signal name="XLXN_304(7:0)" />
        <signal name="XLXN_305(3:0)" />
        <signal name="XLXN_306(3:0)" />
        <signal name="R" />
        <signal name="G" />
        <signal name="B" />
        <signal name="VSYNC" />
        <signal name="HSYNC" />
        <port polarity="Input" name="p45" />
        <port polarity="Input" name="p123" />
        <port polarity="Input" name="p47" />
        <port polarity="Input" name="p48" />
        <port polarity="Input" name="is_pause_in" />
        <port polarity="Input" name="time_remain_in(7:0)" />
        <port polarity="Output" name="reset_count_out" />
        <port polarity="Output" name="game_state_out(1:0)" />
        <port polarity="Output" name="game_state_LED_out(1:0)" />
        <port polarity="Output" name="R" />
        <port polarity="Output" name="G" />
        <port polarity="Output" name="B" />
        <port polarity="Output" name="VSYNC" />
        <port polarity="Output" name="HSYNC" />
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
        <blockdef name="edetect">
            <timestamp>2024-11-6T8:22:4</timestamp>
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
        <blockdef name="lhod_game">
            <timestamp>2024-11-7T13:33:29</timestamp>
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
        <blockdef name="VGA_Display">
            <timestamp>2024-11-7T15:35:33</timestamp>
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
        <block symbolname="edetect" name="XLXI_38">
            <blockpin signalname="XLXN_233" name="CEO" />
            <blockpin signalname="p123" name="CLK" />
            <blockpin signalname="p45" name="I" />
        </block>
        <block symbolname="buf" name="XLXI_42">
            <blockpin signalname="game_state(0)" name="I" />
            <blockpin signalname="game_state_out(0)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_43">
            <blockpin signalname="game_state(1)" name="I" />
            <blockpin signalname="game_state_out(1)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_49">
            <blockpin signalname="game_state_out(0)" name="I" />
            <blockpin signalname="game_state_LED_out(0)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_50">
            <blockpin signalname="game_state_out(1)" name="I" />
            <blockpin signalname="game_state_LED_out(1)" name="O" />
        </block>
        <block symbolname="lhod_game" name="XLXI_52">
            <blockpin signalname="p123" name="clk" />
            <blockpin signalname="p47" name="push_button1" />
            <blockpin signalname="p48" name="push_button2" />
            <blockpin signalname="XLXN_233" name="push_button4" />
            <blockpin signalname="is_pause_in" name="is_pause" />
            <blockpin signalname="time_remain_in(7:0)" name="time_remain(7:0)" />
            <blockpin signalname="reset_count_out" name="reset_count_output" />
            <blockpin signalname="game_state(1:0)" name="game_state_output(1:0)" />
            <blockpin signalname="XLXN_288(7:0)" name="lhod_per_turn_output(7:0)" />
            <blockpin signalname="XLXN_289(7:0)" name="lhod_select_output(7:0)" />
            <blockpin signalname="XLXN_290(7:0)" name="lhod_remain_output(7:0)" />
        </block>
        <block symbolname="VGA_Display" name="XLXI_54">
            <blockpin signalname="p123" name="clk" />
            <blockpin signalname="is_pause_in" name="is_pause" />
            <blockpin signalname="game_state(1:0)" name="game_state(1:0)" />
            <blockpin signalname="XLXN_283(3:0)" name="time_remain_tens(3:0)" />
            <blockpin signalname="XLXN_282(3:0)" name="time_remain_ones(3:0)" />
            <blockpin signalname="XLXN_279(3:0)" name="lhod_per_turn_tens(3:0)" />
            <blockpin signalname="XLXN_280(3:0)" name="lhod_per_turn_ones(3:0)" />
            <blockpin signalname="XLXN_277(3:0)" name="lhod_select_tens(3:0)" />
            <blockpin signalname="XLXN_278(3:0)" name="lhod_select_ones(3:0)" />
            <blockpin signalname="XLXN_275(3:0)" name="lhod_remain_tens(3:0)" />
            <blockpin signalname="XLXN_276(3:0)" name="lhod_remain_ones(3:0)" />
            <blockpin signalname="R" name="R" />
            <blockpin signalname="G" name="G" />
            <blockpin signalname="B" name="B" />
            <blockpin signalname="HSYNC" name="HSYNC" />
            <blockpin signalname="VSYNC" name="VSYNC" />
        </block>
        <block symbolname="split8x4x4" name="XLXI_55">
            <blockpin signalname="XLXN_283(3:0)" name="H(3:0)" />
            <blockpin signalname="time_remain_in(7:0)" name="I(7:0)" />
            <blockpin signalname="XLXN_282(3:0)" name="L(3:0)" />
        </block>
        <block symbolname="split8x4x4" name="XLXI_56">
            <blockpin signalname="XLXN_279(3:0)" name="H(3:0)" />
            <blockpin signalname="XLXN_288(7:0)" name="I(7:0)" />
            <blockpin signalname="XLXN_280(3:0)" name="L(3:0)" />
        </block>
        <block symbolname="split8x4x4" name="XLXI_57">
            <blockpin signalname="XLXN_277(3:0)" name="H(3:0)" />
            <blockpin signalname="XLXN_289(7:0)" name="I(7:0)" />
            <blockpin signalname="XLXN_278(3:0)" name="L(3:0)" />
        </block>
        <block symbolname="split8x4x4" name="XLXI_58">
            <blockpin signalname="XLXN_275(3:0)" name="H(3:0)" />
            <blockpin signalname="XLXN_290(7:0)" name="I(7:0)" />
            <blockpin signalname="XLXN_276(3:0)" name="L(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="p45">
            <wire x2="464" y1="864" y2="864" x1="256" />
        </branch>
        <branch name="p123">
            <wire x2="400" y1="672" y2="672" x1="272" />
            <wire x2="400" y1="672" y2="928" x1="400" />
            <wire x2="464" y1="928" y2="928" x1="400" />
            <wire x2="928" y1="672" y2="672" x1="400" />
            <wire x2="2560" y1="528" y2="528" x1="400" />
            <wire x2="400" y1="528" y2="672" x1="400" />
        </branch>
        <iomarker fontsize="28" x="272" y="672" name="p123" orien="R180" />
        <branch name="p47">
            <wire x2="928" y1="736" y2="736" x1="272" />
        </branch>
        <branch name="p48">
            <wire x2="928" y1="800" y2="800" x1="256" />
        </branch>
        <instance x="464" y="960" name="XLXI_38" orien="R0">
        </instance>
        <iomarker fontsize="28" x="256" y="864" name="p45" orien="R180" />
        <iomarker fontsize="28" x="272" y="736" name="p47" orien="R180" />
        <iomarker fontsize="28" x="256" y="800" name="p48" orien="R180" />
        <branch name="XLXN_233">
            <wire x2="928" y1="864" y2="864" x1="848" />
        </branch>
        <branch name="is_pause_in">
            <wire x2="848" y1="1312" y2="1312" x1="272" />
            <wire x2="848" y1="928" y2="1312" x1="848" />
            <wire x2="928" y1="928" y2="928" x1="848" />
        </branch>
        <branch name="time_remain_in(7:0)">
            <wire x2="896" y1="1360" y2="1360" x1="272" />
            <wire x2="896" y1="992" y2="1360" x1="896" />
            <wire x2="928" y1="992" y2="992" x1="896" />
        </branch>
        <branch name="game_state(1:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1584" y="752" type="branch" />
            <wire x2="1584" y1="752" y2="752" x1="1504" />
        </branch>
        <branch name="game_state(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1600" y="1280" type="branch" />
            <wire x2="1904" y1="1280" y2="1280" x1="1600" />
        </branch>
        <instance x="1904" y="1312" name="XLXI_42" orien="R0" />
        <instance x="1904" y="1376" name="XLXI_43" orien="R0" />
        <branch name="game_state(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1600" y="1344" type="branch" />
            <wire x2="1904" y1="1344" y2="1344" x1="1600" />
        </branch>
        <branch name="game_state_out(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="1280" type="branch" />
            <wire x2="2240" y1="1280" y2="1280" x1="2128" />
            <wire x2="2384" y1="1280" y2="1280" x1="2240" />
        </branch>
        <branch name="game_state_out(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="1344" type="branch" />
            <wire x2="2240" y1="1344" y2="1344" x1="2128" />
            <wire x2="2384" y1="1344" y2="1344" x1="2240" />
        </branch>
        <branch name="game_state_out(1:0)">
            <wire x2="2480" y1="1472" y2="1472" x1="2256" />
        </branch>
        <iomarker fontsize="28" x="2480" y="1472" name="game_state_out(1:0)" orien="R0" />
        <iomarker fontsize="28" x="2480" y="1616" name="reset_count_out" orien="R0" />
        <iomarker fontsize="28" x="272" y="1312" name="is_pause_in" orien="R180" />
        <iomarker fontsize="28" x="272" y="1360" name="time_remain_in(7:0)" orien="R180" />
        <branch name="reset_count_out">
            <wire x2="1696" y1="672" y2="672" x1="1504" />
            <wire x2="1696" y1="672" y2="1616" x1="1696" />
            <wire x2="2480" y1="1616" y2="1616" x1="1696" />
        </branch>
        <instance x="2384" y="1312" name="XLXI_49" orien="R0" />
        <instance x="2384" y="1376" name="XLXI_50" orien="R0" />
        <branch name="game_state_LED_out(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2640" y="1280" type="branch" />
            <wire x2="2640" y1="1280" y2="1280" x1="2608" />
        </branch>
        <branch name="game_state_LED_out(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2640" y="1344" type="branch" />
            <wire x2="2640" y1="1344" y2="1344" x1="2608" />
        </branch>
        <branch name="game_state_LED_out(1:0)">
            <wire x2="2480" y1="1536" y2="1536" x1="2256" />
        </branch>
        <iomarker fontsize="28" x="2480" y="1536" name="game_state_LED_out(1:0)" orien="R0" />
        <instance x="928" y="1024" name="XLXI_52" orien="R0">
        </instance>
        <instance x="2560" y="1200" name="XLXI_54" orien="R0">
        </instance>
        <branch name="XLXN_275(3:0)">
            <wire x2="2224" y1="1168" y2="1168" x1="2160" />
            <wire x2="2224" y1="1120" y2="1168" x1="2224" />
            <wire x2="2384" y1="1120" y2="1120" x1="2224" />
            <wire x2="2384" y1="1104" y2="1120" x1="2384" />
            <wire x2="2560" y1="1104" y2="1104" x1="2384" />
        </branch>
        <branch name="XLXN_276(3:0)">
            <wire x2="2352" y1="1104" y2="1104" x1="2160" />
            <wire x2="2352" y1="1104" y2="1168" x1="2352" />
            <wire x2="2560" y1="1168" y2="1168" x1="2352" />
        </branch>
        <branch name="XLXN_277(3:0)">
            <wire x2="2224" y1="1040" y2="1040" x1="2160" />
            <wire x2="2224" y1="1008" y2="1040" x1="2224" />
            <wire x2="2384" y1="1008" y2="1008" x1="2224" />
            <wire x2="2384" y1="976" y2="1008" x1="2384" />
            <wire x2="2560" y1="976" y2="976" x1="2384" />
        </branch>
        <branch name="XLXN_278(3:0)">
            <wire x2="2352" y1="976" y2="976" x1="2160" />
            <wire x2="2352" y1="976" y2="1040" x1="2352" />
            <wire x2="2560" y1="1040" y2="1040" x1="2352" />
        </branch>
        <branch name="XLXN_279(3:0)">
            <wire x2="2224" y1="912" y2="912" x1="2160" />
            <wire x2="2224" y1="864" y2="912" x1="2224" />
            <wire x2="2368" y1="864" y2="864" x1="2224" />
            <wire x2="2368" y1="848" y2="864" x1="2368" />
            <wire x2="2560" y1="848" y2="848" x1="2368" />
        </branch>
        <branch name="XLXN_280(3:0)">
            <wire x2="2352" y1="848" y2="848" x1="2160" />
            <wire x2="2352" y1="848" y2="912" x1="2352" />
            <wire x2="2560" y1="912" y2="912" x1="2352" />
        </branch>
        <branch name="XLXN_282(3:0)">
            <wire x2="2352" y1="720" y2="720" x1="2160" />
            <wire x2="2352" y1="720" y2="784" x1="2352" />
            <wire x2="2560" y1="784" y2="784" x1="2352" />
        </branch>
        <branch name="XLXN_283(3:0)">
            <wire x2="2208" y1="784" y2="784" x1="2160" />
            <wire x2="2208" y1="752" y2="784" x1="2208" />
            <wire x2="2544" y1="752" y2="752" x1="2208" />
            <wire x2="2560" y1="720" y2="720" x1="2544" />
            <wire x2="2544" y1="720" y2="752" x1="2544" />
        </branch>
        <branch name="is_pause_in">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2480" y="592" type="branch" />
            <wire x2="2560" y1="592" y2="592" x1="2480" />
        </branch>
        <branch name="game_state(1:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2464" y="656" type="branch" />
            <wire x2="2560" y1="656" y2="656" x1="2464" />
        </branch>
        <branch name="XLXN_288(7:0)">
            <wire x2="1648" y1="832" y2="832" x1="1504" />
            <wire x2="1648" y1="832" y2="848" x1="1648" />
            <wire x2="1776" y1="848" y2="848" x1="1648" />
        </branch>
        <branch name="XLXN_289(7:0)">
            <wire x2="1648" y1="912" y2="912" x1="1504" />
            <wire x2="1648" y1="912" y2="976" x1="1648" />
            <wire x2="1776" y1="976" y2="976" x1="1648" />
        </branch>
        <branch name="XLXN_290(7:0)">
            <wire x2="1648" y1="992" y2="992" x1="1504" />
            <wire x2="1648" y1="992" y2="1104" x1="1648" />
            <wire x2="1776" y1="1104" y2="1104" x1="1648" />
        </branch>
        <branch name="time_remain_in(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="624" type="branch" />
            <wire x2="1648" y1="624" y2="624" x1="1632" />
            <wire x2="1728" y1="624" y2="624" x1="1648" />
            <wire x2="1728" y1="624" y2="720" x1="1728" />
            <wire x2="1776" y1="720" y2="720" x1="1728" />
        </branch>
        <instance x="1776" y="816" name="XLXI_55" orien="R0">
        </instance>
        <instance x="1776" y="944" name="XLXI_56" orien="R0">
        </instance>
        <instance x="1776" y="1072" name="XLXI_57" orien="R0">
        </instance>
        <instance x="1776" y="1200" name="XLXI_58" orien="R0">
        </instance>
        <branch name="R">
            <wire x2="3072" y1="528" y2="528" x1="3040" />
        </branch>
        <iomarker fontsize="28" x="3072" y="528" name="R" orien="R0" />
        <branch name="G">
            <wire x2="3072" y1="688" y2="688" x1="3040" />
        </branch>
        <iomarker fontsize="28" x="3072" y="688" name="G" orien="R0" />
        <branch name="B">
            <wire x2="3088" y1="848" y2="848" x1="3040" />
        </branch>
        <branch name="VSYNC">
            <wire x2="3072" y1="1168" y2="1168" x1="3040" />
        </branch>
        <branch name="HSYNC">
            <wire x2="3072" y1="1008" y2="1008" x1="3040" />
        </branch>
        <iomarker fontsize="28" x="3088" y="848" name="B" orien="R0" />
        <iomarker fontsize="28" x="3072" y="1008" name="HSYNC" orien="R0" />
        <iomarker fontsize="28" x="3072" y="1168" name="VSYNC" orien="R0" />
    </sheet>
</drawing>