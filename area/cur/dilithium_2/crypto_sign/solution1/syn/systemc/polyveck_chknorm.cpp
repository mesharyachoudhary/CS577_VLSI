// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "polyveck_chknorm.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic polyveck_chknorm::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic polyveck_chknorm::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<4> polyveck_chknorm::ap_ST_fsm_state1 = "1";
const sc_lv<4> polyveck_chknorm::ap_ST_fsm_state2 = "10";
const sc_lv<4> polyveck_chknorm::ap_ST_fsm_state3 = "100";
const sc_lv<4> polyveck_chknorm::ap_ST_fsm_state4 = "1000";
const sc_lv<32> polyveck_chknorm::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> polyveck_chknorm::ap_const_lv32_1 = "1";
const sc_lv<1> polyveck_chknorm::ap_const_lv1_0 = "0";
const sc_lv<32> polyveck_chknorm::ap_const_lv32_2 = "10";
const sc_lv<3> polyveck_chknorm::ap_const_lv3_0 = "000";
const sc_lv<1> polyveck_chknorm::ap_const_lv1_1 = "1";
const sc_lv<9> polyveck_chknorm::ap_const_lv9_0 = "000000000";
const sc_lv<32> polyveck_chknorm::ap_const_lv32_3 = "11";
const sc_lv<3> polyveck_chknorm::ap_const_lv3_4 = "100";
const sc_lv<3> polyveck_chknorm::ap_const_lv3_1 = "1";
const sc_lv<8> polyveck_chknorm::ap_const_lv8_0 = "00000000";
const sc_lv<9> polyveck_chknorm::ap_const_lv9_100 = "100000000";
const sc_lv<9> polyveck_chknorm::ap_const_lv9_1 = "1";
const sc_lv<32> polyveck_chknorm::ap_const_lv32_1F = "11111";
const sc_lv<32> polyveck_chknorm::ap_const_lv32_FFFFFFFF = "11111111111111111111111111111111";
const bool polyveck_chknorm::ap_const_boolean_1 = true;

