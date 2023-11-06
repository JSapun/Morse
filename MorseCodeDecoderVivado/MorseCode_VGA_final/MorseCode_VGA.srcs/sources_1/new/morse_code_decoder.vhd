--=============================================================================
--Library Declarations:
--=============================================================================
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.math_real.all;
library UNISIM;
use UNISIM.VComponents.all;

--=============================================================================
--Entity Declaration:
--=============================================================================
entity MorseCodeDecoder is
  -- button period
  generic (T : integer);
  Port ( 
    --timing:
    clk_port 		: in std_logic;

    --Morse Code Button Input:
    mc_button       : in std_logic;     -- (User)
    
    -- Switches
    game_en	      	: in std_logic;     -- (VGA)
    mux7seg_switch  : in std_logic;     -- (User)
    
    -- Input from memory block
    memory_ascii    : in std_logic_vector(7 downto 0);
    -- output to memory block
    char_reg_ext    : out std_logic_vector(9 downto 0) := "0000000000"; 
    
    -- Output to VGA
    new_data	    : out std_logic;     -- (VGA)
    done_sig	    : out std_logic;     -- (VGA)
    ascii_letter    : out std_logic_vector(7 downto 0); -- (VGA)
    
    -- Output to Mux7Seg
    mux7seg_out_one     : out std_logic_vector(3 downto 0);    -- (7seg)
    mux7seg_out_tenth     : out std_logic_vector(3 downto 0)    -- (7seg)
    );
end MorseCodeDecoder;


--=============================================================================
--Architecture Type:
--=============================================================================
architecture behavioral_architecture of MorseCodeDecoder is
--=============================================================================
--Signal Declarations: 
--=============================================================================
-- Finite State Machine
type state_type is (Idle, Processor, Char, Wait1, Letter, WaitMem1, WaitMem2, Send1, Wait2, Word, Send2, Wait3, Finish);	-- Setup states 
signal current_state, next_state : state_type := Idle;	-- Setup signals as state types

-- FSM & DataPath
signal new_data_sig, done_signal                                : std_logic := '0'; -- output signal signal
signal char_done, letter_done, word_done, phrase_done           : std_logic := '0'; -- DP --> FSM 
signal char_shift_en, load_space_en, compare_en, reset_char     : std_logic := '0'; -- FSM --> DP
signal start_en                                                 : std_logic := '1'; -- FSM --> DP

-- DataPath
signal high_en, low_en, first_press     : std_logic := '0';
signal high_counter                     : integer := 0;
signal low_counter                      : integer := 0;
signal prev_high_reg                    : integer := 0;
signal char_reg                         : std_logic_vector(9 downto 0) := "0000000000";
signal letter_reg                       : std_logic_vector(7 downto 0) := "00000000";

constant charT      : integer := (3*T)/2;
constant CspaceT    : integer := T/2;
constant LspaceT    : integer := 2*T;
constant WspaceT    : integer := 6*T;
constant PspaceT    : integer := 8*T;

--Seven Seg Logic
signal mux7seg_one, mux7seg_tenth   : std_logic_vector(3 downto 0) := "0000"; 

--=============================================================================
--Processes: 
--=============================================================================
begin
--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--Update the current state (Synchronous):
--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
StateUpdate: process(clk_port)
begin
    if rising_edge(clk_port) then
        current_state <= next_state;
    end if;
end process StateUpdate;

