-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity polyveck_pointwise_p is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    r_vec_coeffs_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    r_vec_coeffs_ce0 : OUT STD_LOGIC;
    r_vec_coeffs_we0 : OUT STD_LOGIC;
    r_vec_coeffs_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    a_coeffs_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    a_coeffs_ce0 : OUT STD_LOGIC;
    a_coeffs_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    v_vec_coeffs_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    v_vec_coeffs_ce0 : OUT STD_LOGIC;
    v_vec_coeffs_q0 : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of polyveck_pointwise_p is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv9_100 : STD_LOGIC_VECTOR (8 downto 0) := "100000000";
    constant ap_const_lv9_1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_const_lv32_3802001 : STD_LOGIC_VECTOR (31 downto 0) := "00000011100000000010000000000001";
    constant ap_const_lv55_7FFFFFFF801FFF : STD_LOGIC_VECTOR (54 downto 0) := "1111111111111111111111111111111100000000001111111111111";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal i_fu_107_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal i_reg_214 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal zext_ln176_fu_121_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal zext_ln176_reg_219 : STD_LOGIC_VECTOR (11 downto 0);
    signal icmp_ln307_fu_101_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_18_fu_131_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal i_18_reg_227 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal zext_ln181_14_fu_151_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln181_14_reg_232 : STD_LOGIC_VECTOR (63 downto 0);
    signal icmp_ln180_fu_125_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_0_reg_79 : STD_LOGIC_VECTOR (2 downto 0);
    signal i_0_i_reg_90 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal zext_ln181_fu_137_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_fu_113_p3 : STD_LOGIC_VECTOR (10 downto 0);
    signal zext_ln181_13_fu_142_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln181_fu_146_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal mul_ln181_fu_164_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln181_fu_164_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln181_fu_164_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal trunc_ln18_fu_170_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal t_fu_174_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln19_fu_184_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln19_fu_184_p2 : STD_LOGIC_VECTOR (54 downto 0);
    signal sext_ln19_4_fu_190_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal add_ln19_fu_194_p2 : STD_LOGIC_VECTOR (63 downto 0);
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


    i_0_i_reg_90_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                i_0_i_reg_90 <= i_18_reg_227;
            elsif (((icmp_ln307_fu_101_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                i_0_i_reg_90 <= ap_const_lv9_0;
            end if; 
        end if;
    end process;

    i_0_reg_79_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln180_fu_125_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                i_0_reg_79 <= i_reg_214;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_0_reg_79 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                i_18_reg_227 <= i_18_fu_131_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_reg_214 <= i_fu_107_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln307_fu_101_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    zext_ln176_reg_219(10 downto 8) <= zext_ln176_fu_121_p1(10 downto 8);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln180_fu_125_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    zext_ln181_14_reg_232(11 downto 0) <= zext_ln181_14_fu_151_p1(11 downto 0);
            end if;
        end if;
    end process;
    zext_ln176_reg_219(7 downto 0) <= "00000000";
    zext_ln176_reg_219(11) <= '0';
    zext_ln181_14_reg_232(63 downto 12) <= "0000000000000000000000000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln307_fu_101_p2, ap_CS_fsm_state3, icmp_ln180_fu_125_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln307_fu_101_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((icmp_ln180_fu_125_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    a_coeffs_address0 <= zext_ln181_fu_137_p1(8 - 1 downto 0);

    a_coeffs_ce0_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            a_coeffs_ce0 <= ap_const_logic_1;
        else 
            a_coeffs_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    add_ln181_fu_146_p2 <= std_logic_vector(unsigned(zext_ln181_13_fu_142_p1) + unsigned(zext_ln176_reg_219));
    add_ln19_fu_194_p2 <= std_logic_vector(signed(sext_ln19_4_fu_190_p1) + signed(mul_ln181_fu_164_p2));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln307_fu_101_p2)
    begin
        if ((((icmp_ln307_fu_101_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln307_fu_101_p2)
    begin
        if (((icmp_ln307_fu_101_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    i_18_fu_131_p2 <= std_logic_vector(unsigned(i_0_i_reg_90) + unsigned(ap_const_lv9_1));
    i_fu_107_p2 <= std_logic_vector(unsigned(i_0_reg_79) + unsigned(ap_const_lv3_1));
    icmp_ln180_fu_125_p2 <= "1" when (i_0_i_reg_90 = ap_const_lv9_100) else "0";
    icmp_ln307_fu_101_p2 <= "1" when (i_0_reg_79 = ap_const_lv3_4) else "0";
    mul_ln181_fu_164_p0 <= v_vec_coeffs_q0;
    mul_ln181_fu_164_p1 <= a_coeffs_q0;
    mul_ln181_fu_164_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(mul_ln181_fu_164_p0) * signed(mul_ln181_fu_164_p1))), 64));
    mul_ln19_fu_184_p1 <= t_fu_174_p2;
    mul_ln19_fu_184_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(ap_const_lv55_7FFFFFFF801FFF) * signed(mul_ln19_fu_184_p1))), 55));
    r_vec_coeffs_address0 <= zext_ln181_14_reg_232(10 - 1 downto 0);

    r_vec_coeffs_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            r_vec_coeffs_ce0 <= ap_const_logic_1;
        else 
            r_vec_coeffs_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    r_vec_coeffs_d0 <= add_ln19_fu_194_p2(63 downto 32);

    r_vec_coeffs_we0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            r_vec_coeffs_we0 <= ap_const_logic_1;
        else 
            r_vec_coeffs_we0 <= ap_const_logic_0;
        end if; 
    end process;

        sext_ln19_4_fu_190_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(mul_ln19_fu_184_p2),64));

    t_fu_174_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed('0' &ap_const_lv32_3802001) * signed(trunc_ln18_fu_170_p1))), 32));
    tmp_fu_113_p3 <= (i_0_reg_79 & ap_const_lv8_0);
    trunc_ln18_fu_170_p1 <= mul_ln181_fu_164_p2(32 - 1 downto 0);
    v_vec_coeffs_address0 <= zext_ln181_14_fu_151_p1(10 - 1 downto 0);

    v_vec_coeffs_ce0_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            v_vec_coeffs_ce0 <= ap_const_logic_1;
        else 
            v_vec_coeffs_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln176_fu_121_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_fu_113_p3),12));
    zext_ln181_13_fu_142_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_0_i_reg_90),12));
    zext_ln181_14_fu_151_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln181_fu_146_p2),64));
    zext_ln181_fu_137_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_0_i_reg_90),64));
end behav;
