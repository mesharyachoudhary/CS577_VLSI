-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity polyveck_caddq is
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
    v_vec_coeffs_q0 : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of polyveck_caddq is 
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
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv32_7FE001 : STD_LOGIC_VECTOR (31 downto 0) := "00000000011111111110000000000001";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal i_fu_75_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal i_reg_145 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal zext_ln46_fu_89_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal zext_ln46_reg_150 : STD_LOGIC_VECTOR (11 downto 0);
    signal icmp_ln202_fu_69_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_21_fu_99_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal i_21_reg_158 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal v_vec_coeffs_addr_reg_163 : STD_LOGIC_VECTOR (9 downto 0);
    signal icmp_ln50_fu_93_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_0_reg_47 : STD_LOGIC_VECTOR (2 downto 0);
    signal i_0_i_reg_58 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal zext_ln51_1_fu_114_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_fu_81_p3 : STD_LOGIC_VECTOR (10 downto 0);
    signal zext_ln51_fu_105_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln51_fu_109_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_6_fu_119_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln51_fu_127_p3 : STD_LOGIC_VECTOR (31 downto 0);
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


    i_0_i_reg_58_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                i_0_i_reg_58 <= i_21_reg_158;
            elsif (((icmp_ln202_fu_69_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                i_0_i_reg_58 <= ap_const_lv9_0;
            end if; 
        end if;
    end process;

    i_0_reg_47_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln50_fu_93_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                i_0_reg_47 <= i_reg_145;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_0_reg_47 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                i_21_reg_158 <= i_21_fu_99_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_reg_145 <= i_fu_75_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln50_fu_93_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                v_vec_coeffs_addr_reg_163 <= zext_ln51_1_fu_114_p1(10 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln202_fu_69_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    zext_ln46_reg_150(10 downto 8) <= zext_ln46_fu_89_p1(10 downto 8);
            end if;
        end if;
    end process;
    zext_ln46_reg_150(7 downto 0) <= "00000000";
    zext_ln46_reg_150(11) <= '0';

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln202_fu_69_p2, ap_CS_fsm_state3, icmp_ln50_fu_93_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln202_fu_69_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((icmp_ln50_fu_93_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
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
    add_ln51_fu_109_p2 <= std_logic_vector(unsigned(zext_ln46_reg_150) + unsigned(zext_ln51_fu_105_p1));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln202_fu_69_p2)
    begin
        if ((((icmp_ln202_fu_69_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln202_fu_69_p2)
    begin
        if (((icmp_ln202_fu_69_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    i_21_fu_99_p2 <= std_logic_vector(unsigned(i_0_i_reg_58) + unsigned(ap_const_lv9_1));
    i_fu_75_p2 <= std_logic_vector(unsigned(i_0_reg_47) + unsigned(ap_const_lv3_1));
    icmp_ln202_fu_69_p2 <= "1" when (i_0_reg_47 = ap_const_lv3_4) else "0";
    icmp_ln50_fu_93_p2 <= "1" when (i_0_i_reg_58 = ap_const_lv9_100) else "0";
    select_ln51_fu_127_p3 <= 
        ap_const_lv32_7FE001 when (tmp_6_fu_119_p3(0) = '1') else 
        ap_const_lv32_0;
    tmp_6_fu_119_p3 <= v_vec_coeffs_q0(31 downto 31);
    tmp_fu_81_p3 <= (i_0_reg_47 & ap_const_lv8_0);

    v_vec_coeffs_address0_assign_proc : process(ap_CS_fsm_state3, v_vec_coeffs_addr_reg_163, ap_CS_fsm_state4, zext_ln51_1_fu_114_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            v_vec_coeffs_address0 <= v_vec_coeffs_addr_reg_163;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            v_vec_coeffs_address0 <= zext_ln51_1_fu_114_p1(10 - 1 downto 0);
        else 
            v_vec_coeffs_address0 <= "XXXXXXXXXX";
        end if; 
    end process;


    v_vec_coeffs_ce0_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            v_vec_coeffs_ce0 <= ap_const_logic_1;
        else 
            v_vec_coeffs_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    v_vec_coeffs_d0 <= std_logic_vector(unsigned(select_ln51_fu_127_p3) + unsigned(v_vec_coeffs_q0));

    v_vec_coeffs_we0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            v_vec_coeffs_we0 <= ap_const_logic_1;
        else 
            v_vec_coeffs_we0 <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln46_fu_89_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_fu_81_p3),12));
    zext_ln51_1_fu_114_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln51_fu_109_p2),64));
    zext_ln51_fu_105_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_0_i_reg_58),12));
end behav;