polyveck_chknorm::polyveck_chknorm(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_add_ln301_fu_147_p2);
    sensitive << ( zext_ln288_reg_210 );
    sensitive << ( zext_ln301_fu_143_p1 );

    SC_METHOD(thread_and_ln302_fu_179_p2);
    sensitive << ( shl_ln302_fu_173_p2 );
    sensitive << ( t_fu_165_p3 );

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
    sensitive << ( icmp_ln325_reg_201 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( icmp_ln304_fu_191_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_phi_mux_p_0_phi_fu_95_p4);
    sensitive << ( icmp_ln325_reg_201 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( icmp_ln304_fu_191_p2 );
    sensitive << ( p_0_reg_91 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( icmp_ln325_reg_201 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( icmp_ln304_fu_191_p2 );

    SC_METHOD(thread_ap_return);
    sensitive << ( icmp_ln325_reg_201 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( icmp_ln304_fu_191_p2 );
    sensitive << ( ap_phi_mux_p_0_phi_fu_95_p4 );
    sensitive << ( ap_return_preg );

    SC_METHOD(thread_bound_cast_fu_103_p1);
    sensitive << ( bound );

    SC_METHOD(thread_i_20_fu_137_p2);
    sensitive << ( i_0_i_reg_80 );

    SC_METHOD(thread_i_fu_113_p2);
    sensitive << ( i_0_reg_69 );

    SC_METHOD(thread_icmp_ln299_fu_131_p2);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( i_0_i_reg_80 );

    SC_METHOD(thread_icmp_ln304_fu_191_p2);
    sensitive << ( bound_cast_reg_196 );
    sensitive << ( icmp_ln325_reg_201 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( t_6_fu_185_p2 );

    SC_METHOD(thread_icmp_ln325_fu_107_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( i_0_reg_69 );

    SC_METHOD(thread_shl_ln302_fu_173_p2);
    sensitive << ( v_vec_coeffs_q0 );

    SC_METHOD(thread_t_6_fu_185_p2);
    sensitive << ( v_vec_coeffs_q0 );
    sensitive << ( and_ln302_fu_179_p2 );

    SC_METHOD(thread_t_fu_165_p3);
    sensitive << ( tmp_5_fu_157_p3 );

    SC_METHOD(thread_tmp_5_fu_157_p3);
    sensitive << ( v_vec_coeffs_q0 );

    SC_METHOD(thread_tmp_fu_119_p3);
    sensitive << ( i_0_reg_69 );

    SC_METHOD(thread_v_vec_coeffs_address0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( zext_ln301_1_fu_152_p1 );

    SC_METHOD(thread_v_vec_coeffs_ce0);
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_zext_ln288_fu_127_p1);
    sensitive << ( tmp_fu_119_p3 );

    SC_METHOD(thread_zext_ln301_1_fu_152_p1);
    sensitive << ( add_ln301_fu_147_p2 );

    SC_METHOD(thread_zext_ln301_fu_143_p1);
    sensitive << ( i_0_i_reg_80 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( icmp_ln325_fu_107_p2 );
    sensitive << ( icmp_ln325_reg_201 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( icmp_ln299_fu_131_p2 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( icmp_ln304_fu_191_p2 );

    ap_CS_fsm = "0001";
    ap_return_preg = "0";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "polyveck_chknorm_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, v_vec_coeffs_q0, "(port)v_vec_coeffs_q0");
    sc_trace(mVcdFile, bound, "(port)bound");
    sc_trace(mVcdFile, ap_return, "(port)ap_return");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, bound_cast_fu_103_p1, "bound_cast_fu_103_p1");
    sc_trace(mVcdFile, bound_cast_reg_196, "bound_cast_reg_196");
    sc_trace(mVcdFile, icmp_ln325_fu_107_p2, "icmp_ln325_fu_107_p2");
    sc_trace(mVcdFile, icmp_ln325_reg_201, "icmp_ln325_reg_201");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, i_fu_113_p2, "i_fu_113_p2");
    sc_trace(mVcdFile, i_reg_205, "i_reg_205");
    sc_trace(mVcdFile, zext_ln288_fu_127_p1, "zext_ln288_fu_127_p1");
    sc_trace(mVcdFile, zext_ln288_reg_210, "zext_ln288_reg_210");
    sc_trace(mVcdFile, i_20_fu_137_p2, "i_20_fu_137_p2");
    sc_trace(mVcdFile, i_20_reg_218, "i_20_reg_218");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, icmp_ln299_fu_131_p2, "icmp_ln299_fu_131_p2");
    sc_trace(mVcdFile, i_0_reg_69, "i_0_reg_69");
    sc_trace(mVcdFile, i_0_i_reg_80, "i_0_i_reg_80");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, icmp_ln304_fu_191_p2, "icmp_ln304_fu_191_p2");
    sc_trace(mVcdFile, ap_phi_mux_p_0_phi_fu_95_p4, "ap_phi_mux_p_0_phi_fu_95_p4");
    sc_trace(mVcdFile, p_0_reg_91, "p_0_reg_91");
    sc_trace(mVcdFile, zext_ln301_1_fu_152_p1, "zext_ln301_1_fu_152_p1");
    sc_trace(mVcdFile, tmp_fu_119_p3, "tmp_fu_119_p3");
    sc_trace(mVcdFile, zext_ln301_fu_143_p1, "zext_ln301_fu_143_p1");
    sc_trace(mVcdFile, add_ln301_fu_147_p2, "add_ln301_fu_147_p2");
    sc_trace(mVcdFile, tmp_5_fu_157_p3, "tmp_5_fu_157_p3");
    sc_trace(mVcdFile, shl_ln302_fu_173_p2, "shl_ln302_fu_173_p2");
    sc_trace(mVcdFile, t_fu_165_p3, "t_fu_165_p3");
    sc_trace(mVcdFile, and_ln302_fu_179_p2, "and_ln302_fu_179_p2");
    sc_trace(mVcdFile, t_6_fu_185_p2, "t_6_fu_185_p2");
    sc_trace(mVcdFile, ap_return_preg, "ap_return_preg");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

polyveck_chknorm::~polyveck_chknorm() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void polyveck_chknorm::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_preg = ap_const_lv1_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
             (esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln304_fu_191_p2.read()) || 
              esl_seteq<1,1,1>(icmp_ln325_reg_201.read(), ap_const_lv1_1)))) {
            ap_return_preg = ap_phi_mux_p_0_phi_fu_95_p4.read();
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(icmp_ln325_reg_201.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln304_fu_191_p2.read()))) {
        i_0_i_reg_80 = i_20_reg_218.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(icmp_ln325_fu_107_p2.read(), ap_const_lv1_0))) {
        i_0_i_reg_80 = ap_const_lv9_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(icmp_ln299_fu_131_p2.read(), ap_const_lv1_1))) {
        i_0_reg_69 = i_reg_205.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        i_0_reg_69 = ap_const_lv3_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln325_fu_107_p2.read(), ap_const_lv1_1))) {
        p_0_reg_91 = ap_const_lv1_0;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(icmp_ln325_reg_201.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln304_fu_191_p2.read()))) {
        p_0_reg_91 = ap_const_lv1_1;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        bound_cast_reg_196 = bound_cast_fu_103_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        i_20_reg_218 = i_20_fu_137_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        i_reg_205 = i_fu_113_p2.read();
        icmp_ln325_reg_201 = icmp_ln325_fu_107_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln325_fu_107_p2.read(), ap_const_lv1_0))) {
        zext_ln288_reg_210 = zext_ln288_fu_127_p1.read();
    }
}

