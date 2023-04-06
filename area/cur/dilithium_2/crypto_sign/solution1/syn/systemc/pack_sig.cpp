// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "pack_sig.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic pack_sig::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic pack_sig::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<7> pack_sig::ap_ST_fsm_state1 = "1";
const sc_lv<7> pack_sig::ap_ST_fsm_state2 = "10";
const sc_lv<7> pack_sig::ap_ST_fsm_state3 = "100";
const sc_lv<7> pack_sig::ap_ST_fsm_state4 = "1000";
const sc_lv<7> pack_sig::ap_ST_fsm_state5 = "10000";
const sc_lv<7> pack_sig::ap_ST_fsm_state6 = "100000";
const sc_lv<7> pack_sig::ap_ST_fsm_state7 = "1000000";
const sc_lv<32> pack_sig::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> pack_sig::ap_const_lv32_1 = "1";
const sc_lv<1> pack_sig::ap_const_lv1_0 = "0";
const sc_lv<32> pack_sig::ap_const_lv32_3 = "11";
const sc_lv<32> pack_sig::ap_const_lv32_4 = "100";
const sc_lv<32> pack_sig::ap_const_lv32_5 = "101";
const sc_lv<32> pack_sig::ap_const_lv32_2 = "10";
const sc_lv<3> pack_sig::ap_const_lv3_0 = "000";
const sc_lv<7> pack_sig::ap_const_lv7_0 = "0000000";
const sc_lv<1> pack_sig::ap_const_lv1_1 = "1";
const sc_lv<9> pack_sig::ap_const_lv9_0 = "000000000";
const sc_lv<32> pack_sig::ap_const_lv32_6 = "110";
const sc_lv<8> pack_sig::ap_const_lv8_0 = "00000000";
const sc_lv<3> pack_sig::ap_const_lv3_4 = "100";
const sc_lv<3> pack_sig::ap_const_lv3_1 = "1";
const sc_lv<6> pack_sig::ap_const_lv6_0 = "000000";
const sc_lv<11> pack_sig::ap_const_lv11_20 = "100000";
const sc_lv<7> pack_sig::ap_const_lv7_54 = "1010100";
const sc_lv<7> pack_sig::ap_const_lv7_1 = "1";
const sc_lv<12> pack_sig::ap_const_lv12_920 = "100100100000";
const sc_lv<9> pack_sig::ap_const_lv9_100 = "100000000";
const sc_lv<9> pack_sig::ap_const_lv9_1 = "1";
const sc_lv<4> pack_sig::ap_const_lv4_A = "1010";
const sc_lv<7> pack_sig::ap_const_lv7_20 = "100000";
const sc_lv<5> pack_sig::ap_const_lv5_12 = "10010";
const sc_lv<14> pack_sig::ap_const_lv14_920 = "100100100000";
const bool pack_sig::ap_const_boolean_1 = true;

