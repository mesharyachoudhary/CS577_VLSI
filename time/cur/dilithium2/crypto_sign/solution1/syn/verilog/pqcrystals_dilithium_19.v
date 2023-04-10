// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module pqcrystals_dilithium_19 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        sig_address0,
        sig_ce0,
        sig_we0,
        sig_d0,
        sig_address1,
        sig_ce1,
        sig_we1,
        sig_d1,
        z_vec_coeffs_address0,
        z_vec_coeffs_ce0,
        z_vec_coeffs_q0,
        h_vec_coeffs_address0,
        h_vec_coeffs_ce0,
        h_vec_coeffs_q0
);

parameter    ap_ST_fsm_state1 = 17'd1;
parameter    ap_ST_fsm_state2 = 17'd2;
parameter    ap_ST_fsm_state3 = 17'd4;
parameter    ap_ST_fsm_state4 = 17'd8;
parameter    ap_ST_fsm_state5 = 17'd16;
parameter    ap_ST_fsm_state6 = 17'd32;
parameter    ap_ST_fsm_state7 = 17'd64;
parameter    ap_ST_fsm_state8 = 17'd128;
parameter    ap_ST_fsm_state9 = 17'd256;
parameter    ap_ST_fsm_state10 = 17'd512;
parameter    ap_ST_fsm_state11 = 17'd1024;
parameter    ap_ST_fsm_state12 = 17'd2048;
parameter    ap_ST_fsm_state13 = 17'd4096;
parameter    ap_ST_fsm_state14 = 17'd8192;
parameter    ap_ST_fsm_state15 = 17'd16384;
parameter    ap_ST_fsm_state16 = 17'd32768;
parameter    ap_ST_fsm_state17 = 17'd65536;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [12:0] sig_address0;
output   sig_ce0;
output   sig_we0;
output  [7:0] sig_d0;
output  [12:0] sig_address1;
output   sig_ce1;
output   sig_we1;
output  [7:0] sig_d1;
output  [9:0] z_vec_coeffs_address0;
output   z_vec_coeffs_ce0;
input  [31:0] z_vec_coeffs_q0;
output  [9:0] h_vec_coeffs_address0;
output   h_vec_coeffs_ce0;
input  [31:0] h_vec_coeffs_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[12:0] sig_address0;
reg sig_ce0;
reg sig_we0;
reg[7:0] sig_d0;
reg sig_ce1;
reg sig_we1;
reg z_vec_coeffs_ce0;
reg[9:0] h_vec_coeffs_address0;
reg h_vec_coeffs_ce0;

