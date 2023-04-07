-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity invntt_tomont is
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
end;


architecture behav of invntt_tomont is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (9 downto 0) := "0000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (9 downto 0) := "0000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (9 downto 0) := "0000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (9 downto 0) := "0000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (9 downto 0) := "0000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (9 downto 0) := "0001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (9 downto 0) := "0010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (9 downto 0) := "0100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (9 downto 0) := "1000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv9_1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv32_100 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000100000000";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv32_FFFFFFFF : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111111111111111111";
    constant ap_const_lv23_0 : STD_LOGIC_VECTOR (22 downto 0) := "00000000000000000000000";
    constant ap_const_lv32_3802001 : STD_LOGIC_VECTOR (31 downto 0) := "00000011100000000010000000000001";
    constant ap_const_lv55_7FFFFFFF801FFF : STD_LOGIC_VECTOR (54 downto 0) := "1111111111111111111111111111111100000000001111111111111";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";
    constant ap_const_lv32_37 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110111";
    constant ap_const_lv9_100 : STD_LOGIC_VECTOR (8 downto 0) := "100000000";
    constant ap_const_lv49_A3FA : STD_LOGIC_VECTOR (48 downto 0) := "0000000000000000000000000000000001010001111111010";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal zetas_address0 : STD_LOGIC_VECTOR (7 downto 0);
    signal zetas_ce0 : STD_LOGIC;
    signal zetas_q0 : STD_LOGIC_VECTOR (22 downto 0);
    signal zext_ln77_fu_166_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal zext_ln77_reg_493 : STD_LOGIC_VECTOR (11 downto 0);
    signal zext_ln83_fu_175_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal zext_ln83_reg_500 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal zext_ln84_fu_187_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln84_reg_509 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal k_fu_210_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal k_reg_517 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln84_fu_201_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal len_fu_221_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln86_fu_238_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln86_reg_532 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal zext_ln84_1_fu_266_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal zext_ln84_1_reg_537 : STD_LOGIC_VECTOR (9 downto 0);
    signal sext_ln86_fu_270_p1 : STD_LOGIC_VECTOR (53 downto 0);
    signal sext_ln86_reg_542 : STD_LOGIC_VECTOR (53 downto 0);
    signal a_addr_reg_550 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal icmp_ln86_fu_274_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal a_addr_16_reg_555 : STD_LOGIC_VECTOR (9 downto 0);
    signal j_4_fu_317_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal j_4_reg_561 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln84_fu_323_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal t_reg_571 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal j_3_fu_407_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal j_3_reg_579 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal a_addr55_reg_584 : STD_LOGIC_VECTOR (9 downto 0);
    signal icmp_ln95_fu_401_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal len_0_reg_114 : STD_LOGIC_VECTOR (8 downto 0);
    signal j_reg_126 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_10_fu_179_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal j_0_reg_138 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal j_1_reg_147 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal zext_ln85_fu_216_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln87_fu_288_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln88_3_fu_312_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln96_1_fu_422_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal k_4_fu_58 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln88_1_fu_331_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal t_12_fu_396_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal t_10_fu_481_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_fu_158_p3 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_11_fu_191_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal add_ln86_fu_233_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal trunc_ln84_fu_248_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal empty_55_fu_242_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln84_1_fu_252_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal start_fu_258_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal zeta_fu_227_p2 : STD_LOGIC_VECTOR (22 downto 0);
    signal trunc_ln87_fu_279_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln87_fu_283_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal zext_ln88_fu_297_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal trunc_ln88_fu_293_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln88_fu_301_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln88_2_fu_307_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal sub_ln89_fu_338_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln90_fu_347_p0 : STD_LOGIC_VECTOR (22 downto 0);
    signal mul_ln90_fu_347_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln90_fu_347_p2 : STD_LOGIC_VECTOR (53 downto 0);
    signal trunc_ln18_2_fu_356_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal t_11_fu_360_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln19_2_fu_370_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln19_2_fu_370_p2 : STD_LOGIC_VECTOR (54 downto 0);
    signal sext_ln90_1_fu_352_p1 : STD_LOGIC_VECTOR (55 downto 0);
    signal sext_ln19_12_fu_376_p1 : STD_LOGIC_VECTOR (55 downto 0);
    signal add_ln19_2_fu_380_p2 : STD_LOGIC_VECTOR (55 downto 0);
    signal trunc_ln19_1_fu_386_p4 : STD_LOGIC_VECTOR (23 downto 0);
    signal zext_ln96_fu_413_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln96_fu_417_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal sext_ln96_fu_427_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln96_fu_431_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln96_fu_431_p2 : STD_LOGIC_VECTOR (48 downto 0);
    signal trunc_ln18_fu_441_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal t_9_fu_445_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln19_fu_455_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln19_fu_455_p2 : STD_LOGIC_VECTOR (54 downto 0);
    signal sext_ln19_9_fu_461_p1 : STD_LOGIC_VECTOR (55 downto 0);
    signal sext_ln96_1_fu_437_p1 : STD_LOGIC_VECTOR (55 downto 0);
    signal add_ln19_fu_465_p2 : STD_LOGIC_VECTOR (55 downto 0);
    signal trunc_ln_fu_471_p4 : STD_LOGIC_VECTOR (23 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (9 downto 0);

    component ntt_1_zetas IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (7 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (22 downto 0) );
    end component;



begin
    zetas_U : component ntt_1_zetas
    generic map (
        DataWidth => 23,
        AddressRange => 256,
        AddressWidth => 8)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => zetas_address0,
        ce0 => zetas_ce0,
        q0 => zetas_q0);





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


    j_0_reg_138_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
                j_0_reg_138 <= j_4_reg_561;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                j_0_reg_138 <= zext_ln84_reg_509;
            end if; 
        end if;
    end process;

    j_1_reg_147_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_10_fu_179_p3 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                j_1_reg_147 <= ap_const_lv9_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
                j_1_reg_147 <= j_3_reg_579;
            end if; 
        end if;
    end process;

    j_reg_126_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_10_fu_179_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                j_reg_126 <= ap_const_lv10_0;
            elsif (((icmp_ln86_fu_274_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                j_reg_126 <= add_ln84_fu_323_p2;
            end if; 
        end if;
    end process;

    k_4_fu_58_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln86_fu_274_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                k_4_fu_58 <= k_reg_517;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                k_4_fu_58 <= ap_const_lv32_100;
            end if; 
        end if;
    end process;

    len_0_reg_114_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln84_fu_201_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                len_0_reg_114 <= len_fu_221_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                len_0_reg_114 <= ap_const_lv9_1;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln95_fu_401_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state9))) then
                a_addr55_reg_584 <= zext_ln96_1_fu_422_p1(10 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln86_fu_274_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                a_addr_16_reg_555 <= zext_ln88_3_fu_312_p1(10 - 1 downto 0);
                a_addr_reg_550 <= zext_ln87_fu_288_p1(10 - 1 downto 0);
                j_4_reg_561 <= j_4_fu_317_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state9)) then
                j_3_reg_579 <= j_3_fu_407_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln84_fu_201_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                k_reg_517 <= k_fu_210_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                sext_ln86_reg_542 <= sext_ln86_fu_270_p1;
                    zext_ln84_1_reg_537(8 downto 0) <= zext_ln84_1_fu_266_p1(8 downto 0);
                    zext_ln86_reg_532(9 downto 0) <= zext_ln86_fu_238_p1(9 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                t_reg_571 <= a_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    zext_ln77_reg_493(10 downto 8) <= zext_ln77_fu_166_p1(10 downto 8);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                    zext_ln83_reg_500(8 downto 0) <= zext_ln83_fu_175_p1(8 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                    zext_ln84_reg_509(9 downto 0) <= zext_ln84_fu_187_p1(9 downto 0);
            end if;
        end if;
    end process;
    zext_ln77_reg_493(7 downto 0) <= "00000000";
    zext_ln77_reg_493(11) <= '0';
    zext_ln83_reg_500(9) <= '0';
    zext_ln84_reg_509(31 downto 10) <= "0000000000000000000000";
    zext_ln86_reg_532(31 downto 10) <= "0000000000000000000000";
    zext_ln84_1_reg_537(9) <= '0';

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state3, icmp_ln84_fu_201_p2, ap_CS_fsm_state5, icmp_ln86_fu_274_p2, ap_CS_fsm_state9, icmp_ln95_fu_401_p2, tmp_10_fu_179_p3)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((tmp_10_fu_179_p3 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state9;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((icmp_ln84_fu_201_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                if (((icmp_ln86_fu_274_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state9 => 
                if (((icmp_ln95_fu_401_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state9))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state10;
                end if;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXX";
        end case;
    end process;

    a_address0_assign_proc : process(a_addr_reg_550, ap_CS_fsm_state5, a_addr_16_reg_555, ap_CS_fsm_state6, a_addr55_reg_584, ap_CS_fsm_state8, ap_CS_fsm_state10, zext_ln87_fu_288_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            a_address0 <= a_addr55_reg_584;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            a_address0 <= a_addr_16_reg_555;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            a_address0 <= a_addr_reg_550;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            a_address0 <= zext_ln87_fu_288_p1(10 - 1 downto 0);
        else 
            a_address0 <= "XXXXXXXXXX";
        end if; 
    end process;


    a_address1_assign_proc : process(ap_CS_fsm_state5, a_addr_16_reg_555, ap_CS_fsm_state9, zext_ln88_3_fu_312_p1, zext_ln96_1_fu_422_p1, ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            a_address1 <= zext_ln96_1_fu_422_p1(10 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            a_address1 <= a_addr_16_reg_555;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            a_address1 <= zext_ln88_3_fu_312_p1(10 - 1 downto 0);
        else 
            a_address1 <= "XXXXXXXXXX";
        end if; 
    end process;


    a_ce0_assign_proc : process(ap_CS_fsm_state5, ap_CS_fsm_state6, ap_CS_fsm_state8, ap_CS_fsm_state10)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state8) or (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            a_ce0 <= ap_const_logic_1;
        else 
            a_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    a_ce1_assign_proc : process(ap_CS_fsm_state5, ap_CS_fsm_state9, ap_CS_fsm_state7)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state7) or (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            a_ce1 <= ap_const_logic_1;
        else 
            a_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    a_d0_assign_proc : process(ap_CS_fsm_state6, ap_CS_fsm_state8, ap_CS_fsm_state10, add_ln88_1_fu_331_p2, t_12_fu_396_p1, t_10_fu_481_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            a_d0 <= t_10_fu_481_p1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            a_d0 <= t_12_fu_396_p1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            a_d0 <= add_ln88_1_fu_331_p2;
        else 
            a_d0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    a_we0_assign_proc : process(ap_CS_fsm_state6, ap_CS_fsm_state8, ap_CS_fsm_state10)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state8) or (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            a_we0 <= ap_const_logic_1;
        else 
            a_we0 <= ap_const_logic_0;
        end if; 
    end process;

    add_ln19_2_fu_380_p2 <= std_logic_vector(signed(sext_ln90_1_fu_352_p1) + signed(sext_ln19_12_fu_376_p1));
    add_ln19_fu_465_p2 <= std_logic_vector(signed(sext_ln19_9_fu_461_p1) + signed(sext_ln96_1_fu_437_p1));
    add_ln84_1_fu_252_p2 <= std_logic_vector(unsigned(trunc_ln84_fu_248_p1) + unsigned(len_0_reg_114));
    add_ln84_fu_323_p2 <= std_logic_vector(unsigned(zext_ln84_1_reg_537) + unsigned(zext_ln83_reg_500));
    add_ln86_fu_233_p2 <= std_logic_vector(unsigned(zext_ln83_reg_500) + unsigned(j_reg_126));
    add_ln87_fu_283_p2 <= std_logic_vector(unsigned(zext_ln77_reg_493) + unsigned(trunc_ln87_fu_279_p1));
    add_ln88_1_fu_331_p2 <= std_logic_vector(unsigned(a_q0) + unsigned(a_q1));
    add_ln88_2_fu_307_p2 <= std_logic_vector(unsigned(zext_ln77_reg_493) + unsigned(add_ln88_fu_301_p2));
    add_ln88_fu_301_p2 <= std_logic_vector(unsigned(zext_ln88_fu_297_p1) + unsigned(trunc_ln88_fu_293_p1));
    add_ln96_fu_417_p2 <= std_logic_vector(unsigned(zext_ln96_fu_413_p1) + unsigned(zext_ln77_reg_493));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state10 <= ap_CS_fsm(9);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state9, icmp_ln95_fu_401_p2)
    begin
        if ((((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((icmp_ln95_fu_401_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state9)))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state9, icmp_ln95_fu_401_p2)
    begin
        if (((icmp_ln95_fu_401_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    empty_55_fu_242_p2 <= "1" when (unsigned(j_reg_126) > unsigned(add_ln86_fu_233_p2)) else "0";
    icmp_ln84_fu_201_p2 <= "1" when (tmp_11_fu_191_p4 = ap_const_lv2_0) else "0";
    icmp_ln86_fu_274_p2 <= "1" when (unsigned(j_0_reg_138) < unsigned(zext_ln86_reg_532)) else "0";
    icmp_ln95_fu_401_p2 <= "1" when (j_1_reg_147 = ap_const_lv9_100) else "0";
    j_3_fu_407_p2 <= std_logic_vector(unsigned(j_1_reg_147) + unsigned(ap_const_lv9_1));
    j_4_fu_317_p2 <= std_logic_vector(unsigned(ap_const_lv32_1) + unsigned(j_0_reg_138));
    k_fu_210_p2 <= std_logic_vector(signed(ap_const_lv32_FFFFFFFF) + signed(k_4_fu_58));
    len_fu_221_p2 <= std_logic_vector(shift_left(unsigned(len_0_reg_114),to_integer(unsigned('0' & ap_const_lv9_1(9-1 downto 0)))));
    mul_ln19_2_fu_370_p1 <= t_11_fu_360_p2;
    mul_ln19_2_fu_370_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(ap_const_lv55_7FFFFFFF801FFF) * signed(mul_ln19_2_fu_370_p1))), 55));
    mul_ln19_fu_455_p1 <= t_9_fu_445_p2;
    mul_ln19_fu_455_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(ap_const_lv55_7FFFFFFF801FFF) * signed(mul_ln19_fu_455_p1))), 55));
    mul_ln90_fu_347_p0 <= sext_ln86_reg_542(23 - 1 downto 0);
    mul_ln90_fu_347_p1 <= sub_ln89_fu_338_p2;
    mul_ln90_fu_347_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(mul_ln90_fu_347_p0) * signed(mul_ln90_fu_347_p1))), 54));
    mul_ln96_fu_431_p1 <= sext_ln96_fu_427_p0;
    mul_ln96_fu_431_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed('0' &ap_const_lv49_A3FA) * signed(mul_ln96_fu_431_p1))), 49));
        sext_ln19_12_fu_376_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(mul_ln19_2_fu_370_p2),56));

        sext_ln19_9_fu_461_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(mul_ln19_fu_455_p2),56));

        sext_ln86_fu_270_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(zeta_fu_227_p2),54));

        sext_ln90_1_fu_352_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(mul_ln90_fu_347_p2),56));

        sext_ln96_1_fu_437_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(mul_ln96_fu_431_p2),56));

    sext_ln96_fu_427_p0 <= a_q1;
    start_fu_258_p3 <= 
        trunc_ln84_fu_248_p1 when (empty_55_fu_242_p2(0) = '1') else 
        add_ln84_1_fu_252_p2;
    sub_ln89_fu_338_p2 <= std_logic_vector(unsigned(t_reg_571) - unsigned(a_q1));
        t_10_fu_481_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(trunc_ln_fu_471_p4),32));

    t_11_fu_360_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed('0' &ap_const_lv32_3802001) * signed(trunc_ln18_2_fu_356_p1))), 32));
        t_12_fu_396_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(trunc_ln19_1_fu_386_p4),32));

    t_9_fu_445_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed('0' &ap_const_lv32_3802001) * signed(trunc_ln18_fu_441_p1))), 32));
    tmp_10_fu_179_p3 <= len_0_reg_114(8 downto 8);
    tmp_11_fu_191_p4 <= j_reg_126(9 downto 8);
    tmp_fu_158_p3 <= (a_offset & ap_const_lv8_0);
    trunc_ln18_2_fu_356_p1 <= mul_ln90_fu_347_p2(32 - 1 downto 0);
    trunc_ln18_fu_441_p1 <= mul_ln96_fu_431_p2(32 - 1 downto 0);
    trunc_ln19_1_fu_386_p4 <= add_ln19_2_fu_380_p2(55 downto 32);
    trunc_ln84_fu_248_p1 <= j_reg_126(9 - 1 downto 0);
    trunc_ln87_fu_279_p1 <= j_0_reg_138(12 - 1 downto 0);
    trunc_ln88_fu_293_p1 <= j_0_reg_138(12 - 1 downto 0);
    trunc_ln_fu_471_p4 <= add_ln19_fu_465_p2(55 downto 32);
    zeta_fu_227_p2 <= std_logic_vector(unsigned(ap_const_lv23_0) - unsigned(zetas_q0));
    zetas_address0 <= zext_ln85_fu_216_p1(8 - 1 downto 0);

    zetas_ce0_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            zetas_ce0 <= ap_const_logic_1;
        else 
            zetas_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln77_fu_166_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_fu_158_p3),12));
    zext_ln83_fu_175_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(len_0_reg_114),10));
    zext_ln84_1_fu_266_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(start_fu_258_p3),10));
    zext_ln84_fu_187_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_reg_126),32));
    zext_ln85_fu_216_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(k_fu_210_p2),64));
    zext_ln86_fu_238_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln86_fu_233_p2),32));
    zext_ln87_fu_288_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln87_fu_283_p2),64));
    zext_ln88_3_fu_312_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln88_2_fu_307_p2),64));
    zext_ln88_fu_297_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(len_0_reg_114),12));
    zext_ln96_1_fu_422_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln96_fu_417_p2),64));
    zext_ln96_fu_413_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_1_reg_147),12));
end behav;
