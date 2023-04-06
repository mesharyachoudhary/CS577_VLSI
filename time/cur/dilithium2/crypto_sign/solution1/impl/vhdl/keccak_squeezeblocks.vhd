-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity keccak_squeezeblocks is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    out_r_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    out_r_ce0 : OUT STD_LOGIC;
    out_r_we0 : OUT STD_LOGIC;
    out_r_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    s_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    s_ce0 : OUT STD_LOGIC;
    s_we0 : OUT STD_LOGIC;
    s_d0 : OUT STD_LOGIC_VECTOR (63 downto 0);
    s_q0 : IN STD_LOGIC_VECTOR (63 downto 0);
    s_address1 : OUT STD_LOGIC_VECTOR (4 downto 0);
    s_ce1 : OUT STD_LOGIC;
    s_we1 : OUT STD_LOGIC;
    s_d1 : OUT STD_LOGIC_VECTOR (63 downto 0);
    s_q1 : IN STD_LOGIC_VECTOR (63 downto 0) );
end;


architecture behav of keccak_squeezeblocks is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (5 downto 0) := "000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (5 downto 0) := "001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (5 downto 0) := "010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv5_11 : STD_LOGIC_VECTOR (4 downto 0) := "10001";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv8_88 : STD_LOGIC_VECTOR (7 downto 0) := "10001000";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal i_fu_132_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal i_reg_218 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal icmp_ln476_fu_126_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln478_fu_143_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal shl_ln_fu_149_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal shl_ln_reg_233 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal s_load_reg_238 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_26_fu_163_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal grp_KeccakF1600_StatePer_1_fu_118_ap_start : STD_LOGIC;
    signal grp_KeccakF1600_StatePer_1_fu_118_ap_done : STD_LOGIC;
    signal grp_KeccakF1600_StatePer_1_fu_118_ap_idle : STD_LOGIC;
    signal grp_KeccakF1600_StatePer_1_fu_118_ap_ready : STD_LOGIC;
    signal grp_KeccakF1600_StatePer_1_fu_118_state_address0 : STD_LOGIC_VECTOR (4 downto 0);
    signal grp_KeccakF1600_StatePer_1_fu_118_state_ce0 : STD_LOGIC;
    signal grp_KeccakF1600_StatePer_1_fu_118_state_we0 : STD_LOGIC;
    signal grp_KeccakF1600_StatePer_1_fu_118_state_d0 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_KeccakF1600_StatePer_1_fu_118_state_address1 : STD_LOGIC_VECTOR (4 downto 0);
    signal grp_KeccakF1600_StatePer_1_fu_118_state_ce1 : STD_LOGIC;
    signal grp_KeccakF1600_StatePer_1_fu_118_state_we1 : STD_LOGIC;
    signal grp_KeccakF1600_StatePer_1_fu_118_state_d1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_phi_mux_p_01_phi_fu_75_p4 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_01_reg_70 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_0_rec_reg_83 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_0_reg_95 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal icmp_ln47_fu_157_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_0_i_reg_107 : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_KeccakF1600_StatePer_1_fu_118_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal zext_ln477_fu_138_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln48_8_fu_210_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal trunc_ln48_fu_169_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal shl_ln12_fu_173_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln48_fu_181_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal lshr_ln48_fu_185_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln48_7_fu_195_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln48_3_fu_199_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln48_fu_204_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (5 downto 0);

    component KeccakF1600_StatePer_1 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        state_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
        state_ce0 : OUT STD_LOGIC;
        state_we0 : OUT STD_LOGIC;
        state_d0 : OUT STD_LOGIC_VECTOR (63 downto 0);
        state_q0 : IN STD_LOGIC_VECTOR (63 downto 0);
        state_address1 : OUT STD_LOGIC_VECTOR (4 downto 0);
        state_ce1 : OUT STD_LOGIC;
        state_we1 : OUT STD_LOGIC;
        state_d1 : OUT STD_LOGIC_VECTOR (63 downto 0);
        state_q1 : IN STD_LOGIC_VECTOR (63 downto 0) );
    end component;



