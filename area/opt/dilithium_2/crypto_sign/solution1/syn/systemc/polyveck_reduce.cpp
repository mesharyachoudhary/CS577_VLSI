// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "polyveck_reduce.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic polyveck_reduce::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic polyveck_reduce::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<4> polyveck_reduce::ap_ST_fsm_state1 = "1";
const sc_lv<4> polyveck_reduce::ap_ST_fsm_state2 = "10";
const sc_lv<4> polyveck_reduce::ap_ST_fsm_state3 = "100";
const sc_lv<4> polyveck_reduce::ap_ST_fsm_state4 = "1000";
const sc_lv<32> polyveck_reduce::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> polyveck_reduce::ap_const_lv32_1 = "1";
const sc_lv<1> polyveck_reduce::ap_const_lv1_0 = "0";
const sc_lv<32> polyveck_reduce::ap_const_lv32_2 = "10";
const sc_lv<3> polyveck_reduce::ap_const_lv3_0 = "000";
const sc_lv<1> polyveck_reduce::ap_const_lv1_1 = "1";
const sc_lv<9> polyveck_reduce::ap_const_lv9_0 = "000000000";
const sc_lv<32> polyveck_reduce::ap_const_lv32_3 = "11";
const sc_lv<3> polyveck_reduce::ap_const_lv3_4 = "100";
const sc_lv<3> polyveck_reduce::ap_const_lv3_1 = "1";
const sc_lv<8> polyveck_reduce::ap_const_lv8_0 = "00000000";
const sc_lv<9> polyveck_reduce::ap_const_lv9_100 = "100000000";
const sc_lv<9> polyveck_reduce::ap_const_lv9_1 = "1";
const sc_lv<32> polyveck_reduce::ap_const_lv32_400000 = "10000000000000000000000";
const sc_lv<32> polyveck_reduce::ap_const_lv32_17 = "10111";
const sc_lv<32> polyveck_reduce::ap_const_lv32_1F = "11111";
const sc_lv<32> polyveck_reduce::ap_const_lv32_FF801FFF = "11111111100000000001111111111111";
const bool polyveck_reduce::ap_const_boolean_1 = true;

