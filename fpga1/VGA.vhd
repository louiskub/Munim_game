library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity VGA_Display is
    Port ( clk : in STD_LOGIC;
			  is_pause     : in STD_LOGIC;
			  game_state : in STD_LOGIC_VECTOR (1 downto 0);
			  
			  time_remain_tens  : in STD_LOGIC_VECTOR (3 downto 0);
			  time_remain_ones  : in STD_LOGIC_VECTOR (3 downto 0);
			  
			  lhod_per_turn_tens : in STD_LOGIC_VECTOR (3 downto 0); -- max lhod per turn
			  lhod_per_turn_ones : in STD_LOGIC_VECTOR (3 downto 0); -- max lhod per turn

           lhod_select_tens : in STD_LOGIC_VECTOR (3 downto 0);
			  lhod_select_ones : in STD_LOGIC_VECTOR (3 downto 0);
			  
           lhod_remain_tens : in STD_LOGIC_VECTOR (3 downto 0); -- lhod output	
           lhod_remain_ones : in STD_LOGIC_VECTOR (3 downto 0); -- lhod output	
			  
           R : out STD_LOGIC;
           G : out STD_LOGIC;
           B : out STD_LOGIC;
           HSYNC : out STD_LOGIC;
           VSYNC : out STD_LOGIC);
			  
end VGA_Display;