(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [6:0] i_fu_299_p2;
wire    ap_CS_fsm_state9;
reg   [31:0] k_1_0_load_reg_590;
wire    ap_CS_fsm_state10;
wire   [8:0] add_ln196_fu_334_p2;
reg   [8:0] add_ln196_reg_599;
wire   [0:0] icmp_ln196_fu_328_p2;
reg   [31:0] k_1_1_load_reg_619;
wire    ap_CS_fsm_state12;
wire   [8:0] add_ln196_1_fu_393_p2;
reg   [8:0] add_ln196_1_reg_628;
wire   [0:0] icmp_ln196_1_fu_387_p2;
reg   [31:0] k_1_2_load_reg_648;
wire    ap_CS_fsm_state14;
wire   [8:0] add_ln196_2_fu_458_p2;
reg   [8:0] add_ln196_2_reg_657;
wire   [0:0] icmp_ln196_2_fu_452_p2;
wire   [8:0] add_ln196_3_fu_518_p2;
reg   [8:0] add_ln196_3_reg_680;
wire    ap_CS_fsm_state16;
wire   [0:0] icmp_ln196_3_fu_512_p2;
wire    grp_pqcrystals_dilithium_3_fu_266_ap_start;
wire    grp_pqcrystals_dilithium_3_fu_266_ap_done;
wire    grp_pqcrystals_dilithium_3_fu_266_ap_idle;
wire    grp_pqcrystals_dilithium_3_fu_266_ap_ready;
wire   [12:0] grp_pqcrystals_dilithium_3_fu_266_r_address0;
wire    grp_pqcrystals_dilithium_3_fu_266_r_ce0;
wire    grp_pqcrystals_dilithium_3_fu_266_r_we0;
wire   [7:0] grp_pqcrystals_dilithium_3_fu_266_r_d0;
wire   [12:0] grp_pqcrystals_dilithium_3_fu_266_r_address1;
wire    grp_pqcrystals_dilithium_3_fu_266_r_ce1;
wire    grp_pqcrystals_dilithium_3_fu_266_r_we1;
wire   [7:0] grp_pqcrystals_dilithium_3_fu_266_r_d1;
reg   [11:0] grp_pqcrystals_dilithium_3_fu_266_r_offset;
wire   [9:0] grp_pqcrystals_dilithium_3_fu_266_a_coeffs_address0;
wire    grp_pqcrystals_dilithium_3_fu_266_a_coeffs_ce0;
reg   [2:0] grp_pqcrystals_dilithium_3_fu_266_a_coeffs_offset;
reg   [6:0] i_2_reg_207;
wire   [0:0] icmp_ln188_fu_293_p2;
wire    ap_CS_fsm_state8;
reg   [8:0] j_0_0_reg_218;
wire    ap_CS_fsm_state11;
reg   [8:0] j_0_1_reg_230;
wire    ap_CS_fsm_state13;
reg   [8:0] j_0_2_reg_242;
wire    ap_CS_fsm_state15;
reg   [8:0] j_0_3_reg_254;
wire    ap_CS_fsm_state17;
reg    grp_pqcrystals_dilithium_3_fu_266_ap_start_reg;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state6;
wire   [63:0] zext_ln190_1_fu_315_p1;
wire   [63:0] zext_ln197_fu_340_p1;
wire  signed [63:0] sext_ln198_fu_374_p1;
wire   [0:0] grp_fu_284_p2;
wire   [63:0] zext_ln197_1_fu_405_p1;
wire  signed [63:0] sext_ln198_1_fu_439_p1;
wire   [63:0] tmp_s_fu_464_p3;
wire  signed [63:0] sext_ln198_2_fu_502_p1;
wire   [63:0] zext_ln197_2_fu_534_p1;
wire  signed [63:0] sext_ln198_3_fu_565_p1;
reg   [31:0] k_1_0_fu_72;
wire   [31:0] add_ln198_fu_360_p2;
reg   [31:0] k_1_1_fu_76;
wire   [31:0] add_ln198_5_fu_425_p2;
reg   [31:0] k_1_2_fu_80;
wire   [31:0] add_ln198_6_fu_488_p2;
reg   [31:0] k_1_3_fu_84;
wire   [31:0] add_ln198_7_fu_549_p2;
wire   [7:0] trunc_ln200_fu_345_p1;
wire   [7:0] trunc_ln198_fu_355_p1;
wire   [7:0] trunc_ln200_1_fu_410_p1;
wire   [7:0] trunc_ln198_2_fu_420_p1;
wire   [7:0] trunc_ln200_2_fu_473_p1;
wire   [7:0] trunc_ln198_4_fu_483_p1;
wire   [7:0] trunc_ln200_3_fu_539_p1;
wire   [7:0] trunc_ln198_6_fu_544_p1;
wire   [11:0] zext_ln190_fu_305_p1;
wire   [11:0] add_ln190_fu_309_p2;
wire   [13:0] trunc_ln198_1_fu_365_p1;
wire   [13:0] add_ln198_4_fu_368_p2;
wire   [8:0] xor_ln197_fu_399_p2;
wire   [13:0] trunc_ln198_3_fu_430_p1;
wire   [13:0] add_ln198_1_fu_433_p2;
wire   [13:0] trunc_ln198_5_fu_493_p1;
wire   [13:0] add_ln198_2_fu_496_p2;
wire   [8:0] xor_ln197_1_fu_524_p2;
wire  signed [9:0] sext_ln197_fu_530_p1;
wire   [13:0] trunc_ln198_7_fu_555_p1;
wire   [13:0] add_ln198_3_fu_559_p2;
reg   [16:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 17'd1;
#0 grp_pqcrystals_dilithium_3_fu_266_ap_start_reg = 1'b0;
end

pqcrystals_dilithium_3 grp_pqcrystals_dilithium_3_fu_266(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_pqcrystals_dilithium_3_fu_266_ap_start),
    .ap_done(grp_pqcrystals_dilithium_3_fu_266_ap_done),
    .ap_idle(grp_pqcrystals_dilithium_3_fu_266_ap_idle),
    .ap_ready(grp_pqcrystals_dilithium_3_fu_266_ap_ready),
    .r_address0(grp_pqcrystals_dilithium_3_fu_266_r_address0),
    .r_ce0(grp_pqcrystals_dilithium_3_fu_266_r_ce0),
    .r_we0(grp_pqcrystals_dilithium_3_fu_266_r_we0),
    .r_d0(grp_pqcrystals_dilithium_3_fu_266_r_d0),
    .r_address1(grp_pqcrystals_dilithium_3_fu_266_r_address1),
    .r_ce1(grp_pqcrystals_dilithium_3_fu_266_r_ce1),
    .r_we1(grp_pqcrystals_dilithium_3_fu_266_r_we1),
    .r_d1(grp_pqcrystals_dilithium_3_fu_266_r_d1),
    .r_offset(grp_pqcrystals_dilithium_3_fu_266_r_offset),
    .a_coeffs_address0(grp_pqcrystals_dilithium_3_fu_266_a_coeffs_address0),
    .a_coeffs_ce0(grp_pqcrystals_dilithium_3_fu_266_a_coeffs_ce0),
    .a_coeffs_q0(z_vec_coeffs_q0),
    .a_coeffs_offset(grp_pqcrystals_dilithium_3_fu_266_a_coeffs_offset)
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
        grp_pqcrystals_dilithium_3_fu_266_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
            grp_pqcrystals_dilithium_3_fu_266_ap_start_reg <= 1'b1;
        end else if ((grp_pqcrystals_dilithium_3_fu_266_ap_ready == 1'b1)) begin
            grp_pqcrystals_dilithium_3_fu_266_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state8) & (grp_pqcrystals_dilithium_3_fu_266_ap_done == 1'b1))) begin
        i_2_reg_207 <= 7'd0;
    end else if (((icmp_ln188_fu_293_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
        i_2_reg_207 <= i_fu_299_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        j_0_0_reg_218 <= add_ln196_reg_599;
    end else if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln188_fu_293_p2 == 1'd1))) begin
        j_0_0_reg_218 <= 9'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        j_0_1_reg_230 <= add_ln196_1_reg_628;
    end else if (((icmp_ln196_fu_328_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
        j_0_1_reg_230 <= 9'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        j_0_2_reg_242 <= add_ln196_2_reg_657;
    end else if (((icmp_ln196_1_fu_387_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state12))) begin
        j_0_2_reg_242 <= 9'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        j_0_3_reg_254 <= add_ln196_3_reg_680;
    end else if (((1'b1 == ap_CS_fsm_state14) & (icmp_ln196_2_fu_452_p2 == 1'd1))) begin
        j_0_3_reg_254 <= 9'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_fu_284_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        k_1_0_fu_72 <= add_ln198_fu_360_p2;
    end else if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln188_fu_293_p2 == 1'd1))) begin
        k_1_0_fu_72 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_fu_284_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state13))) begin
        k_1_1_fu_76 <= add_ln198_5_fu_425_p2;
    end else if (((icmp_ln196_fu_328_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
        k_1_1_fu_76 <= k_1_0_fu_72;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_fu_284_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state15))) begin
        k_1_2_fu_80 <= add_ln198_6_fu_488_p2;
    end else if (((icmp_ln196_1_fu_387_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state12))) begin
        k_1_2_fu_80 <= k_1_1_fu_76;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_fu_284_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state17))) begin
        k_1_3_fu_84 <= add_ln198_7_fu_549_p2;
    end else if (((1'b1 == ap_CS_fsm_state14) & (icmp_ln196_2_fu_452_p2 == 1'd1))) begin
        k_1_3_fu_84 <= k_1_2_fu_80;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        add_ln196_1_reg_628 <= add_ln196_1_fu_393_p2;
        k_1_1_load_reg_619 <= k_1_1_fu_76;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        add_ln196_2_reg_657 <= add_ln196_2_fu_458_p2;
        k_1_2_load_reg_648 <= k_1_2_fu_80;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        add_ln196_3_reg_680 <= add_ln196_3_fu_518_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        add_ln196_reg_599 <= add_ln196_fu_334_p2;
        k_1_0_load_reg_590 <= k_1_0_fu_72;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state16) & (icmp_ln196_3_fu_512_p2 == 1'd1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state16) & (icmp_ln196_3_fu_512_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_pqcrystals_dilithium_3_fu_266_a_coeffs_offset = 3'd3;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_pqcrystals_dilithium_3_fu_266_a_coeffs_offset = 3'd2;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_pqcrystals_dilithium_3_fu_266_a_coeffs_offset = 3'd1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_pqcrystals_dilithium_3_fu_266_a_coeffs_offset = 3'd0;
    end else begin
        grp_pqcrystals_dilithium_3_fu_266_a_coeffs_offset = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_pqcrystals_dilithium_3_fu_266_r_offset = 12'd1760;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_pqcrystals_dilithium_3_fu_266_r_offset = 12'd1184;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_pqcrystals_dilithium_3_fu_266_r_offset = 12'd608;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_pqcrystals_dilithium_3_fu_266_r_offset = 12'd32;
    end else begin
        grp_pqcrystals_dilithium_3_fu_266_r_offset = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        h_vec_coeffs_address0 = zext_ln197_2_fu_534_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        h_vec_coeffs_address0 = tmp_s_fu_464_p3;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        h_vec_coeffs_address0 = zext_ln197_1_fu_405_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        h_vec_coeffs_address0 = zext_ln197_fu_340_p1;
    end else begin
        h_vec_coeffs_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14))) begin
        h_vec_coeffs_ce0 = 1'b1;
    end else begin
        h_vec_coeffs_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        sig_address0 = sext_ln198_3_fu_565_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        sig_address0 = 64'd2419;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        sig_address0 = sext_ln198_2_fu_502_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        sig_address0 = 64'd2418;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        sig_address0 = sext_ln198_1_fu_439_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        sig_address0 = 64'd2417;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        sig_address0 = sext_ln198_fu_374_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        sig_address0 = 64'd2416;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        sig_address0 = zext_ln190_1_fu_315_p1;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8))) begin
        sig_address0 = grp_pqcrystals_dilithium_3_fu_266_r_address0;
    end else begin
        sig_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14))) begin
        sig_ce0 = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8))) begin
        sig_ce0 = grp_pqcrystals_dilithium_3_fu_266_r_ce0;
    end else begin
        sig_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8))) begin
        sig_ce1 = grp_pqcrystals_dilithium_3_fu_266_r_ce1;
    end else begin
        sig_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        sig_d0 = trunc_ln198_6_fu_544_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        sig_d0 = trunc_ln200_3_fu_539_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        sig_d0 = trunc_ln198_4_fu_483_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        sig_d0 = trunc_ln200_2_fu_473_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        sig_d0 = trunc_ln198_2_fu_420_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        sig_d0 = trunc_ln200_1_fu_410_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        sig_d0 = trunc_ln198_fu_355_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        sig_d0 = trunc_ln200_fu_345_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        sig_d0 = 8'd0;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8))) begin
        sig_d0 = grp_pqcrystals_dilithium_3_fu_266_r_d0;
    end else begin
        sig_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln196_1_fu_387_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state12)) | ((icmp_ln196_fu_328_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10)) | ((icmp_ln188_fu_293_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state9)) | ((grp_fu_284_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state17)) | ((grp_fu_284_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state15)) | ((grp_fu_284_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state13)) | ((grp_fu_284_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11)) | ((1'b1 == ap_CS_fsm_state16) & (icmp_ln196_3_fu_512_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state14) & (icmp_ln196_2_fu_452_p2 == 1'd1)))) begin
        sig_we0 = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8))) begin
        sig_we0 = grp_pqcrystals_dilithium_3_fu_266_r_we0;
    end else begin
        sig_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8))) begin
        sig_we1 = grp_pqcrystals_dilithium_3_fu_266_r_we1;
    end else begin
        sig_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8))) begin
        z_vec_coeffs_ce0 = grp_pqcrystals_dilithium_3_fu_266_a_coeffs_ce0;
    end else begin
        z_vec_coeffs_ce0 = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (grp_pqcrystals_dilithium_3_fu_266_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_pqcrystals_dilithium_3_fu_266_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_pqcrystals_dilithium_3_fu_266_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (grp_pqcrystals_dilithium_3_fu_266_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln188_fu_293_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state10 : begin
            if (((icmp_ln196_fu_328_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state12 : begin
            if (((icmp_ln196_1_fu_387_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state12))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state14 : begin
            if (((1'b1 == ap_CS_fsm_state14) & (icmp_ln196_2_fu_452_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state16 : begin
            if (((1'b1 == ap_CS_fsm_state16) & (icmp_ln196_3_fu_512_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln190_fu_309_p2 = ($signed(zext_ln190_fu_305_p1) + $signed(12'd2336));

assign add_ln196_1_fu_393_p2 = (j_0_1_reg_230 + 9'd1);

assign add_ln196_2_fu_458_p2 = (j_0_2_reg_242 + 9'd1);

assign add_ln196_3_fu_518_p2 = (j_0_3_reg_254 + 9'd1);

assign add_ln196_fu_334_p2 = (j_0_0_reg_218 + 9'd1);

assign add_ln198_1_fu_433_p2 = (14'd2336 + trunc_ln198_3_fu_430_p1);

assign add_ln198_2_fu_496_p2 = (14'd2336 + trunc_ln198_5_fu_493_p1);

assign add_ln198_3_fu_559_p2 = (14'd2336 + trunc_ln198_7_fu_555_p1);

assign add_ln198_4_fu_368_p2 = (14'd2336 + trunc_ln198_1_fu_365_p1);

assign add_ln198_5_fu_425_p2 = (32'd1 + k_1_1_load_reg_619);

assign add_ln198_6_fu_488_p2 = (32'd1 + k_1_2_load_reg_648);

assign add_ln198_7_fu_549_p2 = (32'd1 + k_1_3_fu_84);

assign add_ln198_fu_360_p2 = (32'd1 + k_1_0_load_reg_590);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign grp_fu_284_p2 = ((h_vec_coeffs_q0 == 32'd0) ? 1'b1 : 1'b0);

assign grp_pqcrystals_dilithium_3_fu_266_ap_start = grp_pqcrystals_dilithium_3_fu_266_ap_start_reg;

assign i_fu_299_p2 = (i_2_reg_207 + 7'd1);

assign icmp_ln188_fu_293_p2 = ((i_2_reg_207 == 7'd84) ? 1'b1 : 1'b0);

assign icmp_ln196_1_fu_387_p2 = ((j_0_1_reg_230 == 9'd256) ? 1'b1 : 1'b0);

assign icmp_ln196_2_fu_452_p2 = ((j_0_2_reg_242 == 9'd256) ? 1'b1 : 1'b0);

assign icmp_ln196_3_fu_512_p2 = ((j_0_3_reg_254 == 9'd256) ? 1'b1 : 1'b0);

assign icmp_ln196_fu_328_p2 = ((j_0_0_reg_218 == 9'd256) ? 1'b1 : 1'b0);

assign sext_ln197_fu_530_p1 = $signed(xor_ln197_1_fu_524_p2);

assign sext_ln198_1_fu_439_p1 = $signed(add_ln198_1_fu_433_p2);

assign sext_ln198_2_fu_502_p1 = $signed(add_ln198_2_fu_496_p2);

assign sext_ln198_3_fu_565_p1 = $signed(add_ln198_3_fu_559_p2);

assign sext_ln198_fu_374_p1 = $signed(add_ln198_4_fu_368_p2);

assign sig_address1 = grp_pqcrystals_dilithium_3_fu_266_r_address1;

assign sig_d1 = grp_pqcrystals_dilithium_3_fu_266_r_d1;

assign tmp_s_fu_464_p3 = {{55'd1}, {j_0_2_reg_242}};

assign trunc_ln198_1_fu_365_p1 = k_1_0_load_reg_590[13:0];

assign trunc_ln198_2_fu_420_p1 = j_0_1_reg_230[7:0];

assign trunc_ln198_3_fu_430_p1 = k_1_1_load_reg_619[13:0];

assign trunc_ln198_4_fu_483_p1 = j_0_2_reg_242[7:0];

assign trunc_ln198_5_fu_493_p1 = k_1_2_load_reg_648[13:0];

assign trunc_ln198_6_fu_544_p1 = j_0_3_reg_254[7:0];

assign trunc_ln198_7_fu_555_p1 = k_1_3_fu_84[13:0];

assign trunc_ln198_fu_355_p1 = j_0_0_reg_218[7:0];

assign trunc_ln200_1_fu_410_p1 = k_1_1_fu_76[7:0];

assign trunc_ln200_2_fu_473_p1 = k_1_2_fu_80[7:0];

assign trunc_ln200_3_fu_539_p1 = k_1_3_fu_84[7:0];

assign trunc_ln200_fu_345_p1 = k_1_0_fu_72[7:0];

assign xor_ln197_1_fu_524_p2 = (j_0_3_reg_254 ^ 9'd256);

assign xor_ln197_fu_399_p2 = (j_0_1_reg_230 ^ 9'd256);

assign z_vec_coeffs_address0 = grp_pqcrystals_dilithium_3_fu_266_a_coeffs_address0;

assign zext_ln190_1_fu_315_p1 = add_ln190_fu_309_p2;

assign zext_ln190_fu_305_p1 = i_2_reg_207;

assign zext_ln197_1_fu_405_p1 = xor_ln197_fu_399_p2;

assign zext_ln197_2_fu_534_p1 = $unsigned(sext_ln197_fu_530_p1);

assign zext_ln197_fu_340_p1 = j_0_0_reg_218;

endmodule //pqcrystals_dilithium_19
