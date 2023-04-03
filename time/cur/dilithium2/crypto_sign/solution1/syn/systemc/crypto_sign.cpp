// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "crypto_sign.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic crypto_sign::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic crypto_sign::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<6> crypto_sign::ap_ST_fsm_state1 = "1";
const sc_lv<6> crypto_sign::ap_ST_fsm_state2 = "10";
const sc_lv<6> crypto_sign::ap_ST_fsm_state3 = "100";
const sc_lv<6> crypto_sign::ap_ST_fsm_state4 = "1000";
const sc_lv<6> crypto_sign::ap_ST_fsm_state5 = "10000";
const sc_lv<6> crypto_sign::ap_ST_fsm_state6 = "100000";
const sc_lv<32> crypto_sign::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> crypto_sign::ap_const_lv32_1 = "1";
const sc_lv<1> crypto_sign::ap_const_lv1_0 = "0";
const sc_lv<32> crypto_sign::ap_const_lv32_2 = "10";
const sc_lv<64> crypto_sign::ap_const_lv64_0 = "0000000000000000000000000000000000000000000000000000000000000000";
const sc_lv<32> crypto_sign::ap_const_lv32_3 = "11";
const sc_lv<32> crypto_sign::ap_const_lv32_4 = "100";
const sc_lv<32> crypto_sign::ap_const_lv32_5 = "101";
const sc_lv<13> crypto_sign::ap_const_lv13_1FFF = "1111111111111";
const sc_lv<14> crypto_sign::ap_const_lv14_973 = "100101110011";
const sc_lv<64> crypto_sign::ap_const_lv64_1 = "1";
const sc_lv<14> crypto_sign::ap_const_lv14_1 = "1";
const sc_lv<13> crypto_sign::ap_const_lv13_1 = "1";
const sc_lv<64> crypto_sign::ap_const_lv64_2 = "10";
const sc_lv<64> crypto_sign::ap_const_lv64_974 = "100101110100";
const sc_lv<1> crypto_sign::ap_const_lv1_1 = "1";
const bool crypto_sign::ap_const_boolean_1 = true;

