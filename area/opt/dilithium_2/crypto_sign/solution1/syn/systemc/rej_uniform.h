// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _rej_uniform_HH_
#define _rej_uniform_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct rej_uniform : public sc_module {
    // Port declarations 22
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<12> > a_address0;
    sc_out< sc_logic > a_ce0;
    sc_out< sc_logic > a_we0;
    sc_out< sc_lv<23> > a_d0;
    sc_in< sc_lv<3> > a_offset;
    sc_in< sc_lv<3> > a_offset1;
    sc_in< sc_lv<32> > a_offset2;
    sc_in< sc_lv<10> > len;
    sc_out< sc_lv<10> > buf_r_address0;
    sc_out< sc_logic > buf_r_ce0;
    sc_in< sc_lv<8> > buf_r_q0;
    sc_out< sc_lv<10> > buf_r_address1;
    sc_out< sc_logic > buf_r_ce1;
    sc_in< sc_lv<8> > buf_r_q1;
    sc_in< sc_lv<11> > buflen;
    sc_out< sc_lv<32> > ap_return;


    // Module declarations
    rej_uniform(sc_module_name name);
    SC_HAS_PROCESS(rej_uniform);

    ~rej_uniform();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > buflen_cast_fu_136_p1;
    sc_signal< sc_lv<32> > buflen_cast_reg_288;
    sc_signal< sc_lv<32> > len_cast_fu_140_p1;
    sc_signal< sc_lv<32> > len_cast_reg_293;
    sc_signal< sc_lv<14> > tmp_7_cast_fu_166_p3;
    sc_signal< sc_lv<14> > tmp_7_cast_reg_298;
    sc_signal< sc_lv<9> > trunc_ln345_fu_174_p1;
    sc_signal< sc_lv<9> > trunc_ln345_reg_303;
    sc_signal< sc_lv<32> > ctr_1_load_reg_308;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<32> > pos_2_fu_191_p2;
    sc_signal< sc_lv<32> > pos_2_reg_317;
    sc_signal< sc_lv<1> > icmp_ln338_fu_186_p2;
    sc_signal< sc_lv<1> > icmp_ln338_1_fu_197_p2;
    sc_signal< sc_lv<8> > buf_load_reg_330;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<32> > pos_0_reg_124;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<64> > zext_ln339_fu_202_p1;
    sc_signal< sc_lv<64> > zext_ln340_fu_219_p1;
    sc_signal< sc_lv<64> > zext_ln341_fu_224_p1;
    sc_signal< sc_lv<64> > zext_ln345_3_fu_271_p1;
    sc_signal< sc_lv<1> > icmp_ln344_fu_243_p2;
    sc_signal< sc_lv<32> > ctr_1_fu_44;
    sc_signal< sc_lv<32> > ctr_fu_249_p2;
    sc_signal< sc_lv<23> > tmp_1_fu_233_p4;
    sc_signal< sc_lv<5> > tmp_5_fu_148_p3;
    sc_signal< sc_lv<6> > zext_ln345_1_fu_156_p1;
    sc_signal< sc_lv<6> > zext_ln345_fu_144_p1;
    sc_signal< sc_lv<6> > add_ln345_1_fu_160_p2;
    sc_signal< sc_lv<32> > pos_fu_207_p2;
    sc_signal< sc_lv<32> > pos_1_fu_213_p2;
    sc_signal< sc_lv<7> > trunc_ln342_fu_229_p1;
    sc_signal< sc_lv<9> > trunc_ln345_1_fu_254_p1;
    sc_signal< sc_lv<9> > add_ln345_fu_257_p2;
    sc_signal< sc_lv<14> > zext_ln345_2_fu_262_p1;
    sc_signal< sc_lv<14> > add_ln345_3_fu_266_p2;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_fsm_state1;
    static const sc_lv<4> ap_ST_fsm_state2;
    static const sc_lv<4> ap_ST_fsm_state3;
    static const sc_lv<4> ap_ST_fsm_state4;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<23> ap_const_lv23_7FE001;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_a_address0();
    void thread_a_ce0();
    void thread_a_d0();
    void thread_a_we0();
    void thread_add_ln345_1_fu_160_p2();
    void thread_add_ln345_3_fu_266_p2();
    void thread_add_ln345_fu_257_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_buf_r_address0();
    void thread_buf_r_address1();
    void thread_buf_r_ce0();
    void thread_buf_r_ce1();
    void thread_buflen_cast_fu_136_p1();
    void thread_ctr_fu_249_p2();
    void thread_icmp_ln338_1_fu_197_p2();
    void thread_icmp_ln338_fu_186_p2();
    void thread_icmp_ln344_fu_243_p2();
    void thread_len_cast_fu_140_p1();
    void thread_pos_1_fu_213_p2();
    void thread_pos_2_fu_191_p2();
    void thread_pos_fu_207_p2();
    void thread_tmp_1_fu_233_p4();
    void thread_tmp_5_fu_148_p3();
    void thread_tmp_7_cast_fu_166_p3();
    void thread_trunc_ln342_fu_229_p1();
    void thread_trunc_ln345_1_fu_254_p1();
    void thread_trunc_ln345_fu_174_p1();
    void thread_zext_ln339_fu_202_p1();
    void thread_zext_ln340_fu_219_p1();
    void thread_zext_ln341_fu_224_p1();
    void thread_zext_ln345_1_fu_156_p1();
    void thread_zext_ln345_2_fu_262_p1();
    void thread_zext_ln345_3_fu_271_p1();
    void thread_zext_ln345_fu_144_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
