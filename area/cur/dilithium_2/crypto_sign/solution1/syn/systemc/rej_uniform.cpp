// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "rej_uniform.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic rej_uniform::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic rej_uniform::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<4> rej_uniform::ap_ST_fsm_state1 = "1";
const sc_lv<4> rej_uniform::ap_ST_fsm_state2 = "10";
const sc_lv<4> rej_uniform::ap_ST_fsm_state3 = "100";
const sc_lv<4> rej_uniform::ap_ST_fsm_state4 = "1000";
const sc_lv<32> rej_uniform::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> rej_uniform::ap_const_lv32_1 = "1";
const sc_lv<1> rej_uniform::ap_const_lv1_1 = "1";
const sc_lv<1> rej_uniform::ap_const_lv1_0 = "0";
const sc_lv<32> rej_uniform::ap_const_lv32_2 = "10";
const sc_lv<32> rej_uniform::ap_const_lv32_3 = "11";
const sc_lv<2> rej_uniform::ap_const_lv2_0 = "00";
const sc_lv<8> rej_uniform::ap_const_lv8_0 = "00000000";
const sc_lv<23> rej_uniform::ap_const_lv23_7FE001 = "11111111110000000000001";
const bool rej_uniform::ap_const_boolean_1 = true;

rej_uniform::rej_uniform(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_a_address0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( zext_ln345_3_fu_271_p1 );

    SC_METHOD(thread_a_ce0);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_a_d0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( tmp_1_fu_233_p4 );

    SC_METHOD(thread_a_we0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( icmp_ln344_fu_243_p2 );

    SC_METHOD(thread_add_ln345_1_fu_160_p2);
    sensitive << ( zext_ln345_1_fu_156_p1 );
    sensitive << ( zext_ln345_fu_144_p1 );

    SC_METHOD(thread_add_ln345_3_fu_266_p2);
    sensitive << ( tmp_7_cast_reg_298 );
    sensitive << ( zext_ln345_2_fu_262_p1 );

    SC_METHOD(thread_add_ln345_fu_257_p2);
    sensitive << ( trunc_ln345_reg_303 );
    sensitive << ( trunc_ln345_1_fu_254_p1 );

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
    sensitive << ( icmp_ln338_fu_186_p2 );
    sensitive << ( icmp_ln338_1_fu_197_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln338_fu_186_p2 );
    sensitive << ( icmp_ln338_1_fu_197_p2 );

    SC_METHOD(thread_ap_return);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln338_fu_186_p2 );
    sensitive << ( icmp_ln338_1_fu_197_p2 );
    sensitive << ( ctr_1_fu_44 );

    SC_METHOD(thread_buf_r_address0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( zext_ln339_fu_202_p1 );
    sensitive << ( zext_ln340_fu_219_p1 );

    SC_METHOD(thread_buf_r_address1);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( zext_ln341_fu_224_p1 );

    SC_METHOD(thread_buf_r_ce0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_buf_r_ce1);
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_buflen_cast_fu_136_p1);
    sensitive << ( buflen );

    SC_METHOD(thread_ctr_fu_249_p2);
    sensitive << ( ctr_1_load_reg_308 );

    SC_METHOD(thread_icmp_ln338_1_fu_197_p2);
    sensitive << ( buflen_cast_reg_288 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( pos_2_fu_191_p2 );
    sensitive << ( icmp_ln338_fu_186_p2 );

    SC_METHOD(thread_icmp_ln338_fu_186_p2);
    sensitive << ( len_cast_reg_293 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ctr_1_fu_44 );

    SC_METHOD(thread_icmp_ln344_fu_243_p2);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( tmp_1_fu_233_p4 );

    SC_METHOD(thread_len_cast_fu_140_p1);
    sensitive << ( len );

    SC_METHOD(thread_pos_1_fu_213_p2);
    sensitive << ( pos_0_reg_124 );

    SC_METHOD(thread_pos_2_fu_191_p2);
    sensitive << ( pos_0_reg_124 );

    SC_METHOD(thread_pos_fu_207_p2);
    sensitive << ( pos_0_reg_124 );

    SC_METHOD(thread_tmp_1_fu_233_p4);
    sensitive << ( buf_r_q0 );
    sensitive << ( buf_load_reg_330 );
    sensitive << ( trunc_ln342_fu_229_p1 );

    SC_METHOD(thread_tmp_5_fu_148_p3);
    sensitive << ( a_offset );

    SC_METHOD(thread_tmp_7_cast_fu_166_p3);
    sensitive << ( add_ln345_1_fu_160_p2 );

    SC_METHOD(thread_trunc_ln342_fu_229_p1);
    sensitive << ( buf_r_q1 );

    SC_METHOD(thread_trunc_ln345_1_fu_254_p1);
    sensitive << ( ctr_1_load_reg_308 );

    SC_METHOD(thread_trunc_ln345_fu_174_p1);
    sensitive << ( a_offset2 );

    SC_METHOD(thread_zext_ln339_fu_202_p1);
    sensitive << ( pos_0_reg_124 );

    SC_METHOD(thread_zext_ln340_fu_219_p1);
    sensitive << ( pos_fu_207_p2 );

    SC_METHOD(thread_zext_ln341_fu_224_p1);
    sensitive << ( pos_1_fu_213_p2 );

    SC_METHOD(thread_zext_ln345_1_fu_156_p1);
    sensitive << ( tmp_5_fu_148_p3 );

    SC_METHOD(thread_zext_ln345_2_fu_262_p1);
    sensitive << ( add_ln345_fu_257_p2 );

    SC_METHOD(thread_zext_ln345_3_fu_271_p1);
    sensitive << ( add_ln345_3_fu_266_p2 );

    SC_METHOD(thread_zext_ln345_fu_144_p1);
    sensitive << ( a_offset1 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln338_fu_186_p2 );
    sensitive << ( icmp_ln338_1_fu_197_p2 );

    ap_CS_fsm = "0001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "rej_uniform_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, a_address0, "(port)a_address0");
    sc_trace(mVcdFile, a_ce0, "(port)a_ce0");
    sc_trace(mVcdFile, a_we0, "(port)a_we0");
    sc_trace(mVcdFile, a_d0, "(port)a_d0");
    sc_trace(mVcdFile, a_offset, "(port)a_offset");
    sc_trace(mVcdFile, a_offset1, "(port)a_offset1");
    sc_trace(mVcdFile, a_offset2, "(port)a_offset2");
    sc_trace(mVcdFile, len, "(port)len");
    sc_trace(mVcdFile, buf_r_address0, "(port)buf_r_address0");
    sc_trace(mVcdFile, buf_r_ce0, "(port)buf_r_ce0");
    sc_trace(mVcdFile, buf_r_q0, "(port)buf_r_q0");
    sc_trace(mVcdFile, buf_r_address1, "(port)buf_r_address1");
    sc_trace(mVcdFile, buf_r_ce1, "(port)buf_r_ce1");
    sc_trace(mVcdFile, buf_r_q1, "(port)buf_r_q1");
    sc_trace(mVcdFile, buflen, "(port)buflen");
    sc_trace(mVcdFile, ap_return, "(port)ap_return");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, buflen_cast_fu_136_p1, "buflen_cast_fu_136_p1");
    sc_trace(mVcdFile, buflen_cast_reg_288, "buflen_cast_reg_288");
    sc_trace(mVcdFile, len_cast_fu_140_p1, "len_cast_fu_140_p1");
    sc_trace(mVcdFile, len_cast_reg_293, "len_cast_reg_293");
    sc_trace(mVcdFile, tmp_7_cast_fu_166_p3, "tmp_7_cast_fu_166_p3");
    sc_trace(mVcdFile, tmp_7_cast_reg_298, "tmp_7_cast_reg_298");
    sc_trace(mVcdFile, trunc_ln345_fu_174_p1, "trunc_ln345_fu_174_p1");
    sc_trace(mVcdFile, trunc_ln345_reg_303, "trunc_ln345_reg_303");
    sc_trace(mVcdFile, ctr_1_load_reg_308, "ctr_1_load_reg_308");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, pos_2_fu_191_p2, "pos_2_fu_191_p2");
    sc_trace(mVcdFile, pos_2_reg_317, "pos_2_reg_317");
    sc_trace(mVcdFile, icmp_ln338_fu_186_p2, "icmp_ln338_fu_186_p2");
    sc_trace(mVcdFile, icmp_ln338_1_fu_197_p2, "icmp_ln338_1_fu_197_p2");
    sc_trace(mVcdFile, buf_load_reg_330, "buf_load_reg_330");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, pos_0_reg_124, "pos_0_reg_124");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, zext_ln339_fu_202_p1, "zext_ln339_fu_202_p1");
    sc_trace(mVcdFile, zext_ln340_fu_219_p1, "zext_ln340_fu_219_p1");
    sc_trace(mVcdFile, zext_ln341_fu_224_p1, "zext_ln341_fu_224_p1");
    sc_trace(mVcdFile, zext_ln345_3_fu_271_p1, "zext_ln345_3_fu_271_p1");
    sc_trace(mVcdFile, icmp_ln344_fu_243_p2, "icmp_ln344_fu_243_p2");
    sc_trace(mVcdFile, ctr_1_fu_44, "ctr_1_fu_44");
    sc_trace(mVcdFile, ctr_fu_249_p2, "ctr_fu_249_p2");
    sc_trace(mVcdFile, tmp_1_fu_233_p4, "tmp_1_fu_233_p4");
    sc_trace(mVcdFile, tmp_5_fu_148_p3, "tmp_5_fu_148_p3");
    sc_trace(mVcdFile, zext_ln345_1_fu_156_p1, "zext_ln345_1_fu_156_p1");
    sc_trace(mVcdFile, zext_ln345_fu_144_p1, "zext_ln345_fu_144_p1");
    sc_trace(mVcdFile, add_ln345_1_fu_160_p2, "add_ln345_1_fu_160_p2");
    sc_trace(mVcdFile, pos_fu_207_p2, "pos_fu_207_p2");
    sc_trace(mVcdFile, pos_1_fu_213_p2, "pos_1_fu_213_p2");
    sc_trace(mVcdFile, trunc_ln342_fu_229_p1, "trunc_ln342_fu_229_p1");
    sc_trace(mVcdFile, trunc_ln345_1_fu_254_p1, "trunc_ln345_1_fu_254_p1");
    sc_trace(mVcdFile, add_ln345_fu_257_p2, "add_ln345_fu_257_p2");
    sc_trace(mVcdFile, zext_ln345_2_fu_262_p1, "zext_ln345_2_fu_262_p1");
    sc_trace(mVcdFile, add_ln345_3_fu_266_p2, "add_ln345_3_fu_266_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

rej_uniform::~rej_uniform() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void rej_uniform::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln344_fu_243_p2.read()))) {
        ctr_1_fu_44 = ctr_fu_249_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        ctr_1_fu_44 = ap_const_lv32_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        pos_0_reg_124 = pos_2_reg_317.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        pos_0_reg_124 = ap_const_lv32_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        buf_load_reg_330 = buf_r_q0.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        buflen_cast_reg_288 = buflen_cast_fu_136_p1.read();
        len_cast_reg_293 = len_cast_fu_140_p1.read();
        tmp_7_cast_reg_298 = tmp_7_cast_fu_166_p3.read();
        trunc_ln345_reg_303 = trunc_ln345_fu_174_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        ctr_1_load_reg_308 = ctr_1_fu_44.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln338_fu_186_p2.read(), ap_const_lv1_1))) {
        pos_2_reg_317 = pos_2_fu_191_p2.read();
    }
}