crypto_sign::crypto_sign(sc_module_name name) : sc_module(name), mVcdFile(0) {
    grp_crypto_sign_signatur_fu_112 = new crypto_sign_signatur("grp_crypto_sign_signatur_fu_112");
    grp_crypto_sign_signatur_fu_112->ap_clk(ap_clk);
    grp_crypto_sign_signatur_fu_112->ap_rst(ap_rst);
    grp_crypto_sign_signatur_fu_112->ap_start(grp_crypto_sign_signatur_fu_112_ap_start);
    grp_crypto_sign_signatur_fu_112->ap_done(grp_crypto_sign_signatur_fu_112_ap_done);
    grp_crypto_sign_signatur_fu_112->ap_idle(grp_crypto_sign_signatur_fu_112_ap_idle);
    grp_crypto_sign_signatur_fu_112->ap_ready(grp_crypto_sign_signatur_fu_112_ap_ready);
    grp_crypto_sign_signatur_fu_112->sig_address0(grp_crypto_sign_signatur_fu_112_sig_address0);
    grp_crypto_sign_signatur_fu_112->sig_ce0(grp_crypto_sign_signatur_fu_112_sig_ce0);
    grp_crypto_sign_signatur_fu_112->sig_we0(grp_crypto_sign_signatur_fu_112_sig_we0);
    grp_crypto_sign_signatur_fu_112->sig_d0(grp_crypto_sign_signatur_fu_112_sig_d0);
    grp_crypto_sign_signatur_fu_112->sig_q0(sm_q0);
    grp_crypto_sign_signatur_fu_112->sig_address1(grp_crypto_sign_signatur_fu_112_sig_address1);
    grp_crypto_sign_signatur_fu_112->sig_ce1(grp_crypto_sign_signatur_fu_112_sig_ce1);
    grp_crypto_sign_signatur_fu_112->sig_we1(grp_crypto_sign_signatur_fu_112_sig_we1);
    grp_crypto_sign_signatur_fu_112->sig_d1(grp_crypto_sign_signatur_fu_112_sig_d1);
    grp_crypto_sign_signatur_fu_112->mlen(mlen);
    grp_crypto_sign_signatur_fu_112->sk_address0(grp_crypto_sign_signatur_fu_112_sk_address0);
    grp_crypto_sign_signatur_fu_112->sk_ce0(grp_crypto_sign_signatur_fu_112_sk_ce0);
    grp_crypto_sign_signatur_fu_112->sk_q0(sk_q0);
    grp_crypto_sign_signatur_fu_112->sk_address1(grp_crypto_sign_signatur_fu_112_sk_address1);
    grp_crypto_sign_signatur_fu_112->sk_ce1(grp_crypto_sign_signatur_fu_112_sk_ce1);
    grp_crypto_sign_signatur_fu_112->sk_q1(sk_q1);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_add_ln206_fu_215_p2);
    sensitive << ( i_0_0_reg_100 );

    SC_METHOD(thread_add_ln208_1_fu_139_p2);
    sensitive << ( trunc_ln208_1_fu_135_p1 );

    SC_METHOD(thread_add_ln208_fu_129_p2);
    sensitive << ( trunc_ln208_fu_125_p1 );

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

    SC_METHOD(thread_ap_done);
    sensitive << ( grp_crypto_sign_signatur_fu_112_ap_done );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( grp_crypto_sign_signatur_fu_112_ap_done );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_ap_return);
    sensitive << ( grp_crypto_sign_signatur_fu_112_ap_done );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_grp_crypto_sign_signatur_fu_112_ap_start);
    sensitive << ( grp_crypto_sign_signatur_fu_112_ap_start_reg );

    SC_METHOD(thread_icmp_ln206_1_fu_195_p2);
    sensitive << ( mlen );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( or_ln206_fu_178_p2 );

    SC_METHOD(thread_icmp_ln206_fu_145_p2);
    sensitive << ( mlen );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( i_0_0_reg_100 );

    SC_METHOD(thread_m_address0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( zext_ln208_fu_159_p1 );
    sensitive << ( zext_ln208_2_fu_205_p1 );

    SC_METHOD(thread_m_ce0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_or_ln206_1_fu_184_p2);
    sensitive << ( trunc_ln206_1_fu_164_p1 );

    SC_METHOD(thread_or_ln206_2_fu_190_p2);
    sensitive << ( trunc_ln206_reg_254 );

    SC_METHOD(thread_or_ln206_fu_178_p2);
    sensitive << ( i_0_0_reg_100 );

    SC_METHOD(thread_sk_address0);
    sensitive << ( grp_crypto_sign_signatur_fu_112_sk_address0 );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_sk_address1);
    sensitive << ( grp_crypto_sign_signatur_fu_112_sk_address1 );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_sk_ce0);
    sensitive << ( grp_crypto_sign_signatur_fu_112_sk_ce0 );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_sk_ce1);
    sensitive << ( grp_crypto_sign_signatur_fu_112_sk_ce1 );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_sm_address0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( grp_crypto_sign_signatur_fu_112_sig_address0 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( zext_ln208_1_fu_173_p1 );
    sensitive << ( zext_ln208_3_fu_221_p1 );

    SC_METHOD(thread_sm_address1);
    sensitive << ( grp_crypto_sign_signatur_fu_112_sig_address1 );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_sm_ce0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( grp_crypto_sign_signatur_fu_112_sig_ce0 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_sm_ce1);
    sensitive << ( grp_crypto_sign_signatur_fu_112_sig_ce1 );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_sm_d0);
    sensitive << ( m_q0 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( grp_crypto_sign_signatur_fu_112_sig_d0 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_sm_d1);
    sensitive << ( grp_crypto_sign_signatur_fu_112_sig_d1 );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_sm_we0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( grp_crypto_sign_signatur_fu_112_sig_we0 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_sm_we1);
    sensitive << ( grp_crypto_sign_signatur_fu_112_sig_we1 );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_smlen);
    sensitive << ( mlen );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_smlen_ap_vld);
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_sub_ln208_1_fu_168_p2);
    sensitive << ( add_ln208_1_reg_245 );
    sensitive << ( trunc_ln206_1_fu_164_p1 );

    SC_METHOD(thread_sub_ln208_2_fu_200_p2);
    sensitive << ( add_ln208_reg_239 );
    sensitive << ( or_ln206_2_fu_190_p2 );

    SC_METHOD(thread_sub_ln208_3_fu_210_p2);
    sensitive << ( add_ln208_1_reg_245 );
    sensitive << ( or_ln206_1_fu_184_p2 );

    SC_METHOD(thread_sub_ln208_fu_154_p2);
    sensitive << ( add_ln208_reg_239 );
    sensitive << ( trunc_ln206_fu_150_p1 );

    SC_METHOD(thread_trunc_ln206_1_fu_164_p1);
    sensitive << ( i_0_0_reg_100 );

    SC_METHOD(thread_trunc_ln206_fu_150_p1);
    sensitive << ( i_0_0_reg_100 );

    SC_METHOD(thread_trunc_ln208_1_fu_135_p1);
    sensitive << ( mlen );

    SC_METHOD(thread_trunc_ln208_fu_125_p1);
    sensitive << ( mlen );

    SC_METHOD(thread_zext_ln208_1_fu_173_p1);
    sensitive << ( sub_ln208_1_fu_168_p2 );

    SC_METHOD(thread_zext_ln208_2_fu_205_p1);
    sensitive << ( sub_ln208_2_fu_200_p2 );

    SC_METHOD(thread_zext_ln208_3_fu_221_p1);
    sensitive << ( sub_ln208_3_reg_272 );

    SC_METHOD(thread_zext_ln208_fu_159_p1);
    sensitive << ( sub_ln208_fu_154_p2 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln206_fu_145_p2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( icmp_ln206_1_fu_195_p2 );
    sensitive << ( grp_crypto_sign_signatur_fu_112_ap_done );
    sensitive << ( ap_CS_fsm_state6 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_CS_fsm = "000001";
    grp_crypto_sign_signatur_fu_112_ap_start_reg = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "crypto_sign_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, sm_address0, "(port)sm_address0");
    sc_trace(mVcdFile, sm_ce0, "(port)sm_ce0");
    sc_trace(mVcdFile, sm_we0, "(port)sm_we0");
    sc_trace(mVcdFile, sm_d0, "(port)sm_d0");
    sc_trace(mVcdFile, sm_q0, "(port)sm_q0");
    sc_trace(mVcdFile, sm_address1, "(port)sm_address1");
    sc_trace(mVcdFile, sm_ce1, "(port)sm_ce1");
    sc_trace(mVcdFile, sm_we1, "(port)sm_we1");
    sc_trace(mVcdFile, sm_d1, "(port)sm_d1");
    sc_trace(mVcdFile, smlen, "(port)smlen");
    sc_trace(mVcdFile, smlen_ap_vld, "(port)smlen_ap_vld");
    sc_trace(mVcdFile, m_address0, "(port)m_address0");
    sc_trace(mVcdFile, m_ce0, "(port)m_ce0");
    sc_trace(mVcdFile, m_q0, "(port)m_q0");
    sc_trace(mVcdFile, mlen, "(port)mlen");
    sc_trace(mVcdFile, sk_address0, "(port)sk_address0");
    sc_trace(mVcdFile, sk_ce0, "(port)sk_ce0");
    sc_trace(mVcdFile, sk_q0, "(port)sk_q0");
    sc_trace(mVcdFile, sk_address1, "(port)sk_address1");
    sc_trace(mVcdFile, sk_ce1, "(port)sk_ce1");
    sc_trace(mVcdFile, sk_q1, "(port)sk_q1");
    sc_trace(mVcdFile, ap_return, "(port)ap_return");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, add_ln208_fu_129_p2, "add_ln208_fu_129_p2");
    sc_trace(mVcdFile, add_ln208_reg_239, "add_ln208_reg_239");
    sc_trace(mVcdFile, add_ln208_1_fu_139_p2, "add_ln208_1_fu_139_p2");
    sc_trace(mVcdFile, add_ln208_1_reg_245, "add_ln208_1_reg_245");
    sc_trace(mVcdFile, trunc_ln206_fu_150_p1, "trunc_ln206_fu_150_p1");
    sc_trace(mVcdFile, trunc_ln206_reg_254, "trunc_ln206_reg_254");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, icmp_ln206_fu_145_p2, "icmp_ln206_fu_145_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, icmp_ln206_1_fu_195_p2, "icmp_ln206_1_fu_195_p2");
    sc_trace(mVcdFile, sub_ln208_3_fu_210_p2, "sub_ln208_3_fu_210_p2");
    sc_trace(mVcdFile, sub_ln208_3_reg_272, "sub_ln208_3_reg_272");
    sc_trace(mVcdFile, add_ln206_fu_215_p2, "add_ln206_fu_215_p2");
    sc_trace(mVcdFile, add_ln206_reg_277, "add_ln206_reg_277");
    sc_trace(mVcdFile, grp_crypto_sign_signatur_fu_112_ap_start, "grp_crypto_sign_signatur_fu_112_ap_start");
    sc_trace(mVcdFile, grp_crypto_sign_signatur_fu_112_ap_done, "grp_crypto_sign_signatur_fu_112_ap_done");
    sc_trace(mVcdFile, grp_crypto_sign_signatur_fu_112_ap_idle, "grp_crypto_sign_signatur_fu_112_ap_idle");
    sc_trace(mVcdFile, grp_crypto_sign_signatur_fu_112_ap_ready, "grp_crypto_sign_signatur_fu_112_ap_ready");
    sc_trace(mVcdFile, grp_crypto_sign_signatur_fu_112_sig_address0, "grp_crypto_sign_signatur_fu_112_sig_address0");
    sc_trace(mVcdFile, grp_crypto_sign_signatur_fu_112_sig_ce0, "grp_crypto_sign_signatur_fu_112_sig_ce0");
    sc_trace(mVcdFile, grp_crypto_sign_signatur_fu_112_sig_we0, "grp_crypto_sign_signatur_fu_112_sig_we0");
    sc_trace(mVcdFile, grp_crypto_sign_signatur_fu_112_sig_d0, "grp_crypto_sign_signatur_fu_112_sig_d0");
    sc_trace(mVcdFile, grp_crypto_sign_signatur_fu_112_sig_address1, "grp_crypto_sign_signatur_fu_112_sig_address1");
    sc_trace(mVcdFile, grp_crypto_sign_signatur_fu_112_sig_ce1, "grp_crypto_sign_signatur_fu_112_sig_ce1");
    sc_trace(mVcdFile, grp_crypto_sign_signatur_fu_112_sig_we1, "grp_crypto_sign_signatur_fu_112_sig_we1");
    sc_trace(mVcdFile, grp_crypto_sign_signatur_fu_112_sig_d1, "grp_crypto_sign_signatur_fu_112_sig_d1");
    sc_trace(mVcdFile, grp_crypto_sign_signatur_fu_112_sk_address0, "grp_crypto_sign_signatur_fu_112_sk_address0");
    sc_trace(mVcdFile, grp_crypto_sign_signatur_fu_112_sk_ce0, "grp_crypto_sign_signatur_fu_112_sk_ce0");
    sc_trace(mVcdFile, grp_crypto_sign_signatur_fu_112_sk_address1, "grp_crypto_sign_signatur_fu_112_sk_address1");
    sc_trace(mVcdFile, grp_crypto_sign_signatur_fu_112_sk_ce1, "grp_crypto_sign_signatur_fu_112_sk_ce1");
    sc_trace(mVcdFile, i_0_0_reg_100, "i_0_0_reg_100");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, grp_crypto_sign_signatur_fu_112_ap_start_reg, "grp_crypto_sign_signatur_fu_112_ap_start_reg");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, zext_ln208_fu_159_p1, "zext_ln208_fu_159_p1");
    sc_trace(mVcdFile, zext_ln208_1_fu_173_p1, "zext_ln208_1_fu_173_p1");
    sc_trace(mVcdFile, zext_ln208_2_fu_205_p1, "zext_ln208_2_fu_205_p1");
    sc_trace(mVcdFile, zext_ln208_3_fu_221_p1, "zext_ln208_3_fu_221_p1");
    sc_trace(mVcdFile, trunc_ln208_fu_125_p1, "trunc_ln208_fu_125_p1");
    sc_trace(mVcdFile, trunc_ln208_1_fu_135_p1, "trunc_ln208_1_fu_135_p1");
    sc_trace(mVcdFile, sub_ln208_fu_154_p2, "sub_ln208_fu_154_p2");
    sc_trace(mVcdFile, trunc_ln206_1_fu_164_p1, "trunc_ln206_1_fu_164_p1");
    sc_trace(mVcdFile, sub_ln208_1_fu_168_p2, "sub_ln208_1_fu_168_p2");
    sc_trace(mVcdFile, or_ln206_fu_178_p2, "or_ln206_fu_178_p2");
    sc_trace(mVcdFile, or_ln206_2_fu_190_p2, "or_ln206_2_fu_190_p2");
    sc_trace(mVcdFile, sub_ln208_2_fu_200_p2, "sub_ln208_2_fu_200_p2");
    sc_trace(mVcdFile, or_ln206_1_fu_184_p2, "or_ln206_1_fu_184_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
    mHdltvinHandle.open("crypto_sign.hdltvin.dat");
    mHdltvoutHandle.open("crypto_sign.hdltvout.dat");
}

