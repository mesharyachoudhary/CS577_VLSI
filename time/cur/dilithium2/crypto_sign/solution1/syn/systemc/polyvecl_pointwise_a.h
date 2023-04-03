// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _polyvecl_pointwise_a_HH_
#define _polyvecl_pointwise_a_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "polyvecl_pointwishbi.h"

namespace ap_rtl {

struct polyvecl_pointwise_a : public sc_module {
    // Port declarations 18
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<10> > w_coeffs_address0;
    sc_out< sc_logic > w_coeffs_ce0;
    sc_out< sc_logic > w_coeffs_we0;
    sc_out< sc_lv<32> > w_coeffs_d0;
    sc_in< sc_lv<32> > w_coeffs_q0;
    sc_in< sc_lv<3> > w_coeffs_offset;
    sc_out< sc_lv<12> > u_vec_coeffs_address0;
    sc_out< sc_logic > u_vec_coeffs_ce0;
    sc_in< sc_lv<23> > u_vec_coeffs_q0;
    sc_out< sc_lv<10> > v_vec_coeffs_address0;
    sc_out< sc_logic > v_vec_coeffs_ce0;
    sc_in< sc_lv<32> > v_vec_coeffs_q0;


    // Module declarations
    polyvecl_pointwise_a(sc_module_name name);
    SC_HAS_PROCESS(polyvecl_pointwise_a);

    ~polyvecl_pointwise_a();

    sc_trace_file* mVcdFile;

