// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _pqcrystals_dilithium_6_HH_
#define _pqcrystals_dilithium_6_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "pqcrystals_dilithium_16.h"

namespace ap_rtl {

struct pqcrystals_dilithium_6 : public sc_module {
    // Port declarations 11
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<10> > v_vec_coeffs_address0;
    sc_out< sc_logic > v_vec_coeffs_ce0;
    sc_in< sc_lv<32> > v_vec_coeffs_q0;
    sc_in< sc_lv<18> > bound;
    sc_out< sc_lv<1> > ap_return;


    // Module declarations
    pqcrystals_dilithium_6(sc_module_name name);
    SC_HAS_PROCESS(pqcrystals_dilithium_6);

    ~pqcrystals_dilithium_6();

    sc_trace_file* mVcdFile;

    pqcrystals_dilithium_16* grp_pqcrystals_dilithium_16_fu_35;
    sc_signal< sc_lv<8> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<17> > trunc_ln339_fu_48_p1;
    sc_signal< sc_lv<17> > trunc_ln339_reg_53;
    sc_signal< sc_lv<1> > grp_pqcrystals_dilithium_16_fu_35_ap_return;
    sc_signal< sc_lv<1> > tmp4_reg_58;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > grp_pqcrystals_dilithium_16_fu_35_ap_ready;
    sc_signal< sc_logic > grp_pqcrystals_dilithium_16_fu_35_ap_done;
    sc_signal< sc_lv<1> > tmp_3_reg_62;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > tmp_s_reg_66;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< bool > ap_predicate_op18_call_state6;
    sc_signal< bool > ap_block_state6_on_subcall_done;
    sc_signal< sc_logic > grp_pqcrystals_dilithium_16_fu_35_ap_start;
    sc_signal< sc_logic > grp_pqcrystals_dilithium_16_fu_35_ap_idle;
    sc_signal< sc_lv<10> > grp_pqcrystals_dilithium_16_fu_35_a_coeffs_address0;
    sc_signal< sc_logic > grp_pqcrystals_dilithium_16_fu_35_a_coeffs_ce0;
    sc_signal< sc_lv<4> > grp_pqcrystals_dilithium_16_fu_35_a_coeffs_offset;
    sc_signal< sc_lv<1> > ap_phi_mux_UnifiedRetVal_phi_fu_28_p4;
    sc_signal< sc_lv<1> > UnifiedRetVal_reg_24;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< bool > ap_predicate_op22_call_state8;
    sc_signal< bool > ap_block_state8_on_subcall_done;
    sc_signal< sc_logic > grp_pqcrystals_dilithium_16_fu_35_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<1> > ap_return_preg;
    sc_signal< sc_lv<8> > ap_NS_fsm;
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
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<1> ap_const_lv1_0;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<4> ap_const_lv4_2;
    static const sc_lv<4> ap_const_lv4_3;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_block_state6_on_subcall_done();
    void thread_ap_block_state8_on_subcall_done();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_phi_mux_UnifiedRetVal_phi_fu_28_p4();
    void thread_ap_predicate_op18_call_state6();
    void thread_ap_predicate_op22_call_state8();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_grp_pqcrystals_dilithium_16_fu_35_a_coeffs_offset();
    void thread_grp_pqcrystals_dilithium_16_fu_35_ap_start();
    void thread_trunc_ln339_fu_48_p1();
    void thread_v_vec_coeffs_address0();
    void thread_v_vec_coeffs_ce0();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
