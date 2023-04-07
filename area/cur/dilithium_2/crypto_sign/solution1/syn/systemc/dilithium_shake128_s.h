// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _dilithium_shake128_s_HH_
#define _dilithium_shake128_s_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "dilithium_shake12dEe.h"

namespace ap_rtl {

struct dilithium_shake128_s : public sc_module {
    // Port declarations 20
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<5> > state_s_address0;
    sc_out< sc_logic > state_s_ce0;
    sc_out< sc_logic > state_s_we0;
    sc_out< sc_lv<64> > state_s_d0;
    sc_in< sc_lv<64> > state_s_q0;
    sc_out< sc_lv<5> > state_s_address1;
    sc_out< sc_logic > state_s_ce1;
    sc_out< sc_logic > state_s_we1;
    sc_out< sc_lv<64> > state_s_d1;
    sc_in< sc_lv<64> > state_s_q1;
    sc_out< sc_lv<8> > seed_address0;
    sc_out< sc_logic > seed_ce0;
    sc_in< sc_lv<8> > seed_q0;
    sc_in< sc_lv<10> > nonce;


    // Module declarations
    dilithium_shake128_s(sc_module_name name);
    SC_HAS_PROCESS(dilithium_shake128_s);

    ~dilithium_shake128_s();

    sc_trace_file* mVcdFile;

