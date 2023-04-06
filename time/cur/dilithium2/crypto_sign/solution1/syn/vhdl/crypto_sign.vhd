-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity crypto_sign is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    sm_address0 : OUT STD_LOGIC_VECTOR (12 downto 0);
    sm_ce0 : OUT STD_LOGIC;
    sm_we0 : OUT STD_LOGIC;
    sm_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    sm_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    sm_address1 : OUT STD_LOGIC_VECTOR (12 downto 0);
    sm_ce1 : OUT STD_LOGIC;
    sm_we1 : OUT STD_LOGIC;
    sm_d1 : OUT STD_LOGIC_VECTOR (7 downto 0);
    smlen : OUT STD_LOGIC_VECTOR (63 downto 0);
    smlen_ap_vld : OUT STD_LOGIC;
    m_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    m_ce0 : OUT STD_LOGIC;
    m_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    mlen : IN STD_LOGIC_VECTOR (63 downto 0);
    sk_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    sk_ce0 : OUT STD_LOGIC;
    sk_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    sk_address1 : OUT STD_LOGIC_VECTOR (11 downto 0);
    sk_ce1 : OUT STD_LOGIC;
    sk_q1 : IN STD_LOGIC_VECTOR (7 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of crypto_sign is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "crypto_sign,hls_ip_2019_2,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7a200t-fbg676-2,HLS_INPUT_CLOCK=10000.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=52.228000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=71,HLS_SYN_DSP=2910,HLS_SYN_FF=95797,HLS_SYN_LUT=412043,HLS_VERSION=2019_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (5 downto 0) := "000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (5 downto 0) := "001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (5 downto 0) := "010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv13_1FFF : STD_LOGIC_VECTOR (12 downto 0) := "1111111111111";
    constant ap_const_lv14_973 : STD_LOGIC_VECTOR (13 downto 0) := "00100101110011";
    constant ap_const_lv64_1 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000001";
    constant ap_const_lv14_1 : STD_LOGIC_VECTOR (13 downto 0) := "00000000000001";
    constant ap_const_lv13_1 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000001";
    constant ap_const_lv64_2 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000010";
    constant ap_const_lv64_974 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000100101110100";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal add_ln208_fu_129_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal add_ln208_reg_239 : STD_LOGIC_VECTOR (12 downto 0);
    signal add_ln208_1_fu_139_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal add_ln208_1_reg_245 : STD_LOGIC_VECTOR (13 downto 0);
    signal trunc_ln206_fu_150_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal trunc_ln206_reg_254 : STD_LOGIC_VECTOR (12 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal icmp_ln206_fu_145_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal icmp_ln206_1_fu_195_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal sub_ln208_3_fu_210_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal sub_ln208_3_reg_272 : STD_LOGIC_VECTOR (13 downto 0);
    signal add_ln206_fu_215_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal add_ln206_reg_277 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_crypto_sign_signatur_fu_112_ap_start : STD_LOGIC;
    signal grp_crypto_sign_signatur_fu_112_ap_done : STD_LOGIC;
    signal grp_crypto_sign_signatur_fu_112_ap_idle : STD_LOGIC;
    signal grp_crypto_sign_signatur_fu_112_ap_ready : STD_LOGIC;
    signal grp_crypto_sign_signatur_fu_112_sig_address0 : STD_LOGIC_VECTOR (12 downto 0);
    signal grp_crypto_sign_signatur_fu_112_sig_ce0 : STD_LOGIC;
    signal grp_crypto_sign_signatur_fu_112_sig_we0 : STD_LOGIC;
    signal grp_crypto_sign_signatur_fu_112_sig_d0 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_crypto_sign_signatur_fu_112_sig_address1 : STD_LOGIC_VECTOR (12 downto 0);
    signal grp_crypto_sign_signatur_fu_112_sig_ce1 : STD_LOGIC;
    signal grp_crypto_sign_signatur_fu_112_sig_we1 : STD_LOGIC;
    signal grp_crypto_sign_signatur_fu_112_sig_d1 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_crypto_sign_signatur_fu_112_sk_address0 : STD_LOGIC_VECTOR (11 downto 0);
    signal grp_crypto_sign_signatur_fu_112_sk_ce0 : STD_LOGIC;
    signal grp_crypto_sign_signatur_fu_112_sk_address1 : STD_LOGIC_VECTOR (11 downto 0);
    signal grp_crypto_sign_signatur_fu_112_sk_ce1 : STD_LOGIC;
    signal i_0_0_reg_100 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal grp_crypto_sign_signatur_fu_112_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal zext_ln208_fu_159_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln208_1_fu_173_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln208_2_fu_205_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln208_3_fu_221_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal trunc_ln208_fu_125_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal trunc_ln208_1_fu_135_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal sub_ln208_fu_154_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal trunc_ln206_1_fu_164_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal sub_ln208_1_fu_168_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal or_ln206_fu_178_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal or_ln206_2_fu_190_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal sub_ln208_2_fu_200_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal or_ln206_1_fu_184_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (5 downto 0);

    component crypto_sign_signatur IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        sig_address0 : OUT STD_LOGIC_VECTOR (12 downto 0);
        sig_ce0 : OUT STD_LOGIC;
        sig_we0 : OUT STD_LOGIC;
        sig_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
        sig_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
        sig_address1 : OUT STD_LOGIC_VECTOR (12 downto 0);
        sig_ce1 : OUT STD_LOGIC;
        sig_we1 : OUT STD_LOGIC;
        sig_d1 : OUT STD_LOGIC_VECTOR (7 downto 0);
        mlen : IN STD_LOGIC_VECTOR (63 downto 0);
        sk_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
        sk_ce0 : OUT STD_LOGIC;
        sk_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
        sk_address1 : OUT STD_LOGIC_VECTOR (11 downto 0);
        sk_ce1 : OUT STD_LOGIC;
        sk_q1 : IN STD_LOGIC_VECTOR (7 downto 0) );
    end component;



begin
    grp_crypto_sign_signatur_fu_112 : component crypto_sign_signatur
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_crypto_sign_signatur_fu_112_ap_start,
        ap_done => grp_crypto_sign_signatur_fu_112_ap_done,
        ap_idle => grp_crypto_sign_signatur_fu_112_ap_idle,
        ap_ready => grp_crypto_sign_signatur_fu_112_ap_ready,
        sig_address0 => grp_crypto_sign_signatur_fu_112_sig_address0,
        sig_ce0 => grp_crypto_sign_signatur_fu_112_sig_ce0,
        sig_we0 => grp_crypto_sign_signatur_fu_112_sig_we0,
        sig_d0 => grp_crypto_sign_signatur_fu_112_sig_d0,
        sig_q0 => sm_q0,
        sig_address1 => grp_crypto_sign_signatur_fu_112_sig_address1,
        sig_ce1 => grp_crypto_sign_signatur_fu_112_sig_ce1,
        sig_we1 => grp_crypto_sign_signatur_fu_112_sig_we1,
        sig_d1 => grp_crypto_sign_signatur_fu_112_sig_d1,
        mlen => mlen,
        sk_address0 => grp_crypto_sign_signatur_fu_112_sk_address0,
        sk_ce0 => grp_crypto_sign_signatur_fu_112_sk_ce0,
        sk_q0 => sk_q0,
        sk_address1 => grp_crypto_sign_signatur_fu_112_sk_address1,
        sk_ce1 => grp_crypto_sign_signatur_fu_112_sk_ce1,
        sk_q1 => sk_q1);





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


    grp_crypto_sign_signatur_fu_112_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_crypto_sign_signatur_fu_112_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                    grp_crypto_sign_signatur_fu_112_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_crypto_sign_signatur_fu_112_ap_ready = ap_const_logic_1)) then 
                    grp_crypto_sign_signatur_fu_112_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_0_0_reg_100_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                i_0_0_reg_100 <= add_ln206_reg_277;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_0_0_reg_100 <= ap_const_lv64_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln206_1_fu_195_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                add_ln206_reg_277 <= add_ln206_fu_215_p2;
                sub_ln208_3_reg_272 <= sub_ln208_3_fu_210_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                add_ln208_1_reg_245 <= add_ln208_1_fu_139_p2;
                add_ln208_reg_239 <= add_ln208_fu_129_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln206_fu_145_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                trunc_ln206_reg_254 <= trunc_ln206_fu_150_p1;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln206_fu_145_p2, ap_CS_fsm_state3, icmp_ln206_1_fu_195_p2, grp_crypto_sign_signatur_fu_112_ap_done, ap_CS_fsm_state6)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln206_fu_145_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((icmp_ln206_1_fu_195_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                if (((grp_crypto_sign_signatur_fu_112_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXX";
        end case;
    end process;
    add_ln206_fu_215_p2 <= std_logic_vector(unsigned(i_0_0_reg_100) + unsigned(ap_const_lv64_2));
    add_ln208_1_fu_139_p2 <= std_logic_vector(unsigned(ap_const_lv14_973) + unsigned(trunc_ln208_1_fu_135_p1));
    add_ln208_fu_129_p2 <= std_logic_vector(signed(ap_const_lv13_1FFF) + signed(trunc_ln208_fu_125_p1));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);

    ap_done_assign_proc : process(grp_crypto_sign_signatur_fu_112_ap_done, ap_CS_fsm_state6)
    begin
        if (((grp_crypto_sign_signatur_fu_112_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
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


    ap_ready_assign_proc : process(grp_crypto_sign_signatur_fu_112_ap_done, ap_CS_fsm_state6)
    begin
        if (((grp_crypto_sign_signatur_fu_112_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    ap_return <= ap_const_lv32_0;
    grp_crypto_sign_signatur_fu_112_ap_start <= grp_crypto_sign_signatur_fu_112_ap_start_reg;
    icmp_ln206_1_fu_195_p2 <= "1" when (or_ln206_fu_178_p2 = mlen) else "0";
    icmp_ln206_fu_145_p2 <= "1" when (i_0_0_reg_100 = mlen) else "0";

    m_address0_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state3, zext_ln208_fu_159_p1, zext_ln208_2_fu_205_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            m_address0 <= zext_ln208_2_fu_205_p1(12 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            m_address0 <= zext_ln208_fu_159_p1(12 - 1 downto 0);
        else 
            m_address0 <= "XXXXXXXXXXXX";
        end if; 
    end process;


    m_ce0_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            m_ce0 <= ap_const_logic_1;
        else 
            m_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    or_ln206_1_fu_184_p2 <= (trunc_ln206_1_fu_164_p1 or ap_const_lv14_1);
    or_ln206_2_fu_190_p2 <= (trunc_ln206_reg_254 or ap_const_lv13_1);
    or_ln206_fu_178_p2 <= (i_0_0_reg_100 or ap_const_lv64_1);
    sk_address0 <= grp_crypto_sign_signatur_fu_112_sk_address0;
    sk_address1 <= grp_crypto_sign_signatur_fu_112_sk_address1;
    sk_ce0 <= grp_crypto_sign_signatur_fu_112_sk_ce0;
    sk_ce1 <= grp_crypto_sign_signatur_fu_112_sk_ce1;

    sm_address0_assign_proc : process(ap_CS_fsm_state3, grp_crypto_sign_signatur_fu_112_sig_address0, ap_CS_fsm_state4, ap_CS_fsm_state6, zext_ln208_1_fu_173_p1, zext_ln208_3_fu_221_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            sm_address0 <= zext_ln208_3_fu_221_p1(13 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            sm_address0 <= zext_ln208_1_fu_173_p1(13 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            sm_address0 <= grp_crypto_sign_signatur_fu_112_sig_address0;
        else 
            sm_address0 <= "XXXXXXXXXXXXX";
        end if; 
    end process;

    sm_address1 <= grp_crypto_sign_signatur_fu_112_sig_address1;

    sm_ce0_assign_proc : process(ap_CS_fsm_state3, grp_crypto_sign_signatur_fu_112_sig_ce0, ap_CS_fsm_state4, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            sm_ce0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            sm_ce0 <= grp_crypto_sign_signatur_fu_112_sig_ce0;
        else 
            sm_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    sm_ce1_assign_proc : process(grp_crypto_sign_signatur_fu_112_sig_ce1, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            sm_ce1 <= grp_crypto_sign_signatur_fu_112_sig_ce1;
        else 
            sm_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    sm_d0_assign_proc : process(m_q0, ap_CS_fsm_state3, grp_crypto_sign_signatur_fu_112_sig_d0, ap_CS_fsm_state4, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            sm_d0 <= m_q0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            sm_d0 <= grp_crypto_sign_signatur_fu_112_sig_d0;
        else 
            sm_d0 <= "XXXXXXXX";
        end if; 
    end process;

    sm_d1 <= grp_crypto_sign_signatur_fu_112_sig_d1;

    sm_we0_assign_proc : process(ap_CS_fsm_state3, grp_crypto_sign_signatur_fu_112_sig_we0, ap_CS_fsm_state4, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            sm_we0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            sm_we0 <= grp_crypto_sign_signatur_fu_112_sig_we0;
        else 
            sm_we0 <= ap_const_logic_0;
        end if; 
    end process;


    sm_we1_assign_proc : process(grp_crypto_sign_signatur_fu_112_sig_we1, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            sm_we1 <= grp_crypto_sign_signatur_fu_112_sig_we1;
        else 
            sm_we1 <= ap_const_logic_0;
        end if; 
    end process;

    smlen <= std_logic_vector(unsigned(mlen) + unsigned(ap_const_lv64_974));

    smlen_ap_vld_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            smlen_ap_vld <= ap_const_logic_1;
        else 
            smlen_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    sub_ln208_1_fu_168_p2 <= std_logic_vector(unsigned(add_ln208_1_reg_245) - unsigned(trunc_ln206_1_fu_164_p1));
    sub_ln208_2_fu_200_p2 <= std_logic_vector(unsigned(add_ln208_reg_239) - unsigned(or_ln206_2_fu_190_p2));
    sub_ln208_3_fu_210_p2 <= std_logic_vector(unsigned(add_ln208_1_reg_245) - unsigned(or_ln206_1_fu_184_p2));
    sub_ln208_fu_154_p2 <= std_logic_vector(unsigned(add_ln208_reg_239) - unsigned(trunc_ln206_fu_150_p1));
    trunc_ln206_1_fu_164_p1 <= i_0_0_reg_100(14 - 1 downto 0);
    trunc_ln206_fu_150_p1 <= i_0_0_reg_100(13 - 1 downto 0);
    trunc_ln208_1_fu_135_p1 <= mlen(14 - 1 downto 0);
    trunc_ln208_fu_125_p1 <= mlen(13 - 1 downto 0);
    zext_ln208_1_fu_173_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sub_ln208_1_fu_168_p2),64));
    zext_ln208_2_fu_205_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sub_ln208_2_fu_200_p2),64));
    zext_ln208_3_fu_221_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sub_ln208_3_reg_272),64));
    zext_ln208_fu_159_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sub_ln208_fu_154_p2),64));
end behav;