pack_sig::pack_sig(sc_module_name name) : sc_module(name), mVcdFile(0) {
    grp_polyz_pack_fu_160 = new polyz_pack("grp_polyz_pack_fu_160");
    grp_polyz_pack_fu_160->ap_clk(ap_clk);
    grp_polyz_pack_fu_160->ap_rst(ap_rst);
    grp_polyz_pack_fu_160->ap_start(grp_polyz_pack_fu_160_ap_start);
    grp_polyz_pack_fu_160->ap_done(grp_polyz_pack_fu_160_ap_done);
    grp_polyz_pack_fu_160->ap_idle(grp_polyz_pack_fu_160_ap_idle);
    grp_polyz_pack_fu_160->ap_ready(grp_polyz_pack_fu_160_ap_ready);
    grp_polyz_pack_fu_160->r_address0(grp_polyz_pack_fu_160_r_address0);
    grp_polyz_pack_fu_160->r_ce0(grp_polyz_pack_fu_160_r_ce0);
    grp_polyz_pack_fu_160->r_we0(grp_polyz_pack_fu_160_r_we0);
    grp_polyz_pack_fu_160->r_d0(grp_polyz_pack_fu_160_r_d0);
    grp_polyz_pack_fu_160->r_offset(or_ln172_reg_368);
    grp_polyz_pack_fu_160->a_coeffs_address0(grp_polyz_pack_fu_160_a_coeffs_address0);
    grp_polyz_pack_fu_160->a_coeffs_ce0(grp_polyz_pack_fu_160_a_coeffs_ce0);
    grp_polyz_pack_fu_160->a_coeffs_q0(z_vec_coeffs_q0);
    grp_polyz_pack_fu_160->a_coeffs_offset(i_1_reg_113);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_add_ln177_fu_225_p2);
    sensitive << ( zext_ln177_fu_221_p1 );

    SC_METHOD(thread_add_ln182_fu_281_p2);
    sensitive << ( zext_ln181_reg_396 );
    sensitive << ( zext_ln182_fu_277_p1 );

    SC_METHOD(thread_add_ln183_fu_344_p2);
    sensitive << ( trunc_ln183_1_fu_340_p1 );

    SC_METHOD(thread_add_ln_fu_190_p5);
    sensitive << ( trunc_ln172_fu_186_p1 );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state6);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state7);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( icmp_ln180_fu_241_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( icmp_ln180_fu_241_p2 );

    SC_METHOD(thread_grp_polyz_pack_fu_160_ap_start);
    sensitive << ( grp_polyz_pack_fu_160_ap_start_reg );

    SC_METHOD(thread_h_vec_coeffs_address0);
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( zext_ln182_1_fu_286_p1 );

    SC_METHOD(thread_h_vec_coeffs_ce0);
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_i_28_fu_215_p2);
    sensitive << ( i_2_reg_125 );

    SC_METHOD(thread_i_29_fu_247_p2);
    sensitive << ( i_3_reg_136 );

    SC_METHOD(thread_i_fu_180_p2);
    sensitive << ( i_1_reg_113 );

    SC_METHOD(thread_icmp_ln171_fu_174_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( i_1_reg_113 );

    SC_METHOD(thread_icmp_ln176_fu_209_p2);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( i_2_reg_125 );

    SC_METHOD(thread_icmp_ln180_fu_241_p2);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( i_3_reg_136 );

    SC_METHOD(thread_icmp_ln181_fu_265_p2);
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( j_0_reg_148 );

    SC_METHOD(thread_icmp_ln182_fu_323_p2);
    sensitive << ( h_vec_coeffs_q0 );
    sensitive << ( ap_CS_fsm_state7 );

    SC_METHOD(thread_j_fu_271_p2);
    sensitive << ( j_0_reg_148 );

    SC_METHOD(thread_k_fu_334_p2);
    sensitive << ( k_1_fu_66 );

    SC_METHOD(thread_or_ln172_fu_202_p2);
    sensitive << ( add_ln_fu_190_p5 );

    SC_METHOD(thread_or_ln185_1_fu_310_p3);
    sensitive << ( or_ln185_fu_304_p2 );

    SC_METHOD(thread_or_ln185_fu_304_p2);
    sensitive << ( or_ln_fu_296_p3 );

    SC_METHOD(thread_or_ln_fu_296_p3);
    sensitive << ( i_3_reg_136 );

    SC_METHOD(thread_sext_ln183_fu_350_p1);
    sensitive << ( add_ln183_fu_344_p2 );

    SC_METHOD(thread_sig_address0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( grp_polyz_pack_fu_160_r_address0 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( zext_ln177_1_fu_231_p1 );
    sensitive << ( zext_ln185_fu_318_p1 );
    sensitive << ( sext_ln183_fu_350_p1 );

    SC_METHOD(thread_sig_ce0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( grp_polyz_pack_fu_160_r_ce0 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state7 );

    SC_METHOD(thread_sig_d0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( grp_polyz_pack_fu_160_r_d0 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( trunc_ln185_fu_291_p1 );
    sensitive << ( trunc_ln183_fu_329_p1 );

    SC_METHOD(thread_sig_we0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( icmp_ln181_fu_265_p2 );
    sensitive << ( grp_polyz_pack_fu_160_r_we0 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( icmp_ln176_fu_209_p2 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( icmp_ln182_fu_323_p2 );

    SC_METHOD(thread_tmp_s_fu_253_p3);
    sensitive << ( i_3_reg_136 );

    SC_METHOD(thread_trunc_ln172_fu_186_p1);
    sensitive << ( i_1_reg_113 );

    SC_METHOD(thread_trunc_ln183_1_fu_340_p1);
    sensitive << ( k_1_fu_66 );

    SC_METHOD(thread_trunc_ln183_fu_329_p1);
    sensitive << ( j_0_reg_148 );

    SC_METHOD(thread_trunc_ln185_fu_291_p1);
    sensitive << ( k_1_fu_66 );

    SC_METHOD(thread_z_vec_coeffs_address0);
    sensitive << ( grp_polyz_pack_fu_160_a_coeffs_address0 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_z_vec_coeffs_ce0);
    sensitive << ( grp_polyz_pack_fu_160_a_coeffs_ce0 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_zext_ln177_1_fu_231_p1);
    sensitive << ( add_ln177_fu_225_p2 );

    SC_METHOD(thread_zext_ln177_fu_221_p1);
    sensitive << ( i_2_reg_125 );

    SC_METHOD(thread_zext_ln181_fu_261_p1);
    sensitive << ( tmp_s_fu_253_p3 );

    SC_METHOD(thread_zext_ln182_1_fu_286_p1);
    sensitive << ( add_ln182_fu_281_p2 );

    SC_METHOD(thread_zext_ln182_fu_277_p1);
    sensitive << ( j_0_reg_148 );

    SC_METHOD(thread_zext_ln185_fu_318_p1);
    sensitive << ( or_ln185_1_fu_310_p3 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln171_fu_174_p2 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( icmp_ln180_fu_241_p2 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( icmp_ln181_fu_265_p2 );
    sensitive << ( grp_polyz_pack_fu_160_ap_done );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( icmp_ln176_fu_209_p2 );

    ap_CS_fsm = "0000001";
    grp_polyz_pack_fu_160_ap_start_reg = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "pack_sig_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, sig_address0, "(port)sig_address0");
    sc_trace(mVcdFile, sig_ce0, "(port)sig_ce0");
    sc_trace(mVcdFile, sig_we0, "(port)sig_we0");
    sc_trace(mVcdFile, sig_d0, "(port)sig_d0");
    sc_trace(mVcdFile, z_vec_coeffs_address0, "(port)z_vec_coeffs_address0");
    sc_trace(mVcdFile, z_vec_coeffs_ce0, "(port)z_vec_coeffs_ce0");
    sc_trace(mVcdFile, z_vec_coeffs_q0, "(port)z_vec_coeffs_q0");
    sc_trace(mVcdFile, h_vec_coeffs_address0, "(port)h_vec_coeffs_address0");
    sc_trace(mVcdFile, h_vec_coeffs_ce0, "(port)h_vec_coeffs_ce0");
    sc_trace(mVcdFile, h_vec_coeffs_q0, "(port)h_vec_coeffs_q0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, i_fu_180_p2, "i_fu_180_p2");
    sc_trace(mVcdFile, i_reg_363, "i_reg_363");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, or_ln172_fu_202_p2, "or_ln172_fu_202_p2");
    sc_trace(mVcdFile, or_ln172_reg_368, "or_ln172_reg_368");
    sc_trace(mVcdFile, icmp_ln171_fu_174_p2, "icmp_ln171_fu_174_p2");
    sc_trace(mVcdFile, i_28_fu_215_p2, "i_28_fu_215_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, i_29_fu_247_p2, "i_29_fu_247_p2");
    sc_trace(mVcdFile, i_29_reg_391, "i_29_reg_391");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, zext_ln181_fu_261_p1, "zext_ln181_fu_261_p1");
    sc_trace(mVcdFile, zext_ln181_reg_396, "zext_ln181_reg_396");
    sc_trace(mVcdFile, icmp_ln180_fu_241_p2, "icmp_ln180_fu_241_p2");
    sc_trace(mVcdFile, j_fu_271_p2, "j_fu_271_p2");
    sc_trace(mVcdFile, j_reg_404, "j_reg_404");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, icmp_ln181_fu_265_p2, "icmp_ln181_fu_265_p2");
    sc_trace(mVcdFile, grp_polyz_pack_fu_160_ap_start, "grp_polyz_pack_fu_160_ap_start");
    sc_trace(mVcdFile, grp_polyz_pack_fu_160_ap_done, "grp_polyz_pack_fu_160_ap_done");
    sc_trace(mVcdFile, grp_polyz_pack_fu_160_ap_idle, "grp_polyz_pack_fu_160_ap_idle");
    sc_trace(mVcdFile, grp_polyz_pack_fu_160_ap_ready, "grp_polyz_pack_fu_160_ap_ready");
    sc_trace(mVcdFile, grp_polyz_pack_fu_160_r_address0, "grp_polyz_pack_fu_160_r_address0");
    sc_trace(mVcdFile, grp_polyz_pack_fu_160_r_ce0, "grp_polyz_pack_fu_160_r_ce0");
    sc_trace(mVcdFile, grp_polyz_pack_fu_160_r_we0, "grp_polyz_pack_fu_160_r_we0");
    sc_trace(mVcdFile, grp_polyz_pack_fu_160_r_d0, "grp_polyz_pack_fu_160_r_d0");
    sc_trace(mVcdFile, grp_polyz_pack_fu_160_a_coeffs_address0, "grp_polyz_pack_fu_160_a_coeffs_address0");
    sc_trace(mVcdFile, grp_polyz_pack_fu_160_a_coeffs_ce0, "grp_polyz_pack_fu_160_a_coeffs_ce0");
    sc_trace(mVcdFile, i_1_reg_113, "i_1_reg_113");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, i_2_reg_125, "i_2_reg_125");
    sc_trace(mVcdFile, icmp_ln176_fu_209_p2, "icmp_ln176_fu_209_p2");
    sc_trace(mVcdFile, i_3_reg_136, "i_3_reg_136");
    sc_trace(mVcdFile, j_0_reg_148, "j_0_reg_148");
    sc_trace(mVcdFile, ap_CS_fsm_state7, "ap_CS_fsm_state7");
    sc_trace(mVcdFile, grp_polyz_pack_fu_160_ap_start_reg, "grp_polyz_pack_fu_160_ap_start_reg");
    sc_trace(mVcdFile, zext_ln177_1_fu_231_p1, "zext_ln177_1_fu_231_p1");
    sc_trace(mVcdFile, zext_ln182_1_fu_286_p1, "zext_ln182_1_fu_286_p1");
    sc_trace(mVcdFile, zext_ln185_fu_318_p1, "zext_ln185_fu_318_p1");
    sc_trace(mVcdFile, sext_ln183_fu_350_p1, "sext_ln183_fu_350_p1");
    sc_trace(mVcdFile, icmp_ln182_fu_323_p2, "icmp_ln182_fu_323_p2");
    sc_trace(mVcdFile, k_1_fu_66, "k_1_fu_66");
    sc_trace(mVcdFile, k_fu_334_p2, "k_fu_334_p2");
    sc_trace(mVcdFile, trunc_ln185_fu_291_p1, "trunc_ln185_fu_291_p1");
    sc_trace(mVcdFile, trunc_ln183_fu_329_p1, "trunc_ln183_fu_329_p1");
    sc_trace(mVcdFile, trunc_ln172_fu_186_p1, "trunc_ln172_fu_186_p1");
    sc_trace(mVcdFile, add_ln_fu_190_p5, "add_ln_fu_190_p5");
    sc_trace(mVcdFile, zext_ln177_fu_221_p1, "zext_ln177_fu_221_p1");
    sc_trace(mVcdFile, add_ln177_fu_225_p2, "add_ln177_fu_225_p2");
    sc_trace(mVcdFile, tmp_s_fu_253_p3, "tmp_s_fu_253_p3");
    sc_trace(mVcdFile, zext_ln182_fu_277_p1, "zext_ln182_fu_277_p1");
    sc_trace(mVcdFile, add_ln182_fu_281_p2, "add_ln182_fu_281_p2");
    sc_trace(mVcdFile, or_ln_fu_296_p3, "or_ln_fu_296_p3");
    sc_trace(mVcdFile, or_ln185_fu_304_p2, "or_ln185_fu_304_p2");
    sc_trace(mVcdFile, or_ln185_1_fu_310_p3, "or_ln185_1_fu_310_p3");
    sc_trace(mVcdFile, trunc_ln183_1_fu_340_p1, "trunc_ln183_1_fu_340_p1");
    sc_trace(mVcdFile, add_ln183_fu_344_p2, "add_ln183_fu_344_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

pack_sig::~pack_sig() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete grp_polyz_pack_fu_160;
}

void pack_sig::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        grp_polyz_pack_fu_160_ap_start_reg = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
             esl_seteq<1,1,1>(icmp_ln171_fu_174_p2.read(), ap_const_lv1_0))) {
            grp_polyz_pack_fu_160_ap_start_reg = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, grp_polyz_pack_fu_160_ap_ready.read())) {
            grp_polyz_pack_fu_160_ap_start_reg = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        i_1_reg_113 = ap_const_lv3_0;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
                esl_seteq<1,1,1>(grp_polyz_pack_fu_160_ap_done.read(), ap_const_logic_1))) {
        i_1_reg_113 = i_reg_363.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln171_fu_174_p2.read(), ap_const_lv1_1))) {
        i_2_reg_125 = ap_const_lv7_0;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln176_fu_209_p2.read()))) {
        i_2_reg_125 = i_28_fu_215_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(icmp_ln176_fu_209_p2.read(), ap_const_lv1_1))) {
        i_3_reg_136 = ap_const_lv3_0;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && 
                esl_seteq<1,1,1>(icmp_ln181_fu_265_p2.read(), ap_const_lv1_1))) {
        i_3_reg_136 = i_29_reg_391.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        j_0_reg_148 = j_reg_404.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln180_fu_241_p2.read()))) {
        j_0_reg_148 = ap_const_lv9_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln182_fu_323_p2.read()))) {
        k_1_fu_66 = k_fu_334_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(icmp_ln176_fu_209_p2.read(), ap_const_lv1_1))) {
        k_1_fu_66 = ap_const_lv32_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        i_29_reg_391 = i_29_fu_247_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        i_reg_363 = i_fu_180_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        j_reg_404 = j_fu_271_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln171_fu_174_p2.read(), ap_const_lv1_0))) {
        or_ln172_reg_368 = or_ln172_fu_202_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln180_fu_241_p2.read()))) {
        zext_ln181_reg_396 = zext_ln181_fu_261_p1.read();
    }
}