begin
    grp_KeccakF1600_StatePer_1_fu_118 : component KeccakF1600_StatePer_1
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_KeccakF1600_StatePer_1_fu_118_ap_start,
        ap_done => grp_KeccakF1600_StatePer_1_fu_118_ap_done,
        ap_idle => grp_KeccakF1600_StatePer_1_fu_118_ap_idle,
        ap_ready => grp_KeccakF1600_StatePer_1_fu_118_ap_ready,
        state_address0 => grp_KeccakF1600_StatePer_1_fu_118_state_address0,
        state_ce0 => grp_KeccakF1600_StatePer_1_fu_118_state_ce0,
        state_we0 => grp_KeccakF1600_StatePer_1_fu_118_state_we0,
        state_d0 => grp_KeccakF1600_StatePer_1_fu_118_state_d0,
        state_q0 => s_q0,
        state_address1 => grp_KeccakF1600_StatePer_1_fu_118_state_address1,
        state_ce1 => grp_KeccakF1600_StatePer_1_fu_118_state_ce1,
        state_we1 => grp_KeccakF1600_StatePer_1_fu_118_state_we1,
        state_d1 => grp_KeccakF1600_StatePer_1_fu_118_state_d1,
        state_q1 => s_q1);





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


    grp_KeccakF1600_StatePer_1_fu_118_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_KeccakF1600_StatePer_1_fu_118_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_phi_mux_p_01_phi_fu_75_p4 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    grp_KeccakF1600_StatePer_1_fu_118_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_KeccakF1600_StatePer_1_fu_118_ap_ready = ap_const_logic_1)) then 
                    grp_KeccakF1600_StatePer_1_fu_118_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_0_i_reg_107_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln47_fu_157_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
                i_0_i_reg_107 <= i_26_fu_163_p2;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                i_0_i_reg_107 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;

    i_0_reg_95_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln47_fu_157_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
                i_0_reg_95 <= i_reg_218;
            elsif (((grp_KeccakF1600_StatePer_1_fu_118_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                i_0_reg_95 <= ap_const_lv5_0;
            end if; 
        end if;
    end process;

    p_01_reg_70_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln476_fu_126_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                p_01_reg_70 <= ap_const_lv1_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                p_01_reg_70 <= ap_const_lv1_1;
            end if; 
        end if;
    end process;

    p_0_rec_reg_83_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln476_fu_126_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                p_0_rec_reg_83 <= add_ln478_fu_143_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                p_0_rec_reg_83 <= ap_const_lv8_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                i_reg_218 <= i_fu_132_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                s_load_reg_238 <= s_q0;
                    shl_ln_reg_233(7 downto 3) <= shl_ln_fu_149_p3(7 downto 3);
            end if;
        end if;
    end process;
    shl_ln_reg_233(2 downto 0) <= "000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state4, icmp_ln476_fu_126_p2, ap_CS_fsm_state6, grp_KeccakF1600_StatePer_1_fu_118_ap_done, ap_phi_mux_p_01_phi_fu_75_p4, ap_CS_fsm_state3, icmp_ln47_fu_157_p2, ap_CS_fsm_state2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_phi_mux_p_01_phi_fu_75_p4 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((grp_KeccakF1600_StatePer_1_fu_118_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state4 => 
                if (((icmp_ln476_fu_126_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                if (((icmp_ln47_fu_157_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXX";
        end case;
    end process;
    add_ln478_fu_143_p2 <= std_logic_vector(unsigned(p_0_rec_reg_83) + unsigned(ap_const_lv8_88));
    add_ln48_3_fu_199_p2 <= std_logic_vector(unsigned(zext_ln48_7_fu_195_p1) + unsigned(shl_ln_reg_233));
    add_ln48_fu_204_p2 <= std_logic_vector(unsigned(p_0_rec_reg_83) + unsigned(add_ln48_3_fu_199_p2));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_phi_mux_p_01_phi_fu_75_p4, ap_CS_fsm_state2)
    begin
        if ((((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_phi_mux_p_01_phi_fu_75_p4 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then 
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

    ap_phi_mux_p_01_phi_fu_75_p4 <= p_01_reg_70;

    ap_ready_assign_proc : process(ap_phi_mux_p_01_phi_fu_75_p4, ap_CS_fsm_state2)
    begin
        if (((ap_phi_mux_p_01_phi_fu_75_p4 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    grp_KeccakF1600_StatePer_1_fu_118_ap_start <= grp_KeccakF1600_StatePer_1_fu_118_ap_start_reg;
    i_26_fu_163_p2 <= std_logic_vector(unsigned(i_0_i_reg_107) + unsigned(ap_const_lv4_1));
    i_fu_132_p2 <= std_logic_vector(unsigned(i_0_reg_95) + unsigned(ap_const_lv5_1));
    icmp_ln476_fu_126_p2 <= "1" when (i_0_reg_95 = ap_const_lv5_11) else "0";
    icmp_ln47_fu_157_p2 <= "1" when (i_0_i_reg_107 = ap_const_lv4_8) else "0";
    lshr_ln48_fu_185_p2 <= std_logic_vector(shift_right(unsigned(s_load_reg_238),to_integer(unsigned('0' & zext_ln48_fu_181_p1(31-1 downto 0)))));
    out_r_address0 <= zext_ln48_8_fu_210_p1(8 - 1 downto 0);

    out_r_ce0_assign_proc : process(ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            out_r_ce0 <= ap_const_logic_1;
        else 
            out_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    out_r_d0 <= lshr_ln48_fu_185_p2(8 - 1 downto 0);

    out_r_we0_assign_proc : process(ap_CS_fsm_state6, icmp_ln47_fu_157_p2)
    begin
        if (((icmp_ln47_fu_157_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            out_r_we0 <= ap_const_logic_1;
        else 
            out_r_we0 <= ap_const_logic_0;
        end if; 
    end process;


    s_address0_assign_proc : process(ap_CS_fsm_state4, grp_KeccakF1600_StatePer_1_fu_118_state_address0, ap_CS_fsm_state3, zext_ln477_fu_138_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            s_address0 <= zext_ln477_fu_138_p1(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            s_address0 <= grp_KeccakF1600_StatePer_1_fu_118_state_address0;
        else 
            s_address0 <= "XXXXX";
        end if; 
    end process;

    s_address1 <= grp_KeccakF1600_StatePer_1_fu_118_state_address1;

    s_ce0_assign_proc : process(ap_CS_fsm_state4, grp_KeccakF1600_StatePer_1_fu_118_state_ce0, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            s_ce0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            s_ce0 <= grp_KeccakF1600_StatePer_1_fu_118_state_ce0;
        else 
            s_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    s_ce1_assign_proc : process(grp_KeccakF1600_StatePer_1_fu_118_state_ce1, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            s_ce1 <= grp_KeccakF1600_StatePer_1_fu_118_state_ce1;
        else 
            s_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    s_d0 <= grp_KeccakF1600_StatePer_1_fu_118_state_d0;
    s_d1 <= grp_KeccakF1600_StatePer_1_fu_118_state_d1;

    s_we0_assign_proc : process(grp_KeccakF1600_StatePer_1_fu_118_state_we0, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            s_we0 <= grp_KeccakF1600_StatePer_1_fu_118_state_we0;
        else 
            s_we0 <= ap_const_logic_0;
        end if; 
    end process;


    s_we1_assign_proc : process(grp_KeccakF1600_StatePer_1_fu_118_state_we1, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            s_we1 <= grp_KeccakF1600_StatePer_1_fu_118_state_we1;
        else 
            s_we1 <= ap_const_logic_0;
        end if; 
    end process;

    shl_ln12_fu_173_p3 <= (trunc_ln48_fu_169_p1 & ap_const_lv3_0);
    shl_ln_fu_149_p3 <= (i_0_reg_95 & ap_const_lv3_0);
    trunc_ln48_fu_169_p1 <= i_0_i_reg_107(3 - 1 downto 0);
    zext_ln477_fu_138_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_0_reg_95),64));
    zext_ln48_7_fu_195_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_0_i_reg_107),8));
    zext_ln48_8_fu_210_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln48_fu_204_p2),64));
    zext_ln48_fu_181_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(shl_ln12_fu_173_p3),64));
end behav;