void rej_uniform::thread_a_address0() {
    a_address0 =  (sc_lv<12>) (zext_ln345_3_fu_271_p1.read());
}

void rej_uniform::thread_a_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        a_ce0 = ap_const_logic_1;
    } else {
        a_ce0 = ap_const_logic_0;
    }
}

void rej_uniform::thread_a_d0() {
    a_d0 = tmp_1_fu_233_p4.read();
}

void rej_uniform::thread_a_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln344_fu_243_p2.read()))) {
        a_we0 = ap_const_logic_1;
    } else {
        a_we0 = ap_const_logic_0;
    }
}

void rej_uniform::thread_add_ln345_1_fu_160_p2() {
    add_ln345_1_fu_160_p2 = (!zext_ln345_1_fu_156_p1.read().is_01() || !zext_ln345_fu_144_p1.read().is_01())? sc_lv<6>(): (sc_biguint<6>(zext_ln345_1_fu_156_p1.read()) + sc_biguint<6>(zext_ln345_fu_144_p1.read()));
}

void rej_uniform::thread_add_ln345_3_fu_266_p2() {
    add_ln345_3_fu_266_p2 = (!tmp_7_cast_reg_298.read().is_01() || !zext_ln345_2_fu_262_p1.read().is_01())? sc_lv<14>(): (sc_biguint<14>(tmp_7_cast_reg_298.read()) + sc_biguint<14>(zext_ln345_2_fu_262_p1.read()));
}