void pack_sig::thread_add_ln177_fu_225_p2() {
    add_ln177_fu_225_p2 = (!zext_ln177_fu_221_p1.read().is_01() || !ap_const_lv12_920.is_01())? sc_lv<12>(): (sc_biguint<12>(zext_ln177_fu_221_p1.read()) + sc_bigint<12>(ap_const_lv12_920));
}

void pack_sig::thread_add_ln182_fu_281_p2() {
    add_ln182_fu_281_p2 = (!zext_ln181_reg_396.read().is_01() || !zext_ln182_fu_277_p1.read().is_01())? sc_lv<12>(): (sc_biguint<12>(zext_ln181_reg_396.read()) + sc_biguint<12>(zext_ln182_fu_277_p1.read()));
}

void pack_sig::thread_add_ln183_fu_344_p2() {
    add_ln183_fu_344_p2 = (!ap_const_lv14_920.is_01() || !trunc_ln183_1_fu_340_p1.read().is_01())? sc_lv<14>(): (sc_biguint<14>(ap_const_lv14_920) + sc_biguint<14>(trunc_ln183_1_fu_340_p1.read()));
}

void pack_sig::thread_add_ln_fu_190_p5() {
    add_ln_fu_190_p5 = esl_concat<5,6>(esl_concat<3,2>(esl_concat<2,1>(trunc_ln172_fu_186_p1.read(), ap_const_lv1_0), trunc_ln172_fu_186_p1.read()), ap_const_lv6_0);
}

