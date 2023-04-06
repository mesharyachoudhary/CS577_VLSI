// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _polyvecl_uniform_gam_HH_
#define _polyvecl_uniform_gam_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "keccak_absorb.h"
#include "keccak_squeezeblocks.h"
#include "polyvecl_uniform_fYi.h"
#include "poly_uniform_statdEe.h"

namespace ap_rtl {

struct polyvecl_uniform_gam : public sc_module {
    // Port declarations 14
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<10> > v_vec_coeffs_address0;
    sc_out< sc_logic > v_vec_coeffs_ce0;
    sc_out< sc_logic > v_vec_coeffs_we0;
    sc_out< sc_lv<19> > v_vec_coeffs_d0;
    sc_out< sc_lv<8> > seed_address0;
    sc_out< sc_logic > seed_ce0;
    sc_in< sc_lv<8> > seed_q0;
    sc_in< sc_lv<16> > nonce;
    sc_signal< sc_lv<9> > ap_var_for_const0;
    sc_signal< sc_lv<7> > ap_var_for_const1;


    // Module declarations
    polyvecl_uniform_gam(sc_module_name name);
    SC_HAS_PROCESS(polyvecl_uniform_gam);

    ~polyvecl_uniform_gam();

    sc_trace_file* mVcdFile;

    polyvecl_uniform_fYi* buf_U;
    poly_uniform_statdEe* state_s_U;
    keccak_absorb* grp_keccak_absorb_fu_395;
    keccak_squeezeblocks* grp_keccak_squeezeblocks_fu_408;
    sc_signal< sc_lv<20> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<8> > buf_q0;
    sc_signal< sc_lv<8> > reg_416;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_lv<8> > buf_q1;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_logic > ap_CS_fsm_state18;
    sc_signal< sc_logic > ap_CS_fsm_state19;
    sc_signal< sc_lv<16> > shl_ln47_fu_421_p2;
    sc_signal< sc_lv<16> > shl_ln47_reg_1040;
    sc_signal< sc_lv<8> > trunc_ln_fu_431_p3;
    sc_signal< sc_lv<8> > trunc_ln_reg_1045;
    sc_signal< sc_lv<3> > i_fu_445_p2;
    sc_signal< sc_lv<3> > i_reg_1058;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<8> > t_0_fu_464_p2;
    sc_signal< sc_lv<8> > t_0_reg_1063;
    sc_signal< sc_lv<1> > icmp_ln46_fu_439_p2;
    sc_signal< sc_lv<8> > t_1_reg_1068;
    sc_signal< sc_lv<5> > i_11_fu_485_p2;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<64> > zext_ln416_fu_496_p1;
    sc_signal< sc_lv<64> > zext_ln416_reg_1081;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<3> > add_ln416_fu_506_p2;
    sc_signal< sc_lv<3> > add_ln416_reg_1089;
    sc_signal< sc_lv<8> > zext_ln26_fu_520_p1;
    sc_signal< sc_lv<8> > zext_ln26_reg_1094;
    sc_signal< sc_lv<1> > icmp_ln416_fu_500_p2;
    sc_signal< sc_lv<4> > i_13_fu_530_p2;
    sc_signal< sc_lv<4> > i_13_reg_1102;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > icmp_ln30_fu_524_p2;
    sc_signal< sc_lv<5> > state_s_addr_3_reg_1112;
    sc_signal< sc_lv<64> > r_fu_580_p2;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<32> > grp_keccak_absorb_fu_395_ap_return;
    sc_signal< sc_lv<32> > state_pos_write_assi_reg_1122;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_logic > grp_keccak_absorb_fu_395_ap_ready;
    sc_signal< sc_logic > grp_keccak_absorb_fu_395_ap_done;
    sc_signal< sc_lv<5> > state_s_addr_2_reg_1127;
    sc_signal< sc_lv<7> > i_12_fu_653_p2;
    sc_signal< sc_lv<7> > i_12_reg_1135;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_lv<6> > trunc_ln855_fu_659_p1;
    sc_signal< sc_lv<6> > trunc_ln855_reg_1140;
    sc_signal< sc_lv<1> > icmp_ln854_fu_647_p2;
    sc_signal< sc_lv<10> > add_ln855_fu_675_p2;
    sc_signal< sc_lv<10> > add_ln855_reg_1146;
    sc_signal< sc_lv<8> > shl_ln855_1_fu_765_p3;
    sc_signal< sc_lv<8> > shl_ln855_1_reg_1183;
    sc_signal< sc_lv<10> > buf_address0;
    sc_signal< sc_logic > buf_ce0;
    sc_signal< sc_logic > buf_we0;
    sc_signal< sc_lv<10> > buf_address1;
    sc_signal< sc_logic > buf_ce1;
    sc_signal< sc_lv<5> > state_s_address0;
    sc_signal< sc_logic > state_s_ce0;
    sc_signal< sc_logic > state_s_we0;
    sc_signal< sc_lv<64> > state_s_d0;
    sc_signal< sc_lv<64> > state_s_q0;
    sc_signal< sc_lv<5> > state_s_address1;
    sc_signal< sc_logic > state_s_ce1;
    sc_signal< sc_logic > state_s_we1;
    sc_signal< sc_lv<64> > state_s_d1;
    sc_signal< sc_lv<64> > state_s_q1;
    sc_signal< sc_logic > grp_keccak_absorb_fu_395_ap_start;
    sc_signal< sc_logic > grp_keccak_absorb_fu_395_ap_idle;
    sc_signal< sc_lv<5> > grp_keccak_absorb_fu_395_s_address0;
    sc_signal< sc_logic > grp_keccak_absorb_fu_395_s_ce0;
    sc_signal< sc_logic > grp_keccak_absorb_fu_395_s_we0;
    sc_signal< sc_lv<64> > grp_keccak_absorb_fu_395_s_d0;
    sc_signal< sc_lv<5> > grp_keccak_absorb_fu_395_s_address1;
    sc_signal< sc_logic > grp_keccak_absorb_fu_395_s_ce1;
    sc_signal< sc_logic > grp_keccak_absorb_fu_395_s_we1;
    sc_signal< sc_lv<64> > grp_keccak_absorb_fu_395_s_d1;
    sc_signal< sc_logic > grp_keccak_squeezeblocks_fu_408_ap_start;
    sc_signal< sc_logic > grp_keccak_squeezeblocks_fu_408_ap_done;
    sc_signal< sc_logic > grp_keccak_squeezeblocks_fu_408_ap_idle;
    sc_signal< sc_logic > grp_keccak_squeezeblocks_fu_408_ap_ready;
    sc_signal< sc_lv<10> > grp_keccak_squeezeblocks_fu_408_out_r_address0;
    sc_signal< sc_logic > grp_keccak_squeezeblocks_fu_408_out_r_ce0;
    sc_signal< sc_logic > grp_keccak_squeezeblocks_fu_408_out_r_we0;
    sc_signal< sc_lv<8> > grp_keccak_squeezeblocks_fu_408_out_r_d0;
    sc_signal< sc_lv<5> > grp_keccak_squeezeblocks_fu_408_s_address0;
    sc_signal< sc_logic > grp_keccak_squeezeblocks_fu_408_s_ce0;
    sc_signal< sc_logic > grp_keccak_squeezeblocks_fu_408_s_we0;
    sc_signal< sc_lv<64> > grp_keccak_squeezeblocks_fu_408_s_d0;
    sc_signal< sc_lv<5> > grp_keccak_squeezeblocks_fu_408_s_address1;
    sc_signal< sc_logic > grp_keccak_squeezeblocks_fu_408_s_ce1;
    sc_signal< sc_logic > grp_keccak_squeezeblocks_fu_408_s_we1;
    sc_signal< sc_lv<64> > grp_keccak_squeezeblocks_fu_408_s_d1;
    sc_signal< sc_lv<3> > i_0_reg_326;
    sc_signal< sc_lv<5> > i_0_i_i_i_i_reg_338;
    sc_signal< sc_lv<1> > icmp_ln362_fu_479_p2;
    sc_signal< sc_lv<3> > i_3_i_reg_349;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<4> > i_0_i1_i_reg_360;
    sc_signal< sc_lv<64> > r_0_i2_i_reg_372;
    sc_signal< sc_lv<7> > i_0_i_reg_384;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_logic > ap_CS_fsm_state20;
    sc_signal< sc_logic > grp_keccak_absorb_fu_395_ap_start_reg;
    sc_signal< sc_logic > grp_keccak_squeezeblocks_fu_408_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<64> > zext_ln363_fu_491_p1;
    sc_signal< sc_lv<64> > zext_ln31_fu_549_p1;
    sc_signal< sc_lv<64> > zext_ln450_1_fu_603_p1;
    sc_signal< sc_lv<64> > zext_ln855_1_fu_681_p1;
    sc_signal< sc_lv<64> > zext_ln856_fu_691_p1;
    sc_signal< sc_lv<64> > zext_ln857_fu_701_p1;
    sc_signal< sc_lv<64> > zext_ln855_2_fu_715_p1;
    sc_signal< sc_lv<64> > zext_ln861_fu_743_p1;
    sc_signal< sc_lv<64> > zext_ln862_fu_753_p1;
    sc_signal< sc_lv<64> > zext_ln860_2_fu_800_p1;
    sc_signal< sc_lv<64> > zext_ln866_fu_848_p1;
    sc_signal< sc_lv<64> > zext_ln867_fu_858_p1;
    sc_signal< sc_lv<64> > zext_ln865_1_fu_897_p1;
    sc_signal< sc_lv<64> > zext_ln871_fu_945_p1;
    sc_signal< sc_lv<64> > zext_ln872_fu_955_p1;
    sc_signal< sc_lv<64> > zext_ln870_1_fu_994_p1;
    sc_signal< sc_lv<64> > xor_ln417_fu_586_p2;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<64> > xor_ln450_fu_629_p2;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<64> > xor_ln451_fu_636_p2;
    sc_signal< sc_lv<19> > sub_ln875_fu_758_p2;
    sc_signal< sc_lv<19> > sub_ln876_fu_863_p2;
    sc_signal< sc_lv<19> > sub_ln877_fu_960_p2;
    sc_signal< sc_lv<19> > sub_ln878_fu_1033_p2;
    sc_signal< sc_lv<6> > trunc_ln47_fu_427_p1;
    sc_signal< sc_lv<16> > zext_ln47_fu_451_p1;
    sc_signal< sc_lv<8> > zext_ln47_1_fu_455_p1;
    sc_signal< sc_lv<16> > add_ln47_fu_459_p2;
    sc_signal< sc_lv<6> > shl_ln7_fu_512_p3;
    sc_signal< sc_lv<8> > or_ln_fu_536_p3;
    sc_signal< sc_lv<8> > add_ln31_fu_544_p2;
    sc_signal< sc_lv<3> > trunc_ln31_fu_558_p1;
    sc_signal< sc_lv<6> > shl_ln2_fu_562_p3;
    sc_signal< sc_lv<64> > zext_ln31_1_fu_554_p1;
    sc_signal< sc_lv<64> > zext_ln31_2_fu_570_p1;
    sc_signal< sc_lv<64> > shl_ln31_fu_574_p2;
    sc_signal< sc_lv<29> > i_s_fu_593_p4;
    sc_signal< sc_lv<3> > trunc_ln450_fu_608_p1;
    sc_signal< sc_lv<6> > shl_ln6_fu_611_p3;
    sc_signal< sc_lv<64> > zext_ln450_fu_619_p1;
    sc_signal< sc_lv<64> > shl_ln450_fu_623_p2;
    sc_signal< sc_lv<9> > shl_ln8_fu_663_p3;
    sc_signal< sc_lv<10> > zext_ln855_fu_671_p1;
    sc_signal< sc_lv<10> > zext_ln854_fu_643_p1;
    sc_signal< sc_lv<10> > add_ln856_fu_686_p2;
    sc_signal< sc_lv<10> > add_ln857_fu_696_p2;
    sc_signal< sc_lv<11> > tmp_s_fu_706_p4;
    sc_signal< sc_lv<2> > trunc_ln858_fu_720_p1;
    sc_signal< sc_lv<18> > tmp_2_i_fu_724_p4;
    sc_signal< sc_lv<10> > add_ln861_fu_738_p2;
    sc_signal< sc_lv<10> > add_ln862_fu_748_p2;
    sc_signal< sc_lv<19> > zext_ln860_fu_734_p1;
    sc_signal< sc_lv<6> > lshr_ln_fu_772_p4;
    sc_signal< sc_lv<8> > or_ln860_fu_786_p2;
    sc_signal< sc_lv<11> > tmp_2_fu_792_p3;
    sc_signal< sc_lv<8> > zext_ln860_1_fu_782_p1;
    sc_signal< sc_lv<14> > tmp_1_fu_817_p3;
    sc_signal< sc_lv<14> > shl_ln9_fu_805_p3;
    sc_signal< sc_lv<4> > trunc_ln863_fu_813_p1;
    sc_signal< sc_lv<14> > or_ln863_fu_825_p2;
    sc_signal< sc_lv<18> > or_ln863_i_fu_831_p3;
    sc_signal< sc_lv<10> > add_ln866_fu_843_p2;
    sc_signal< sc_lv<10> > add_ln867_fu_853_p2;
    sc_signal< sc_lv<19> > zext_ln863_fu_839_p1;
    sc_signal< sc_lv<4> > lshr_ln1_fu_870_p4;
    sc_signal< sc_lv<8> > or_ln865_fu_884_p2;
    sc_signal< sc_lv<11> > tmp_5_fu_889_p3;
    sc_signal< sc_lv<8> > zext_ln865_fu_880_p1;
    sc_signal< sc_lv<12> > tmp_3_fu_914_p3;
    sc_signal< sc_lv<12> > shl_ln_fu_902_p3;
    sc_signal< sc_lv<6> > trunc_ln868_fu_910_p1;
    sc_signal< sc_lv<12> > or_ln868_fu_922_p2;
    sc_signal< sc_lv<18> > or_ln868_i_fu_928_p3;
    sc_signal< sc_lv<10> > add_ln871_fu_940_p2;
    sc_signal< sc_lv<10> > add_ln872_fu_950_p2;
    sc_signal< sc_lv<19> > zext_ln868_fu_936_p1;
    sc_signal< sc_lv<2> > lshr_ln2_fu_967_p4;
    sc_signal< sc_lv<8> > or_ln870_fu_981_p2;
    sc_signal< sc_lv<11> > tmp_6_fu_986_p3;
    sc_signal< sc_lv<8> > zext_ln870_fu_977_p1;
    sc_signal< sc_lv<10> > tmp_4_fu_1007_p3;
    sc_signal< sc_lv<10> > shl_ln1_fu_999_p3;
    sc_signal< sc_lv<10> > or_ln872_fu_1015_p2;
    sc_signal< sc_lv<18> > or_ln872_i_fu_1021_p3;
    sc_signal< sc_lv<19> > zext_ln872_1_fu_1029_p1;
    sc_signal< sc_lv<20> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<20> ap_ST_fsm_state1;
    static const sc_lv<20> ap_ST_fsm_state2;
    static const sc_lv<20> ap_ST_fsm_state3;
    static const sc_lv<20> ap_ST_fsm_state4;
    static const sc_lv<20> ap_ST_fsm_state5;
    static const sc_lv<20> ap_ST_fsm_state6;
    static const sc_lv<20> ap_ST_fsm_state7;
    static const sc_lv<20> ap_ST_fsm_state8;
    static const sc_lv<20> ap_ST_fsm_state9;
    static const sc_lv<20> ap_ST_fsm_state10;
    static const sc_lv<20> ap_ST_fsm_state11;
    static const sc_lv<20> ap_ST_fsm_state12;
    static const sc_lv<20> ap_ST_fsm_state13;
    static const sc_lv<20> ap_ST_fsm_state14;
    static const sc_lv<20> ap_ST_fsm_state15;
    static const sc_lv<20> ap_ST_fsm_state16;
    static const sc_lv<20> ap_ST_fsm_state17;
    static const sc_lv<20> ap_ST_fsm_state18;
    static const sc_lv<20> ap_ST_fsm_state19;
    static const sc_lv<20> ap_ST_fsm_state20;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<9> ap_const_lv9_88;
    static const sc_lv<7> ap_const_lv7_30;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<64> ap_const_lv64_10;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<16> ap_const_lv16_2;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<5> ap_const_lv5_19;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<3> ap_const_lv3_6;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<4> ap_const_lv4_A;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<64> ap_const_lv64_1F;
    static const sc_lv<64> ap_const_lv64_8000000000000000;
    static const sc_lv<7> ap_const_lv7_40;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<10> ap_const_lv10_1;
    static const sc_lv<10> ap_const_lv10_2;
    static const sc_lv<10> ap_const_lv10_3;
    static const sc_lv<10> ap_const_lv10_4;
    static const sc_lv<19> ap_const_lv19_20000;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<10> ap_const_lv10_5;
    static const sc_lv<10> ap_const_lv10_6;
    static const sc_lv<8> ap_const_lv8_2;
    static const sc_lv<10> ap_const_lv10_7;
    static const sc_lv<10> ap_const_lv10_8;
    static const sc_lv<8> ap_const_lv8_3;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const1();
    void thread_ap_clk_no_reset_();
    void thread_add_ln31_fu_544_p2();
    void thread_add_ln416_fu_506_p2();
    void thread_add_ln47_fu_459_p2();
    void thread_add_ln855_fu_675_p2();
    void thread_add_ln856_fu_686_p2();
    void thread_add_ln857_fu_696_p2();
    void thread_add_ln861_fu_738_p2();
    void thread_add_ln862_fu_748_p2();
    void thread_add_ln866_fu_843_p2();
    void thread_add_ln867_fu_853_p2();
    void thread_add_ln871_fu_940_p2();
    void thread_add_ln872_fu_950_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state17();
    void thread_ap_CS_fsm_state18();
    void thread_ap_CS_fsm_state19();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state20();
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
    void thread_buf_address0();
    void thread_buf_address1();
    void thread_buf_ce0();
    void thread_buf_ce1();
    void thread_buf_we0();
    void thread_grp_keccak_absorb_fu_395_ap_start();
    void thread_grp_keccak_squeezeblocks_fu_408_ap_start();
    void thread_i_11_fu_485_p2();
    void thread_i_12_fu_653_p2();
    void thread_i_13_fu_530_p2();
    void thread_i_fu_445_p2();
    void thread_i_s_fu_593_p4();
    void thread_icmp_ln30_fu_524_p2();
    void thread_icmp_ln362_fu_479_p2();
    void thread_icmp_ln416_fu_500_p2();
    void thread_icmp_ln46_fu_439_p2();
    void thread_icmp_ln854_fu_647_p2();
    void thread_lshr_ln1_fu_870_p4();
    void thread_lshr_ln2_fu_967_p4();
    void thread_lshr_ln_fu_772_p4();
    void thread_or_ln860_fu_786_p2();
    void thread_or_ln863_fu_825_p2();
    void thread_or_ln863_i_fu_831_p3();
    void thread_or_ln865_fu_884_p2();
    void thread_or_ln868_fu_922_p2();
    void thread_or_ln868_i_fu_928_p3();
    void thread_or_ln870_fu_981_p2();
    void thread_or_ln872_fu_1015_p2();
    void thread_or_ln872_i_fu_1021_p3();
    void thread_or_ln_fu_536_p3();
    void thread_r_fu_580_p2();
    void thread_seed_address0();
    void thread_seed_ce0();
    void thread_shl_ln1_fu_999_p3();
    void thread_shl_ln2_fu_562_p3();
    void thread_shl_ln31_fu_574_p2();
    void thread_shl_ln450_fu_623_p2();
    void thread_shl_ln47_fu_421_p2();
    void thread_shl_ln6_fu_611_p3();
    void thread_shl_ln7_fu_512_p3();
    void thread_shl_ln855_1_fu_765_p3();
    void thread_shl_ln8_fu_663_p3();
    void thread_shl_ln9_fu_805_p3();
    void thread_shl_ln_fu_902_p3();
    void thread_state_s_address0();
    void thread_state_s_address1();
    void thread_state_s_ce0();
    void thread_state_s_ce1();
    void thread_state_s_d0();
    void thread_state_s_d1();
    void thread_state_s_we0();
    void thread_state_s_we1();
    void thread_sub_ln875_fu_758_p2();
    void thread_sub_ln876_fu_863_p2();
    void thread_sub_ln877_fu_960_p2();
    void thread_sub_ln878_fu_1033_p2();
    void thread_t_0_fu_464_p2();
    void thread_tmp_1_fu_817_p3();
    void thread_tmp_2_fu_792_p3();
    void thread_tmp_2_i_fu_724_p4();
    void thread_tmp_3_fu_914_p3();
    void thread_tmp_4_fu_1007_p3();
    void thread_tmp_5_fu_889_p3();
    void thread_tmp_6_fu_986_p3();
    void thread_tmp_s_fu_706_p4();
    void thread_trunc_ln31_fu_558_p1();
    void thread_trunc_ln450_fu_608_p1();
    void thread_trunc_ln47_fu_427_p1();
    void thread_trunc_ln855_fu_659_p1();
    void thread_trunc_ln858_fu_720_p1();
    void thread_trunc_ln863_fu_813_p1();
    void thread_trunc_ln868_fu_910_p1();
    void thread_trunc_ln_fu_431_p3();
    void thread_v_vec_coeffs_address0();
    void thread_v_vec_coeffs_ce0();
    void thread_v_vec_coeffs_d0();
    void thread_v_vec_coeffs_we0();
    void thread_xor_ln417_fu_586_p2();
    void thread_xor_ln450_fu_629_p2();
    void thread_xor_ln451_fu_636_p2();
    void thread_zext_ln26_fu_520_p1();
    void thread_zext_ln31_1_fu_554_p1();
    void thread_zext_ln31_2_fu_570_p1();
    void thread_zext_ln31_fu_549_p1();
    void thread_zext_ln363_fu_491_p1();
    void thread_zext_ln416_fu_496_p1();
    void thread_zext_ln450_1_fu_603_p1();
    void thread_zext_ln450_fu_619_p1();
    void thread_zext_ln47_1_fu_455_p1();
    void thread_zext_ln47_fu_451_p1();
    void thread_zext_ln854_fu_643_p1();
    void thread_zext_ln855_1_fu_681_p1();
    void thread_zext_ln855_2_fu_715_p1();
    void thread_zext_ln855_fu_671_p1();
    void thread_zext_ln856_fu_691_p1();
    void thread_zext_ln857_fu_701_p1();
    void thread_zext_ln860_1_fu_782_p1();
    void thread_zext_ln860_2_fu_800_p1();
    void thread_zext_ln860_fu_734_p1();
    void thread_zext_ln861_fu_743_p1();
    void thread_zext_ln862_fu_753_p1();
    void thread_zext_ln863_fu_839_p1();
    void thread_zext_ln865_1_fu_897_p1();
    void thread_zext_ln865_fu_880_p1();
    void thread_zext_ln866_fu_848_p1();
    void thread_zext_ln867_fu_858_p1();
    void thread_zext_ln868_fu_936_p1();
    void thread_zext_ln870_1_fu_994_p1();
    void thread_zext_ln870_fu_977_p1();
    void thread_zext_ln871_fu_945_p1();
    void thread_zext_ln872_1_fu_1029_p1();
    void thread_zext_ln872_fu_955_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