architecture Behavioral of VGA_Display is

    -- ??????????????????? VGA
	 constant SCALE : natural := 3;
    constant X_VISIBLE_AREA : natural := 508;
    constant X_FRONT_PORCH : natural := 13;
    constant X_SYNC_PULSE : natural := 76;
    constant X_BACK_PORCH : natural := 38;
    constant X_WHOLE_LINE : natural := 635;

    constant Y_VISIBLE_AREA : natural := 480;
    constant Y_FRONT_PORCH : natural := 10;
    constant Y_SYNC_PULSE : natural := 2;
    constant Y_BACK_PORCH : natural := 33;
    constant Y_WHOLE_FRAME : natural := 525;

    -- ????????????????????
    constant BAR_WIDTH : natural := 5;  -- ????????????????
    constant BAR_HEIGHT : natural := 100; -- ??????????????
    constant BAR_SPACING : natural := 5; -- ???????????????????????????

    signal x : natural range 0 to 635 := 0;
    signal y : natural range 0 to 525 := 0;
	 signal current_number : integer range 0 to 99 := 99;
    signal tens_digit : integer range 0 to 9;  -- ???????????????????????
	 signal ones_digit : integer range 0 to 9;  -- ?????????????????????????
	 signal time_remain_tens_sig  : integer;
	 signal time_remain_ones_sig  : integer;
	 signal lhod_per_turn_tens_sig : integer;
	 signal lhod_per_turn_ones_sig : integer;
    signal lhod_select_tens_sig : integer;
	 signal lhod_select_ones_sig : integer;
    signal lhod_remain_tens_sig : integer;	
	 signal lhod_remain_ones_sig : integer;
	 
	 
	 function bcd_to_int(bcd : STD_LOGIC_VECTOR(3 downto 0)) return INTEGER is
			 variable integer_value : INTEGER := 0;
		begin
			 -- ???? 4 ????????? (?????????)
			 integer_value := to_integer(unsigned(bcd(3 downto 0)));

			 return integer_value;
		end function;
	 
    -- Bitmap ????????????????? "GAME1"
    type char_bitmap is array (0 to 6, 0 to 4) of std_logic;  -- 5x7 bitmap for each character
	 
	 constant DIGIT_0 : char_bitmap := (
        ('1', '1', '1', '1', '1'),
        ('1', '0', '0', '0', '1'),
        ('1', '0', '0', '0', '1'),
        ('1', '0', '0', '0', '1'),
        ('1', '0', '0', '0', '1'),
        ('1', '0', '0', '0', '1'),
        ('1', '1', '1', '1', '1')
    );
    constant DIGIT_1 : char_bitmap := (
        ('0', '1', '1', '0', '0'),
        ('1', '1', '1', '0', '0'),
        ('0', '1', '1', '0', '0'),
        ('0', '1', '1', '0', '0'),
        ('0', '1', '1', '0', '0'),
        ('0', '1', '1', '0', '0'),
        ('1', '1', '1', '1', '1')
    );
	 
	 constant DIGIT_2 : char_bitmap := (
		 ('1', '1', '1', '1', '1'),
		 ('0', '0', '0', '0', '1'),
		 ('0', '0', '0', '1', '0'),
		 ('0', '1', '1', '0', '0'),
		 ('1', '0', '0', '0', '0'),
		 ('1', '0', '0', '0', '0'),
		 ('1', '1', '1', '1', '1')
	);
	
	
	constant DIGIT_3 : char_bitmap := (
		 ('1', '1', '1', '1', '1'),
		 ('0', '0', '0', '0', '1'),
		 ('0', '0', '0', '1', '0'),
		 ('0', '0', '1', '0', '0'),
		 ('0', '0', '0', '1', '0'),
		 ('0', '0', '0', '0', '1'),
		 ('1', '1', '1', '1', '1')
	);

	constant DIGIT_4 : char_bitmap := (
		 ('0', '0', '1', '0', '0'),
		 ('0', '1', '1', '0', '0'),
		 ('0', '1', '1', '0', '0'),
		 ('1', '1', '1', '1', '1'),
		 ('0', '0', '1', '0', '0'),
		 ('0', '0', '1', '0', '0'),
		 ('0', '0', '1', '0', '0')
	);
	
	constant DIGIT_4SMALL : char_bitmap := (
		 ('0', '0', '1', '0', '0'),
		 ('0', '1', '1', '0', '0'),
		 ('1', '0', '1', '0', '0'),
		 ('1', '1', '1', '1', '1'),
		 ('0', '0', '1', '0', '0'),
		 ('0', '0', '0', '0', '0'),
		 ('0', '0', '0', '0', '0')
	);

	constant DIGIT_5 : char_bitmap := (
		 ('1', '1', '1', '1', '1'),
		 ('1', '0', '0', '0', '0'),
		 ('1', '0', '0', '0', '0'),
		 ('1', '1', '1', '1', '1'),
		 ('0', '0', '0', '0', '1'),
		 ('0', '0', '0', '0', '1'),
		 ('1', '1', '1', '1', '1')
	);

	constant DIGIT_6 : char_bitmap := (
		 ('1', '1', '1', '1', '1'),
		 ('1', '0', '0', '0', '0'),
		 ('1', '1', '1', '1', '0'),
		 ('1', '0', '0', '0', '1'),
		 ('1', '0', '0', '0', '1'),
		 ('1', '0', '0', '0', '1'),
		 ('1', '1', '1', '1', '1')
	);

	constant DIGIT_7 : char_bitmap := (
		 ('1', '1', '1', '1', '1'),
		 ('0', '0', '0', '0', '1'),
		 ('0', '0', '0', '1', '0'),
		 ('0', '0', '1', '0', '0'),
		 ('0', '1', '0', '0', '0'),
		 ('0', '1', '0', '0', '0'),
		 ('0', '1', '0', '0', '0')
	);

	constant DIGIT_8 : char_bitmap := (
		 ('1', '1', '1', '1', '1'),
		 ('1', '0', '0', '0', '1'),
		 ('1', '0', '0', '0', '1'),
		 ('1', '1', '1', '1', '1'),
		 ('1', '0', '0', '0', '1'),
		 ('1', '0', '0', '0', '1'),
		 ('1', '1', '1', '1', '1')
	);

	constant DIGIT_9 : char_bitmap := (
		 ('1', '1', '1', '1', '1'),
		 ('1', '0', '0', '0', '1'),
		 ('1', '0', '0', '0', '1'),
		 ('1', '1', '1', '1', '1'),
		 ('0', '0', '0', '0', '1'),
		 ('0', '0', '0', '0', '1'),
		 ('1', '1', '1', '1', '1')
	);
	 

    constant G_BITMAP : char_bitmap := (
        ('0', '1', '1', '1', '0'),
        ('1', '0', '0', '0', '1'),
        ('1', '0', '1', '1', '1'),
        ('1', '0', '0', '0', '1'),
        ('0', '1', '1', '1', '0'),
        ('0', '0', '0', '0', '0'),
        ('0', '0', '0', '0', '0')
    );
	 
	 constant WARN_BITMAP : char_bitmap := (
        ('0', '1', '1', '1', '0'),
        ('0', '1', '1', '1', '0'),
        ('0', '1', '1', '1', '0'),
        ('0', '0', '0', '0', '0'),
        ('0', '1', '1', '1', '0'),
        ('0', '0', '0', '0', '0'),
        ('0', '0', '0', '0', '0')
    );
	 
	 constant C_BITMAP : char_bitmap := (
        ('1', '1', '1', '1', '1'),
        ('1', '0', '0', '0', '0'),
        ('1', '0', '0', '0', '0'),
        ('1', '0', '0', '0', '0'),
        ('1', '1', '1', '1', '1'),
        ('0', '0', '0', '0', '0'),
        ('0', '0', '0', '0', '0')
    );

    constant A_BITMAP : char_bitmap := (
        ('0', '1', '1', '1', '0'),
        ('1', '0', '0', '0', '1'),
        ('1', '1', '1', '1', '1'),
        ('1', '0', '0', '0', '1'),
        ('1', '0', '0', '0', '1'),
        ('0', '0', '0', '0', '0'),
        ('0', '0', '0', '0', '0')
    );
	 
	 constant L_BITMAP : char_bitmap := (
        ('1', '0', '0', '0', '0'),
        ('1', '0', '0', '0', '0'),
        ('1', '0', '0', '0', '0'),
        ('1', '0', '0', '0', '0'),
        ('1', '1', '1', '1', '1'),
        ('0', '0', '0', '0', '0'),
        ('0', '0', '0', '0', '0')
    );

    constant M_BITMAP : char_bitmap := (
        ('1', '0', '0', '0', '1'),
        ('1', '1', '0', '1', '1'),
        ('1', '0', '1', '0', '1'),
        ('1', '0', '0', '0', '1'),
        ('1', '0', '0', '0', '1'),
        ('0', '0', '0', '0', '0'),
        ('0', '0', '0', '0', '0')
    );

    constant E_BITMAP : char_bitmap := (
        ('1', '1', '1', '1', '1'),
        ('1', '0', '0', '0', '0'),
        ('1', '1', '1', '1', '0'),
        ('1', '0', '0', '0', '0'),
        ('1', '1', '1', '1', '1'),
        ('0', '0', '0', '0', '0'),
        ('0', '0', '0', '0', '0')
    );

	 constant I_BITMAP : char_bitmap := (
			 ('1', '1', '1', '1', '1'),
			 ('0', '0', '1', '0', '0'),
			 ('0', '0', '1', '0', '0'),
			 ('0', '0', '1', '0', '0'),
			 ('1', '1', '1', '1', '1'),
			 ('0', '0', '0', '0', '0'),
			 ('0', '0', '0', '0', '0')
		);

	 constant N_BITMAP : char_bitmap := (
			 ('1', '0', '0', '0', '1'),
			 ('1', '1', '0', '0', '1'),
			 ('1', '0', '1', '0', '1'),
			 ('1', '0', '0', '1', '1'),
			 ('1', '0', '0', '0', '1'),
			 ('0', '0', '0', '0', '0'),
			 ('0', '0', '0', '0', '0')
		);
		
	 constant U_BITMAP : char_bitmap := (
			 ('1', '0', '0', '0', '1'),
			 ('1', '0', '0', '0', '1'),
			 ('1', '0', '0', '0', '1'),
			 ('1', '0', '0', '0', '1'),
			 ('0', '1', '1', '1', '0'),
			 ('0', '0', '0', '0', '0'),
			 ('0', '0', '0', '0', '0')
		);
	constant SPACE_BITMAP : char_bitmap := (
		 ('0', '0', '0', '0', '0'),
		 ('0', '0', '0', '0', '0'),
		 ('0', '0', '0', '0', '0'),
		 ('0', '0', '0', '0', '0'),
		 ('0', '0', '0', '0', '0'),
		 ('0', '0', '0', '0', '0'),
		 ('0', '0', '0', '0', '0')
	);
	
	constant P_BITMAP : char_bitmap := (
        ('1', '1', '1', '1', '0'),
        ('1', '0', '0', '0', '1'),
        ('1', '1', '1', '1', '0'),
        ('1', '0', '0', '0', '0'),
        ('1', '0', '0', '0', '0'),
        ('0', '0', '0', '0', '0'),
        ('0', '0', '0', '0', '0')
    );

	constant R_BITMAP : char_bitmap := (
			  ('1', '1', '1', '1', '0'),
			  ('1', '0', '0', '0', '1'),
			  ('1', '1', '1', '1', '0'),
			  ('1', '0', '0', '1', '0'),
			  ('1', '0', '0', '0', '1'),
			  ('0', '0', '0', '0', '0'),
			  ('0', '0', '0', '0', '0')
		 );

	constant S_BITMAP : char_bitmap := (
			  ('0', '1', '1', '1', '1'),
			  ('1', '0', '0', '0', '0'),
			  ('0', '1', '1', '1', '0'),
			  ('0', '0', '0', '0', '1'),
			  ('1', '1', '1', '1', '0'),
			  ('0', '0', '0', '0', '0'),
			  ('0', '0', '0', '0', '0')
		 );
	 constant COLON_BITMAP : char_bitmap := (
			  ('0', '0', '0', '0', '0'),
			  ('0', '0', '1', '0', '0'),
			  ('0', '0', '0', '0', '0'),
			  ('0', '0', '0', '0', '0'),
			  ('0', '0', '1', '0', '0'),
			  ('0', '0', '0', '0', '0'),
			  ('0', '0', '0', '0', '0')
		 );

	constant B_BITMAP : char_bitmap := (
			  ('1', '1', '1', '1', '0'),
			  ('1', '0', '0', '0', '1'),
			  ('1', '1', '1', '1', '0'),
			  ('1', '0', '0', '0', '1'),
			  ('1', '1', '1', '1', '0'),
			  ('0', '0', '0', '0', '0'),
			  ('0', '0', '0', '0', '0')
		 );
		 
	constant V_BITMAP : char_bitmap := (
			  ('1', '0', '0', '0', '1'),
			  ('1', '0', '0', '0', '1'),
			  ('1', '0', '0', '0', '1'),
			  ('0', '1', '0', '1', '0'),
			  ('0', '0', '1', '0', '0'),
			  ('0', '0', '0', '0', '0'),
			  ('0', '0', '0', '0', '0')
		 );

	constant T_BITMAP : char_bitmap := (
			  ('1', '1', '1', '1', '1'),
			  ('0', '0', '1', '0', '0'),
			  ('0', '0', '1', '0', '0'),
			  ('0', '0', '1', '0', '0'),
			  ('0', '0', '1', '0', '0'),
			  ('0', '0', '0', '0', '0'),
			  ('0', '0', '0', '0', '0')
		 );

	constant O_BITMAP : char_bitmap := (
			  ('0', '1', '1', '1', '0'),
			  ('1', '0', '0', '0', '1'),
			  ('1', '0', '0', '0', '1'),
			  ('1', '0', '0', '0', '1'),
			  ('0', '1', '1', '1', '0'),
			  ('0', '0', '0', '0', '0'),
			  ('0', '0', '0', '0', '0')
		 );
	constant PAUSE_BITMAP : char_bitmap := (
			  ('1', '0', '0', '0', '1'),
			  ('1', '0', '0', '0', '1'),
			  ('1', '0', '0', '0', '1'),
			  ('1', '0', '0', '0', '1'),
			  ('1', '0', '0', '0', '1'),
			  ('1', '0', '0', '0', '1'),
			  ('1', '0', '0', '0', '1')
		 );
	constant HEART_BITMAP : char_bitmap := (
		 ('0', '1', '0', '1', '0'),
		 ('1', '1', '1', '1', '1'),
		 ('1', '1', '1', '1', '1'),
		 ('1', '1', '1', '1', '1'),
		 ('0', '1', '1', '1', '0'),
		 ('0', '0', '1', '0', '0'),
		 ('0', '0', '0', '0', '0')
				);
				
	 function draw_digit(digit: integer; y: integer; x: integer; char_y_offset: integer; char_x_offset: integer) return std_logic is
				begin
					 case digit is
						  when 9 => return DIGIT_9((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset);
						  when 8 => return DIGIT_8((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset);
						  when 7 => return DIGIT_7((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset);
						  when 6 => return DIGIT_6((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset);
						  when 5 => return DIGIT_5((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset);
						  when 4 => return DIGIT_4((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset);
						  when 3 => return DIGIT_3((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset);
						  when 2 => return DIGIT_2((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset);
						  when 1 => return DIGIT_1((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset);
						  when 0 => return DIGIT_0((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset);
						  when others => return '0';
					 end case;
				end function;
		 
begin

    -- ???????????????????? x ??? y ????????????
    vga_counter : process(clk)
		begin
  
			if rising_edge(clk) then
			time_remain_tens_sig  <= bcd_to_int(time_remain_tens);
			time_remain_ones_sig  <= bcd_to_int(time_remain_ones);
			lhod_per_turn_tens_sig <= bcd_to_int(lhod_per_turn_tens);
			lhod_per_turn_ones_sig <= bcd_to_int(lhod_per_turn_ones);
			lhod_select_tens_sig <= bcd_to_int(lhod_select_tens);
			lhod_select_ones_sig <= bcd_to_int(lhod_select_ones);
			lhod_remain_tens_sig <= bcd_to_int(lhod_remain_tens);
			lhod_remain_ones_sig <= bcd_to_int(lhod_remain_ones);
					
			
            if x = X_WHOLE_LINE then
                x <= 0;
                if y = Y_WHOLE_FRAME then
                    y <= 0;
                else
                    y <= y + 1;
                end if;
            else
                x <= x + 1;
            end if;
         end if;
		end process;
	 
    -- ???????????????????? "GAME1"
    display : process(clk, x, y)
        variable char_x_offset : integer;
		  variable char_y_offset : integer;
    begin
        if rising_edge(clk) then
            -- ??????????? HSYNC ??? VSYNC
            if x > X_VISIBLE_AREA + X_FRONT_PORCH and x <= X_VISIBLE_AREA + X_FRONT_PORCH + X_SYNC_PULSE then
                HSYNC <= '0';
            else
                HSYNC <= '1';
            end if;

            if y > Y_VISIBLE_AREA + Y_FRONT_PORCH and y <= Y_VISIBLE_AREA + Y_FRONT_PORCH + Y_SYNC_PULSE then
                VSYNC <= '0';
            else
                VSYNC <= '1';
            end if;
		
            R <= '0';
            G <= '0';
            B <= '0';
			
		if game_state = "00" then	
            -- ??????????? "GAME1" ?????????????????????
             char_x_offset := 45;
            if y >= 20 * SCALE and y < 27 * SCALE then
 
                if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE then
                    if M_BITMAP((y / SCALE) - 20, (x / SCALE) - char_x_offset) = '1' then
                        R <= '1';
                    end if;
                end if;

   
                char_x_offset := char_x_offset + 6;
                if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE then
                    if U_BITMAP((y / SCALE) - 20, (x / SCALE) - char_x_offset) = '1' then
                        R <= '1';
								G <= '1';
                    end if;
                end if;

                char_x_offset := char_x_offset + 6;
                if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE then
                    if N_BITMAP((y / SCALE) - 20, (x / SCALE) - char_x_offset) = '1' then
                        G <= '1';
                    end if;
                end if;

                char_x_offset := char_x_offset + 6;
                if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE then
                    if I_BITMAP((y / SCALE) - 20, (x / SCALE) - char_x_offset) = '1' then
                        B <= '1';
                    end if;
                end if;

                char_x_offset := char_x_offset + 6;
                if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE then
                    if M_BITMAP((y / SCALE) - 20, (x / SCALE) - char_x_offset) = '1' then
                        R <= '1';
								B <= '1';
                    end if;
                end if;
					 
					 char_x_offset := char_x_offset + 6;
                if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE then
                    if SPACE_BITMAP((y / SCALE) - 20, (x / SCALE) - char_x_offset) = '1' then
                        R <= '1';
                    end if;
                end if;
					 
					 char_x_offset := char_x_offset + 6;
                if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE then
                    if G_BITMAP((y / SCALE) - 20, (x / SCALE) - char_x_offset) = '1' then
                        R <= '1';
                    end if;
                end if;
					 
					 char_x_offset := char_x_offset + 6;
                if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE then
                    if A_BITMAP((y / SCALE) - 20, (x / SCALE) - char_x_offset) = '1' then
                        R <= '1';
                    end if;
                end if;
					 
					 char_x_offset := char_x_offset + 6;
                if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE then
                    if M_BITMAP((y / SCALE) - 20, (x / SCALE) - char_x_offset) = '1' then
                        R <= '1';
                    end if;
                end if;
					 
					 char_x_offset := char_x_offset + 6;
                if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE then
                    if E_BITMAP((y / SCALE) - 20, (x / SCALE) - char_x_offset) = '1' then
                        R <= '1';
                    end if;
                end if;
					 
					 char_x_offset := char_x_offset + 6;
                if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE then
                    if HEART_BITMAP((y / SCALE) - 20, (x / SCALE) - char_x_offset) = '1' then
                        R <= '1';
                    end if;
                end if;				 
				end if;
					 
		 char_x_offset := 25;		 	 
			if y >= 40 * SCALE and y < 47 * SCALE then				
					 char_x_offset := char_x_offset + 6;
                if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE then
                    if P_BITMAP((y / SCALE) - 40, (x / SCALE) - char_x_offset) = '1' then
                        R <= '1';
                    end if;
                end if;
					 
				
					 char_x_offset := char_x_offset + 6;
                if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE then
                    if R_BITMAP((y / SCALE) - 40, (x / SCALE) - char_x_offset) = '1' then
                        R <= '1';
                    end if;
                end if;
				 
					 char_x_offset := char_x_offset + 6;
						 if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE then
							  if E_BITMAP((y / SCALE) - 40, (x / SCALE) - char_x_offset) = '1' then
									R <= '1';
							  end if;
						 end if;
					
					char_x_offset := char_x_offset + 6;
                if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE then
                    if S_BITMAP((y / SCALE) - 40, (x / SCALE) - char_x_offset) = '1' then
                        R <= '1';
                    end if;
                end if;
				
				char_x_offset := char_x_offset + 6;
                if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE then
                    if S_BITMAP((y / SCALE) - 40, (x / SCALE) - char_x_offset) = '1' then
                        R <= '1';
                    end if;
                end if;
					 
				char_x_offset := char_x_offset + 6;
                if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE then
                    if SPACE_BITMAP((y / SCALE) - 40, (x / SCALE) - char_x_offset) = '1' then
                        R <= '1';
                    end if;
                end if;
				
				char_x_offset := char_x_offset + 6;
                if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE then
                    if B_BITMAP((y / SCALE) - 40, (x / SCALE) - char_x_offset) = '1' then
                        R <= '1'; B <= '1';
                    end if;
                end if;
				
				char_x_offset := char_x_offset + 6;
                if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE then
                    if DIGIT_4SMALL((y / SCALE) - 40, (x / SCALE) - char_x_offset) = '1' then
                        R <= '1'; B <= '1';
                    end if;
                end if;
				
				char_x_offset := char_x_offset + 6;
                if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE then
                    if SPACE_BITMAP((y / SCALE) - 40, (x / SCALE) - char_x_offset) = '1' then
                        R <= '1';
                    end if;
                end if;
					 
				
				char_x_offset := char_x_offset + 6;
                if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE then
                    if T_BITMAP((y / SCALE) - 40, (x / SCALE) - char_x_offset) = '1' then
                        R <= '1';
                    end if;
                end if;
				
				char_x_offset := char_x_offset + 6;
                if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE then
                    if O_BITMAP((y / SCALE) - 40, (x / SCALE) - char_x_offset) = '1' then
                        R <= '1';
                    end if;
                end if;
				
				char_x_offset := char_x_offset + 6;
                if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE then
                    if SPACE_BITMAP((y / SCALE) - 40, (x / SCALE) - char_x_offset) = '1' then
                        R <= '1';
                    end if;
                end if;
				
				char_x_offset := char_x_offset + 6;
                if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE then
                    if S_BITMAP((y / SCALE) - 40, (x / SCALE) - char_x_offset) = '1' then
                        R <= '1';
                    end if;
                end if;
				
				char_x_offset := char_x_offset + 6;
                if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE then
                    if T_BITMAP((y / SCALE) - 40, (x / SCALE) - char_x_offset) = '1' then
                        R <= '1';
                    end if;
                end if;
				
				char_x_offset := char_x_offset + 6;
                if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE then
                    if A_BITMAP((y / SCALE) - 40, (x / SCALE) - char_x_offset) = '1' then
                        R <= '1';
                    end if;
                end if;
				
				char_x_offset := char_x_offset + 6;
                if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE then
                    if R_BITMAP((y / SCALE) - 40, (x / SCALE) - char_x_offset) = '1' then
                        R <= '1';
                    end if;
                end if;
				
				char_x_offset := char_x_offset + 6;
                if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE then
                    if T_BITMAP((y / SCALE) - 40, (x / SCALE) - char_x_offset) = '1' then
                        R <= '1';
                    end if;
                end if;
				end if;
			end if;
		
		 if game_state = "01" then
		 
					
					char_x_offset := 50;
					char_y_offset := 15;
		 
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if M_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;

					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if U_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
							  G <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if N_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  G <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if I_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  B <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if M_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
							  B <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if SPACE_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if G_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if A_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if M_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if E_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
				
					
		 
					char_x_offset := 30;
					char_y_offset := 50;
					
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if A_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;

					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if L_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if L_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if SPACE_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if T_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if U_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if B_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if E_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if COLON_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1'; G <= '1';
						 end if;
					end if;
					
										
					char_x_offset := char_x_offset + 5;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if draw_digit(lhod_remain_tens_sig, y, x, char_y_offset, char_x_offset) = '1' then
							  R <= '1'; G <= '1'; 
						 end if;
					end if;

					-- Loop ??????????????? (ones digit)
					if x >= (char_x_offset + 7) * SCALE and x < (char_x_offset + 12) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if draw_digit(lhod_remain_ones_sig, y, x, char_y_offset, char_x_offset + 7) = '1' then
							   R <= '1'; G <= '1';
						 end if;
					end if;
		 
					
					char_x_offset := 30;  -- ??????????????????????????
					char_y_offset := char_y_offset + 20;   -- ??????????? Y ????????? (????????????????????????)
					
					
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if T_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;

					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if U_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if B_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if E_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if SPACE_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if P_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if E_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if R_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if SPACE_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if T_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if I_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if M_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if E_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if COLON_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1'; G <= '1';
						 end if;
					end if;
					
					
					char_x_offset := char_x_offset + 5;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if draw_digit(lhod_per_turn_tens_sig, y, x, char_y_offset, char_x_offset) = '1' then
							  R <= '1'; G <= '1';  -- ????????????????
						 end if;
					end if;

					-- Loop ??????????????? (ones digit)
					if x >= (char_x_offset + 7) * SCALE and x < (char_x_offset + 12) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if draw_digit(lhod_per_turn_ones_sig, y, x, char_y_offset, char_x_offset + 7) = '1' then
							  R <= '1'; G <= '1';
						 end if;
					end if;
				
				
				   char_x_offset := 30;  -- ??????????????????????????
					char_y_offset := char_y_offset + 20;   -- ??????????? Y ????????? (????????????????????????)
					
					
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if L_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;

					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if A_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if P_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if SPACE_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if T_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if I_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if M_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if E_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if COLON_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1'; G <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 5;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if draw_digit(time_remain_tens_sig, y, x, char_y_offset, char_x_offset) = '1' then
							  R <= '1'; G <= '1'; 
						 end if;
					end if;

					if x >= (char_x_offset + 7) * SCALE and x < (char_x_offset + 12) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if draw_digit(time_remain_ones_sig, y, x, char_y_offset, char_x_offset + 7) = '1' then
							  R <= '1'; G <= '1';
						 end if;
				end if;
		 end if;
		 
				if game_state = "10" then
						if is_pause = '1' then
						   char_x_offset := 80;
							char_y_offset := 110;
							if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
								 if PAUSE_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
									  R <= '1';
									  G <= '1';
									  B <= '1';
								 end if;
							end if;
						end if;
		
				   char_x_offset := 50;
					char_y_offset := 10;
					
					
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if M_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;

					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if U_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
							  G <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if N_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  G <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if I_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  B <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if M_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
							  B <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if SPACE_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if G_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if A_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if M_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if E_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
				
					
		 
					char_x_offset := 45;
					char_y_offset := 60;
					
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if R_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;

					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if E_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if M_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if A_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if I_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if N_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if I_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if N_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if G_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if COLON_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
							  G <= '1';
							  B <= '1';
						 end if;
					end if;
					
										
					char_x_offset := char_x_offset + 5;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if draw_digit(lhod_remain_tens_sig, y, x, char_y_offset, char_x_offset) = '1' then
							  R <= '1';
							  G <= '1';
						 end if;
					end if;

					if x >= (char_x_offset + 7) * SCALE and x < (char_x_offset + 12) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if draw_digit(lhod_remain_ones_sig, y, x, char_y_offset, char_x_offset + 7) = '1' then
							  R <= '1';  
							  G <= '1';
						 end if;
					end if;
		 				
					char_x_offset := 45;  
					char_y_offset := char_y_offset + 30; 
										
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if S_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;

					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if E_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if L_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if E_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if C_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if T_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if COLON_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
							  G <= '1';
							  B <= '1';
						 end if;
					end if;

					
					char_x_offset := char_x_offset + 5;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if draw_digit(lhod_select_tens_sig, y, x, char_y_offset, char_x_offset) = '1' then
							  R <= '1';  
							  G <= '1';
						 end if;
					end if;

					if x >= (char_x_offset + 7) * SCALE and x < (char_x_offset + 12) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if draw_digit(lhod_select_ones_sig, y, x, char_y_offset, char_x_offset + 7) = '1' then
							  R <= '1';
							  G <= '1';
						 end if;
					end if;
				
				
				   char_x_offset := 110; 
					char_y_offset := 30;   
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if T_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
							  G <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if I_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
							  G <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if M_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
							  G <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if E_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
							  G <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if COLON_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
							  G <= '1';
							  B <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 5;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if draw_digit(time_remain_tens_sig, y, x, char_y_offset, char_x_offset) = '1' then
							  R <= '1';
							  G <= '1'; 
						 end if;
					end if;

					if x >= (char_x_offset + 7) * SCALE and x < (char_x_offset + 12) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if draw_digit(time_remain_ones_sig, y, x, char_y_offset, char_x_offset + 7) = '1' then
							  R <= '1';
							  G <= '1';
						 end if;
				end if;
		 end if;
		 
		 if game_state = "11" then
		 
					char_x_offset := 55;
					char_y_offset := 70;
					
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if G_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;

					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if A_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1'; G <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if M_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  G <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if E_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  B <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if SPACE_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if O_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1'; B <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if V_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if E_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  G <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if R_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1'; G <= '1';
						 end if;
					end if;
					
					char_x_offset := char_x_offset + 6;
					if x >= char_x_offset * SCALE and x < (char_x_offset + 5) * SCALE and y >= char_y_offset * SCALE and y < (char_y_offset + 7) * SCALE then
						 if WARN_BITMAP((y / SCALE) - char_y_offset, (x / SCALE) - char_x_offset) = '1' then
							  R <= '1'; G <= '1'; B<= '1';
						 end if;
					end if;
					
			end if;
	end if;

    end process;
end Behavioral;