void polyveck_chknorm::thread_add_ln301_fu_147_p2() {
    add_ln301_fu_147_p2 = (!zext_ln288_reg_210.read().is_01() || !zext_ln301_fu_143_p1.read().is_01())? sc_lv<12>(): (sc_biguint<12>(zext_ln288_reg_210.read()) + sc_biguint<12>(zext_ln301_fu_143_p1.read()));
}

void polyveck_chknorm::thread_and_ln302_fu_179_p2() {
    and_ln302_fu_179_p2 = (shl_ln302_fu_173_p2.read() & t_fu_165_p3.read());
}

void polyveck_chknorm::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void polyveck_chknorm::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void polyveck_chknorm::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void polyveck_chknorm::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void polyveck_chknorm::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          (esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln304_fu_191_p2.read()) || 
           esl_seteq<1,1,1>(icmp_ln325_reg_201.read(), ap_const_lv1_1))))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void polyveck_chknorm::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void polyveck_chknorm::thread_ap_phi_mux_p_0_phi_fu_95_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(icmp_ln325_reg_201.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln304_fu_191_p2.read()))) {
        ap_phi_mux_p_0_phi_fu_95_p4 = ap_const_lv1_1;
    } else {
        ap_phi_mux_p_0_phi_fu_95_p4 = p_0_reg_91.read();
    }
}

void polyveck_chknorm::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln304_fu_191_p2.read()) || 
          esl_seteq<1,1,1>(icmp_ln325_reg_201.read(), ap_const_lv1_1)))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void polyveck_chknorm::thread_ap_return() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln304_fu_191_p2.read()) || 
          esl_seteq<1,1,1>(icmp_ln325_reg_201.read(), ap_const_lv1_1)))) {
        ap_return = ap_phi_mux_p_0_phi_fu_95_p4.read();
    } else {
        ap_return = ap_return_preg.read();
    }
}

void polyveck_chknorm::thread_bound_cast_fu_103_p1() {
    bound_cast_fu_103_p1 = esl_zext<32,18>(bound.read());
}

void polyveck_chknorm::thread_i_20_fu_137_p2() {
    i_20_fu_137_p2 = (!i_0_i_reg_80.read().is_01() || !ap_const_lv9_1.is_01())? sc_lv<9>(): (sc_biguint<9>(i_0_i_reg_80.read()) + sc_biguint<9>(ap_const_lv9_1));
}

