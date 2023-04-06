// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module poly_uniform (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        a_coeffs_address0,
        a_coeffs_ce0,
        a_coeffs_we0,
        a_coeffs_d0,
        a_coeffs_offset,
        a_coeffs_offset1,
        seed_address0,
        seed_ce0,
        seed_q0,
        nonce
);

parameter    ap_ST_fsm_state1 = 33'd1;
parameter    ap_ST_fsm_state2 = 33'd2;
parameter    ap_ST_fsm_state3 = 33'd4;
parameter    ap_ST_fsm_state4 = 33'd8;
parameter    ap_ST_fsm_state5 = 33'd16;
parameter    ap_ST_fsm_state6 = 33'd32;
parameter    ap_ST_fsm_state7 = 33'd64;
parameter    ap_ST_fsm_state8 = 33'd128;
parameter    ap_ST_fsm_state9 = 33'd256;
parameter    ap_ST_fsm_state10 = 33'd512;
parameter    ap_ST_fsm_state11 = 33'd1024;
parameter    ap_ST_fsm_state12 = 33'd2048;
parameter    ap_ST_fsm_state13 = 33'd4096;
parameter    ap_ST_fsm_state14 = 33'd8192;
parameter    ap_ST_fsm_state15 = 33'd16384;
parameter    ap_ST_fsm_state16 = 33'd32768;
parameter    ap_ST_fsm_state17 = 33'd65536;
parameter    ap_ST_fsm_state18 = 33'd131072;
parameter    ap_ST_fsm_state19 = 33'd262144;
parameter    ap_ST_fsm_state20 = 33'd524288;
parameter    ap_ST_fsm_state21 = 33'd1048576;
parameter    ap_ST_fsm_state22 = 33'd2097152;
parameter    ap_ST_fsm_state23 = 33'd4194304;
parameter    ap_ST_fsm_state24 = 33'd8388608;
parameter    ap_ST_fsm_state25 = 33'd16777216;
parameter    ap_ST_fsm_state26 = 33'd33554432;
parameter    ap_ST_fsm_state27 = 33'd67108864;
parameter    ap_ST_fsm_state28 = 33'd134217728;
parameter    ap_ST_fsm_state29 = 33'd268435456;
parameter    ap_ST_fsm_state30 = 33'd536870912;
parameter    ap_ST_fsm_state31 = 33'd1073741824;
parameter    ap_ST_fsm_state32 = 33'd2147483648;
parameter    ap_ST_fsm_state33 = 33'd4294967296;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] a_coeffs_address0;
output   a_coeffs_ce0;
output   a_coeffs_we0;
output  [22:0] a_coeffs_d0;
input  [2:0] a_coeffs_offset;
input  [2:0] a_coeffs_offset1;
output  [7:0] seed_address0;
output   seed_ce0;
input  [7:0] seed_q0;
input  [9:0] nonce;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg a_coeffs_ce0;
reg a_coeffs_we0;
reg seed_ce0;

