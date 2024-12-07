library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL; -- Use the standard numeric library

entity time_counter is
    Port (
        -- self
        clk     : in  STD_LOGIC;        
        push_button3 : in STD_LOGIC;
        
        -- from fpga1
        reset_count   : in  STD_LOGIC;
        game_state : in STD_LOGIC_VECTOR (1 downto 0);
        
        -- to fpga1
        is_pause_output    : out STD_LOGIC;
        time_remain_output : out STD_LOGIC_VECTOR (7 downto 0) -- lhod output
    );
end time_counter;

architecture Behavioral of time_counter is
    signal time_select : integer range 0 to 60 := 3;
    signal time_counter : integer range 0 to 60 := 3;

    signal mode     : STD_LOGIC := '0';     -- 0=play 1=pause

    signal counter0 : INTEGER := 0;
    signal counter1 : INTEGER := 0;
    constant div0   : INTEGER := 2500000;       -- state 0
    constant div1   : INTEGER := 20000000;      -- state 1

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
    begin
        
        if rising_edge(clk) then                   -- Check if the enable signal is active
            -- 
            if game_state = "01" then -- -> use signal
                if push_button3 = '1' then
                    if counter0 = div0 then
                        counter0 <= 0;
                        if time_select = 60 then
                            time_select <= 3;
                            time_counter <= 3;
                        else
                            time_select <= time_select + 1;
                            time_counter <= time_counter + 1;
                        end if;
                    else
                        counter0 <= counter0 + 1;
                    end if;
                else
                    counter0 <= 0;
                end if;
            

            elsif game_state = "10" then
                
                -- change mode play(0) or pause(1)
                if push_button3 = '1' then
                    if mode = '0' then
                        mode <= '1';
                    else
                        mode <= '0';
                    end if;
                end if;
                
                -- play
                if mode = '0' then
                    if counter1 = div1 then
                        counter1 <= 0;
                        if time_counter > 1 then
                            time_counter <= time_counter - 1;
                        else
                            time_counter <= 0;
                        end if;
                    else
                        counter1 <= counter1 + 1;
                    end if;
                end if;

                -- reset timer
                if reset_count = '1' then
                    counter0 <= 0;
                    counter1 <= 0;
                    time_counter <= time_select;
                end if;
            elsif game_state = "11" then
                time_select <= 3;
                time_counter <= 3;
                mode     <= '0';     -- 0=play 1=pause
                counter0 <= 0;
                counter1 <= 0;

            end if;


        end if;
        
    end process;

    is_pause_output <= mode;
    time_remain_output <= int_to_bcd(time_counter);
end Behavioral;