void pack_sig::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void pack_sig::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void pack_sig::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void pack_sig::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void pack_sig::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void pack_sig::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[5];
}

void pack_sig::thread_ap_CS_fsm_state7() {
    ap_CS_fsm_state7 = ap_CS_fsm.read()[6];
}

void pack_sig::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
          esl_seteq<1,1,1>(icmp_ln180_fu_241_p2.read(), ap_const_lv1_1)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void pack_sig::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void pack_sig::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
         esl_seteq<1,1,1>(icmp_ln180_fu_241_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void pack_sig::thread_grp_polyz_pack_fu_160_ap_start() {
    grp_polyz_pack_fu_160_ap_start = grp_polyz_pack_fu_160_ap_start_reg.read();
}

void pack_sig::thread_h_vec_coeffs_address0() {
    h_vec_coeffs_address0 =  (sc_lv<10>) (zext_ln182_1_fu_286_p1.read());
}

void pack_sig::thread_h_vec_coeffs_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        h_vec_coeffs_ce0 = ap_const_logic_1;
    } else {
        h_vec_coeffs_ce0 = ap_const_logic_0;
    }
}

void pack_sig::thread_i_28_fu_215_p2() {
    i_28_fu_215_p2 = (!i_2_reg_125.read().is_01() || !ap_const_lv7_1.is_01())? sc_lv<7>(): (sc_biguint<7>(i_2_reg_125.read()) + sc_biguint<7>(ap_const_lv7_1));
}