polyveck_reduce::polyveck_reduce(sc_module_name name) : sc_module(name), mVcdFile(0) {
    crypto_sign_mac_mibs_U52 = new crypto_sign_mac_mibs<1,1,9,24,32,32>("crypto_sign_mac_mibs_U52");
    crypto_sign_mac_mibs_U52->din0(trunc_ln_fu_127_p4);
    crypto_sign_mac_mibs_U52->din1(grp_fu_141_p1);
    crypto_sign_mac_mibs_U52->din2(v_vec_coeffs_q0);
    crypto_sign_mac_mibs_U52->dout(grp_fu_141_p3);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_add_ln33_fu_111_p2);
    sensitive << ( zext_ln28_reg_158 );
    sensitive << ( zext_ln33_fu_107_p1 );

    SC_METHOD(thread_add_ln36_fu_121_p2);
    sensitive << ( v_vec_coeffs_q0 );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln187_fu_71_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln187_fu_71_p2 );

    SC_METHOD(thread_grp_fu_141_p1);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_i_17_fu_101_p2);
    sensitive << ( i_0_i_reg_60 );

    SC_METHOD(thread_i_fu_77_p2);
    sensitive << ( i_0_reg_49 );

    SC_METHOD(thread_icmp_ln187_fu_71_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( i_0_reg_49 );

    SC_METHOD(thread_icmp_ln32_fu_95_p2);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( i_0_i_reg_60 );

    SC_METHOD(thread_tmp_fu_83_p3);
    sensitive << ( i_0_reg_49 );

    SC_METHOD(thread_trunc_ln_fu_127_p4);
    sensitive << ( add_ln36_fu_121_p2 );

    SC_METHOD(thread_v_vec_coeffs_address0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( v_vec_coeffs_addr_reg_171 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( zext_ln33_1_fu_116_p1 );

    SC_METHOD(thread_v_vec_coeffs_ce0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_v_vec_coeffs_d0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( grp_fu_141_p3 );

    SC_METHOD(thread_v_vec_coeffs_we0);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_zext_ln28_fu_91_p1);
    sensitive << ( tmp_fu_83_p3 );

    SC_METHOD(thread_zext_ln33_1_fu_116_p1);
    sensitive << ( add_ln33_fu_111_p2 );

    SC_METHOD(thread_zext_ln33_fu_107_p1);
    sensitive << ( i_0_i_reg_60 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln187_fu_71_p2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( icmp_ln32_fu_95_p2 );

    ap_CS_fsm = "0001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "polyveck_reduce_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, v_vec_coeffs_address0, "(port)v_vec_coeffs_address0");
    sc_trace(mVcdFile, v_vec_coeffs_ce0, "(port)v_vec_coeffs_ce0");
    sc_trace(mVcdFile, v_vec_coeffs_we0, "(port)v_vec_coeffs_we0");
    sc_trace(mVcdFile, v_vec_coeffs_d0, "(port)v_vec_coeffs_d0");
    sc_trace(mVcdFile, v_vec_coeffs_q0, "(port)v_vec_coeffs_q0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, i_fu_77_p2, "i_fu_77_p2");
    sc_trace(mVcdFile, i_reg_153, "i_reg_153");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, zext_ln28_fu_91_p1, "zext_ln28_fu_91_p1");
    sc_trace(mVcdFile, zext_ln28_reg_158, "zext_ln28_reg_158");
    sc_trace(mVcdFile, icmp_ln187_fu_71_p2, "icmp_ln187_fu_71_p2");
    sc_trace(mVcdFile, i_17_fu_101_p2, "i_17_fu_101_p2");
    sc_trace(mVcdFile, i_17_reg_166, "i_17_reg_166");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, v_vec_coeffs_addr_reg_171, "v_vec_coeffs_addr_reg_171");
    sc_trace(mVcdFile, icmp_ln32_fu_95_p2, "icmp_ln32_fu_95_p2");
    sc_trace(mVcdFile, i_0_reg_49, "i_0_reg_49");
    sc_trace(mVcdFile, i_0_i_reg_60, "i_0_i_reg_60");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, zext_ln33_1_fu_116_p1, "zext_ln33_1_fu_116_p1");
    sc_trace(mVcdFile, grp_fu_141_p3, "grp_fu_141_p3");
    sc_trace(mVcdFile, tmp_fu_83_p3, "tmp_fu_83_p3");
    sc_trace(mVcdFile, zext_ln33_fu_107_p1, "zext_ln33_fu_107_p1");
    sc_trace(mVcdFile, add_ln33_fu_111_p2, "add_ln33_fu_111_p2");
    sc_trace(mVcdFile, add_ln36_fu_121_p2, "add_ln36_fu_121_p2");
    sc_trace(mVcdFile, trunc_ln_fu_127_p4, "trunc_ln_fu_127_p4");
    sc_trace(mVcdFile, grp_fu_141_p1, "grp_fu_141_p1");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

polyveck_reduce::~polyveck_reduce() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete crypto_sign_mac_mibs_U52;
}

void polyveck_reduce::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        i_0_i_reg_60 = i_17_reg_166.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(icmp_ln187_fu_71_p2.read(), ap_const_lv1_0))) {
        i_0_i_reg_60 = ap_const_lv9_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(icmp_ln32_fu_95_p2.read(), ap_const_lv1_1))) {
        i_0_reg_49 = i_reg_153.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        i_0_reg_49 = ap_const_lv3_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        i_17_reg_166 = i_17_fu_101_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        i_reg_153 = i_fu_77_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln32_fu_95_p2.read()))) {
        v_vec_coeffs_addr_reg_171 =  (sc_lv<10>) (zext_ln33_1_fu_116_p1.read());
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln187_fu_71_p2.read(), ap_const_lv1_0))) {
        zext_ln28_reg_158 = zext_ln28_fu_91_p1.read();
    }
}

void polyveck_reduce::thread_add_ln33_fu_111_p2() {
    add_ln33_fu_111_p2 = (!zext_ln28_reg_158.read().is_01() || !zext_ln33_fu_107_p1.read().is_01())? sc_lv<12>(): (sc_biguint<12>(zext_ln28_reg_158.read()) + sc_biguint<12>(zext_ln33_fu_107_p1.read()));
}