    polyvecl_pointwishbi* t_coeffs_U;
    sc_signal< sc_lv<8> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<12> > zext_ln181_2_fu_201_p1;
    sc_signal< sc_lv<12> > zext_ln181_2_reg_517;
    sc_signal< sc_lv<6> > zext_ln181_3_cast_fu_213_p1;
    sc_signal< sc_lv<6> > zext_ln181_3_cast_reg_523;
    sc_signal< sc_lv<9> > i_14_fu_223_p2;
    sc_signal< sc_lv<9> > i_14_reg_531;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > icmp_ln180_fu_217_p2;
    sc_signal< sc_lv<14> > tmp_471_cast_fu_340_p3;
    sc_signal< sc_lv<14> > tmp_471_cast_reg_549;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > icmp_ln137_fu_325_p2;
    sc_signal< sc_lv<12> > zext_ln176_fu_356_p1;
    sc_signal< sc_lv<12> > zext_ln176_reg_554;
    sc_signal< sc_lv<9> > i_15_fu_366_p2;
    sc_signal< sc_lv<9> > i_15_reg_562;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > icmp_ln180_1_fu_360_p2;
    sc_signal< sc_lv<9> > i_16_fu_474_p2;
    sc_signal< sc_lv<9> > i_16_reg_580;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<10> > w_coeffs_addr_1_reg_585;
    sc_signal< sc_lv<1> > icmp_ln87_fu_468_p2;
    sc_signal< sc_lv<3> > i_fu_499_p2;
    sc_signal< sc_lv<8> > t_coeffs_address0;
    sc_signal< sc_logic > t_coeffs_ce0;
    sc_signal< sc_logic > t_coeffs_we0;
    sc_signal< sc_lv<32> > t_coeffs_d0;
    sc_signal< sc_lv<32> > t_coeffs_q0;
    sc_signal< sc_lv<9> > i_0_i_reg_146;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<3> > i_0_reg_158;
    sc_signal< sc_lv<9> > i_0_i1_reg_170;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<9> > i_0_i20_reg_182;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<64> > zext_ln181_4_fu_243_p1;
    sc_signal< sc_lv<64> > zext_ln181_fu_229_p1;
    sc_signal< sc_lv<64> > zext_ln181_5_fu_257_p1;
    sc_signal< sc_lv<64> > zext_ln181_10_fu_385_p1;
    sc_signal< sc_lv<64> > zext_ln181_11_fu_395_p1;
    sc_signal< sc_lv<64> > zext_ln181_1_fu_400_p1;
    sc_signal< sc_lv<64> > zext_ln88_2_fu_494_p1;
    sc_signal< sc_lv<64> > zext_ln88_fu_480_p1;
    sc_signal< sc_lv<32> > t_1_fu_320_p1;
    sc_signal< sc_lv<32> > add_ln88_fu_505_p2;
    sc_signal< sc_lv<11> > tmp_fu_193_p3;
    sc_signal< sc_lv<5> > tmp_s_fu_205_p3;
    sc_signal< sc_lv<13> > tmp_258_fu_234_p4;
    sc_signal< sc_lv<12> > zext_ln181_3_fu_248_p1;
    sc_signal< sc_lv<12> > add_ln181_fu_252_p2;
    sc_signal< sc_lv<23> > mul_ln181_fu_270_p0;
    sc_signal< sc_lv<32> > mul_ln181_fu_270_p1;
    sc_signal< sc_lv<55> > mul_ln181_fu_270_p2;
    sc_signal< sc_lv<32> > trunc_ln18_fu_280_p1;
    sc_signal< sc_lv<32> > t_fu_284_p2;
    sc_signal< sc_lv<32> > mul_ln19_fu_294_p1;
    sc_signal< sc_lv<55> > mul_ln19_fu_294_p2;
    sc_signal< sc_lv<56> > sext_ln181_1_fu_276_p1;
    sc_signal< sc_lv<56> > sext_ln19_1_fu_300_p1;
    sc_signal< sc_lv<56> > add_ln19_fu_304_p2;
    sc_signal< sc_lv<24> > tmp_1_fu_310_p4;
    sc_signal< sc_lv<6> > zext_ln181_7_fu_331_p1;
    sc_signal< sc_lv<6> > add_ln181_1_fu_335_p2;
    sc_signal< sc_lv<11> > tmp_259_fu_348_p3;
    sc_signal< sc_lv<14> > zext_ln181_9_fu_376_p1;
    sc_signal< sc_lv<14> > add_ln181_2_fu_380_p2;
    sc_signal< sc_lv<12> > zext_ln181_8_fu_372_p1;
    sc_signal< sc_lv<12> > add_ln181_3_fu_390_p2;
    sc_signal< sc_lv<23> > mul_ln181_1_fu_413_p0;
    sc_signal< sc_lv<32> > mul_ln181_1_fu_413_p1;
    sc_signal< sc_lv<55> > mul_ln181_1_fu_413_p2;
    sc_signal< sc_lv<32> > trunc_ln18_1_fu_423_p1;
    sc_signal< sc_lv<32> > t_2_fu_427_p2;
    sc_signal< sc_lv<32> > mul_ln19_1_fu_437_p1;
    sc_signal< sc_lv<55> > mul_ln19_1_fu_437_p2;
    sc_signal< sc_lv<56> > sext_ln181_3_fu_419_p1;
    sc_signal< sc_lv<56> > sext_ln19_4_fu_443_p1;
    sc_signal< sc_lv<56> > add_ln19_1_fu_447_p2;
    sc_signal< sc_lv<24> > tmp_2_fu_453_p4;
    sc_signal< sc_lv<12> > zext_ln88_1_fu_485_p1;
    sc_signal< sc_lv<12> > add_ln88_1_fu_489_p2;
    sc_signal< sc_lv<8> > ap_NS_fsm;
    sc_signal< sc_lv<55> > mul_ln181_1_fu_413_p00;
    sc_signal< sc_lv<55> > mul_ln181_fu_270_p00;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<8> ap_ST_fsm_state1;
    static const sc_lv<8> ap_ST_fsm_state2;
    static const sc_lv<8> ap_ST_fsm_state3;
    static const sc_lv<8> ap_ST_fsm_state4;
    static const sc_lv<8> ap_ST_fsm_state5;
    static const sc_lv<8> ap_ST_fsm_state6;
    static const sc_lv<8> ap_ST_fsm_state7;
    static const sc_lv<8> ap_ST_fsm_state8;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<9> ap_const_lv9_100;
    static const sc_lv<9> ap_const_lv9_1;
    static const sc_lv<32> ap_const_lv32_3802001;
    static const sc_lv<55> ap_const_lv55_7FFFFFFF801FFF;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_37;
    static const sc_lv<3> ap_const_lv3_4;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln181_1_fu_335_p2();
    void thread_add_ln181_2_fu_380_p2();
    void thread_add_ln181_3_fu_390_p2();
    void thread_add_ln181_fu_252_p2();
    void thread_add_ln19_1_fu_447_p2();
    void thread_add_ln19_fu_304_p2();
    void thread_add_ln88_1_fu_489_p2();
    void thread_add_ln88_fu_505_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_i_14_fu_223_p2();
    void thread_i_15_fu_366_p2();
    void thread_i_16_fu_474_p2();
    void thread_i_fu_499_p2();
    void thread_icmp_ln137_fu_325_p2();
    void thread_icmp_ln180_1_fu_360_p2();
    void thread_icmp_ln180_fu_217_p2();
    void thread_icmp_ln87_fu_468_p2();
    void thread_mul_ln181_1_fu_413_p0();
    void thread_mul_ln181_1_fu_413_p00();
    void thread_mul_ln181_1_fu_413_p1();
    void thread_mul_ln181_1_fu_413_p2();
    void thread_mul_ln181_fu_270_p0();
    void thread_mul_ln181_fu_270_p00();
    void thread_mul_ln181_fu_270_p1();
    void thread_mul_ln181_fu_270_p2();
    void thread_mul_ln19_1_fu_437_p1();
    void thread_mul_ln19_1_fu_437_p2();
    void thread_mul_ln19_fu_294_p1();
    void thread_mul_ln19_fu_294_p2();
    void thread_sext_ln181_1_fu_276_p1();
    void thread_sext_ln181_3_fu_419_p1();
    void thread_sext_ln19_1_fu_300_p1();
    void thread_sext_ln19_4_fu_443_p1();
    void thread_t_1_fu_320_p1();
    void thread_t_2_fu_427_p2();
    void thread_t_coeffs_address0();
    void thread_t_coeffs_ce0();
    void thread_t_coeffs_d0();
    void thread_t_coeffs_we0();
    void thread_t_fu_284_p2();
    void thread_tmp_1_fu_310_p4();
    void thread_tmp_258_fu_234_p4();
    void thread_tmp_259_fu_348_p3();
    void thread_tmp_2_fu_453_p4();
    void thread_tmp_471_cast_fu_340_p3();
    void thread_tmp_fu_193_p3();
    void thread_tmp_s_fu_205_p3();
    void thread_trunc_ln18_1_fu_423_p1();
    void thread_trunc_ln18_fu_280_p1();
    void thread_u_vec_coeffs_address0();
    void thread_u_vec_coeffs_ce0();
    void thread_v_vec_coeffs_address0();
    void thread_v_vec_coeffs_ce0();
    void thread_w_coeffs_address0();
    void thread_w_coeffs_ce0();
    void thread_w_coeffs_d0();
    void thread_w_coeffs_we0();
    void thread_zext_ln176_fu_356_p1();
    void thread_zext_ln181_10_fu_385_p1();
    void thread_zext_ln181_11_fu_395_p1();
    void thread_zext_ln181_1_fu_400_p1();
    void thread_zext_ln181_2_fu_201_p1();
    void thread_zext_ln181_3_cast_fu_213_p1();
    void thread_zext_ln181_3_fu_248_p1();
    void thread_zext_ln181_4_fu_243_p1();
    void thread_zext_ln181_5_fu_257_p1();
    void thread_zext_ln181_7_fu_331_p1();
    void thread_zext_ln181_8_fu_372_p1();
    void thread_zext_ln181_9_fu_376_p1();
    void thread_zext_ln181_fu_229_p1();
    void thread_zext_ln88_1_fu_485_p1();
    void thread_zext_ln88_2_fu_494_p1();
    void thread_zext_ln88_fu_480_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