(* fsm_encoding = "none" *) reg   [32:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [7:0] t_0_fu_317_p1;
reg   [7:0] t_0_reg_623;
wire   [7:0] t_1_fu_331_p1;
reg   [7:0] t_1_reg_628;
wire   [4:0] i_17_fu_341_p2;
wire    ap_CS_fsm_state2;
wire   [63:0] zext_ln416_fu_352_p1;
reg   [63:0] zext_ln416_reg_641;
wire    ap_CS_fsm_state3;
wire   [2:0] add_ln416_fu_362_p2;
reg   [2:0] add_ln416_reg_649;
wire   [4:0] shl_ln6_fu_372_p3;
reg   [4:0] shl_ln6_reg_654;
wire   [0:0] icmp_ln416_fu_356_p2;
wire   [1:0] trunc_ln382_fu_380_p1;
reg   [1:0] trunc_ln382_reg_659;
wire   [1:0] trunc_ln382_1_fu_383_p1;
reg   [1:0] trunc_ln382_1_reg_664;
wire   [3:0] i_18_fu_392_p2;
reg   [3:0] i_18_reg_672;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln30_fu_386_p2;
reg   [4:0] state_s_addr_6_reg_682;
wire   [63:0] r_fu_438_p2;
wire    ap_CS_fsm_state5;
wire   [31:0] grp_keccak_absorb_fu_275_ap_return;
reg   [31:0] state_pos_write_assi_reg_692;
wire    ap_CS_fsm_state7;
wire    grp_keccak_absorb_fu_275_ap_ready;
wire    grp_keccak_absorb_fu_275_ap_done;
reg   [4:0] state_s_addr_4_reg_697;
wire   [4:0] state_s_addr_5_reg_702;
wire    ap_CS_fsm_state10;
wire   [31:0] grp_rej_uniform_fu_301_ap_return;
wire    ap_CS_fsm_state15;
wire    grp_rej_uniform_fu_301_ap_ready;
wire    grp_rej_uniform_fu_301_ap_done;
wire   [10:0] zext_ln384_fu_505_p1;
reg   [10:0] zext_ln384_reg_712;
wire    ap_CS_fsm_state16;
wire   [7:0] trunc_ln385_fu_531_p1;
reg   [7:0] trunc_ln385_reg_720;
wire    ap_CS_fsm_state28;
wire   [1:0] trunc_ln385_1_fu_535_p1;
reg   [1:0] trunc_ln385_1_reg_725;
wire   [10:0] sub_ln387_fu_543_p2;
reg   [10:0] sub_ln387_reg_731;
wire   [1:0] i_fu_557_p2;
reg   [1:0] i_reg_739;
wire    ap_CS_fsm_state29;
wire   [0:0] icmp_ln386_fu_552_p2;
wire   [8:0] zext_ln390_fu_587_p1;
reg   [8:0] zext_ln390_reg_749;
wire    ap_CS_fsm_state32;
wire   [9:0] sub_ln391_fu_595_p2;
reg   [9:0] sub_ln391_reg_754;
wire   [10:0] zext_ln391_fu_602_p1;
reg   [10:0] zext_ln391_reg_759;
wire   [31:0] ctr_2_fu_607_p2;
wire    ap_CS_fsm_state33;
reg   [9:0] buf_address0;
reg    buf_ce0;
reg    buf_we0;
reg   [7:0] buf_d0;
wire   [7:0] buf_q0;
reg    buf_ce1;
wire   [7:0] buf_q1;
reg   [4:0] state_s_address0;
reg    state_s_ce0;
reg    state_s_we0;
reg   [63:0] state_s_d0;
wire   [63:0] state_s_q0;
reg   [4:0] state_s_address1;
reg    state_s_ce1;
reg    state_s_we1;
reg   [63:0] state_s_d1;
wire   [63:0] state_s_q1;
wire    grp_keccak_absorb_fu_275_ap_start;
wire    grp_keccak_absorb_fu_275_ap_idle;
wire   [4:0] grp_keccak_absorb_fu_275_s_address0;
wire    grp_keccak_absorb_fu_275_s_ce0;
wire    grp_keccak_absorb_fu_275_s_we0;
wire   [63:0] grp_keccak_absorb_fu_275_s_d0;
wire   [4:0] grp_keccak_absorb_fu_275_s_address1;
wire    grp_keccak_absorb_fu_275_s_ce1;
wire    grp_keccak_absorb_fu_275_s_we1;
wire   [63:0] grp_keccak_absorb_fu_275_s_d1;
wire    grp_keccak_squeezeblocks_2_fu_288_ap_start;
wire    grp_keccak_squeezeblocks_2_fu_288_ap_done;
wire    grp_keccak_squeezeblocks_2_fu_288_ap_idle;
wire    grp_keccak_squeezeblocks_2_fu_288_ap_ready;
wire   [9:0] grp_keccak_squeezeblocks_2_fu_288_out_r_address0;
wire    grp_keccak_squeezeblocks_2_fu_288_out_r_ce0;
wire    grp_keccak_squeezeblocks_2_fu_288_out_r_we0;
wire   [7:0] grp_keccak_squeezeblocks_2_fu_288_out_r_d0;
reg   [1:0] grp_keccak_squeezeblocks_2_fu_288_out_offset;
reg   [3:0] grp_keccak_squeezeblocks_2_fu_288_nblocks;
wire   [4:0] grp_keccak_squeezeblocks_2_fu_288_s_address0;
wire    grp_keccak_squeezeblocks_2_fu_288_s_ce0;
wire    grp_keccak_squeezeblocks_2_fu_288_s_we0;
wire   [63:0] grp_keccak_squeezeblocks_2_fu_288_s_d0;
wire   [4:0] grp_keccak_squeezeblocks_2_fu_288_s_address1;
wire    grp_keccak_squeezeblocks_2_fu_288_s_ce1;
wire    grp_keccak_squeezeblocks_2_fu_288_s_we1;
wire   [63:0] grp_keccak_squeezeblocks_2_fu_288_s_d1;
wire    grp_rej_uniform_fu_301_ap_start;
wire    grp_rej_uniform_fu_301_ap_idle;
wire   [11:0] grp_rej_uniform_fu_301_a_address0;
wire    grp_rej_uniform_fu_301_a_ce0;
wire    grp_rej_uniform_fu_301_a_we0;
wire   [22:0] grp_rej_uniform_fu_301_a_d0;
reg   [31:0] grp_rej_uniform_fu_301_a_offset2;
reg   [9:0] grp_rej_uniform_fu_301_len;
wire   [9:0] grp_rej_uniform_fu_301_buf_r_address0;
wire    grp_rej_uniform_fu_301_buf_r_ce0;
wire   [9:0] grp_rej_uniform_fu_301_buf_r_address1;
wire    grp_rej_uniform_fu_301_buf_r_ce1;
reg   [10:0] grp_rej_uniform_fu_301_buflen;
reg   [4:0] i_0_i_i_i_reg_195;
wire   [0:0] icmp_ln362_fu_335_p2;
reg   [2:0] i_3_i_reg_206;
wire    ap_CS_fsm_state6;
reg   [3:0] i_0_i1_i_reg_217;
reg   [63:0] r_0_i2_i_reg_229;
reg   [31:0] ctr_0_reg_241;
reg  signed [8:0] buflen_0_reg_251;
reg   [1:0] i_0_reg_263;
wire    ap_CS_fsm_state30;
reg    grp_keccak_absorb_fu_275_ap_start_reg;
reg    grp_keccak_squeezeblocks_2_fu_288_ap_start_reg;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state31;
reg    grp_rej_uniform_fu_301_ap_start_reg;
wire    ap_CS_fsm_state14;
wire   [63:0] zext_ln363_fu_347_p1;
wire   [63:0] zext_ln31_3_fu_407_p1;
wire   [63:0] zext_ln450_2_fu_461_p1;
wire   [63:0] zext_ln387_fu_572_p1;
wire   [63:0] zext_ln387_1_fu_577_p1;
wire   [63:0] xor_ln417_fu_444_p2;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state9;
wire   [63:0] xor_ln450_fu_487_p2;
wire    ap_CS_fsm_state11;
wire   [63:0] xor_ln451_fu_494_p2;
wire   [1:0] tmp_fu_321_p4;
wire   [1:0] trunc_ln417_fu_368_p1;
wire   [4:0] zext_ln31_fu_398_p1;
wire   [4:0] add_ln31_fu_402_p2;
wire   [2:0] trunc_ln31_fu_416_p1;
wire   [5:0] shl_ln7_fu_420_p3;
wire   [63:0] zext_ln31_4_fu_412_p1;
wire   [63:0] zext_ln31_5_fu_428_p1;
wire   [63:0] shl_ln31_fu_432_p2;
wire   [28:0] i_s_fu_451_p4;
wire   [2:0] trunc_ln450_fu_466_p1;
wire   [5:0] shl_ln_fu_469_p3;
wire   [63:0] zext_ln450_fu_477_p1;
wire   [63:0] shl_ln450_fu_481_p2;
wire  signed [9:0] sext_ln384_fu_501_p1;
wire   [23:0] tmp_98_fu_509_p4;
wire   [2:0] grp_fu_525_p1;
wire   [8:0] grp_fu_525_p2;
wire   [10:0] zext_ln385_fu_539_p1;
wire   [10:0] zext_ln386_fu_548_p1;
wire   [10:0] add_ln387_fu_563_p2;
wire  signed [31:0] sext_ln387_fu_568_p1;
wire   [7:0] buflen_fu_582_p2;
wire   [9:0] trunc_ln391_fu_591_p1;
wire   [0:0] icmp_ln384_fu_519_p2;
reg    grp_fu_525_ap_start;
wire    grp_fu_525_ap_done;
reg   [32:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 33'd1;
#0 grp_keccak_absorb_fu_275_ap_start_reg = 1'b0;
#0 grp_keccak_squeezeblocks_2_fu_288_ap_start_reg = 1'b0;
#0 grp_rej_uniform_fu_301_ap_start_reg = 1'b0;
end

poly_uniform_buf #(
    .DataWidth( 8 ),
    .AddressRange( 842 ),
    .AddressWidth( 10 ))
buf_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(buf_address0),
    .ce0(buf_ce0),
    .we0(buf_we0),
    .d0(buf_d0),
    .q0(buf_q0),
    .address1(grp_rej_uniform_fu_301_buf_r_address1),
    .ce1(buf_ce1),
    .q1(buf_q1)
);