void rej_uniform::thread_add_ln345_fu_257_p2() {
    add_ln345_fu_257_p2 = (!trunc_ln345_reg_303.read().is_01() || !trunc_ln345_1_fu_254_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(trunc_ln345_reg_303.read()) + sc_biguint<9>(trunc_ln345_1_fu_254_p1.read()));
}

void rej_uniform::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void rej_uniform::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void rej_uniform::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void rej_uniform::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void rej_uniform::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          (esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln338_1_fu_197_p2.read()) || 
           esl_seteq<1,1,1>(icmp_ln338_fu_186_p2.read(), ap_const_lv1_0))))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void rej_uniform::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void rej_uniform::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         (esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln338_1_fu_197_p2.read()) || 
          esl_seteq<1,1,1>(icmp_ln338_fu_186_p2.read(), ap_const_lv1_0)))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void rej_uniform::thread_ap_return() {
    ap_return = ctr_1_fu_44.read();
}

void rej_uniform::thread_buf_r_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        buf_r_address0 =  (sc_lv<10>) (zext_ln340_fu_219_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buf_r_address0 =  (sc_lv<10>) (zext_ln339_fu_202_p1.read());
    } else {
        buf_r_address0 = "XXXXXXXXXX";
    }
}

void rej_uniform::thread_buf_r_address1() {
    buf_r_address1 =  (sc_lv<10>) (zext_ln341_fu_224_p1.read());
}

