// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _polyz_pack_HH_
#define _polyz_pack_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct polyz_pack : public sc_module {
    // Port declarations 15
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<13> > r_address0;
    sc_out< sc_logic > r_ce0;
    sc_out< sc_logic > r_we0;
    sc_out< sc_lv<8> > r_d0;
    sc_in< sc_lv<11> > r_offset;
    sc_out< sc_lv<10> > a_coeffs_address0;
    sc_out< sc_logic > a_coeffs_ce0;
    sc_in< sc_lv<32> > a_coeffs_q0;
    sc_in< sc_lv<3> > a_coeffs_offset;


    // Module declarations
    polyz_pack(sc_module_name name);
    SC_HAS_PROCESS(polyz_pack);

    ~polyz_pack();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<11> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<12> > zext_ln810_2_fu_245_p1;
    sc_signal< sc_lv<12> > zext_ln810_2_reg_670;
    sc_signal< sc_lv<10> > zext_ln804_fu_249_p1;
    sc_signal< sc_lv<10> > zext_ln804_reg_683;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<7> > i_fu_259_p2;
    sc_signal< sc_lv<7> > i_reg_691;
    sc_signal< sc_lv<6> > trunc_ln805_fu_265_p1;
    sc_signal< sc_lv<6> > trunc_ln805_reg_696;
    sc_signal< sc_lv<1> > icmp_ln804_fu_253_p2;
    sc_signal< sc_lv<10> > add_ln810_fu_299_p2;
    sc_signal< sc_lv<10> > add_ln810_reg_707;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<8> > trunc_ln1_reg_719;
    sc_signal< sc_lv<8> > trunc_ln2_reg_724;
    sc_signal< sc_lv<8> > shl_ln_fu_338_p3;
    sc_signal< sc_lv<8> > shl_ln_reg_729;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<8> > trunc_ln3_reg_740;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<8> > trunc_ln4_reg_745;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<8> > trunc_ln5_reg_755;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<8> > trunc_ln6_reg_760;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<8> > trunc_ln7_reg_770;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<8> > trunc_ln8_reg_775;
    sc_signal< sc_lv<12> > add_ln821_1_fu_653_p2;
    sc_signal< sc_lv<12> > add_ln821_1_reg_780;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<7> > i_0_reg_228;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<64> > zext_ln805_fu_278_p1;
    sc_signal< sc_lv<64> > zext_ln810_3_fu_313_p1;
    sc_signal< sc_lv<64> > zext_ln806_fu_358_p1;
    sc_signal< sc_lv<64> > zext_ln811_1_fu_377_p1;
    sc_signal< sc_lv<64> > zext_ln812_1_fu_396_p1;
    sc_signal< sc_lv<64> > zext_ln807_fu_451_p1;
    sc_signal< sc_lv<64> > zext_ln814_1_fu_470_p1;
    sc_signal< sc_lv<64> > zext_ln815_1_fu_489_p1;
    sc_signal< sc_lv<64> > zext_ln808_fu_544_p1;
    sc_signal< sc_lv<64> > zext_ln817_1_fu_563_p1;
    sc_signal< sc_lv<64> > zext_ln818_1_fu_582_p1;
    sc_signal< sc_lv<64> > zext_ln820_1_fu_639_p1;
    sc_signal< sc_lv<64> > zext_ln821_1_fu_658_p1;
    sc_signal< sc_lv<8> > trunc_ln810_fu_283_p1;
    sc_signal< sc_lv<8> > or_ln813_fu_413_p2;
    sc_signal< sc_lv<8> > or_ln816_fu_506_p2;
    sc_signal< sc_lv<8> > or_ln819_fu_599_p2;
    sc_signal< sc_lv<11> > tmp_fu_269_p4;
    sc_signal< sc_lv<32> > grp_fu_239_p2;
    sc_signal< sc_lv<9> > shl_ln2_fu_288_p3;
    sc_signal< sc_lv<10> > zext_ln810_fu_295_p1;
    sc_signal< sc_lv<12> > zext_ln810_1_fu_304_p1;
    sc_signal< sc_lv<12> > add_ln810_1_fu_308_p2;
    sc_signal< sc_lv<8> > or_ln806_fu_345_p2;
    sc_signal< sc_lv<11> > tmp_1_fu_351_p3;
    sc_signal< sc_lv<10> > add_ln811_fu_363_p2;
    sc_signal< sc_lv<12> > zext_ln811_fu_368_p1;
    sc_signal< sc_lv<12> > add_ln811_1_fu_372_p2;
    sc_signal< sc_lv<10> > add_ln812_fu_382_p2;
    sc_signal< sc_lv<12> > zext_ln812_fu_387_p1;
    sc_signal< sc_lv<12> > add_ln812_1_fu_391_p2;
    sc_signal< sc_lv<6> > trunc_ln813_fu_401_p1;
    sc_signal< sc_lv<8> > shl_ln3_fu_405_p3;
    sc_signal< sc_lv<8> > or_ln807_fu_439_p2;
    sc_signal< sc_lv<11> > tmp_2_fu_444_p3;
    sc_signal< sc_lv<10> > add_ln814_fu_456_p2;
    sc_signal< sc_lv<12> > zext_ln814_fu_461_p1;
    sc_signal< sc_lv<12> > add_ln814_1_fu_465_p2;
    sc_signal< sc_lv<10> > add_ln815_fu_475_p2;
    sc_signal< sc_lv<12> > zext_ln815_fu_480_p1;
    sc_signal< sc_lv<12> > add_ln815_1_fu_484_p2;
    sc_signal< sc_lv<4> > trunc_ln816_fu_494_p1;
    sc_signal< sc_lv<8> > shl_ln4_fu_498_p3;
    sc_signal< sc_lv<8> > or_ln808_fu_532_p2;
    sc_signal< sc_lv<11> > tmp_3_fu_537_p3;
    sc_signal< sc_lv<10> > add_ln817_fu_549_p2;
    sc_signal< sc_lv<12> > zext_ln817_fu_554_p1;
    sc_signal< sc_lv<12> > add_ln817_1_fu_558_p2;
    sc_signal< sc_lv<10> > add_ln818_fu_568_p2;
    sc_signal< sc_lv<12> > zext_ln818_fu_573_p1;
    sc_signal< sc_lv<12> > add_ln818_1_fu_577_p2;
    sc_signal< sc_lv<2> > trunc_ln819_fu_587_p1;
    sc_signal< sc_lv<8> > shl_ln5_fu_591_p3;
    sc_signal< sc_lv<10> > add_ln820_fu_625_p2;
    sc_signal< sc_lv<12> > zext_ln820_fu_630_p1;
    sc_signal< sc_lv<12> > add_ln820_1_fu_634_p2;
    sc_signal< sc_lv<10> > add_ln821_fu_644_p2;
    sc_signal< sc_lv<12> > zext_ln821_fu_649_p1;
    sc_signal< sc_lv<11> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<11> ap_ST_fsm_state1;
    static const sc_lv<11> ap_ST_fsm_state2;
    static const sc_lv<11> ap_ST_fsm_state3;
    static const sc_lv<11> ap_ST_fsm_state4;
    static const sc_lv<11> ap_ST_fsm_state5;
    static const sc_lv<11> ap_ST_fsm_state6;
    static const sc_lv<11> ap_ST_fsm_state7;
    static const sc_lv<11> ap_ST_fsm_state8;
    static const sc_lv<11> ap_ST_fsm_state9;
    static const sc_lv<11> ap_ST_fsm_state10;
    static const sc_lv<11> ap_ST_fsm_state11;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_20000;
    static const sc_lv<7> ap_const_lv7_40;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<10> ap_const_lv10_1;
    static const sc_lv<10> ap_const_lv10_2;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<8> ap_const_lv8_2;
    static const sc_lv<10> ap_const_lv10_3;
    static const sc_lv<10> ap_const_lv10_4;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<8> ap_const_lv8_3;
    static const sc_lv<10> ap_const_lv10_5;
    static const sc_lv<10> ap_const_lv10_6;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<10> ap_const_lv10_7;
    static const sc_lv<10> ap_const_lv10_8;
    static const sc_lv<1> ap_const_lv1_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_a_coeffs_address0();
    void thread_a_coeffs_ce0();
    void thread_add_ln810_1_fu_308_p2();
    void thread_add_ln810_fu_299_p2();
    void thread_add_ln811_1_fu_372_p2();
    void thread_add_ln811_fu_363_p2();
    void thread_add_ln812_1_fu_391_p2();
    void thread_add_ln812_fu_382_p2();
    void thread_add_ln814_1_fu_465_p2();
    void thread_add_ln814_fu_456_p2();
    void thread_add_ln815_1_fu_484_p2();
    void thread_add_ln815_fu_475_p2();
    void thread_add_ln817_1_fu_558_p2();
    void thread_add_ln817_fu_549_p2();
    void thread_add_ln818_1_fu_577_p2();
    void thread_add_ln818_fu_568_p2();
    void thread_add_ln820_1_fu_634_p2();
    void thread_add_ln820_fu_625_p2();
    void thread_add_ln821_1_fu_653_p2();
    void thread_add_ln821_fu_644_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_grp_fu_239_p2();
    void thread_i_fu_259_p2();
    void thread_icmp_ln804_fu_253_p2();
    void thread_or_ln806_fu_345_p2();
    void thread_or_ln807_fu_439_p2();
    void thread_or_ln808_fu_532_p2();
    void thread_or_ln813_fu_413_p2();
    void thread_or_ln816_fu_506_p2();
    void thread_or_ln819_fu_599_p2();
    void thread_r_address0();
    void thread_r_ce0();
    void thread_r_d0();
    void thread_r_we0();
    void thread_shl_ln2_fu_288_p3();
    void thread_shl_ln3_fu_405_p3();
    void thread_shl_ln4_fu_498_p3();
    void thread_shl_ln5_fu_591_p3();
    void thread_shl_ln_fu_338_p3();
    void thread_tmp_1_fu_351_p3();
    void thread_tmp_2_fu_444_p3();
    void thread_tmp_3_fu_537_p3();
    void thread_tmp_fu_269_p4();
    void thread_trunc_ln805_fu_265_p1();
    void thread_trunc_ln810_fu_283_p1();
    void thread_trunc_ln813_fu_401_p1();
    void thread_trunc_ln816_fu_494_p1();
    void thread_trunc_ln819_fu_587_p1();
    void thread_zext_ln804_fu_249_p1();
    void thread_zext_ln805_fu_278_p1();
    void thread_zext_ln806_fu_358_p1();
    void thread_zext_ln807_fu_451_p1();
    void thread_zext_ln808_fu_544_p1();
    void thread_zext_ln810_1_fu_304_p1();
    void thread_zext_ln810_2_fu_245_p1();
    void thread_zext_ln810_3_fu_313_p1();
    void thread_zext_ln810_fu_295_p1();
    void thread_zext_ln811_1_fu_377_p1();
    void thread_zext_ln811_fu_368_p1();
    void thread_zext_ln812_1_fu_396_p1();
    void thread_zext_ln812_fu_387_p1();
    void thread_zext_ln814_1_fu_470_p1();
    void thread_zext_ln814_fu_461_p1();
    void thread_zext_ln815_1_fu_489_p1();
    void thread_zext_ln815_fu_480_p1();
    void thread_zext_ln817_1_fu_563_p1();
    void thread_zext_ln817_fu_554_p1();
    void thread_zext_ln818_1_fu_582_p1();
    void thread_zext_ln818_fu_573_p1();
    void thread_zext_ln820_1_fu_639_p1();
    void thread_zext_ln820_fu_630_p1();
    void thread_zext_ln821_1_fu_658_p1();
    void thread_zext_ln821_fu_649_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