void pack_sig::thread_i_29_fu_247_p2() {
    i_29_fu_247_p2 = (!i_3_reg_136.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(i_3_reg_136.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void pack_sig::thread_i_fu_180_p2() {
    i_fu_180_p2 = (!i_1_reg_113.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(i_1_reg_113.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void pack_sig::thread_icmp_ln171_fu_174_p2() {
    icmp_ln171_fu_174_p2 = (!i_1_reg_113.read().is_01() || !ap_const_lv3_4.is_01())? sc_lv<1>(): sc_lv<1>(i_1_reg_113.read() == ap_const_lv3_4);
}

void pack_sig::thread_icmp_ln176_fu_209_p2() {
    icmp_ln176_fu_209_p2 = (!i_2_reg_125.read().is_01() || !ap_const_lv7_54.is_01())? sc_lv<1>(): sc_lv<1>(i_2_reg_125.read() == ap_const_lv7_54);
}

void pack_sig::thread_icmp_ln180_fu_241_p2() {
    icmp_ln180_fu_241_p2 = (!i_3_reg_136.read().is_01() || !ap_const_lv3_4.is_01())? sc_lv<1>(): sc_lv<1>(i_3_reg_136.read() == ap_const_lv3_4);
}

void pack_sig::thread_icmp_ln181_fu_265_p2() {
    icmp_ln181_fu_265_p2 = (!j_0_reg_148.read().is_01() || !ap_const_lv9_100.is_01())? sc_lv<1>(): sc_lv<1>(j_0_reg_148.read() == ap_const_lv9_100);
}

void pack_sig::thread_icmp_ln182_fu_323_p2() {
    icmp_ln182_fu_323_p2 = (!h_vec_coeffs_q0.read().is_01() || !ap_const_lv32_0.is_01())? sc_lv<1>(): sc_lv<1>(h_vec_coeffs_q0.read() == ap_const_lv32_0);
}

void pack_sig::thread_j_fu_271_p2() {
    j_fu_271_p2 = (!j_0_reg_148.read().is_01() || !ap_const_lv9_1.is_01())? sc_lv<9>(): (sc_biguint<9>(j_0_reg_148.read()) + sc_biguint<9>(ap_const_lv9_1));
}

void pack_sig::thread_k_fu_334_p2() {
    k_fu_334_p2 = (!ap_const_lv32_1.is_01() || !k_1_fu_66.read().is_01())? sc_lv<32>(): (sc_biguint<32>(ap_const_lv32_1) + sc_biguint<32>(k_1_fu_66.read()));
}

void pack_sig::thread_or_ln172_fu_202_p2() {
    or_ln172_fu_202_p2 = (add_ln_fu_190_p5.read() | ap_const_lv11_20);
}

void pack_sig::thread_or_ln185_1_fu_310_p3() {
    or_ln185_1_fu_310_p3 = esl_concat<5,7>(ap_const_lv5_12, or_ln185_fu_304_p2.read());
}

void pack_sig::thread_or_ln185_fu_304_p2() {
    or_ln185_fu_304_p2 = (or_ln_fu_296_p3.read() | ap_const_lv7_20);
}

void pack_sig::thread_or_ln_fu_296_p3() {
    or_ln_fu_296_p3 = esl_concat<4,3>(ap_const_lv4_A, i_3_reg_136.read());
}

void pack_sig::thread_sext_ln183_fu_350_p1() {
    sext_ln183_fu_350_p1 = esl_sext<64,14>(add_ln183_fu_344_p2.read());
}

void pack_sig::thread_sig_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        sig_address0 =  (sc_lv<13>) (sext_ln183_fu_350_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        sig_address0 =  (sc_lv<13>) (zext_ln185_fu_318_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        sig_address0 =  (sc_lv<13>) (zext_ln177_1_fu_231_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        sig_address0 = grp_polyz_pack_fu_160_r_address0.read();
    } else {
        sig_address0 = "XXXXXXXXXXXXX";
    }
}

void pack_sig::thread_sig_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()))) {
        sig_ce0 = ap_const_logic_1;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        sig_ce0 = grp_polyz_pack_fu_160_r_ce0.read();
    } else {
        sig_ce0 = ap_const_logic_0;
    }
}

void pack_sig::thread_sig_d0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        sig_d0 = trunc_ln183_fu_329_p1.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        sig_d0 = trunc_ln185_fu_291_p1.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        sig_d0 = ap_const_lv8_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        sig_d0 = grp_polyz_pack_fu_160_r_d0.read();
    } else {
        sig_d0 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void pack_sig::thread_sig_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln176_fu_209_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && 
          esl_seteq<1,1,1>(icmp_ln181_fu_265_p2.read(), ap_const_lv1_1)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln182_fu_323_p2.read())))) {
        sig_we0 = ap_const_logic_1;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        sig_we0 = grp_polyz_pack_fu_160_r_we0.read();
    } else {
        sig_we0 = ap_const_logic_0;
    }
}

