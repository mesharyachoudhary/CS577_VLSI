// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _poly_challenge_HH_
#define _poly_challenge_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "keccak_absorb_2.h"
#include "keccak_squeezeblocks.h"
#include "poly_challenge_buf.h"
#include "poly_uniform_statdEe.h"

namespace ap_rtl {

struct poly_challenge : public sc_module {
    // Port declarations 14
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<8> > c_coeffs_address0;
    sc_out< sc_logic > c_coeffs_ce0;
    sc_out< sc_logic > c_coeffs_we0;
    sc_out< sc_lv<32> > c_coeffs_d0;
    sc_in< sc_lv<32> > c_coeffs_q0;
    sc_out< sc_lv<13> > seed_address0;
    sc_out< sc_logic > seed_ce0;
    sc_in< sc_lv<8> > seed_q0;
    sc_signal< sc_lv<7> > ap_var_for_const0;
    sc_signal< sc_lv<13> > ap_var_for_const1;
    sc_signal< sc_lv<64> > ap_var_for_const2;


    // Module declarations
    poly_challenge(sc_module_name name);
    SC_HAS_PROCESS(poly_challenge);

    ~poly_challenge();

    sc_trace_file* mVcdFile;

    poly_challenge_buf* buf_U;
    poly_uniform_statdEe* state_s_U;
    keccak_absorb_2* grp_keccak_absorb_2_fu_273;
    keccak_squeezeblocks* grp_keccak_squeezeblocks_fu_288;
    sc_signal< sc_lv<19> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<5> > i_19_fu_302_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<32> > grp_keccak_absorb_2_fu_273_ap_return;
    sc_signal< sc_lv<32> > state_pos_reg_522;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_logic > grp_keccak_absorb_2_fu_273_ap_ready;
    sc_signal< sc_logic > grp_keccak_absorb_2_fu_273_ap_done;
    sc_signal< sc_lv<5> > state_s_addr_reg_527;
    sc_signal< sc_lv<5> > state_s_addr_7_reg_532;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<4> > i_fu_369_p2;
    sc_signal< sc_lv<4> > i_reg_540;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<1> > icmp_ln530_fu_363_p2;
    sc_signal< sc_lv<64> > signs_fu_406_p2;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<9> > i_20_fu_418_p2;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<1> > icmp_ln538_fu_435_p2;
    sc_signal< sc_lv<1> > icmp_ln538_reg_566;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_lv<32> > pos_fu_441_p2;
    sc_signal< sc_lv<32> > pos_reg_570;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_lv<8> > c_coeffs_addr_1_reg_584;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_lv<1> > icmp_ln544_fu_456_p2;
    sc_signal< sc_lv<1> > trunc_ln547_fu_467_p1;
    sc_signal< sc_lv<1> > trunc_ln547_reg_589;
    sc_signal< sc_lv<64> > signs_3_fu_481_p1;
    sc_signal< sc_lv<64> > signs_3_reg_594;
    sc_signal< sc_lv<9> > i_21_fu_490_p2;
    sc_signal< sc_lv<9> > i_21_reg_599;
    sc_signal< sc_logic > ap_CS_fsm_state18;
    sc_signal< sc_lv<8> > buf_address0;
    sc_signal< sc_logic > buf_ce0;
    sc_signal< sc_logic > buf_we0;
    sc_signal< sc_lv<8> > buf_q0;
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
    sc_signal< sc_logic > grp_keccak_absorb_2_fu_273_ap_start;
    sc_signal< sc_logic > grp_keccak_absorb_2_fu_273_ap_idle;
    sc_signal< sc_lv<5> > grp_keccak_absorb_2_fu_273_s_address0;
    sc_signal< sc_logic > grp_keccak_absorb_2_fu_273_s_ce0;
    sc_signal< sc_logic > grp_keccak_absorb_2_fu_273_s_we0;
    sc_signal< sc_lv<64> > grp_keccak_absorb_2_fu_273_s_d0;
    sc_signal< sc_lv<5> > grp_keccak_absorb_2_fu_273_s_address1;
    sc_signal< sc_logic > grp_keccak_absorb_2_fu_273_s_ce1;
    sc_signal< sc_logic > grp_keccak_absorb_2_fu_273_s_we1;
    sc_signal< sc_lv<64> > grp_keccak_absorb_2_fu_273_s_d1;
    sc_signal< sc_lv<13> > grp_keccak_absorb_2_fu_273_m_address0;
    sc_signal< sc_logic > grp_keccak_absorb_2_fu_273_m_ce0;
    sc_signal< sc_logic > grp_keccak_squeezeblocks_fu_288_ap_start;
    sc_signal< sc_logic > grp_keccak_squeezeblocks_fu_288_ap_done;
    sc_signal< sc_logic > grp_keccak_squeezeblocks_fu_288_ap_idle;
    sc_signal< sc_logic > grp_keccak_squeezeblocks_fu_288_ap_ready;
    sc_signal< sc_lv<8> > grp_keccak_squeezeblocks_fu_288_out_r_address0;
    sc_signal< sc_logic > grp_keccak_squeezeblocks_fu_288_out_r_ce0;
    sc_signal< sc_logic > grp_keccak_squeezeblocks_fu_288_out_r_we0;
    sc_signal< sc_lv<8> > grp_keccak_squeezeblocks_fu_288_out_r_d0;
    sc_signal< sc_lv<5> > grp_keccak_squeezeblocks_fu_288_s_address0;
    sc_signal< sc_logic > grp_keccak_squeezeblocks_fu_288_s_ce0;
    sc_signal< sc_logic > grp_keccak_squeezeblocks_fu_288_s_we0;
    sc_signal< sc_lv<64> > grp_keccak_squeezeblocks_fu_288_s_d0;
    sc_signal< sc_lv<5> > grp_keccak_squeezeblocks_fu_288_s_address1;
    sc_signal< sc_logic > grp_keccak_squeezeblocks_fu_288_s_ce1;
    sc_signal< sc_logic > grp_keccak_squeezeblocks_fu_288_s_we1;
    sc_signal< sc_lv<64> > grp_keccak_squeezeblocks_fu_288_s_d1;
    sc_signal< sc_lv<5> > i_0_i_i_reg_169;
    sc_signal< sc_lv<1> > icmp_ln362_fu_296_p2;
    sc_signal< sc_lv<4> > i_0_reg_180;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<64> > signs_0_reg_192;
    sc_signal< sc_lv<9> > i_1_reg_204;
    sc_signal< sc_lv<1> > icmp_ln534_fu_412_p2;
    sc_signal< sc_lv<9> > i_2_reg_215;
    sc_signal< sc_logic > ap_CS_fsm_state19;
    sc_signal< sc_lv<32> > pos_0_reg_227;
    sc_signal< sc_lv<64> > signs_1_reg_239;
    sc_signal< sc_lv<32> > pos_1_reg_250;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<1> > icmp_ln536_fu_429_p2;
    sc_signal< sc_lv<32> > pos_2_reg_261;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< bool > ap_block_state15_on_subcall_done;
    sc_signal< sc_logic > grp_keccak_absorb_2_fu_273_ap_start_reg;
    sc_signal< sc_logic > grp_keccak_squeezeblocks_fu_288_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<64> > zext_ln363_fu_308_p1;
    sc_signal< sc_lv<64> > zext_ln450_3_fu_323_p1;
    sc_signal< sc_lv<64> > zext_ln531_fu_375_p1;
    sc_signal< sc_lv<64> > zext_ln535_fu_424_p1;
    sc_signal< sc_lv<64> > zext_ln543_fu_447_p1;
    sc_signal< sc_lv<64> > zext_ln546_fu_462_p1;
    sc_signal< sc_lv<64> > zext_ln546_1_fu_485_p1;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<64> > xor_ln450_fu_349_p2;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<64> > xor_ln451_fu_356_p2;
    sc_signal< sc_lv<32> > sext_ln547_fu_509_p1;
    sc_signal< sc_lv<29> > i_s_fu_313_p4;
    sc_signal< sc_lv<3> > trunc_ln450_fu_328_p1;
    sc_signal< sc_lv<6> > shl_ln_fu_331_p3;
    sc_signal< sc_lv<64> > zext_ln450_fu_339_p1;
    sc_signal< sc_lv<64> > shl_ln450_fu_343_p2;
    sc_signal< sc_lv<3> > trunc_ln531_fu_384_p1;
    sc_signal< sc_lv<6> > shl_ln8_fu_388_p3;
    sc_signal< sc_lv<64> > zext_ln531_1_fu_380_p1;
    sc_signal< sc_lv<64> > zext_ln531_2_fu_396_p1;
    sc_signal< sc_lv<64> > shl_ln531_fu_400_p2;
    sc_signal< sc_lv<9> > zext_ln543_1_fu_452_p1;
    sc_signal< sc_lv<63> > signs_2_fu_471_p4;
    sc_signal< sc_lv<2> > shl_ln9_fu_496_p3;
    sc_signal< sc_lv<2> > sub_ln547_fu_503_p2;
    sc_signal< sc_lv<19> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<19> ap_ST_fsm_state1;
    static const sc_lv<19> ap_ST_fsm_state2;
    static const sc_lv<19> ap_ST_fsm_state3;
    static const sc_lv<19> ap_ST_fsm_state4;
    static const sc_lv<19> ap_ST_fsm_state5;
    static const sc_lv<19> ap_ST_fsm_state6;
    static const sc_lv<19> ap_ST_fsm_state7;
    static const sc_lv<19> ap_ST_fsm_state8;
    static const sc_lv<19> ap_ST_fsm_state9;
    static const sc_lv<19> ap_ST_fsm_state10;
    static const sc_lv<19> ap_ST_fsm_state11;
    static const sc_lv<19> ap_ST_fsm_state12;
    static const sc_lv<19> ap_ST_fsm_state13;
    static const sc_lv<19> ap_ST_fsm_state14;
    static const sc_lv<19> ap_ST_fsm_state15;
    static const sc_lv<19> ap_ST_fsm_state16;
    static const sc_lv<19> ap_ST_fsm_state17;
    static const sc_lv<19> ap_ST_fsm_state18;
    static const sc_lv<19> ap_ST_fsm_state19;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<9> ap_const_lv9_D9;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_E;
    static const bool ap_const_boolean_0;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<13> ap_const_lv13_0;
    static const sc_lv<64> ap_const_lv64_20;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<64> ap_const_lv64_10;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<5> ap_const_lv5_19;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<64> ap_const_lv64_1F;
    static const sc_lv<64> ap_const_lv64_8000000000000000;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<9> ap_const_lv9_100;
    static const sc_lv<9> ap_const_lv9_1;
    static const sc_lv<32> ap_const_lv32_87;
    static const sc_lv<32> ap_const_lv32_3F;
    static const sc_lv<2> ap_const_lv2_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const1();
    void thread_ap_var_for_const2();
    void thread_ap_clk_no_reset_();
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
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_block_state15_on_subcall_done();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_buf_address0();
    void thread_buf_ce0();
    void thread_buf_we0();
    void thread_c_coeffs_address0();
    void thread_c_coeffs_ce0();
    void thread_c_coeffs_d0();
    void thread_c_coeffs_we0();
    void thread_grp_keccak_absorb_2_fu_273_ap_start();
    void thread_grp_keccak_squeezeblocks_fu_288_ap_start();
    void thread_i_19_fu_302_p2();
    void thread_i_20_fu_418_p2();
    void thread_i_21_fu_490_p2();
    void thread_i_fu_369_p2();
    void thread_i_s_fu_313_p4();
    void thread_icmp_ln362_fu_296_p2();
    void thread_icmp_ln530_fu_363_p2();
    void thread_icmp_ln534_fu_412_p2();
    void thread_icmp_ln536_fu_429_p2();
    void thread_icmp_ln538_fu_435_p2();
    void thread_icmp_ln544_fu_456_p2();
    void thread_pos_fu_441_p2();
    void thread_seed_address0();
    void thread_seed_ce0();
    void thread_sext_ln547_fu_509_p1();
    void thread_shl_ln450_fu_343_p2();
    void thread_shl_ln531_fu_400_p2();
    void thread_shl_ln8_fu_388_p3();
    void thread_shl_ln9_fu_496_p3();
    void thread_shl_ln_fu_331_p3();
    void thread_signs_2_fu_471_p4();
    void thread_signs_3_fu_481_p1();
    void thread_signs_fu_406_p2();
    void thread_state_s_addr_7_reg_532();
    void thread_state_s_address0();
    void thread_state_s_address1();
    void thread_state_s_ce0();
    void thread_state_s_ce1();
    void thread_state_s_d0();
    void thread_state_s_d1();
    void thread_state_s_we0();
    void thread_state_s_we1();
    void thread_sub_ln547_fu_503_p2();
    void thread_trunc_ln450_fu_328_p1();
    void thread_trunc_ln531_fu_384_p1();
    void thread_trunc_ln547_fu_467_p1();
    void thread_xor_ln450_fu_349_p2();
    void thread_xor_ln451_fu_356_p2();
    void thread_zext_ln363_fu_308_p1();
    void thread_zext_ln450_3_fu_323_p1();
    void thread_zext_ln450_fu_339_p1();
    void thread_zext_ln531_1_fu_380_p1();
    void thread_zext_ln531_2_fu_396_p1();
    void thread_zext_ln531_fu_375_p1();
    void thread_zext_ln535_fu_424_p1();
    void thread_zext_ln543_1_fu_452_p1();
    void thread_zext_ln543_fu_447_p1();
    void thread_zext_ln546_1_fu_485_p1();
    void thread_zext_ln546_fu_462_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