poly_uniform_statdEe #(
    .DataWidth( 64 ),
    .AddressRange( 25 ),
    .AddressWidth( 5 ))
state_s_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(state_s_address0),
    .ce0(state_s_ce0),
    .we0(state_s_we0),
    .d0(state_s_d0),
    .q0(state_s_q0),
    .address1(state_s_address1),
    .ce1(state_s_ce1),
    .we1(state_s_we1),
    .d1(state_s_d1),
    .q1(state_s_q1)
);

keccak_absorb grp_keccak_absorb_fu_275(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_keccak_absorb_fu_275_ap_start),
    .ap_done(grp_keccak_absorb_fu_275_ap_done),
    .ap_idle(grp_keccak_absorb_fu_275_ap_idle),
    .ap_ready(grp_keccak_absorb_fu_275_ap_ready),
    .s_address0(grp_keccak_absorb_fu_275_s_address0),
    .s_ce0(grp_keccak_absorb_fu_275_s_ce0),
    .s_we0(grp_keccak_absorb_fu_275_s_we0),
    .s_d0(grp_keccak_absorb_fu_275_s_d0),
    .s_q0(state_s_q0),
    .s_address1(grp_keccak_absorb_fu_275_s_address1),
    .s_ce1(grp_keccak_absorb_fu_275_s_ce1),
    .s_we1(grp_keccak_absorb_fu_275_s_we1),
    .s_d1(grp_keccak_absorb_fu_275_s_d1),
    .s_q1(state_s_q1),
    .r(9'd168),
    .pos_r(7'd32),
    .m_0_read(t_0_reg_623),
    .m_1_read(t_1_reg_628),
    .ap_return(grp_keccak_absorb_fu_275_ap_return)
);

keccak_squeezeblocks_2 grp_keccak_squeezeblocks_2_fu_288(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_keccak_squeezeblocks_2_fu_288_ap_start),
    .ap_done(grp_keccak_squeezeblocks_2_fu_288_ap_done),
    .ap_idle(grp_keccak_squeezeblocks_2_fu_288_ap_idle),
    .ap_ready(grp_keccak_squeezeblocks_2_fu_288_ap_ready),
    .out_r_address0(grp_keccak_squeezeblocks_2_fu_288_out_r_address0),
    .out_r_ce0(grp_keccak_squeezeblocks_2_fu_288_out_r_ce0),
    .out_r_we0(grp_keccak_squeezeblocks_2_fu_288_out_r_we0),
    .out_r_d0(grp_keccak_squeezeblocks_2_fu_288_out_r_d0),
    .out_offset(grp_keccak_squeezeblocks_2_fu_288_out_offset),
    .nblocks(grp_keccak_squeezeblocks_2_fu_288_nblocks),
    .s_address0(grp_keccak_squeezeblocks_2_fu_288_s_address0),
    .s_ce0(grp_keccak_squeezeblocks_2_fu_288_s_ce0),
    .s_we0(grp_keccak_squeezeblocks_2_fu_288_s_we0),
    .s_d0(grp_keccak_squeezeblocks_2_fu_288_s_d0),
    .s_q0(state_s_q0),
    .s_address1(grp_keccak_squeezeblocks_2_fu_288_s_address1),
    .s_ce1(grp_keccak_squeezeblocks_2_fu_288_s_ce1),
    .s_we1(grp_keccak_squeezeblocks_2_fu_288_s_we1),
    .s_d1(grp_keccak_squeezeblocks_2_fu_288_s_d1),
    .s_q1(state_s_q1)
);

