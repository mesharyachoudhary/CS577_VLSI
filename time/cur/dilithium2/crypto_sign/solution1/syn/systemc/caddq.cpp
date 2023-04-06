// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "caddq.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic caddq::ap_const_logic_1 = sc_dt::Log_1;
const bool caddq::ap_const_boolean_1 = true;
const sc_lv<32> caddq::ap_const_lv32_1F = "11111";
const sc_lv<32> caddq::ap_const_lv32_7FE001 = "11111111110000000000001";
const sc_lv<32> caddq::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_logic caddq::ap_const_logic_0 = sc_dt::Log_0;

caddq::caddq(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_ready);

    SC_METHOD(thread_ap_return);
    sensitive << ( a );
    sensitive << ( select_ln51_fu_26_p3 );

    SC_METHOD(thread_select_ln51_fu_26_p3);
    sensitive << ( tmp_fu_18_p3 );

    SC_METHOD(thread_tmp_fu_18_p3);
    sensitive << ( a );

    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "caddq_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, a, "(port)a");
    sc_trace(mVcdFile, ap_return, "(port)ap_return");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, tmp_fu_18_p3, "tmp_fu_18_p3");
    sc_trace(mVcdFile, select_ln51_fu_26_p3, "select_ln51_fu_26_p3");
#endif

    }
}

caddq::~caddq() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void caddq::thread_ap_ready() {
    ap_ready = ap_const_logic_1;
}

void caddq::thread_ap_return() {
    ap_return = (!select_ln51_fu_26_p3.read().is_01() || !a.read().is_01())? sc_lv<32>(): (sc_biguint<32>(select_ln51_fu_26_p3.read()) + sc_biguint<32>(a.read()));
}

void caddq::thread_select_ln51_fu_26_p3() {
    select_ln51_fu_26_p3 = (!tmp_fu_18_p3.read()[0].is_01())? sc_lv<32>(): ((tmp_fu_18_p3.read()[0].to_bool())? ap_const_lv32_7FE001: ap_const_lv32_0);
}

void caddq::thread_tmp_fu_18_p3() {
    tmp_fu_18_p3 = a.read().range(31, 31);
}

}