--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--Next State Logic (Asynchronous):
--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
NextStateLogic: process(current_state, game_en, mc_button, char_done, letter_done, word_done, phrase_done)
begin
    char_shift_en   <= '0';
    load_space_en   <= '0';
    compare_en      <= '0';
    start_en        <= '1';       -- 1 everywhere except IDLE, used for resetting registers
    new_data_sig    <= '0';
    done_signal     <= '0';
    reset_char      <= '0';
    next_state <= current_state;
        
    case current_state is
        when IDLE  =>
            start_en <= '0';
            if game_en = '1' then
                next_state <= Processor;
            end if;
        when Processor  =>
            if game_en = '0' then
                next_state <= IDLE;
            elsif char_done = '1' then
                next_state <= Char;
            end if;
        when Char  =>    
            char_shift_en <= '1';
            next_state <= Wait1;
        when Wait1     =>
            if letter_done = '1' then
                next_state <= Letter;
            elsif mc_button = '1' then
                next_state <= Processor;
            end if;
        when Letter  =>
            compare_en <= '1';
            next_state <= Send1;
        when Send1    =>
            reset_char <= '1';
            new_data_sig <= '1';
            next_state <= Wait2;
        when Wait2  =>
            if word_done = '1' then
                next_state <= Word;
            elsif mc_button = '1' then
                next_state <= Processor;
            end if;
        when Word => 
            load_space_en  <= '1';
            next_state <= Wait3;
        when Wait3 => 
            if phrase_done = '1' then
                next_state <= Finish;
            elsif mc_button = '1' then
                next_state <= Send2;
            end if;
       when Send2 => 
            new_data_sig <= '1';
            next_state <= Processor; 
       when Finish => 
            done_signal <= '1';
            next_state <= IDLE; 
       when others => next_state <= IDLE;                
    end case;
end process NextStateLogic;

--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--Output Logic (Asynchronous):
--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
OutputLogic: process(current_state, new_data_sig, done_signal)
begin
    -- Output Logic for FSM (2 VGA)
    new_data <= new_data_sig;
    done_sig <= done_signal;
end process OutputLogic;
				
--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--DataPath (Synchronous & Asychronous):
--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Datapath: process(clk_port, low_counter, mc_button, start_en, first_press, char_reg, letter_reg)
begin
    if rising_edge(clk_port) then
        -- High & Low Counter
        if high_en = '1' then
            high_counter <= high_counter + 1;
            low_counter <= 0;
            prev_high_reg <= high_counter;
        elsif low_en = '1' then
            high_counter <= 0;
            low_counter <= low_counter + 1;
        end if;
        
        -- Char T comparison and load into char_reg
        if char_shift_en = '1' then
            if prev_high_reg > charT then
                char_reg <= char_reg(7 downto 0) & "10";
            else
                char_reg <= char_reg(7 downto 0) & "01";
            end if;
        elsif reset_char = '1' then            -- Reset Char Reg
            char_reg <= "0000000000";
        end if;

        -- Memory comparison, input char_reg and return ascii character to letter_reg
        if compare_en = '1' then
            letter_reg <= memory_ascii;
        elsif load_space_en = '1' then
            letter_reg <= "00100000";
        end if;
        
        -- Input Signal Logic (to determine first button press)
        if mc_button = '1' then
            first_press <= '1';
        elsif done_signal = '1' then
            first_press <= '0';
        end if;
 
    end if;
 
    
    -- High & Low counter enable arithmatic   
    high_en <= '0';
    low_en <= '0';
    if (mc_button = '1') and (start_en = '1') then
        high_en <= '1';
    elsif (mc_button = '0') and (start_en = '1') and (first_press = '1') then
        low_en <= '1';
    end if;
    
    -- Low Space Signal Logic (signals sent to FSM)
    char_done <= '0';
    letter_done <= '0';
    word_done <= '0';
    phrase_done <= '0';
    if low_counter > PspaceT then
        phrase_done <= '1';
    elsif low_counter > WspaceT then
        word_done <= '1';
    elsif low_counter > LspaceT then
        letter_done <= '1';
    elsif low_counter > CspaceT then
        char_done <= '1';
    end if;
    
    -- Output Logic for datapath (1 memory, 1 VGA)
    char_reg_ext <= char_reg;
    ascii_letter <= letter_reg;
end process Datapath;

--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--Seven Seg Output (Synchronous & Asynchronous):
--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
mux7seg_output: process(clk_port, letter_reg, mux7seg_switch, mux7seg_one, mux7seg_tenth)
begin
    if rising_edge(clk_port) then
        -- 7 seg display custom ascii code
        mux7seg_one <= letter_reg(3 downto 0);
        mux7seg_tenth <= letter_reg(7 downto 4);
    end if;
    
    mux7seg_out_one <= "0000";
    mux7seg_out_tenth <= "0000";        
    if mux7seg_switch = '1' then
        mux7seg_out_one <= mux7seg_one;
        mux7seg_out_tenth <= mux7seg_tenth;
    end if;
end process mux7seg_output;

end behavioral_architecture;