void rej_uniform::thread_buf_r_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()))) {
        buf_r_ce0 = ap_const_logic_1;
    } else {
        buf_r_ce0 = ap_const_logic_0;
    }
}

void rej_uniform::thread_buf_r_ce1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        buf_r_ce1 = ap_const_logic_1;
    } else {
        buf_r_ce1 = ap_const_logic_0;
    }
}

void rej_uniform::thread_buflen_cast_fu_136_p1() {
    buflen_cast_fu_136_p1 = esl_zext<32,11>(buflen.read());
}

void rej_uniform::thread_ctr_fu_249_p2() {
    ctr_fu_249_p2 = (!ap_const_lv32_1.is_01() || !ctr_1_load_reg_308.read().is_01())? sc_lv<32>(): (sc_biguint<32>(ap_const_lv32_1) + sc_biguint<32>(ctr_1_load_reg_308.read()));
}

void rej_uniform::thread_icmp_ln338_1_fu_197_p2() {
    icmp_ln338_1_fu_197_p2 = (!pos_2_fu_191_p2.read().is_01() || !buflen_cast_reg_288.read().is_01())? sc_lv<1>(): (sc_biguint<32>(pos_2_fu_191_p2.read()) > sc_biguint<32>(buflen_cast_reg_288.read()));
}

void rej_uniform::thread_icmp_ln338_fu_186_p2() {
    icmp_ln338_fu_186_p2 = (!ctr_1_fu_44.read().is_01() || !len_cast_reg_293.read().is_01())? sc_lv<1>(): (sc_biguint<32>(ctr_1_fu_44.read()) < sc_biguint<32>(len_cast_reg_293.read()));
}

void rej_uniform::thread_icmp_ln344_fu_243_p2() {
    icmp_ln344_fu_243_p2 = (!tmp_1_fu_233_p4.read().is_01() || !ap_const_lv23_7FE001.is_01())? sc_lv<1>(): (sc_biguint<23>(tmp_1_fu_233_p4.read()) < sc_biguint<23>(ap_const_lv23_7FE001));
}