crypto_sign::~crypto_sign() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete grp_crypto_sign_signatur_fu_112;
}

void crypto_sign::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        grp_crypto_sign_signatur_fu_112_ap_start_reg = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
            grp_crypto_sign_signatur_fu_112_ap_start_reg = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, grp_crypto_sign_signatur_fu_112_ap_ready.read())) {
            grp_crypto_sign_signatur_fu_112_ap_start_reg = ap_const_logic_0;
        }
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        i_0_0_reg_100 = add_ln206_reg_277.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        i_0_0_reg_100 = ap_const_lv64_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln206_1_fu_195_p2.read()))) {
        add_ln206_reg_277 = add_ln206_fu_215_p2.read();
        sub_ln208_3_reg_272 = sub_ln208_3_fu_210_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        add_ln208_1_reg_245 = add_ln208_1_fu_139_p2.read();
        add_ln208_reg_239 = add_ln208_fu_129_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln206_fu_145_p2.read(), ap_const_lv1_0))) {
        trunc_ln206_reg_254 = trunc_ln206_fu_150_p1.read();
    }
}

void crypto_sign::thread_add_ln206_fu_215_p2() {
    add_ln206_fu_215_p2 = (!i_0_0_reg_100.read().is_01() || !ap_const_lv64_2.is_01())? sc_lv<64>(): (sc_biguint<64>(i_0_0_reg_100.read()) + sc_biguint<64>(ap_const_lv64_2));
}