void polyveck_chknorm::thread_i_fu_113_p2() {
    i_fu_113_p2 = (!i_0_reg_69.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(i_0_reg_69.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void polyveck_chknorm::thread_icmp_ln299_fu_131_p2() {
    icmp_ln299_fu_131_p2 = (!i_0_i_reg_80.read().is_01() || !ap_const_lv9_100.is_01())? sc_lv<1>(): sc_lv<1>(i_0_i_reg_80.read() == ap_const_lv9_100);
}

void polyveck_chknorm::thread_icmp_ln304_fu_191_p2() {
    icmp_ln304_fu_191_p2 = (!t_6_fu_185_p2.read().is_01() || !bound_cast_reg_196.read().is_01())? sc_lv<1>(): (sc_bigint<32>(t_6_fu_185_p2.read()) < sc_bigint<32>(bound_cast_reg_196.read()));
}

void polyveck_chknorm::thread_icmp_ln325_fu_107_p2() {
    icmp_ln325_fu_107_p2 = (!i_0_reg_69.read().is_01() || !ap_const_lv3_4.is_01())? sc_lv<1>(): sc_lv<1>(i_0_reg_69.read() == ap_const_lv3_4);
}

void polyveck_chknorm::thread_shl_ln302_fu_173_p2() {
    shl_ln302_fu_173_p2 = (!ap_const_lv32_1.is_01())? sc_lv<32>(): v_vec_coeffs_q0.read() << (unsigned short)ap_const_lv32_1.to_uint();
}

void polyveck_chknorm::thread_t_6_fu_185_p2() {
    t_6_fu_185_p2 = (!v_vec_coeffs_q0.read().is_01() || !and_ln302_fu_179_p2.read().is_01())? sc_lv<32>(): (sc_biguint<32>(v_vec_coeffs_q0.read()) - sc_biguint<32>(and_ln302_fu_179_p2.read()));
}

void polyveck_chknorm::thread_t_fu_165_p3() {
    t_fu_165_p3 = (!tmp_5_fu_157_p3.read()[0].is_01())? sc_lv<32>(): ((tmp_5_fu_157_p3.read()[0].to_bool())? ap_const_lv32_FFFFFFFF: ap_const_lv32_0);
}

void polyveck_chknorm::thread_tmp_5_fu_157_p3() {
    tmp_5_fu_157_p3 = v_vec_coeffs_q0.read().range(31, 31);
}

void polyveck_chknorm::thread_tmp_fu_119_p3() {
    tmp_fu_119_p3 = esl_concat<3,8>(i_0_reg_69.read(), ap_const_lv8_0);
}

void polyveck_chknorm::thread_v_vec_coeffs_address0() {
    v_vec_coeffs_address0 =  (sc_lv<10>) (zext_ln301_1_fu_152_p1.read());
}

void polyveck_chknorm::thread_v_vec_coeffs_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        v_vec_coeffs_ce0 = ap_const_logic_1;
    } else {
        v_vec_coeffs_ce0 = ap_const_logic_0;
    }
}

void polyveck_chknorm::thread_zext_ln288_fu_127_p1() {
    zext_ln288_fu_127_p1 = esl_zext<12,11>(tmp_fu_119_p3.read());
}

void polyveck_chknorm::thread_zext_ln301_1_fu_152_p1() {
    zext_ln301_1_fu_152_p1 = esl_zext<64,12>(add_ln301_fu_147_p2.read());
}

void polyveck_chknorm::thread_zext_ln301_fu_143_p1() {
    zext_ln301_fu_143_p1 = esl_zext<12,9>(i_0_i_reg_80.read());
}

void polyveck_chknorm::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln325_fu_107_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state4;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(icmp_ln299_fu_131_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state4;
            }
            break;
        case 8 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && (esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln304_fu_191_p2.read()) || 
  esl_seteq<1,1,1>(icmp_ln325_reg_201.read(), ap_const_lv1_1)))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        default : 
            ap_NS_fsm = "XXXX";
            break;
    }
}

}