void pack_sig::thread_tmp_s_fu_253_p3() {
    tmp_s_fu_253_p3 = esl_concat<3,8>(i_3_reg_136.read(), ap_const_lv8_0);
}

void pack_sig::thread_trunc_ln172_fu_186_p1() {
    trunc_ln172_fu_186_p1 = i_1_reg_113.read().range(2-1, 0);
}

void pack_sig::thread_trunc_ln183_1_fu_340_p1() {
    trunc_ln183_1_fu_340_p1 = k_1_fu_66.read().range(14-1, 0);
}

void pack_sig::thread_trunc_ln183_fu_329_p1() {
    trunc_ln183_fu_329_p1 = j_0_reg_148.read().range(8-1, 0);
}

void pack_sig::thread_trunc_ln185_fu_291_p1() {
    trunc_ln185_fu_291_p1 = k_1_fu_66.read().range(8-1, 0);
}

void pack_sig::thread_z_vec_coeffs_address0() {
    z_vec_coeffs_address0 = grp_polyz_pack_fu_160_a_coeffs_address0.read();
}

void pack_sig::thread_z_vec_coeffs_ce0() {
    z_vec_coeffs_ce0 = grp_polyz_pack_fu_160_a_coeffs_ce0.read();
}

void pack_sig::thread_zext_ln177_1_fu_231_p1() {
    zext_ln177_1_fu_231_p1 = esl_zext<64,12>(add_ln177_fu_225_p2.read());
}