void crypto_sign::thread_add_ln208_1_fu_139_p2() {
    add_ln208_1_fu_139_p2 = (!ap_const_lv14_973.is_01() || !trunc_ln208_1_fu_135_p1.read().is_01())? sc_lv<14>(): (sc_biguint<14>(ap_const_lv14_973) + sc_biguint<14>(trunc_ln208_1_fu_135_p1.read()));
}

void crypto_sign::thread_add_ln208_fu_129_p2() {
    add_ln208_fu_129_p2 = (!ap_const_lv13_1FFF.is_01() || !trunc_ln208_fu_125_p1.read().is_01())? sc_lv<13>(): (sc_bigint<13>(ap_const_lv13_1FFF) + sc_biguint<13>(trunc_ln208_fu_125_p1.read()));
}

void crypto_sign::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void crypto_sign::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void crypto_sign::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void crypto_sign::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void crypto_sign::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void crypto_sign::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[5];
}

void crypto_sign::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && 
         esl_seteq<1,1,1>(grp_crypto_sign_signatur_fu_112_ap_done.read(), ap_const_logic_1))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void crypto_sign::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void crypto_sign::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && 
         esl_seteq<1,1,1>(grp_crypto_sign_signatur_fu_112_ap_done.read(), ap_const_logic_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void crypto_sign::thread_ap_return() {
    ap_return = ap_const_lv32_0;
}

void crypto_sign::thread_grp_crypto_sign_signatur_fu_112_ap_start() {
    grp_crypto_sign_signatur_fu_112_ap_start = grp_crypto_sign_signatur_fu_112_ap_start_reg.read();
}

void crypto_sign::thread_icmp_ln206_1_fu_195_p2() {
    icmp_ln206_1_fu_195_p2 = (!or_ln206_fu_178_p2.read().is_01() || !mlen.read().is_01())? sc_lv<1>(): sc_lv<1>(or_ln206_fu_178_p2.read() == mlen.read());
}

void crypto_sign::thread_icmp_ln206_fu_145_p2() {
    icmp_ln206_fu_145_p2 = (!i_0_0_reg_100.read().is_01() || !mlen.read().is_01())? sc_lv<1>(): sc_lv<1>(i_0_0_reg_100.read() == mlen.read());
}

void crypto_sign::thread_m_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        m_address0 =  (sc_lv<12>) (zext_ln208_2_fu_205_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        m_address0 =  (sc_lv<12>) (zext_ln208_fu_159_p1.read());
    } else {
        m_address0 = "XXXXXXXXXXXX";
    }
}