    dilithium_shake12dEe* t_U;
    sc_signal< sc_lv<12> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<5> > i_fu_280_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<64> > zext_ln417_fu_291_p1;
    sc_signal< sc_lv<64> > zext_ln417_reg_547;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<3> > add_ln417_fu_301_p2;
    sc_signal< sc_lv<3> > add_ln417_reg_555;
    sc_signal< sc_lv<5> > shl_ln_fu_311_p3;
    sc_signal< sc_lv<5> > shl_ln_reg_560;
    sc_signal< sc_lv<1> > icmp_ln417_fu_295_p2;
    sc_signal< sc_lv<4> > i_29_fu_325_p2;
    sc_signal< sc_lv<4> > i_29_reg_568;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > icmp_ln30_fu_319_p2;
    sc_signal< sc_lv<5> > state_s_addr_1_reg_578;
    sc_signal< sc_lv<64> > r_fu_371_p2;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<3> > add_ln388_fu_384_p2;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<4> > i_30_fu_407_p2;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<2> > i_31_fu_429_p2;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<4> > i_32_fu_470_p2;
    sc_signal< sc_lv<4> > i_32_reg_615;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<1> > icmp_ln30_2_fu_464_p2;
    sc_signal< sc_lv<64> > r_2_fu_507_p2;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<3> > t_address0;
    sc_signal< sc_logic > t_ce0;
    sc_signal< sc_logic > t_we0;
    sc_signal< sc_lv<8> > t_d0;
    sc_signal< sc_lv<8> > t_q0;
    sc_signal< sc_lv<5> > i_0_i_i1_reg_171;
    sc_signal< sc_lv<1> > icmp_ln362_fu_274_p2;
    sc_signal< sc_lv<3> > i_3_i_i31_reg_182;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<4> > i_0_i_reg_193;
    sc_signal< sc_lv<64> > r_0_i_reg_205;
    sc_signal< sc_lv<3> > phi_ln388_reg_217;
    sc_signal< sc_lv<1> > icmp_ln388_fu_395_p2;
    sc_signal< sc_lv<4> > i_4_i_i_reg_228;
    sc_signal< sc_lv<1> > icmp_ln424_fu_401_p2;
    sc_signal< sc_lv<2> > i_5_i_i_reg_239;
    sc_signal< sc_lv<1> > icmp_ln426_fu_423_p2;
    sc_signal< sc_lv<4> > i_0_i29_reg_250;
    sc_signal< sc_lv<64> > r_0_i30_reg_262;
    sc_signal< sc_lv<64> > zext_ln363_fu_286_p1;
    sc_signal< sc_lv<64> > zext_ln31_8_fu_340_p1;
    sc_signal< sc_lv<64> > zext_ln388_fu_390_p1;
    sc_signal< sc_lv<64> > zext_ln425_fu_413_p1;
    sc_signal< sc_lv<64> > zext_ln426_fu_418_p1;
    sc_signal< sc_lv<64> > zext_ln31_11_fu_476_p1;
    sc_signal< sc_lv<64> > xor_ln418_fu_377_p2;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<64> > xor_ln452_fu_526_p2;
    sc_signal< sc_lv<8> > select_ln427_fu_455_p3;
    sc_signal< sc_lv<2> > trunc_ln418_fu_307_p1;
    sc_signal< sc_lv<5> > zext_ln31_fu_331_p1;
    sc_signal< sc_lv<5> > add_ln31_fu_335_p2;
    sc_signal< sc_lv<3> > trunc_ln31_fu_349_p1;
    sc_signal< sc_lv<6> > shl_ln13_fu_353_p3;
    sc_signal< sc_lv<64> > zext_ln31_9_fu_345_p1;
    sc_signal< sc_lv<64> > zext_ln31_10_fu_361_p1;
    sc_signal< sc_lv<64> > shl_ln31_fu_365_p2;
    sc_signal< sc_lv<2> > tmp_s_fu_439_p4;
    sc_signal< sc_lv<1> > trunc_ln427_fu_435_p1;
    sc_signal< sc_lv<8> > zext_ln427_fu_448_p1;
    sc_signal< sc_lv<8> > trunc_ln427_2_fu_452_p1;
    sc_signal< sc_lv<3> > trunc_ln31_3_fu_485_p1;
    sc_signal< sc_lv<6> > shl_ln31_5_fu_489_p3;
    sc_signal< sc_lv<64> > zext_ln31_12_fu_481_p1;
    sc_signal< sc_lv<64> > zext_ln31_13_fu_497_p1;
    sc_signal< sc_lv<64> > shl_ln31_2_fu_501_p2;
    sc_signal< sc_lv<64> > xor_ln428_fu_513_p2;
    sc_signal< sc_lv<12> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<12> ap_ST_fsm_state1;
    static const sc_lv<12> ap_ST_fsm_state2;
    static const sc_lv<12> ap_ST_fsm_state3;
    static const sc_lv<12> ap_ST_fsm_state4;
    static const sc_lv<12> ap_ST_fsm_state5;
    static const sc_lv<12> ap_ST_fsm_state6;
    static const sc_lv<12> ap_ST_fsm_state7;
    static const sc_lv<12> ap_ST_fsm_state8;
    static const sc_lv<12> ap_ST_fsm_state9;
    static const sc_lv<12> ap_ST_fsm_state10;
    static const sc_lv<12> ap_ST_fsm_state11;
    static const sc_lv<12> ap_ST_fsm_state12;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<64> ap_const_lv64_4;
    static const sc_lv<64> ap_const_lv64_14;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<5> ap_const_lv5_19;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<3> ap_const_lv3_7;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<64> ap_const_lv64_1F0000;
    static const sc_lv<64> ap_const_lv64_8000000000000000;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln31_fu_335_p2();
    void thread_add_ln388_fu_384_p2();
    void thread_add_ln417_fu_301_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_i_29_fu_325_p2();
    void thread_i_30_fu_407_p2();
    void thread_i_31_fu_429_p2();
    void thread_i_32_fu_470_p2();
    void thread_i_fu_280_p2();
    void thread_icmp_ln30_2_fu_464_p2();
    void thread_icmp_ln30_fu_319_p2();
    void thread_icmp_ln362_fu_274_p2();
    void thread_icmp_ln388_fu_395_p2();
    void thread_icmp_ln417_fu_295_p2();
    void thread_icmp_ln424_fu_401_p2();
    void thread_icmp_ln426_fu_423_p2();
    void thread_r_2_fu_507_p2();
    void thread_r_fu_371_p2();
    void thread_seed_address0();
    void thread_seed_ce0();
    void thread_select_ln427_fu_455_p3();
    void thread_shl_ln13_fu_353_p3();
    void thread_shl_ln31_2_fu_501_p2();
    void thread_shl_ln31_5_fu_489_p3();
    void thread_shl_ln31_fu_365_p2();
    void thread_shl_ln_fu_311_p3();
    void thread_state_s_address0();
    void thread_state_s_address1();
    void thread_state_s_ce0();
    void thread_state_s_ce1();
    void thread_state_s_d0();
    void thread_state_s_d1();
    void thread_state_s_we0();
    void thread_state_s_we1();
    void thread_t_address0();
    void thread_t_ce0();
    void thread_t_d0();
    void thread_t_we0();
    void thread_tmp_s_fu_439_p4();
    void thread_trunc_ln31_3_fu_485_p1();
    void thread_trunc_ln31_fu_349_p1();
    void thread_trunc_ln418_fu_307_p1();
    void thread_trunc_ln427_2_fu_452_p1();
    void thread_trunc_ln427_fu_435_p1();
    void thread_xor_ln418_fu_377_p2();
    void thread_xor_ln428_fu_513_p2();
    void thread_xor_ln452_fu_526_p2();
    void thread_zext_ln31_10_fu_361_p1();
    void thread_zext_ln31_11_fu_476_p1();
    void thread_zext_ln31_12_fu_481_p1();
    void thread_zext_ln31_13_fu_497_p1();
    void thread_zext_ln31_8_fu_340_p1();
    void thread_zext_ln31_9_fu_345_p1();
    void thread_zext_ln31_fu_331_p1();
    void thread_zext_ln363_fu_286_p1();
    void thread_zext_ln388_fu_390_p1();
    void thread_zext_ln417_fu_291_p1();
    void thread_zext_ln425_fu_413_p1();
    void thread_zext_ln426_fu_418_p1();
    void thread_zext_ln427_fu_448_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
