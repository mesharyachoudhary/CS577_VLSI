// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _keccak_squeezeblocks_2_HH_
#define _keccak_squeezeblocks_2_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "KeccakF1600_StatePer_1.h"

namespace ap_rtl {

struct keccak_squeezeblocks_2 : public sc_module {
    // Port declarations 22
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<10> > out_r_address0;
    sc_out< sc_logic > out_r_ce0;
    sc_out< sc_logic > out_r_we0;
    sc_out< sc_lv<8> > out_r_d0;
    sc_in< sc_lv<2> > out_offset;
    sc_in< sc_lv<4> > nblocks;
    sc_out< sc_lv<5> > s_address0;
    sc_out< sc_logic > s_ce0;
    sc_out< sc_logic > s_we0;
    sc_out< sc_lv<64> > s_d0;
    sc_in< sc_lv<64> > s_q0;
    sc_out< sc_lv<5> > s_address1;
    sc_out< sc_logic > s_ce1;
    sc_out< sc_logic > s_we1;
    sc_out< sc_lv<64> > s_d1;
    sc_in< sc_lv<64> > s_q1;


    // Module declarations
    keccak_squeezeblocks_2(sc_module_name name);
    SC_HAS_PROCESS(keccak_squeezeblocks_2);

    ~keccak_squeezeblocks_2();

    sc_trace_file* mVcdFile;

    KeccakF1600_StatePer_1* grp_KeccakF1600_StatePer_1_fu_143;
    sc_signal< sc_lv<6> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<5> > i_fu_163_p2;
    sc_signal< sc_lv<5> > i_reg_289;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > icmp_ln476_fu_157_p2;
    sc_signal< sc_lv<10> > add_ln478_fu_174_p2;
    sc_signal< sc_lv<4> > add_ln479_fu_180_p2;
    sc_signal< sc_lv<8> > shl_ln_fu_186_p3;
    sc_signal< sc_lv<8> > shl_ln_reg_309;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<64> > s_load_reg_314;
    sc_signal< sc_lv<4> > i_29_fu_200_p2;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > grp_KeccakF1600_StatePer_1_fu_143_ap_start;
    sc_signal< sc_logic > grp_KeccakF1600_StatePer_1_fu_143_ap_done;
    sc_signal< sc_logic > grp_KeccakF1600_StatePer_1_fu_143_ap_idle;
    sc_signal< sc_logic > grp_KeccakF1600_StatePer_1_fu_143_ap_ready;
    sc_signal< sc_lv<5> > grp_KeccakF1600_StatePer_1_fu_143_state_address0;
    sc_signal< sc_logic > grp_KeccakF1600_StatePer_1_fu_143_state_ce0;
    sc_signal< sc_logic > grp_KeccakF1600_StatePer_1_fu_143_state_we0;
    sc_signal< sc_lv<64> > grp_KeccakF1600_StatePer_1_fu_143_state_d0;
    sc_signal< sc_lv<5> > grp_KeccakF1600_StatePer_1_fu_143_state_address1;
    sc_signal< sc_logic > grp_KeccakF1600_StatePer_1_fu_143_state_ce1;
    sc_signal< sc_logic > grp_KeccakF1600_StatePer_1_fu_143_state_we1;
    sc_signal< sc_lv<64> > grp_KeccakF1600_StatePer_1_fu_143_state_d1;
    sc_signal< sc_lv<4> > nblocks_assign_1_reg_98;
    sc_signal< sc_lv<10> > p_0_rec_reg_108;
    sc_signal< sc_lv<5> > i_0_reg_120;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > icmp_ln47_fu_194_p2;
    sc_signal< sc_lv<4> > i_0_i_reg_132;
    sc_signal< sc_logic > grp_KeccakF1600_StatePer_1_fu_143_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > icmp_ln474_fu_151_p2;
    sc_signal< sc_lv<64> > zext_ln477_fu_169_p1;
    sc_signal< sc_lv<64> > zext_ln48_3_fu_268_p1;
    sc_signal< sc_lv<3> > trunc_ln48_fu_206_p1;
    sc_signal< sc_lv<6> > shl_ln12_fu_210_p3;
    sc_signal< sc_lv<64> > zext_ln48_fu_218_p1;
    sc_signal< sc_lv<64> > lshr_ln48_fu_222_p2;
    sc_signal< sc_lv<8> > tmp_s_fu_236_p4;
    sc_signal< sc_lv<8> > zext_ln48_1_fu_232_p1;
    sc_signal< sc_lv<8> > add_ln48_1_fu_253_p2;
    sc_signal< sc_lv<10> > zext_ln48_2_fu_258_p1;
    sc_signal< sc_lv<10> > tmp_fu_246_p3;
    sc_signal< sc_lv<10> > add_ln48_fu_262_p2;
    sc_signal< sc_lv<6> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<6> ap_ST_fsm_state1;
    static const sc_lv<6> ap_ST_fsm_state2;
    static const sc_lv<6> ap_ST_fsm_state3;
    static const sc_lv<6> ap_ST_fsm_state4;
    static const sc_lv<6> ap_ST_fsm_state5;
    static const sc_lv<6> ap_ST_fsm_state6;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<5> ap_const_lv5_15;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<10> ap_const_lv10_A8;
    static const sc_lv<4> ap_const_lv4_F;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<32> ap_const_lv32_9;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln478_fu_174_p2();
    void thread_add_ln479_fu_180_p2();
    void thread_add_ln48_1_fu_253_p2();
    void thread_add_ln48_fu_262_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_grp_KeccakF1600_StatePer_1_fu_143_ap_start();
    void thread_i_29_fu_200_p2();
    void thread_i_fu_163_p2();
    void thread_icmp_ln474_fu_151_p2();
    void thread_icmp_ln476_fu_157_p2();
    void thread_icmp_ln47_fu_194_p2();
    void thread_lshr_ln48_fu_222_p2();
    void thread_out_r_address0();
    void thread_out_r_ce0();
    void thread_out_r_d0();
    void thread_out_r_we0();
    void thread_s_address0();
    void thread_s_address1();
    void thread_s_ce0();
    void thread_s_ce1();
    void thread_s_d0();
    void thread_s_d1();
    void thread_s_we0();
    void thread_s_we1();
    void thread_shl_ln12_fu_210_p3();
    void thread_shl_ln_fu_186_p3();
    void thread_tmp_fu_246_p3();
    void thread_tmp_s_fu_236_p4();
    void thread_trunc_ln48_fu_206_p1();
    void thread_zext_ln477_fu_169_p1();
    void thread_zext_ln48_1_fu_232_p1();
    void thread_zext_ln48_2_fu_258_p1();
    void thread_zext_ln48_3_fu_268_p1();
    void thread_zext_ln48_fu_218_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
