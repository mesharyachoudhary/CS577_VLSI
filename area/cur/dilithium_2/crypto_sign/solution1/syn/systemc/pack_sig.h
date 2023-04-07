// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _pack_sig_HH_
#define _pack_sig_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "polyz_pack.h"

namespace ap_rtl {

struct pack_sig : public sc_module {
    // Port declarations 16
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<13> > sig_address0;
    sc_out< sc_logic > sig_ce0;
    sc_out< sc_logic > sig_we0;
    sc_out< sc_lv<8> > sig_d0;
    sc_out< sc_lv<10> > z_vec_coeffs_address0;
    sc_out< sc_logic > z_vec_coeffs_ce0;
    sc_in< sc_lv<32> > z_vec_coeffs_q0;
    sc_out< sc_lv<10> > h_vec_coeffs_address0;
    sc_out< sc_logic > h_vec_coeffs_ce0;
    sc_in< sc_lv<32> > h_vec_coeffs_q0;


    // Module declarations
    pack_sig(sc_module_name name);
    SC_HAS_PROCESS(pack_sig);

    ~pack_sig();

    sc_trace_file* mVcdFile;

    polyz_pack* grp_polyz_pack_fu_160;
    sc_signal< sc_lv<7> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<3> > i_fu_180_p2;
    sc_signal< sc_lv<3> > i_reg_363;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<11> > or_ln172_fu_202_p2;
    sc_signal< sc_lv<11> > or_ln172_reg_368;
    sc_signal< sc_lv<1> > icmp_ln171_fu_174_p2;
    sc_signal< sc_lv<7> > i_27_fu_215_p2;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<3> > i_28_fu_247_p2;
    sc_signal< sc_lv<3> > i_28_reg_391;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<12> > zext_ln181_fu_261_p1;
    sc_signal< sc_lv<12> > zext_ln181_reg_396;
    sc_signal< sc_lv<1> > icmp_ln180_fu_241_p2;
    sc_signal< sc_lv<9> > j_fu_271_p2;
    sc_signal< sc_lv<9> > j_reg_404;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<1> > icmp_ln181_fu_265_p2;
    sc_signal< sc_logic > grp_polyz_pack_fu_160_ap_start;
    sc_signal< sc_logic > grp_polyz_pack_fu_160_ap_done;
    sc_signal< sc_logic > grp_polyz_pack_fu_160_ap_idle;
    sc_signal< sc_logic > grp_polyz_pack_fu_160_ap_ready;
    sc_signal< sc_lv<13> > grp_polyz_pack_fu_160_r_address0;
    sc_signal< sc_logic > grp_polyz_pack_fu_160_r_ce0;
    sc_signal< sc_logic > grp_polyz_pack_fu_160_r_we0;
    sc_signal< sc_lv<8> > grp_polyz_pack_fu_160_r_d0;
    sc_signal< sc_lv<10> > grp_polyz_pack_fu_160_a_coeffs_address0;
    sc_signal< sc_logic > grp_polyz_pack_fu_160_a_coeffs_ce0;
    sc_signal< sc_lv<3> > i_1_reg_113;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<7> > i_2_reg_125;
    sc_signal< sc_lv<1> > icmp_ln176_fu_209_p2;
    sc_signal< sc_lv<3> > i_3_reg_136;
    sc_signal< sc_lv<9> > j_0_reg_148;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_logic > grp_polyz_pack_fu_160_ap_start_reg;
    sc_signal< sc_lv<64> > zext_ln177_1_fu_231_p1;
    sc_signal< sc_lv<64> > zext_ln182_15_fu_286_p1;
    sc_signal< sc_lv<64> > zext_ln185_fu_318_p1;
    sc_signal< sc_lv<64> > sext_ln183_fu_350_p1;
    sc_signal< sc_lv<1> > icmp_ln182_fu_323_p2;
    sc_signal< sc_lv<32> > k_1_fu_66;
    sc_signal< sc_lv<32> > k_fu_334_p2;
    sc_signal< sc_lv<8> > trunc_ln185_fu_291_p1;
    sc_signal< sc_lv<8> > trunc_ln183_fu_329_p1;
    sc_signal< sc_lv<2> > trunc_ln172_fu_186_p1;
    sc_signal< sc_lv<11> > add_ln_fu_190_p5;
    sc_signal< sc_lv<12> > zext_ln177_fu_221_p1;
    sc_signal< sc_lv<12> > add_ln177_fu_225_p2;
    sc_signal< sc_lv<11> > tmp_s_fu_253_p3;
    sc_signal< sc_lv<12> > zext_ln182_fu_277_p1;
    sc_signal< sc_lv<12> > add_ln182_fu_281_p2;
    sc_signal< sc_lv<7> > or_ln_fu_296_p3;
    sc_signal< sc_lv<7> > or_ln185_fu_304_p2;
    sc_signal< sc_lv<12> > or_ln185_1_fu_310_p3;
    sc_signal< sc_lv<14> > trunc_ln183_1_fu_340_p1;
    sc_signal< sc_lv<14> > add_ln183_fu_344_p2;
    sc_signal< sc_lv<7> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<7> ap_ST_fsm_state1;
    static const sc_lv<7> ap_ST_fsm_state2;
    static const sc_lv<7> ap_ST_fsm_state3;
    static const sc_lv<7> ap_ST_fsm_state4;
    static const sc_lv<7> ap_ST_fsm_state5;
    static const sc_lv<7> ap_ST_fsm_state6;
    static const sc_lv<7> ap_ST_fsm_state7;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<11> ap_const_lv11_20;
    static const sc_lv<7> ap_const_lv7_54;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<12> ap_const_lv12_920;
    static const sc_lv<9> ap_const_lv9_100;
    static const sc_lv<9> ap_const_lv9_1;
    static const sc_lv<4> ap_const_lv4_A;
    static const sc_lv<7> ap_const_lv7_20;
    static const sc_lv<5> ap_const_lv5_12;
    static const sc_lv<14> ap_const_lv14_920;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln177_fu_225_p2();
    void thread_add_ln182_fu_281_p2();
    void thread_add_ln183_fu_344_p2();
    void thread_add_ln_fu_190_p5();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_grp_polyz_pack_fu_160_ap_start();
    void thread_h_vec_coeffs_address0();
    void thread_h_vec_coeffs_ce0();
    void thread_i_27_fu_215_p2();
    void thread_i_28_fu_247_p2();
    void thread_i_fu_180_p2();
    void thread_icmp_ln171_fu_174_p2();
    void thread_icmp_ln176_fu_209_p2();
    void thread_icmp_ln180_fu_241_p2();
    void thread_icmp_ln181_fu_265_p2();
    void thread_icmp_ln182_fu_323_p2();
    void thread_j_fu_271_p2();
    void thread_k_fu_334_p2();
    void thread_or_ln172_fu_202_p2();
    void thread_or_ln185_1_fu_310_p3();
    void thread_or_ln185_fu_304_p2();
    void thread_or_ln_fu_296_p3();
    void thread_sext_ln183_fu_350_p1();
    void thread_sig_address0();
    void thread_sig_ce0();
    void thread_sig_d0();
    void thread_sig_we0();
    void thread_tmp_s_fu_253_p3();
    void thread_trunc_ln172_fu_186_p1();
    void thread_trunc_ln183_1_fu_340_p1();
    void thread_trunc_ln183_fu_329_p1();
    void thread_trunc_ln185_fu_291_p1();
    void thread_z_vec_coeffs_address0();
    void thread_z_vec_coeffs_ce0();
    void thread_zext_ln177_1_fu_231_p1();
    void thread_zext_ln177_fu_221_p1();
    void thread_zext_ln181_fu_261_p1();
    void thread_zext_ln182_15_fu_286_p1();
    void thread_zext_ln182_fu_277_p1();
    void thread_zext_ln185_fu_318_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