void pack_sig::thread_zext_ln177_fu_221_p1() {
    zext_ln177_fu_221_p1 = esl_zext<12,7>(i_2_reg_125.read());
}

void pack_sig::thread_zext_ln181_fu_261_p1() {
    zext_ln181_fu_261_p1 = esl_zext<12,11>(tmp_s_fu_253_p3.read());
}

void pack_sig::thread_zext_ln182_1_fu_286_p1() {
    zext_ln182_1_fu_286_p1 = esl_zext<64,12>(add_ln182_fu_281_p2.read());
}

void pack_sig::thread_zext_ln182_fu_277_p1() {
    zext_ln182_fu_277_p1 = esl_zext<12,9>(j_0_reg_148.read());
}

void pack_sig::thread_zext_ln185_fu_318_p1() {
    zext_ln185_fu_318_p1 = esl_zext<64,12>(or_ln185_1_fu_310_p3.read());
}

void pack_sig::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln171_fu_174_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state4;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(grp_polyz_pack_fu_160_ap_done.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 8 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(icmp_ln176_fu_209_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state5;
            } else {
                ap_NS_fsm = ap_ST_fsm_state4;
            }
            break;
        case 16 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && esl_seteq<1,1,1>(icmp_ln180_fu_241_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state6;
            }
            break;
        case 32 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && esl_seteq<1,1,1>(icmp_ln181_fu_265_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state5;
            } else {
                ap_NS_fsm = ap_ST_fsm_state7;
            }
            break;
        case 64 : 
            ap_NS_fsm = ap_ST_fsm_state6;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<7>) ("XXXXXXX");
            break;
    }
}

}