void crypto_sign::thread_m_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()))) {
        m_ce0 = ap_const_logic_1;
    } else {
        m_ce0 = ap_const_logic_0;
    }
}

void crypto_sign::thread_or_ln206_1_fu_184_p2() {
    or_ln206_1_fu_184_p2 = (trunc_ln206_1_fu_164_p1.read() | ap_const_lv14_1);
}

void crypto_sign::thread_or_ln206_2_fu_190_p2() {
    or_ln206_2_fu_190_p2 = (trunc_ln206_reg_254.read() | ap_const_lv13_1);
}

void crypto_sign::thread_or_ln206_fu_178_p2() {
    or_ln206_fu_178_p2 = (i_0_0_reg_100.read() | ap_const_lv64_1);
}

void crypto_sign::thread_sk_address0() {
    sk_address0 = grp_crypto_sign_signatur_fu_112_sk_address0.read();
}

void crypto_sign::thread_sk_address1() {
    sk_address1 = grp_crypto_sign_signatur_fu_112_sk_address1.read();
}

void crypto_sign::thread_sk_ce0() {
    sk_ce0 = grp_crypto_sign_signatur_fu_112_sk_ce0.read();
}

void crypto_sign::thread_sk_ce1() {
    sk_ce1 = grp_crypto_sign_signatur_fu_112_sk_ce1.read();
}