rej_uniform grp_rej_uniform_fu_301(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_rej_uniform_fu_301_ap_start),
    .ap_done(grp_rej_uniform_fu_301_ap_done),
    .ap_idle(grp_rej_uniform_fu_301_ap_idle),
    .ap_ready(grp_rej_uniform_fu_301_ap_ready),
    .a_address0(grp_rej_uniform_fu_301_a_address0),
    .a_ce0(grp_rej_uniform_fu_301_a_ce0),
    .a_we0(grp_rej_uniform_fu_301_a_we0),
    .a_d0(grp_rej_uniform_fu_301_a_d0),
    .a_offset(trunc_ln382_reg_659),
    .a_offset1(trunc_ln382_1_reg_664),
    .a_offset2(grp_rej_uniform_fu_301_a_offset2),
    .len(grp_rej_uniform_fu_301_len),
    .buf_r_address0(grp_rej_uniform_fu_301_buf_r_address0),
    .buf_r_ce0(grp_rej_uniform_fu_301_buf_r_ce0),
    .buf_r_q0(buf_q0),
    .buf_r_address1(grp_rej_uniform_fu_301_buf_r_address1),
    .buf_r_ce1(grp_rej_uniform_fu_301_buf_r_ce1),
    .buf_r_q1(buf_q1),
    .buflen(grp_rej_uniform_fu_301_buflen),
    .ap_return(grp_rej_uniform_fu_301_ap_return)
);

crypto_sign_urem_eOg #(
    .ID( 1 ),
    .NUM_STAGE( 13 ),
    .din0_WIDTH( 9 ),
    .din1_WIDTH( 3 ),
    .dout_WIDTH( 9 ))
