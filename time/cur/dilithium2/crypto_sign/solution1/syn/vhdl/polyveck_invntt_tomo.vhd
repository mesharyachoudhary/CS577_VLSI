-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity polyveck_invntt_tomo is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    v_vec_coeffs_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    v_vec_coeffs_ce0 : OUT STD_LOGIC;
    v_vec_coeffs_we0 : OUT STD_LOGIC;
    v_vec_coeffs_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    v_vec_coeffs_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    v_vec_coeffs_address1 : OUT STD_LOGIC_VECTOR (9 downto 0);
    v_vec_coeffs_ce1 : OUT STD_LOGIC;
    v_vec_coeffs_q1 : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of polyveck_invntt_tomo is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal i_fu_44_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal i_reg_53 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal grp_invntt_tomont_fu_28_ap_start : STD_LOGIC;
    signal grp_invntt_tomont_fu_28_ap_done : STD_LOGIC;
    signal grp_invntt_tomont_fu_28_ap_idle : STD_LOGIC;
    signal grp_invntt_tomont_fu_28_ap_ready : STD_LOGIC;
    signal grp_invntt_tomont_fu_28_a_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_invntt_tomont_fu_28_a_ce0 : STD_LOGIC;
    signal grp_invntt_tomont_fu_28_a_we0 : STD_LOGIC;
    signal grp_invntt_tomont_fu_28_a_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_invntt_tomont_fu_28_a_address1 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_invntt_tomont_fu_28_a_ce1 : STD_LOGIC;
    signal i_0_reg_16 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal grp_invntt_tomont_fu_28_ap_start_reg : STD_LOGIC := '0';
    signal icmp_ln300_fu_38_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);

    component invntt_tomont IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        a_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
        a_ce0 : OUT STD_LOGIC;
        a_we0 : OUT STD_LOGIC;
        a_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        a_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
        a_address1 : OUT STD_LOGIC_VECTOR (9 downto 0);
        a_ce1 : OUT STD_LOGIC;
        a_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
        a_offset : IN STD_LOGIC_VECTOR (2 downto 0) );
    end component;



begin
    grp_invntt_tomont_fu_28 : component invntt_tomont
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_invntt_tomont_fu_28_ap_start,
        ap_done => grp_invntt_tomont_fu_28_ap_done,
        ap_idle => grp_invntt_tomont_fu_28_ap_idle,
        ap_ready => grp_invntt_tomont_fu_28_ap_ready,
        a_address0 => grp_invntt_tomont_fu_28_a_address0,
        a_ce0 => grp_invntt_tomont_fu_28_a_ce0,
        a_we0 => grp_invntt_tomont_fu_28_a_we0,
        a_d0 => grp_invntt_tomont_fu_28_a_d0,
        a_q0 => v_vec_coeffs_q0,
        a_address1 => grp_invntt_tomont_fu_28_a_address1,
        a_ce1 => grp_invntt_tomont_fu_28_a_ce1,
        a_q1 => v_vec_coeffs_q1,
        a_offset => i_0_reg_16);





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


    grp_invntt_tomont_fu_28_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_invntt_tomont_fu_28_ap_start_reg <= ap_const_logic_0;
            else
                if (((icmp_ln300_fu_38_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    grp_invntt_tomont_fu_28_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_invntt_tomont_fu_28_ap_ready = ap_const_logic_1)) then 
                    grp_invntt_tomont_fu_28_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_0_reg_16_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((grp_invntt_tomont_fu_28_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                i_0_reg_16 <= i_reg_53;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_0_reg_16 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_reg_53 <= i_fu_44_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, grp_invntt_tomont_fu_28_ap_done, ap_CS_fsm_state3, icmp_ln300_fu_38_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln300_fu_38_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((grp_invntt_tomont_fu_28_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln300_fu_38_p2)
    begin
        if ((((icmp_ln300_fu_38_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln300_fu_38_p2)
    begin
        if (((icmp_ln300_fu_38_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    grp_invntt_tomont_fu_28_ap_start <= grp_invntt_tomont_fu_28_ap_start_reg;
    i_fu_44_p2 <= std_logic_vector(unsigned(i_0_reg_16) + unsigned(ap_const_lv3_1));
    icmp_ln300_fu_38_p2 <= "1" when (i_0_reg_16 = ap_const_lv3_4) else "0";
    v_vec_coeffs_address0 <= grp_invntt_tomont_fu_28_a_address0;
    v_vec_coeffs_address1 <= grp_invntt_tomont_fu_28_a_address1;
    v_vec_coeffs_ce0 <= grp_invntt_tomont_fu_28_a_ce0;
    v_vec_coeffs_ce1 <= grp_invntt_tomont_fu_28_a_ce1;
    v_vec_coeffs_d0 <= grp_invntt_tomont_fu_28_a_d0;
    v_vec_coeffs_we0 <= grp_invntt_tomont_fu_28_a_we0;
end behav;
