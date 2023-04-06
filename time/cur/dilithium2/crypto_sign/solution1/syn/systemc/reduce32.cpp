// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "reduce32.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic reduce32::ap_const_logic_1 = sc_dt::Log_1;
const bool reduce32::ap_const_boolean_1 = true;
const sc_lv<32> reduce32::ap_const_lv32_400000 = "10000000000000000000000";
const sc_lv<32> reduce32::ap_const_lv32_17 = "10111";
const sc_lv<32> reduce32::ap_const_lv32_1F = "11111";
const sc_lv<32> reduce32::ap_const_lv32_FF801FFF = "11111111100000000001111111111111";
const sc_logic reduce32::ap_const_logic_0 = sc_dt::Log_0;

reduce32::reduce32(sc_module_name name) : sc_module(name), mVcdFile(0) {
    crypto_sign_mac_mibs_U71 = new crypto_sign_mac_mibs<1,1,9,24,32,32>("crypto_sign_mac_mibs_U71");
    crypto_sign_mac_mibs_U71->din0(trunc_ln_fu_26_p4);
    crypto_sign_mac_mibs_U71->din1(grp_fu_40_p1);
    crypto_sign_mac_mibs_U71->din2(a);
    crypto_sign_mac_mibs_U71->dout(grp_fu_40_p3);

    SC_METHOD(thread_add_ln36_fu_20_p2);
    sensitive << ( a );

    SC_METHOD(thread_ap_ready);

    SC_METHOD(thread_ap_return);
    sensitive << ( grp_fu_40_p3 );

    SC_METHOD(thread_grp_fu_40_p1);

    SC_METHOD(thread_trunc_ln_fu_26_p4);
    sensitive << ( add_ln36_fu_20_p2 );

    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "reduce32_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, add_ln36_fu_20_p2, "add_ln36_fu_20_p2");
    sc_trace(mVcdFile, trunc_ln_fu_26_p4, "trunc_ln_fu_26_p4");
    sc_trace(mVcdFile, grp_fu_40_p1, "grp_fu_40_p1");
    sc_trace(mVcdFile, grp_fu_40_p3, "grp_fu_40_p3");
#endif

    }
}

reduce32::~reduce32() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete crypto_sign_mac_mibs_U71;
}

void reduce32::thread_add_ln36_fu_20_p2() {
    add_ln36_fu_20_p2 = (!a.read().is_01() || !ap_const_lv32_400000.is_01())? sc_lv<32>(): (sc_biguint<32>(a.read()) + sc_biguint<32>(ap_const_lv32_400000));
}

void reduce32::thread_ap_ready() {
    ap_ready = ap_const_logic_1;
}

void reduce32::thread_ap_return() {
    ap_return = grp_fu_40_p3.read();
}

void reduce32::thread_grp_fu_40_p1() {
    grp_fu_40_p1 =  (sc_lv<24>) (ap_const_lv32_FF801FFF);
}

void reduce32::thread_trunc_ln_fu_26_p4() {
    trunc_ln_fu_26_p4 = add_ln36_fu_20_p2.read().range(31, 23);
}

}

