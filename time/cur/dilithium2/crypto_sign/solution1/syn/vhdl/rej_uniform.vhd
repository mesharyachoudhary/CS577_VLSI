-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity rej_uniform is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    a_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    a_ce0 : OUT STD_LOGIC;
    a_we0 : OUT STD_LOGIC;
    a_d0 : OUT STD_LOGIC_VECTOR (22 downto 0);
    a_offset : IN STD_LOGIC_VECTOR (1 downto 0);
    a_offset1 : IN STD_LOGIC_VECTOR (1 downto 0);
    a_offset2 : IN STD_LOGIC_VECTOR (31 downto 0);
    len : IN STD_LOGIC_VECTOR (9 downto 0);
    buf_r_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    buf_r_ce0 : OUT STD_LOGIC;
    buf_r_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    buf_r_address1 : OUT STD_LOGIC_VECTOR (9 downto 0);
    buf_r_ce1 : OUT STD_LOGIC;
    buf_r_q1 : IN STD_LOGIC_VECTOR (7 downto 0);
    buflen : IN STD_LOGIC_VECTOR (10 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of rej_uniform is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv23_7FE001 : STD_LOGIC_VECTOR (22 downto 0) := "11111111110000000000001";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal buflen_cast_fu_132_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal buflen_cast_reg_268 : STD_LOGIC_VECTOR (31 downto 0);
    signal len_cast_fu_136_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal len_cast_reg_273 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln351_1_cast_fu_150_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal zext_ln351_1_cast_reg_278 : STD_LOGIC_VECTOR (12 downto 0);
    signal trunc_ln351_fu_154_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal trunc_ln351_reg_283 : STD_LOGIC_VECTOR (8 downto 0);
    signal ctr_1_load_reg_288 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal pos_2_fu_171_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal pos_2_reg_297 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln344_fu_166_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln344_1_fu_177_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal buf_load_reg_310 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal pos_0_reg_120 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal zext_ln345_fu_182_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln346_fu_199_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln347_fu_204_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln351_1_fu_251_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal icmp_ln350_fu_223_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ctr_1_fu_40 : STD_LOGIC_VECTOR (31 downto 0);
    signal ctr_fu_229_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_1_fu_213_p4 : STD_LOGIC_VECTOR (22 downto 0);
    signal tmp_2_fu_140_p4 : STD_LOGIC_VECTOR (11 downto 0);
    signal pos_fu_187_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal pos_1_fu_193_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln348_fu_209_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal trunc_ln351_1_fu_234_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln351_fu_237_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln351_fu_242_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal add_ln351_2_fu_246_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);


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


    ctr_1_fu_40_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln350_fu_223_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                ctr_1_fu_40 <= ctr_fu_229_p2;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                ctr_1_fu_40 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    pos_0_reg_120_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                pos_0_reg_120 <= pos_2_reg_297;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                pos_0_reg_120 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                buf_load_reg_310 <= buf_r_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    buflen_cast_reg_268(10 downto 0) <= buflen_cast_fu_132_p1(10 downto 0);
                    len_cast_reg_273(9 downto 0) <= len_cast_fu_136_p1(9 downto 0);
                trunc_ln351_reg_283 <= trunc_ln351_fu_154_p1;
                    zext_ln351_1_cast_reg_278(11 downto 8) <= zext_ln351_1_cast_fu_150_p1(11 downto 8);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                ctr_1_load_reg_288 <= ctr_1_fu_40;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln344_fu_166_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                pos_2_reg_297 <= pos_2_fu_171_p2;
            end if;
        end if;
    end process;
    buflen_cast_reg_268(31 downto 11) <= "000000000000000000000";
    len_cast_reg_273(31 downto 10) <= "0000000000000000000000";
    zext_ln351_1_cast_reg_278(7 downto 0) <= "00000000";
    zext_ln351_1_cast_reg_278(12) <= '0';

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln344_fu_166_p2, icmp_ln344_1_fu_177_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and ((icmp_ln344_1_fu_177_p2 = ap_const_lv1_1) or (icmp_ln344_fu_166_p2 = ap_const_lv1_0)))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    a_address0 <= zext_ln351_1_fu_251_p1(12 - 1 downto 0);

    a_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            a_ce0 <= ap_const_logic_1;
        else 
            a_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    a_d0 <= tmp_1_fu_213_p4;

    a_we0_assign_proc : process(ap_CS_fsm_state4, icmp_ln350_fu_223_p2)
    begin
        if (((icmp_ln350_fu_223_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            a_we0 <= ap_const_logic_1;
        else 
            a_we0 <= ap_const_logic_0;
        end if; 
    end process;

    add_ln351_2_fu_246_p2 <= std_logic_vector(unsigned(zext_ln351_1_cast_reg_278) + unsigned(zext_ln351_fu_242_p1));
    add_ln351_fu_237_p2 <= std_logic_vector(unsigned(trunc_ln351_reg_283) + unsigned(trunc_ln351_1_fu_234_p1));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln344_fu_166_p2, icmp_ln344_1_fu_177_p2)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_state2) and ((icmp_ln344_1_fu_177_p2 = ap_const_lv1_1) or (icmp_ln344_fu_166_p2 = ap_const_lv1_0))) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln344_fu_166_p2, icmp_ln344_1_fu_177_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and ((icmp_ln344_1_fu_177_p2 = ap_const_lv1_1) or (icmp_ln344_fu_166_p2 = ap_const_lv1_0)))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    ap_return <= ctr_1_fu_40;

    buf_r_address0_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state3, zext_ln345_fu_182_p1, zext_ln346_fu_199_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            buf_r_address0 <= zext_ln346_fu_199_p1(10 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            buf_r_address0 <= zext_ln345_fu_182_p1(10 - 1 downto 0);
        else 
            buf_r_address0 <= "XXXXXXXXXX";
        end if; 
    end process;

    buf_r_address1 <= zext_ln347_fu_204_p1(10 - 1 downto 0);

    buf_r_ce0_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            buf_r_ce0 <= ap_const_logic_1;
        else 
            buf_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    buf_r_ce1_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            buf_r_ce1 <= ap_const_logic_1;
        else 
            buf_r_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    buflen_cast_fu_132_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(buflen),32));
    ctr_fu_229_p2 <= std_logic_vector(unsigned(ap_const_lv32_1) + unsigned(ctr_1_load_reg_288));
    icmp_ln344_1_fu_177_p2 <= "1" when (unsigned(pos_2_fu_171_p2) > unsigned(buflen_cast_reg_268)) else "0";
    icmp_ln344_fu_166_p2 <= "1" when (unsigned(ctr_1_fu_40) < unsigned(len_cast_reg_273)) else "0";
    icmp_ln350_fu_223_p2 <= "1" when (unsigned(tmp_1_fu_213_p4) < unsigned(ap_const_lv23_7FE001)) else "0";
    len_cast_fu_136_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(len),32));
    pos_1_fu_193_p2 <= std_logic_vector(unsigned(ap_const_lv32_2) + unsigned(pos_0_reg_120));
    pos_2_fu_171_p2 <= std_logic_vector(unsigned(pos_0_reg_120) + unsigned(ap_const_lv32_3));
    pos_fu_187_p2 <= std_logic_vector(unsigned(ap_const_lv32_1) + unsigned(pos_0_reg_120));
    tmp_1_fu_213_p4 <= ((trunc_ln348_fu_209_p1 & buf_r_q0) & buf_load_reg_310);
    tmp_2_fu_140_p4 <= ((a_offset & a_offset1) & ap_const_lv8_0);
    trunc_ln348_fu_209_p1 <= buf_r_q1(7 - 1 downto 0);
    trunc_ln351_1_fu_234_p1 <= ctr_1_load_reg_288(9 - 1 downto 0);
    trunc_ln351_fu_154_p1 <= a_offset2(9 - 1 downto 0);
    zext_ln345_fu_182_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(pos_0_reg_120),64));
    zext_ln346_fu_199_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(pos_fu_187_p2),64));
    zext_ln347_fu_204_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(pos_1_fu_193_p2),64));
    zext_ln351_1_cast_fu_150_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_2_fu_140_p4),13));
    zext_ln351_1_fu_251_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln351_2_fu_246_p2),64));
    zext_ln351_fu_242_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln351_fu_237_p2),13));
end behav;