void rej_uniform::thread_len_cast_fu_140_p1() {
    len_cast_fu_140_p1 = esl_zext<32,10>(len.read());
}

void rej_uniform::thread_pos_1_fu_213_p2() {
    pos_1_fu_213_p2 = (!ap_const_lv32_2.is_01() || !pos_0_reg_124.read().is_01())? sc_lv<32>(): (sc_biguint<32>(ap_const_lv32_2) + sc_biguint<32>(pos_0_reg_124.read()));
}

void rej_uniform::thread_pos_2_fu_191_p2() {
    pos_2_fu_191_p2 = (!pos_0_reg_124.read().is_01() || !ap_const_lv32_3.is_01())? sc_lv<32>(): (sc_biguint<32>(pos_0_reg_124.read()) + sc_biguint<32>(ap_const_lv32_3));
}

void rej_uniform::thread_pos_fu_207_p2() {
    pos_fu_207_p2 = (!ap_const_lv32_1.is_01() || !pos_0_reg_124.read().is_01())? sc_lv<32>(): (sc_biguint<32>(ap_const_lv32_1) + sc_biguint<32>(pos_0_reg_124.read()));
}

void rej_uniform::thread_tmp_1_fu_233_p4() {
    tmp_1_fu_233_p4 = esl_concat<15,8>(esl_concat<7,8>(trunc_ln342_fu_229_p1.read(), buf_r_q0.read()), buf_load_reg_330.read());
}

void rej_uniform::thread_tmp_5_fu_148_p3() {
    tmp_5_fu_148_p3 = esl_concat<3,2>(a_offset.read(), ap_const_lv2_0);
}

void rej_uniform::thread_tmp_7_cast_fu_166_p3() {
    tmp_7_cast_fu_166_p3 = esl_concat<6,8>(add_ln345_1_fu_160_p2.read(), ap_const_lv8_0);
}

void rej_uniform::thread_trunc_ln342_fu_229_p1() {
    trunc_ln342_fu_229_p1 = buf_r_q1.read().range(7-1, 0);
}

void rej_uniform::thread_trunc_ln345_1_fu_254_p1() {
    trunc_ln345_1_fu_254_p1 = ctr_1_load_reg_308.read().range(9-1, 0);
}

void rej_uniform::thread_trunc_ln345_fu_174_p1() {
    trunc_ln345_fu_174_p1 = a_offset2.read().range(9-1, 0);
}

void rej_uniform::thread_zext_ln339_fu_202_p1() {
    zext_ln339_fu_202_p1 = esl_zext<64,32>(pos_0_reg_124.read());
}

void rej_uniform::thread_zext_ln340_fu_219_p1() {
    zext_ln340_fu_219_p1 = esl_zext<64,32>(pos_fu_207_p2.read());
}

void rej_uniform::thread_zext_ln341_fu_224_p1() {
    zext_ln341_fu_224_p1 = esl_zext<64,32>(pos_1_fu_213_p2.read());
}

void rej_uniform::thread_zext_ln345_1_fu_156_p1() {
    zext_ln345_1_fu_156_p1 = esl_zext<6,5>(tmp_5_fu_148_p3.read());
}

void rej_uniform::thread_zext_ln345_2_fu_262_p1() {
    zext_ln345_2_fu_262_p1 = esl_zext<14,9>(add_ln345_fu_257_p2.read());
}

void rej_uniform::thread_zext_ln345_3_fu_271_p1() {
    zext_ln345_3_fu_271_p1 = esl_zext<64,14>(add_ln345_3_fu_266_p2.read());
}

void rej_uniform::thread_zext_ln345_fu_144_p1() {
    zext_ln345_fu_144_p1 = esl_zext<6,3>(a_offset1.read());
}

void rej_uniform::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && (esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln338_1_fu_197_p2.read()) || 
  esl_seteq<1,1,1>(icmp_ln338_fu_186_p2.read(), ap_const_lv1_0)))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state2;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<4>) ("XXXX");
            break;
    }
}

}

