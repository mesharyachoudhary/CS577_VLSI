-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity polyveck_chknorm is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    v_vec_coeffs_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    v_vec_coeffs_ce0 : OUT STD_LOGIC;
    v_vec_coeffs_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    bound : IN STD_LOGIC_VECTOR (17 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (0 downto 0) );
end;


architecture behav of polyveck_chknorm is 
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
    constant ap_const_lv32_FFFFFFFF : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111111111111111111";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal bound_cast_fu_103_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bound_cast_reg_196 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln325_fu_107_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln325_reg_201 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal i_fu_113_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal i_reg_205 : STD_LOGIC_VECTOR (2 downto 0);
    signal zext_ln287_fu_127_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal zext_ln287_reg_210 : STD_LOGIC_VECTOR (11 downto 0);
    signal i_20_fu_137_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal i_20_reg_218 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal icmp_ln298_fu_131_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_0_reg_69 : STD_LOGIC_VECTOR (2 downto 0);
    signal i_0_i_reg_80 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal icmp_ln303_fu_191_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_phi_mux_p_0_phi_fu_95_p4 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_0_reg_91 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln300_1_fu_152_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_fu_119_p3 : STD_LOGIC_VECTOR (10 downto 0);
    signal zext_ln300_fu_143_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln300_fu_147_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_8_fu_157_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal shl_ln301_fu_173_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal t_fu_165_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal and_ln301_fu_179_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal t_6_fu_185_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_return_preg : STD_LOGIC_VECTOR (0 downto 0) := "0";
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


    ap_return_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_preg <= ap_const_lv1_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_state4) and ((icmp_ln303_fu_191_p2 = ap_const_lv1_0) or (icmp_ln325_reg_201 = ap_const_lv1_1)))) then 
                    ap_return_preg <= ap_phi_mux_p_0_phi_fu_95_p4;
                end if; 
            end if;
        end if;
    end process;


    i_0_i_reg_80_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln303_fu_191_p2 = ap_const_lv1_1) and (icmp_ln325_reg_201 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                i_0_i_reg_80 <= i_20_reg_218;
            elsif (((icmp_ln325_fu_107_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                i_0_i_reg_80 <= ap_const_lv9_0;
            end if; 
        end if;
    end process;

    i_0_reg_69_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln298_fu_131_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                i_0_reg_69 <= i_reg_205;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_0_reg_69 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;

    p_0_reg_91_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln325_fu_107_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                p_0_reg_91 <= ap_const_lv1_0;
            elsif (((icmp_ln303_fu_191_p2 = ap_const_lv1_0) and (icmp_ln325_reg_201 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                p_0_reg_91 <= ap_const_lv1_1;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    bound_cast_reg_196(17 downto 0) <= bound_cast_fu_103_p1(17 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                i_20_reg_218 <= i_20_fu_137_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_reg_205 <= i_fu_113_p2;
                icmp_ln325_reg_201 <= icmp_ln325_fu_107_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln325_fu_107_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    zext_ln287_reg_210(10 downto 8) <= zext_ln287_fu_127_p1(10 downto 8);
            end if;
        end if;
    end process;
    bound_cast_reg_196(31 downto 18) <= "00000000000000";
    zext_ln287_reg_210(7 downto 0) <= "00000000";
    zext_ln287_reg_210(11) <= '0';

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, icmp_ln325_fu_107_p2, icmp_ln325_reg_201, ap_CS_fsm_state2, ap_CS_fsm_state3, icmp_ln298_fu_131_p2, ap_CS_fsm_state4, icmp_ln303_fu_191_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln325_fu_107_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((icmp_ln298_fu_131_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state4) and ((icmp_ln303_fu_191_p2 = ap_const_lv1_0) or (icmp_ln325_reg_201 = ap_const_lv1_1)))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    add_ln300_fu_147_p2 <= std_logic_vector(unsigned(zext_ln287_reg_210) + unsigned(zext_ln300_fu_143_p1));
    and_ln301_fu_179_p2 <= (t_fu_165_p3 and shl_ln301_fu_173_p2);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, icmp_ln325_reg_201, ap_CS_fsm_state4, icmp_ln303_fu_191_p2)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_state4) and ((icmp_ln303_fu_191_p2 = ap_const_lv1_0) or (icmp_ln325_reg_201 = ap_const_lv1_1))) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
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


    ap_phi_mux_p_0_phi_fu_95_p4_assign_proc : process(icmp_ln325_reg_201, ap_CS_fsm_state4, icmp_ln303_fu_191_p2, p_0_reg_91)
    begin
        if (((icmp_ln303_fu_191_p2 = ap_const_lv1_0) and (icmp_ln325_reg_201 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            ap_phi_mux_p_0_phi_fu_95_p4 <= ap_const_lv1_1;
        else 
            ap_phi_mux_p_0_phi_fu_95_p4 <= p_0_reg_91;
        end if; 
    end process;


    ap_ready_assign_proc : process(icmp_ln325_reg_201, ap_CS_fsm_state4, icmp_ln303_fu_191_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) and ((icmp_ln303_fu_191_p2 = ap_const_lv1_0) or (icmp_ln325_reg_201 = ap_const_lv1_1)))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_return_assign_proc : process(icmp_ln325_reg_201, ap_CS_fsm_state4, icmp_ln303_fu_191_p2, ap_phi_mux_p_0_phi_fu_95_p4, ap_return_preg)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) and ((icmp_ln303_fu_191_p2 = ap_const_lv1_0) or (icmp_ln325_reg_201 = ap_const_lv1_1)))) then 
            ap_return <= ap_phi_mux_p_0_phi_fu_95_p4;
        else 
            ap_return <= ap_return_preg;
        end if; 
    end process;

    bound_cast_fu_103_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(bound),32));
    i_20_fu_137_p2 <= std_logic_vector(unsigned(i_0_i_reg_80) + unsigned(ap_const_lv9_1));
    i_fu_113_p2 <= std_logic_vector(unsigned(i_0_reg_69) + unsigned(ap_const_lv3_1));
    icmp_ln298_fu_131_p2 <= "1" when (i_0_i_reg_80 = ap_const_lv9_100) else "0";
    icmp_ln303_fu_191_p2 <= "1" when (signed(t_6_fu_185_p2) < signed(bound_cast_reg_196)) else "0";
    icmp_ln325_fu_107_p2 <= "1" when (i_0_reg_69 = ap_const_lv3_4) else "0";
    shl_ln301_fu_173_p2 <= std_logic_vector(shift_left(unsigned(v_vec_coeffs_q0),to_integer(unsigned('0' & ap_const_lv32_1(31-1 downto 0)))));
    t_6_fu_185_p2 <= std_logic_vector(unsigned(v_vec_coeffs_q0) - unsigned(and_ln301_fu_179_p2));
    t_fu_165_p3 <= 
        ap_const_lv32_FFFFFFFF when (tmp_8_fu_157_p3(0) = '1') else 
        ap_const_lv32_0;
    tmp_8_fu_157_p3 <= v_vec_coeffs_q0(31 downto 31);
    tmp_fu_119_p3 <= (i_0_reg_69 & ap_const_lv8_0);
    v_vec_coeffs_address0 <= zext_ln300_1_fu_152_p1(10 - 1 downto 0);

    v_vec_coeffs_ce0_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            v_vec_coeffs_ce0 <= ap_const_logic_1;
        else 
            v_vec_coeffs_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln287_fu_127_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_fu_119_p3),12));
    zext_ln300_1_fu_152_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln300_fu_147_p2),64));
    zext_ln300_fu_143_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_0_i_reg_80),12));
end behav;