void crypto_sign::thread_sm_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        sm_address0 =  (sc_lv<13>) (zext_ln208_3_fu_221_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        sm_address0 =  (sc_lv<13>) (zext_ln208_1_fu_173_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        sm_address0 = grp_crypto_sign_signatur_fu_112_sig_address0.read();
    } else {
        sm_address0 =  (sc_lv<13>) ("XXXXXXXXXXXXX");
    }
}

void crypto_sign::thread_sm_address1() {
    sm_address1 = grp_crypto_sign_signatur_fu_112_sig_address1.read();
}

void crypto_sign::thread_sm_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
        sm_ce0 = ap_const_logic_1;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        sm_ce0 = grp_crypto_sign_signatur_fu_112_sig_ce0.read();
    } else {
        sm_ce0 = ap_const_logic_0;
    }
}

void crypto_sign::thread_sm_ce1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        sm_ce1 = grp_crypto_sign_signatur_fu_112_sig_ce1.read();
    } else {
        sm_ce1 = ap_const_logic_0;
    }
}

void crypto_sign::thread_sm_d0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
        sm_d0 = m_q0.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        sm_d0 = grp_crypto_sign_signatur_fu_112_sig_d0.read();
    } else {
        sm_d0 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void crypto_sign::thread_sm_d1() {
    sm_d1 = grp_crypto_sign_signatur_fu_112_sig_d1.read();
}

void crypto_sign::thread_sm_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
        sm_we0 = ap_const_logic_1;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        sm_we0 = grp_crypto_sign_signatur_fu_112_sig_we0.read();
    } else {
        sm_we0 = ap_const_logic_0;
    }
}

void crypto_sign::thread_sm_we1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        sm_we1 = grp_crypto_sign_signatur_fu_112_sig_we1.read();
    } else {
        sm_we1 = ap_const_logic_0;
    }
}

void crypto_sign::thread_smlen() {
    smlen = (!mlen.read().is_01() || !ap_const_lv64_974.is_01())? sc_lv<64>(): (sc_biguint<64>(mlen.read()) + sc_biguint<64>(ap_const_lv64_974));
}

void crypto_sign::thread_smlen_ap_vld() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        smlen_ap_vld = ap_const_logic_1;
    } else {
        smlen_ap_vld = ap_const_logic_0;
    }
}

void crypto_sign::thread_sub_ln208_1_fu_168_p2() {
    sub_ln208_1_fu_168_p2 = (!add_ln208_1_reg_245.read().is_01() || !trunc_ln206_1_fu_164_p1.read().is_01())? sc_lv<14>(): (sc_biguint<14>(add_ln208_1_reg_245.read()) - sc_biguint<14>(trunc_ln206_1_fu_164_p1.read()));
}