void polyveck_reduce::thread_add_ln36_fu_121_p2() {
    add_ln36_fu_121_p2 = (!v_vec_coeffs_q0.read().is_01() || !ap_const_lv32_400000.is_01())? sc_lv<32>(): (sc_biguint<32>(v_vec_coeffs_q0.read()) + sc_biguint<32>(ap_const_lv32_400000));
}

void polyveck_reduce::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void polyveck_reduce::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void polyveck_reduce::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void polyveck_reduce::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void polyveck_reduce::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(icmp_ln187_fu_71_p2.read(), ap_const_lv1_1)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void polyveck_reduce::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void polyveck_reduce::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln187_fu_71_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void polyveck_reduce::thread_grp_fu_141_p1() {
    grp_fu_141_p1 =  (sc_lv<24>) (ap_const_lv32_FF801FFF);
}

void polyveck_reduce::thread_i_17_fu_101_p2() {
    i_17_fu_101_p2 = (!i_0_i_reg_60.read().is_01() || !ap_const_lv9_1.is_01())? sc_lv<9>(): (sc_biguint<9>(i_0_i_reg_60.read()) + sc_biguint<9>(ap_const_lv9_1));
}

void polyveck_reduce::thread_i_fu_77_p2() {
    i_fu_77_p2 = (!i_0_reg_49.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(i_0_reg_49.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void polyveck_reduce::thread_icmp_ln187_fu_71_p2() {
    icmp_ln187_fu_71_p2 = (!i_0_reg_49.read().is_01() || !ap_const_lv3_4.is_01())? sc_lv<1>(): sc_lv<1>(i_0_reg_49.read() == ap_const_lv3_4);
}

void polyveck_reduce::thread_icmp_ln32_fu_95_p2() {
    icmp_ln32_fu_95_p2 = (!i_0_i_reg_60.read().is_01() || !ap_const_lv9_100.is_01())? sc_lv<1>(): sc_lv<1>(i_0_i_reg_60.read() == ap_const_lv9_100);
}

void polyveck_reduce::thread_tmp_fu_83_p3() {
    tmp_fu_83_p3 = esl_concat<3,8>(i_0_reg_49.read(), ap_const_lv8_0);
}

void polyveck_reduce::thread_trunc_ln_fu_127_p4() {
    trunc_ln_fu_127_p4 = add_ln36_fu_121_p2.read().range(31, 23);
}

void polyveck_reduce::thread_v_vec_coeffs_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        v_vec_coeffs_address0 = v_vec_coeffs_addr_reg_171.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        v_vec_coeffs_address0 =  (sc_lv<10>) (zext_ln33_1_fu_116_p1.read());
    } else {
        v_vec_coeffs_address0 = "XXXXXXXXXX";
    }
}

void polyveck_reduce::thread_v_vec_coeffs_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
        v_vec_coeffs_ce0 = ap_const_logic_1;
    } else {
        v_vec_coeffs_ce0 = ap_const_logic_0;
    }
}

void polyveck_reduce::thread_v_vec_coeffs_d0() {
    v_vec_coeffs_d0 = grp_fu_141_p3.read();
}

void polyveck_reduce::thread_v_vec_coeffs_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        v_vec_coeffs_we0 = ap_const_logic_1;
    } else {
        v_vec_coeffs_we0 = ap_const_logic_0;
    }
}

void polyveck_reduce::thread_zext_ln28_fu_91_p1() {
    zext_ln28_fu_91_p1 = esl_zext<12,11>(tmp_fu_83_p3.read());
}

void polyveck_reduce::thread_zext_ln33_1_fu_116_p1() {
    zext_ln33_1_fu_116_p1 = esl_zext<64,12>(add_ln33_fu_111_p2.read());
}

void polyveck_reduce::thread_zext_ln33_fu_107_p1() {
    zext_ln33_fu_107_p1 = esl_zext<12,9>(i_0_i_reg_60.read());
}

void polyveck_reduce::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln187_fu_71_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(icmp_ln32_fu_95_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state4;
            }
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state3;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<4>) ("XXXX");
            break;
    }
}

}