crypto_sign_urem_eOg_U47(
    .clk(ap_clk),
    .reset(ap_rst),
    .start(grp_fu_525_ap_start),
    .done(grp_fu_525_ap_done),
    .din0(buflen_0_reg_251),
    .din1(grp_fu_525_p1),
    .ce(1'b1),
    .dout(grp_fu_525_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_keccak_absorb_fu_275_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln416_fu_356_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
            grp_keccak_absorb_fu_275_ap_start_reg <= 1'b1;
        end else if ((grp_keccak_absorb_fu_275_ap_ready == 1'b1)) begin
            grp_keccak_absorb_fu_275_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_keccak_squeezeblocks_2_fu_288_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state12) | ((1'b1 == ap_CS_fsm_state29) & (icmp_ln386_fu_552_p2 == 1'd1)))) begin
            grp_keccak_squeezeblocks_2_fu_288_ap_start_reg <= 1'b1;
        end else if ((grp_keccak_squeezeblocks_2_fu_288_ap_ready == 1'b1)) begin
            grp_keccak_squeezeblocks_2_fu_288_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_rej_uniform_fu_301_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state32))) begin
            grp_rej_uniform_fu_301_ap_start_reg <= 1'b1;
        end else if ((grp_rej_uniform_fu_301_ap_ready == 1'b1)) begin
            grp_rej_uniform_fu_301_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((grp_rej_uniform_fu_301_ap_done == 1'b1)) begin
        if ((1'b1 == ap_CS_fsm_state33)) begin
                        buflen_0_reg_251[2 : 0] <= zext_ln390_reg_749[2 : 0];
            buflen_0_reg_251[8 : 4] <= zext_ln390_reg_749[8 : 4];
        end else if ((1'b1 == ap_CS_fsm_state15)) begin
                        buflen_0_reg_251[0] <= 1'b0;
            buflen_0_reg_251[1] <= 1'b0;
            buflen_0_reg_251[2] <= 1'b0;
            buflen_0_reg_251[4] <= 1'b0;
            buflen_0_reg_251[5] <= 1'b0;
            buflen_0_reg_251[6] <= 1'b1;
            buflen_0_reg_251[7] <= 1'b0;
            buflen_0_reg_251[8] <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((grp_rej_uniform_fu_301_ap_done == 1'b1)) begin
        if ((1'b1 == ap_CS_fsm_state33)) begin
            ctr_0_reg_241 <= ctr_2_fu_607_p2;
        end else if ((1'b1 == ap_CS_fsm_state15)) begin
            ctr_0_reg_241 <= grp_rej_uniform_fu_301_ap_return;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        i_0_i1_i_reg_217 <= i_18_reg_672;
    end else if (((icmp_ln416_fu_356_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        i_0_i1_i_reg_217 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln362_fu_335_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        i_0_i_i_i_reg_195 <= i_17_fu_341_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_i_i_i_reg_195 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        i_0_reg_263 <= i_reg_739;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        i_0_reg_263 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln362_fu_335_p2 == 1'd1))) begin
        i_3_i_reg_206 <= 3'd0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        i_3_i_reg_206 <= add_ln416_reg_649;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        r_0_i2_i_reg_229 <= r_fu_438_p2;
    end else if (((icmp_ln416_fu_356_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        r_0_i2_i_reg_229 <= 64'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln416_reg_649 <= add_ln416_fu_362_p2;
        zext_ln416_reg_641[2 : 0] <= zext_ln416_fu_352_p1[2 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        i_18_reg_672 <= i_18_fu_392_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state29)) begin
        i_reg_739 <= i_fu_557_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln416_fu_356_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        shl_ln6_reg_654[4 : 3] <= shl_ln6_fu_372_p3[4 : 3];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state7) & (grp_keccak_absorb_fu_275_ap_done == 1'b1))) begin
        state_pos_write_assi_reg_692 <= grp_keccak_absorb_fu_275_ap_return;
        state_s_addr_4_reg_697 <= zext_ln450_2_fu_461_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln30_fu_386_p2 == 1'd1))) begin
        state_s_addr_6_reg_682[2 : 0] <= zext_ln416_reg_641[2 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state28)) begin
        sub_ln387_reg_731 <= sub_ln387_fu_543_p2;
        trunc_ln385_1_reg_725 <= trunc_ln385_1_fu_535_p1;
        trunc_ln385_reg_720 <= trunc_ln385_fu_531_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        sub_ln391_reg_754 <= sub_ln391_fu_595_p2;
        zext_ln390_reg_749[2 : 0] <= zext_ln390_fu_587_p1[2 : 0];
zext_ln390_reg_749[4] <= zext_ln390_fu_587_p1[4];
zext_ln390_reg_749[6] <= zext_ln390_fu_587_p1[6];
        zext_ln391_reg_759[2 : 0] <= zext_ln391_fu_602_p1[2 : 0];
zext_ln391_reg_759[4] <= zext_ln391_fu_602_p1[4];
zext_ln391_reg_759[6] <= zext_ln391_fu_602_p1[6];
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        t_0_reg_623 <= t_0_fu_317_p1;
        t_1_reg_628[1 : 0] <= t_1_fu_331_p1[1 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln416_fu_356_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        trunc_ln382_1_reg_664 <= trunc_ln382_1_fu_383_p1;
        trunc_ln382_reg_659 <= trunc_ln382_fu_380_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        zext_ln384_reg_712[2 : 0] <= zext_ln384_fu_505_p1[2 : 0];
zext_ln384_reg_712[9 : 4] <= zext_ln384_fu_505_p1[9 : 4];
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state15))) begin
        a_coeffs_ce0 = grp_rej_uniform_fu_301_a_ce0;
    end else begin
        a_coeffs_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state15))) begin
        a_coeffs_we0 = grp_rej_uniform_fu_301_a_we0;
    end else begin
        a_coeffs_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((icmp_ln384_fu_519_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state16)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln384_fu_519_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state16))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        buf_address0 = zext_ln387_1_fu_577_p1;
    end else if (((icmp_ln386_fu_552_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state29))) begin
        buf_address0 = zext_ln387_fu_572_p1;
    end else if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state15))) begin
        buf_address0 = grp_rej_uniform_fu_301_buf_r_address0;
    end else if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state13))) begin
        buf_address0 = grp_keccak_squeezeblocks_2_fu_288_out_r_address0;
    end else begin
        buf_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state30) | ((icmp_ln386_fu_552_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state29)))) begin
        buf_ce0 = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state15))) begin
        buf_ce0 = grp_rej_uniform_fu_301_buf_r_ce0;
    end else if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state13))) begin
        buf_ce0 = grp_keccak_squeezeblocks_2_fu_288_out_r_ce0;
    end else begin
        buf_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state15))) begin
        buf_ce1 = grp_rej_uniform_fu_301_buf_r_ce1;
    end else begin
        buf_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        buf_d0 = buf_q0;
    end else if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state13))) begin
        buf_d0 = grp_keccak_squeezeblocks_2_fu_288_out_r_d0;
    end else begin
        buf_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        buf_we0 = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state13))) begin
        buf_we0 = grp_keccak_squeezeblocks_2_fu_288_out_r_we0;
    end else begin
        buf_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) & (icmp_ln384_fu_519_p2 == 1'd1))) begin
        grp_fu_525_ap_start = 1'b1;
    end else begin
        grp_fu_525_ap_start = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state31)) begin
        grp_keccak_squeezeblocks_2_fu_288_nblocks = 4'd1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_keccak_squeezeblocks_2_fu_288_nblocks = 4'd5;
    end else begin
        grp_keccak_squeezeblocks_2_fu_288_nblocks = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state31)) begin
        grp_keccak_squeezeblocks_2_fu_288_out_offset = trunc_ln385_1_reg_725;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_keccak_squeezeblocks_2_fu_288_out_offset = 2'd0;
    end else begin
        grp_keccak_squeezeblocks_2_fu_288_out_offset = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_rej_uniform_fu_301_a_offset2 = ctr_0_reg_241;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_rej_uniform_fu_301_a_offset2 = 32'd0;
    end else begin
        grp_rej_uniform_fu_301_a_offset2 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_rej_uniform_fu_301_buflen = zext_ln391_reg_759;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_rej_uniform_fu_301_buflen = 11'd840;
    end else begin
        grp_rej_uniform_fu_301_buflen = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_rej_uniform_fu_301_len = sub_ln391_reg_754;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_rej_uniform_fu_301_len = 10'd256;
    end else begin
        grp_rej_uniform_fu_301_len = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        seed_ce0 = 1'b1;
    end else begin
        seed_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        state_s_address0 = state_s_addr_5_reg_702;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        state_s_address0 = 64'd20;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        state_s_address0 = state_s_addr_4_reg_697;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        state_s_address0 = state_s_addr_6_reg_682;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        state_s_address0 = zext_ln416_reg_641;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        state_s_address0 = zext_ln363_fu_347_p1;
    end else if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state13))) begin
        state_s_address0 = grp_keccak_squeezeblocks_2_fu_288_s_address0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        state_s_address0 = grp_keccak_absorb_fu_275_s_address0;
    end else begin
        state_s_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state13))) begin
        state_s_address1 = grp_keccak_squeezeblocks_2_fu_288_s_address1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        state_s_address1 = grp_keccak_absorb_fu_275_s_address1;
    end else begin
        state_s_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state4))) begin
        state_s_ce0 = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state13))) begin
        state_s_ce0 = grp_keccak_squeezeblocks_2_fu_288_s_ce0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        state_s_ce0 = grp_keccak_absorb_fu_275_s_ce0;
    end else begin
        state_s_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state13))) begin
        state_s_ce1 = grp_keccak_squeezeblocks_2_fu_288_s_ce1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        state_s_ce1 = grp_keccak_absorb_fu_275_s_ce1;
    end else begin
        state_s_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        state_s_d0 = xor_ln451_fu_494_p2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        state_s_d0 = xor_ln450_fu_487_p2;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        state_s_d0 = xor_ln417_fu_444_p2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        state_s_d0 = 64'd0;
    end else if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state13))) begin
        state_s_d0 = grp_keccak_squeezeblocks_2_fu_288_s_d0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        state_s_d0 = grp_keccak_absorb_fu_275_s_d0;
    end else begin
        state_s_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state13))) begin
        state_s_d1 = grp_keccak_squeezeblocks_2_fu_288_s_d1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        state_s_d1 = grp_keccak_absorb_fu_275_s_d1;
    end else begin
        state_s_d1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state6) | ((icmp_ln362_fu_335_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        state_s_we0 = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state13))) begin
        state_s_we0 = grp_keccak_squeezeblocks_2_fu_288_s_we0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        state_s_we0 = grp_keccak_absorb_fu_275_s_we0;
    end else begin
        state_s_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state13))) begin
        state_s_we1 = grp_keccak_squeezeblocks_2_fu_288_s_we1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        state_s_we1 = grp_keccak_absorb_fu_275_s_we1;
    end else begin
        state_s_we1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln362_fu_335_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln416_fu_356_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln30_fu_386_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state7 : begin
            if (((1'b1 == ap_CS_fsm_state7) & (grp_keccak_absorb_fu_275_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            if (((grp_keccak_squeezeblocks_2_fu_288_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            if (((1'b1 == ap_CS_fsm_state15) & (grp_rej_uniform_fu_301_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
        end
        ap_ST_fsm_state16 : begin
            if (((icmp_ln384_fu_519_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state16))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state28 : begin
            ap_NS_fsm = ap_ST_fsm_state29;
        end
        ap_ST_fsm_state29 : begin
            if (((1'b1 == ap_CS_fsm_state29) & (icmp_ln386_fu_552_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state31;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state30;
            end
        end
        ap_ST_fsm_state30 : begin
            ap_NS_fsm = ap_ST_fsm_state29;
        end
        ap_ST_fsm_state31 : begin
            if (((grp_keccak_squeezeblocks_2_fu_288_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state31))) begin
                ap_NS_fsm = ap_ST_fsm_state32;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state31;
            end
        end
        ap_ST_fsm_state32 : begin
            ap_NS_fsm = ap_ST_fsm_state33;
        end
        ap_ST_fsm_state33 : begin
            if (((1'b1 == ap_CS_fsm_state33) & (grp_rej_uniform_fu_301_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state33;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign a_coeffs_address0 = grp_rej_uniform_fu_301_a_address0;

assign a_coeffs_d0 = grp_rej_uniform_fu_301_a_d0;

assign add_ln31_fu_402_p2 = (shl_ln6_reg_654 + zext_ln31_fu_398_p1);

assign add_ln387_fu_563_p2 = (sub_ln387_reg_731 + zext_ln386_fu_548_p1);

assign add_ln416_fu_362_p2 = (i_3_i_reg_206 + 3'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state28 = ap_CS_fsm[32'd27];

assign ap_CS_fsm_state29 = ap_CS_fsm[32'd28];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state30 = ap_CS_fsm[32'd29];

assign ap_CS_fsm_state31 = ap_CS_fsm[32'd30];

assign ap_CS_fsm_state32 = ap_CS_fsm[32'd31];

assign ap_CS_fsm_state33 = ap_CS_fsm[32'd32];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign buflen_fu_582_p2 = (trunc_ln385_reg_720 | 8'd168);

assign ctr_2_fu_607_p2 = (grp_rej_uniform_fu_301_ap_return + ctr_0_reg_241);

assign grp_fu_525_p1 = 9'd3;

assign grp_keccak_absorb_fu_275_ap_start = grp_keccak_absorb_fu_275_ap_start_reg;

assign grp_keccak_squeezeblocks_2_fu_288_ap_start = grp_keccak_squeezeblocks_2_fu_288_ap_start_reg;

assign grp_rej_uniform_fu_301_ap_start = grp_rej_uniform_fu_301_ap_start_reg;

assign i_17_fu_341_p2 = (i_0_i_i_i_reg_195 + 5'd1);

assign i_18_fu_392_p2 = (i_0_i1_i_reg_217 + 4'd1);

assign i_fu_557_p2 = (i_0_reg_263 + 2'd1);

assign i_s_fu_451_p4 = {{grp_keccak_absorb_fu_275_ap_return[31:3]}};

assign icmp_ln30_fu_386_p2 = ((i_0_i1_i_reg_217 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln362_fu_335_p2 = ((i_0_i_i_i_reg_195 == 5'd25) ? 1'b1 : 1'b0);

assign icmp_ln384_fu_519_p2 = ((tmp_98_fu_509_p4 == 24'd0) ? 1'b1 : 1'b0);

assign icmp_ln386_fu_552_p2 = ((i_0_reg_263 == trunc_ln385_1_reg_725) ? 1'b1 : 1'b0);

assign icmp_ln416_fu_356_p2 = ((i_3_i_reg_206 == 3'd4) ? 1'b1 : 1'b0);

assign r_fu_438_p2 = (shl_ln31_fu_432_p2 | r_0_i2_i_reg_229);

assign seed_address0 = zext_ln31_3_fu_407_p1;

assign sext_ln384_fu_501_p1 = buflen_0_reg_251;

assign sext_ln387_fu_568_p1 = $signed(add_ln387_fu_563_p2);

assign shl_ln31_fu_432_p2 = zext_ln31_4_fu_412_p1 << zext_ln31_5_fu_428_p1;

assign shl_ln450_fu_481_p2 = 64'd31 << zext_ln450_fu_477_p1;

assign shl_ln6_fu_372_p3 = {{trunc_ln417_fu_368_p1}, {3'd0}};

assign shl_ln7_fu_420_p3 = {{trunc_ln31_fu_416_p1}, {3'd0}};

assign shl_ln_fu_469_p3 = {{trunc_ln450_fu_466_p1}, {3'd0}};

assign state_s_addr_5_reg_702 = 64'd20;

assign sub_ln387_fu_543_p2 = (zext_ln384_reg_712 - zext_ln385_fu_539_p1);

assign sub_ln391_fu_595_p2 = (10'd256 - trunc_ln391_fu_591_p1);

assign t_0_fu_317_p1 = nonce[7:0];

assign t_1_fu_331_p1 = tmp_fu_321_p4;

assign tmp_98_fu_509_p4 = {{ctr_0_reg_241[31:8]}};

assign tmp_fu_321_p4 = {{nonce[9:8]}};

assign trunc_ln31_fu_416_p1 = i_0_i1_i_reg_217[2:0];

assign trunc_ln382_1_fu_383_p1 = a_coeffs_offset1[1:0];

assign trunc_ln382_fu_380_p1 = a_coeffs_offset[1:0];

assign trunc_ln385_1_fu_535_p1 = grp_fu_525_p2[1:0];

assign trunc_ln385_fu_531_p1 = grp_fu_525_p2[7:0];

assign trunc_ln391_fu_591_p1 = ctr_0_reg_241[9:0];

assign trunc_ln417_fu_368_p1 = i_3_i_reg_206[1:0];

assign trunc_ln450_fu_466_p1 = state_pos_write_assi_reg_692[2:0];

assign xor_ln417_fu_444_p2 = (state_s_q0 ^ r_0_i2_i_reg_229);

assign xor_ln450_fu_487_p2 = (state_s_q0 ^ shl_ln450_fu_481_p2);

assign xor_ln451_fu_494_p2 = (state_s_q0 ^ 64'd9223372036854775808);

assign zext_ln31_3_fu_407_p1 = add_ln31_fu_402_p2;

assign zext_ln31_4_fu_412_p1 = seed_q0;

assign zext_ln31_5_fu_428_p1 = shl_ln7_fu_420_p3;

assign zext_ln31_fu_398_p1 = i_0_i1_i_reg_217;

assign zext_ln363_fu_347_p1 = i_0_i_i_i_reg_195;

assign zext_ln384_fu_505_p1 = $unsigned(sext_ln384_fu_501_p1);

assign zext_ln385_fu_539_p1 = grp_fu_525_p2;

assign zext_ln386_fu_548_p1 = i_0_reg_263;

assign zext_ln387_1_fu_577_p1 = i_0_reg_263;

assign zext_ln387_fu_572_p1 = $unsigned(sext_ln387_fu_568_p1);

assign zext_ln390_fu_587_p1 = buflen_fu_582_p2;

assign zext_ln391_fu_602_p1 = buflen_fu_582_p2;

assign zext_ln416_fu_352_p1 = i_3_i_reg_206;

assign zext_ln450_2_fu_461_p1 = i_s_fu_451_p4;

assign zext_ln450_fu_477_p1 = shl_ln_fu_469_p3;

always @ (posedge ap_clk) begin
    t_1_reg_628[7:2] <= 6'b000000;
    zext_ln416_reg_641[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    shl_ln6_reg_654[2:0] <= 3'b000;
    state_s_addr_6_reg_682[4:3] <= 2'b00;
    zext_ln384_reg_712[3] <= 1'b1;
    zext_ln384_reg_712[10] <= 1'b0;
    zext_ln390_reg_749[3] <= 1'b1;
    zext_ln390_reg_749[5:5] <= 1'b1;
    zext_ln390_reg_749[8:7] <= 2'b01;
    zext_ln391_reg_759[3] <= 1'b1;
    zext_ln391_reg_759[5:5] <= 1'b1;
    zext_ln391_reg_759[10:7] <= 4'b0001;
    buflen_0_reg_251[3] <= 1'b1;
end

endmodule //poly_uniform