void crypto_sign::thread_sub_ln208_2_fu_200_p2() {
    sub_ln208_2_fu_200_p2 = (!add_ln208_reg_239.read().is_01() || !or_ln206_2_fu_190_p2.read().is_01())? sc_lv<13>(): (sc_biguint<13>(add_ln208_reg_239.read()) - sc_biguint<13>(or_ln206_2_fu_190_p2.read()));
}

void crypto_sign::thread_sub_ln208_3_fu_210_p2() {
    sub_ln208_3_fu_210_p2 = (!add_ln208_1_reg_245.read().is_01() || !or_ln206_1_fu_184_p2.read().is_01())? sc_lv<14>(): (sc_biguint<14>(add_ln208_1_reg_245.read()) - sc_biguint<14>(or_ln206_1_fu_184_p2.read()));
}

void crypto_sign::thread_sub_ln208_fu_154_p2() {
    sub_ln208_fu_154_p2 = (!add_ln208_reg_239.read().is_01() || !trunc_ln206_fu_150_p1.read().is_01())? sc_lv<13>(): (sc_biguint<13>(add_ln208_reg_239.read()) - sc_biguint<13>(trunc_ln206_fu_150_p1.read()));
}

void crypto_sign::thread_trunc_ln206_1_fu_164_p1() {
    trunc_ln206_1_fu_164_p1 = i_0_0_reg_100.read().range(14-1, 0);
}

void crypto_sign::thread_trunc_ln206_fu_150_p1() {
    trunc_ln206_fu_150_p1 = i_0_0_reg_100.read().range(13-1, 0);
}

void crypto_sign::thread_trunc_ln208_1_fu_135_p1() {
    trunc_ln208_1_fu_135_p1 = mlen.read().range(14-1, 0);
}

void crypto_sign::thread_trunc_ln208_fu_125_p1() {
    trunc_ln208_fu_125_p1 = mlen.read().range(13-1, 0);
}

void crypto_sign::thread_zext_ln208_1_fu_173_p1() {
    zext_ln208_1_fu_173_p1 = esl_zext<64,14>(sub_ln208_1_fu_168_p2.read());
}

void crypto_sign::thread_zext_ln208_2_fu_205_p1() {
    zext_ln208_2_fu_205_p1 = esl_zext<64,13>(sub_ln208_2_fu_200_p2.read());
}

void crypto_sign::thread_zext_ln208_3_fu_221_p1() {
    zext_ln208_3_fu_221_p1 = esl_zext<64,14>(sub_ln208_3_reg_272.read());
}

void crypto_sign::thread_zext_ln208_fu_159_p1() {
    zext_ln208_fu_159_p1 = esl_zext<64,13>(sub_ln208_fu_154_p2.read());
}

void crypto_sign::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln206_fu_145_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state5;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(icmp_ln206_1_fu_195_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state5;
            } else {
                ap_NS_fsm = ap_ST_fsm_state4;
            }
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state2;
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state6;
            break;
        case 32 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && esl_seteq<1,1,1>(grp_crypto_sign_signatur_fu_112_ap_done.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state6;
            }
            break;
        default : 
            ap_NS_fsm =  (sc_lv<6>) ("XXXXXX");
            break;
    }
}

void crypto_sign::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"sm_address0\" :  \"" << sm_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"sm_ce0\" :  \"" << sm_ce0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"sm_we0\" :  \"" << sm_we0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"sm_d0\" :  \"" << sm_d0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"sm_q0\" :  \"" << sm_q0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"sm_address1\" :  \"" << sm_address1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"sm_ce1\" :  \"" << sm_ce1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"sm_we1\" :  \"" << sm_we1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"sm_d1\" :  \"" << sm_d1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"smlen\" :  \"" << smlen.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"smlen_ap_vld\" :  \"" << smlen_ap_vld.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_address0\" :  \"" << m_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_ce0\" :  \"" << m_ce0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_q0\" :  \"" << m_q0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"mlen\" :  \"" << mlen.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"sk_address0\" :  \"" << sk_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"sk_ce0\" :  \"" << sk_ce0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"sk_q0\" :  \"" << sk_q0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"sk_address1\" :  \"" << sk_address1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"sk_ce1\" :  \"" << sk_ce1.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"sk_q1\" :  \"" << sk_q1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_return\" :  \"" << ap_return.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

