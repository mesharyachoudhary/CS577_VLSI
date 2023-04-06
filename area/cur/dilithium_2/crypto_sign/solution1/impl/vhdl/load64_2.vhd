-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity load64_2 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    x_address0 : OUT STD_LOGIC_VECTOR (12 downto 0);
    x_ce0 : OUT STD_LOGIC;
    x_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    x_offset : IN STD_LOGIC_VECTOR (63 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (63 downto 0) );
end;


architecture behav of load64_2 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal trunc_ln31_fu_65_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal trunc_ln31_reg_127 : STD_LOGIC_VECTOR (13 downto 0);
    signal i_fu_75_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal i_reg_135 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal icmp_ln30_fu_69_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_fu_121_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal i_0_reg_41 : STD_LOGIC_VECTOR (3 downto 0);
    signal r_0_reg_53 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln31_9_fu_90_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln31_fu_81_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal add_ln31_fu_85_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal trunc_ln31_3_fu_99_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal shl_ln_fu_103_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln31_1_fu_95_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln31_2_fu_111_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal shl_ln31_fu_115_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_return_preg : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_return_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_preg <= ap_const_lv64_0;
            else
                if (((icmp_ln30_fu_69_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_return_preg <= r_0_reg_53;
                end if; 
            end if;
        end if;
    end process;


    i_0_reg_41_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                i_0_reg_41 <= i_reg_135;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_0_reg_41 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;

    r_0_reg_53_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                r_0_reg_53 <= r_fu_121_p2;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                r_0_reg_53 <= ap_const_lv64_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_reg_135 <= i_fu_75_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                trunc_ln31_reg_127 <= trunc_ln31_fu_65_p1;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln30_fu_69_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln30_fu_69_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    add_ln31_fu_85_p2 <= std_logic_vector(unsigned(trunc_ln31_reg_127) + unsigned(zext_ln31_fu_81_p1));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln30_fu_69_p2)
    begin
        if ((((icmp_ln30_fu_69_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln30_fu_69_p2)
    begin
        if (((icmp_ln30_fu_69_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_return_assign_proc : process(ap_CS_fsm_state2, icmp_ln30_fu_69_p2, r_0_reg_53, ap_return_preg)
    begin
        if (((icmp_ln30_fu_69_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_return <= r_0_reg_53;
        else 
            ap_return <= ap_return_preg;
        end if; 
    end process;

    i_fu_75_p2 <= std_logic_vector(unsigned(i_0_reg_41) + unsigned(ap_const_lv4_1));
    icmp_ln30_fu_69_p2 <= "1" when (i_0_reg_41 = ap_const_lv4_8) else "0";
    r_fu_121_p2 <= (shl_ln31_fu_115_p2 or r_0_reg_53);
    shl_ln31_fu_115_p2 <= std_logic_vector(shift_left(unsigned(zext_ln31_1_fu_95_p1),to_integer(unsigned('0' & zext_ln31_2_fu_111_p1(31-1 downto 0)))));
    shl_ln_fu_103_p3 <= (trunc_ln31_3_fu_99_p1 & ap_const_lv3_0);
    trunc_ln31_3_fu_99_p1 <= i_0_reg_41(3 - 1 downto 0);
    trunc_ln31_fu_65_p1 <= x_offset(14 - 1 downto 0);
    x_address0 <= zext_ln31_9_fu_90_p1(13 - 1 downto 0);

    x_ce0_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            x_ce0 <= ap_const_logic_1;
        else 
            x_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln31_1_fu_95_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(x_q0),64));
    zext_ln31_2_fu_111_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(shl_ln_fu_103_p3),64));
    zext_ln31_9_fu_90_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln31_fu_85_p2),64));
    zext_ln31_fu_81_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_0_reg_41),14));
end behav;
