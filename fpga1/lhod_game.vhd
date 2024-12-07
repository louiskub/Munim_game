library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity lhod_game is
    Port (
        clk : in STD_LOGIC;                 -- Clock input
        push_button1 : in STD_LOGIC;        -- Push Button 1
        push_button2 : in STD_LOGIC;        -- Push Button 2
        push_button4 : in STD_LOGIC;        -- Push Button 4

        -- from fpga2
        time_remain  : in STD_LOGIC_VECTOR (7 downto 0);         -- Time remaining
        is_pause     : in STD_LOGIC;

        -- to fpga1
        reset_count_output: out  STD_LOGIC;
        game_state_output : out STD_LOGIC_VECTOR (1 downto 0);    -- Game State signal

        -- state = 0
        lhod_per_turn_output : out STD_LOGIC_VECTOR (7 downto 0); -- max lhod per turn
        -- state = 1
        lhod_select_output : out STD_LOGIC_VECTOR (7 downto 0);
        -- all state
        lhod_remain_output : out STD_LOGIC_VECTOR (7 downto 0) -- lhod output

    );
end lhod_game;

architecture Behavioral of lhod_game is
    -- Internal signals
    -- state = 0
    signal lhod_per_turn : INTEGER range 2 to 20 := 2;
    -- state = 1
    signal lhod_select : INTEGER := 1;
    -- all state
    signal lhod_remain : INTEGER := 5;
        
    signal game_state : INTEGER range 0 to 3 := 0;

    -- mod 1M
    signal counter1 : INTEGER := 0;
    signal counter2 : INTEGER := 0;
    constant div   : INTEGER := 1500000;

    -- Function to convert integer to BCD
    function int_to_bcd(value : INTEGER) return STD_LOGIC_VECTOR is
        variable bcd : STD_LOGIC_VECTOR(7 downto 0);
        variable temp : INTEGER := value;
    begin
        bcd(7 downto 4) := std_logic_vector(to_unsigned(temp / 10, 4));
        bcd(3 downto 0) := std_logic_vector(to_unsigned(temp mod 10, 4));
        return bcd;
    end function;

begin
    process(clk)
        variable lhod_remain_var : INTEGER := 5;
        variable lhod_select_var : INTEGER := 1;
    begin
        if rising_edge(clk) then
            -- START GAME MENU
            if game_state = 0 then
                -- Button 4: Start game
                if push_button4 = '1' then
                    game_state <= 1;
                end if;

            -- Idle
            elsif game_state = 1 then -- -> use signal
                -- Button 1: Set number of lhod -> use var
                if push_button1 = '1' then
                    if counter1 = div then
                        counter1 <= 0;
                        if lhod_remain_var = 99 then
                            if lhod_per_turn > 5 then
                                lhod_remain_var := lhod_per_turn;
                            else
                                lhod_remain_var := 5;
                            end if;
                        else
                            lhod_remain_var := lhod_remain_var + 1;
                        end if;
                    else
                        counter1 <= counter1 + 1;
                    end if;
                end if;

                -- Button 2: Set max lhod per turn 
                if push_button2 = '1' then
                    if counter2 = div then
                        counter2 <= 0;
                        if lhod_per_turn = 20 then
                            lhod_per_turn <= 2;
                        elsif lhod_per_turn < lhod_remain_var then
                            lhod_per_turn <= lhod_per_turn + 1;
                        end if;
                    else
                        counter2 <= counter2 + 1;
                    end if;
                end if;

                -- Button 4: Start game
                if push_button4 = '1' then
                    game_state <= 2;
                end if;

            -- Play Game
            elsif game_state = 2 then
                if is_pause = '0' then
                    -- if time out
                    if time_remain = "00000000" then
                        game_state <= 3;
                        reset_count_output <= '0';
                    -- Button 4: select lhod -> decrese remain lhod and end turn
                    elsif push_button4 = '1' then
                        if lhod_remain_var > lhod_select_var then
                            lhod_remain_var := lhod_remain_var - lhod_select_var;
                            lhod_select_var := 1;
                            reset_count_output <= '1';
                        else
                            game_state <= 3;
                        end if;
                    -- Button 1: increase lhod per turn
                    elsif push_button1 = '1' then
                        reset_count_output <= '0';
                        if counter1 = div then
                            counter1 <= 0;
                            if lhod_select_var < lhod_per_turn and lhod_select_var < lhod_remain_var then
                                lhod_select_var := lhod_select_var + 1;
                            end if;
                        else
                            counter1 <= counter1 + 1;
                        end if;
                    
                    -- Button 2: decrease lhod per turn
                    elsif push_button2 = '1' then
                        reset_count_output <= '0';
                        if counter2 = div then
                            counter2 <= 0;
                            if lhod_select_var > 1 then
                                lhod_select_var := lhod_select_var - 1;
                            end if;
                        else
                            counter2 <= counter2 + 1;
                        end if;
                    else 
                        reset_count_output <= '0';
                    end if;
                end if;

            -- End game laew
            elsif game_state = 3 then
                -- Button 4: back to home page
                if push_button4 = '1' then
                    lhod_remain_var := 5;
                    lhod_select_var := 1;
                    lhod_per_turn <= 2;
                    lhod_select <= 1;
                    lhod_remain <= 5;
                    game_state <= 1;
                    reset_count_output <= '0';
                    counter1 <= 0;
                    counter2 <= 0;
                end if;
            end if;   

        end if;
        lhod_remain <= lhod_remain_var;
        lhod_select <= lhod_select_var;
    end process;

    -- Output assignment
    -- state = 0
    lhod_per_turn_output <= int_to_bcd(lhod_per_turn); 
    -- state = 1
    lhod_select_output <= int_to_bcd(lhod_select); 
    -- all state
    lhod_remain_output <= int_to_bcd(lhod_remain);
    
    game_state_output <= std_logic_vector(to_unsigned(game_state, 2));
end Behavioral;
