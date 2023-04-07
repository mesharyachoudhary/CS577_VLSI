// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module poly_uniform_gamma1 (
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
        seed_address0,
        seed_ce0,
        seed_q0,
        nonce
);

parameter    ap_ST_fsm_state1 = 20'd1;
parameter    ap_ST_fsm_state2 = 20'd2;
parameter    ap_ST_fsm_state3 = 20'd4;
parameter    ap_ST_fsm_state4 = 20'd8;
parameter    ap_ST_fsm_state5 = 20'd16;
parameter    ap_ST_fsm_state6 = 20'd32;
parameter    ap_ST_fsm_state7 = 20'd64;
parameter    ap_ST_fsm_state8 = 20'd128;
parameter    ap_ST_fsm_state9 = 20'd256;
parameter    ap_ST_fsm_state10 = 20'd512;
parameter    ap_ST_fsm_state11 = 20'd1024;
parameter    ap_ST_fsm_state12 = 20'd2048;
parameter    ap_ST_fsm_state13 = 20'd4096;
parameter    ap_ST_fsm_state14 = 20'd8192;
parameter    ap_ST_fsm_state15 = 20'd16384;
parameter    ap_ST_fsm_state16 = 20'd32768;
parameter    ap_ST_fsm_state17 = 20'd65536;
parameter    ap_ST_fsm_state18 = 20'd131072;
parameter    ap_ST_fsm_state19 = 20'd262144;
parameter    ap_ST_fsm_state20 = 20'd524288;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] a_coeffs_address0;
output   a_coeffs_ce0;
output   a_coeffs_we0;
output  [18:0] a_coeffs_d0;
input  [2:0] a_coeffs_offset;
output  [7:0] seed_address0;
output   seed_ce0;
input  [7:0] seed_q0;
input  [15:0] nonce;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[9:0] a_coeffs_address0;
reg a_coeffs_ce0;
reg a_coeffs_we0;
reg[18:0] a_coeffs_d0;
reg seed_ce0;

(* fsm_encoding = "none" *) reg   [19:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [7:0] buf_q0;
reg   [7:0] reg_498;
wire    ap_CS_fsm_state16;
wire   [7:0] buf_q1;
wire    ap_CS_fsm_state17;
wire    ap_CS_fsm_state18;
wire    ap_CS_fsm_state19;
wire   [4:0] i_fu_509_p2;
wire    ap_CS_fsm_state2;
wire   [63:0] zext_ln417_fu_520_p1;
reg   [63:0] zext_ln417_reg_1177;
wire    ap_CS_fsm_state3;
wire   [2:0] add_ln417_fu_530_p2;
reg   [2:0] add_ln417_reg_1185;
wire   [7:0] zext_ln26_fu_544_p1;
reg   [7:0] zext_ln26_reg_1190;
wire   [0:0] icmp_ln417_fu_524_p2;
wire   [3:0] i_22_fu_554_p2;
reg   [3:0] i_22_reg_1198;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln30_fu_548_p2;
reg   [4:0] state_s_addr_1_reg_1208;
wire   [63:0] r_fu_604_p2;
wire    ap_CS_fsm_state5;
wire   [2:0] add_ln388_fu_617_p2;
wire    ap_CS_fsm_state7;
wire   [3:0] i_23_fu_640_p2;
wire    ap_CS_fsm_state8;
wire   [1:0] i_24_fu_662_p2;
wire    ap_CS_fsm_state9;
wire   [3:0] i_25_fu_699_p2;
reg   [3:0] i_25_reg_1245;
wire    ap_CS_fsm_state10;
wire   [0:0] icmp_ln30_1_fu_693_p2;
wire   [63:0] r_1_fu_736_p2;
wire    ap_CS_fsm_state11;
wire   [6:0] i_26_fu_772_p2;
reg   [6:0] i_26_reg_1275;
wire    ap_CS_fsm_state15;
wire   [5:0] trunc_ln857_fu_778_p1;
reg   [5:0] trunc_ln857_reg_1280;
wire   [0:0] icmp_ln856_fu_766_p2;
wire   [9:0] add_ln857_fu_794_p2;
reg   [9:0] add_ln857_reg_1286;
wire   [7:0] shl_ln857_1_fu_883_p3;
reg   [7:0] shl_ln857_1_reg_1323;
reg   [2:0] t_address0;
reg    t_ce0;
reg    t_we0;
reg   [7:0] t_d0;
wire   [7:0] t_q0;
reg   [9:0] buf_address0;
reg    buf_ce0;
reg    buf_we0;
reg   [9:0] buf_address1;
reg    buf_ce1;
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
wire    grp_shake256_squeezebloc_fu_490_ap_start;
wire    grp_shake256_squeezebloc_fu_490_ap_done;
wire    grp_shake256_squeezebloc_fu_490_ap_idle;
wire    grp_shake256_squeezebloc_fu_490_ap_ready;
wire   [9:0] grp_shake256_squeezebloc_fu_490_out_r_address0;
wire    grp_shake256_squeezebloc_fu_490_out_r_ce0;
wire    grp_shake256_squeezebloc_fu_490_out_r_we0;
wire   [7:0] grp_shake256_squeezebloc_fu_490_out_r_d0;
wire   [4:0] grp_shake256_squeezebloc_fu_490_state_s_address0;
wire    grp_shake256_squeezebloc_fu_490_state_s_ce0;
wire    grp_shake256_squeezebloc_fu_490_state_s_we0;
wire   [63:0] grp_shake256_squeezebloc_fu_490_state_s_d0;
wire   [4:0] grp_shake256_squeezebloc_fu_490_state_s_address1;
wire    grp_shake256_squeezebloc_fu_490_state_s_ce1;
wire    grp_shake256_squeezebloc_fu_490_state_s_we1;
wire   [63:0] grp_shake256_squeezebloc_fu_490_state_s_d1;
reg   [4:0] i_0_i_i_i_reg_376;
wire   [0:0] icmp_ln362_fu_503_p2;
reg   [2:0] i_3_i_i32_i_reg_387;
wire    ap_CS_fsm_state6;
reg   [3:0] i_0_i_reg_398;
reg   [63:0] r_0_i_reg_410;
reg   [2:0] phi_ln388_reg_422;
wire   [0:0] icmp_ln388_fu_628_p2;
reg   [3:0] i_4_i_i_i_reg_433;
wire   [0:0] icmp_ln424_fu_634_p2;
reg   [1:0] i_5_i_i_i_reg_444;
wire   [0:0] icmp_ln426_fu_656_p2;
reg   [3:0] i_0_i1_reg_455;
reg   [63:0] r_0_i2_reg_467;
reg   [6:0] i_0_i2_reg_479;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state20;
reg    grp_shake256_squeezebloc_fu_490_ap_start_reg;
wire    ap_CS_fsm_state13;
wire   [63:0] zext_ln363_fu_515_p1;
wire   [63:0] zext_ln31_fu_573_p1;
wire   [63:0] zext_ln388_fu_623_p1;
wire   [63:0] zext_ln425_fu_646_p1;
wire   [63:0] zext_ln426_fu_651_p1;
wire   [63:0] zext_ln31_3_fu_705_p1;
wire   [63:0] zext_ln857_1_fu_800_p1;
wire   [63:0] zext_ln858_fu_810_p1;
wire   [63:0] zext_ln859_fu_820_p1;
wire   [63:0] zext_ln857_2_fu_833_p1;
wire   [63:0] zext_ln863_fu_861_p1;
wire   [63:0] zext_ln864_fu_871_p1;
wire   [63:0] zext_ln862_2_fu_917_p1;
wire   [63:0] zext_ln868_fu_965_p1;
wire   [63:0] zext_ln869_fu_975_p1;
wire   [63:0] zext_ln867_1_fu_1013_p1;
wire   [63:0] zext_ln873_fu_1061_p1;
wire   [63:0] zext_ln874_fu_1071_p1;
wire   [63:0] zext_ln872_1_fu_1109_p1;
wire   [63:0] xor_ln418_fu_610_p2;
wire    ap_CS_fsm_state12;
wire   [63:0] xor_ln451_fu_748_p2;
wire   [63:0] xor_ln452_fu_755_p2;
wire   [7:0] select_ln427_fu_684_p3;
wire   [18:0] sub_ln877_fu_876_p2;
wire   [18:0] sub_ln878_fu_980_p2;
wire   [18:0] sub_ln879_fu_1076_p2;
wire   [18:0] sub_ln880_fu_1148_p2;
wire   [5:0] shl_ln_fu_536_p3;
wire   [7:0] or_ln_fu_560_p3;
wire   [7:0] add_ln31_fu_568_p2;
wire   [2:0] trunc_ln31_fu_582_p1;
wire   [5:0] shl_ln8_fu_586_p3;
wire   [63:0] zext_ln31_1_fu_578_p1;
wire   [63:0] zext_ln31_2_fu_594_p1;
wire   [63:0] shl_ln31_fu_598_p2;
wire   [0:0] trunc_ln427_fu_668_p1;
wire   [7:0] tmp_25_fu_672_p4;
wire   [7:0] trunc_ln427_1_fu_681_p1;
wire   [2:0] trunc_ln31_1_fu_714_p1;
wire   [5:0] shl_ln31_2_fu_718_p3;
wire   [63:0] zext_ln31_4_fu_710_p1;
wire   [63:0] zext_ln31_5_fu_726_p1;
wire   [63:0] shl_ln31_1_fu_730_p2;
wire   [63:0] xor_ln451_1_fu_742_p2;
wire   [8:0] shl_ln9_fu_782_p3;
wire   [9:0] zext_ln857_fu_790_p1;
wire   [9:0] zext_ln856_fu_762_p1;
wire   [9:0] add_ln858_fu_805_p2;
wire   [9:0] add_ln859_fu_815_p2;
wire   [10:0] tmp_26_fu_825_p4;
wire   [1:0] trunc_ln860_fu_838_p1;
wire   [17:0] tmp_2_i_fu_842_p4;
wire   [9:0] add_ln863_fu_856_p2;
wire   [9:0] add_ln864_fu_866_p2;
wire   [18:0] zext_ln862_fu_852_p1;
wire   [5:0] lshr_ln_fu_890_p4;
wire   [7:0] or_ln862_fu_904_p2;
wire   [10:0] tmp_27_fu_910_p3;
wire   [7:0] zext_ln862_1_fu_900_p1;
wire   [13:0] tmp_s_fu_934_p3;
wire   [13:0] shl_ln10_fu_922_p3;
wire   [3:0] trunc_ln865_fu_930_p1;
wire   [13:0] or_ln865_fu_942_p2;
wire   [17:0] or_ln865_i_fu_948_p3;
wire   [9:0] add_ln868_fu_960_p2;
wire   [9:0] add_ln869_fu_970_p2;
wire   [18:0] zext_ln865_fu_956_p1;
wire   [3:0] lshr_ln7_fu_987_p4;
wire   [7:0] or_ln867_fu_1001_p2;
wire   [10:0] tmp_28_fu_1006_p3;
wire   [7:0] zext_ln867_fu_997_p1;
wire   [11:0] tmp_3_fu_1030_p3;
wire   [11:0] shl_ln11_fu_1018_p3;
wire   [5:0] trunc_ln870_fu_1026_p1;
wire   [11:0] or_ln870_fu_1038_p2;
wire   [17:0] or_ln870_i_fu_1044_p3;
wire   [9:0] add_ln873_fu_1056_p2;
wire   [9:0] add_ln874_fu_1066_p2;
wire   [18:0] zext_ln870_fu_1052_p1;
wire   [1:0] lshr_ln8_fu_1083_p4;
wire   [7:0] or_ln872_fu_1097_p2;
wire   [10:0] tmp_29_fu_1102_p3;
wire   [7:0] zext_ln872_fu_1093_p1;
wire   [9:0] tmp_4_fu_1122_p3;
wire   [9:0] shl_ln12_fu_1114_p3;
wire   [9:0] or_ln874_fu_1130_p2;
wire   [17:0] or_ln874_i_fu_1136_p3;
wire   [18:0] zext_ln874_1_fu_1144_p1;
reg   [19:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 20'd1;
#0 grp_shake256_squeezebloc_fu_490_ap_start_reg = 1'b0;
end

dilithium_shake12dEe #(
    .DataWidth( 8 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
t_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(t_address0),
    .ce0(t_ce0),
    .we0(t_we0),
    .d0(t_d0),
    .q0(t_q0)
);

poly_uniform_gammfYi #(
    .DataWidth( 8 ),
    .AddressRange( 680 ),
    .AddressWidth( 10 ))
buf_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(buf_address0),
    .ce0(buf_ce0),
    .we0(buf_we0),
    .d0(grp_shake256_squeezebloc_fu_490_out_r_d0),
    .q0(buf_q0),
    .address1(buf_address1),
    .ce1(buf_ce1),
    .q1(buf_q1)
);

poly_uniform_gammg8j #(
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

shake256_squeezebloc grp_shake256_squeezebloc_fu_490(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_shake256_squeezebloc_fu_490_ap_start),
    .ap_done(grp_shake256_squeezebloc_fu_490_ap_done),
    .ap_idle(grp_shake256_squeezebloc_fu_490_ap_idle),
    .ap_ready(grp_shake256_squeezebloc_fu_490_ap_ready),
    .out_r_address0(grp_shake256_squeezebloc_fu_490_out_r_address0),
    .out_r_ce0(grp_shake256_squeezebloc_fu_490_out_r_ce0),
    .out_r_we0(grp_shake256_squeezebloc_fu_490_out_r_we0),
    .out_r_d0(grp_shake256_squeezebloc_fu_490_out_r_d0),
    .state_s_address0(grp_shake256_squeezebloc_fu_490_state_s_address0),
    .state_s_ce0(grp_shake256_squeezebloc_fu_490_state_s_ce0),
    .state_s_we0(grp_shake256_squeezebloc_fu_490_state_s_we0),
    .state_s_d0(grp_shake256_squeezebloc_fu_490_state_s_d0),
    .state_s_q0(state_s_q0),
    .state_s_address1(grp_shake256_squeezebloc_fu_490_state_s_address1),
    .state_s_ce1(grp_shake256_squeezebloc_fu_490_state_s_ce1),
    .state_s_we1(grp_shake256_squeezebloc_fu_490_state_s_we1),
    .state_s_d1(grp_shake256_squeezebloc_fu_490_state_s_d1),
    .state_s_q1(state_s_q1)
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
        grp_shake256_squeezebloc_fu_490_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state13)) begin
            grp_shake256_squeezebloc_fu_490_ap_start_reg <= 1'b1;
        end else if ((grp_shake256_squeezebloc_fu_490_ap_ready == 1'b1)) begin
            grp_shake256_squeezebloc_fu_490_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln426_fu_656_p2 == 1'd1))) begin
        i_0_i1_reg_455 <= 4'd0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        i_0_i1_reg_455 <= i_25_reg_1245;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        i_0_i2_reg_479 <= i_26_reg_1275;
    end else if (((grp_shake256_squeezebloc_fu_490_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
        i_0_i2_reg_479 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln362_fu_503_p2 == 1'd0))) begin
        i_0_i_i_i_reg_376 <= i_fu_509_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_i_i_i_reg_376 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        i_0_i_reg_398 <= i_22_reg_1198;
    end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln417_fu_524_p2 == 1'd0))) begin
        i_0_i_reg_398 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln362_fu_503_p2 == 1'd1))) begin
        i_3_i_i32_i_reg_387 <= 3'd0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        i_3_i_i32_i_reg_387 <= add_ln417_reg_1185;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln388_fu_628_p2 == 1'd1))) begin
        i_4_i_i_i_reg_433 <= 4'd0;
    end else if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln424_fu_634_p2 == 1'd0))) begin
        i_4_i_i_i_reg_433 <= i_23_fu_640_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln424_fu_634_p2 == 1'd1))) begin
        i_5_i_i_i_reg_444 <= 2'd0;
    end else if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln426_fu_656_p2 == 1'd0))) begin
        i_5_i_i_i_reg_444 <= i_24_fu_662_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln417_fu_524_p2 == 1'd1))) begin
        phi_ln388_reg_422 <= 3'd0;
    end else if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln388_fu_628_p2 == 1'd0))) begin
        phi_ln388_reg_422 <= add_ln388_fu_617_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln426_fu_656_p2 == 1'd1))) begin
        r_0_i2_reg_467 <= 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        r_0_i2_reg_467 <= r_1_fu_736_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        r_0_i_reg_410 <= r_fu_604_p2;
    end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln417_fu_524_p2 == 1'd0))) begin
        r_0_i_reg_410 <= 64'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        reg_498 <= buf_q1;
    end else if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16))) begin
        reg_498 <= buf_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln417_reg_1185 <= add_ln417_fu_530_p2;
        zext_ln417_reg_1177[2 : 0] <= zext_ln417_fu_520_p1[2 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state15) & (icmp_ln856_fu_766_p2 == 1'd0))) begin
        add_ln857_reg_1286 <= add_ln857_fu_794_p2;
        trunc_ln857_reg_1280 <= trunc_ln857_fu_778_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        i_22_reg_1198 <= i_22_fu_554_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        i_25_reg_1245 <= i_25_fu_699_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        i_26_reg_1275 <= i_26_fu_772_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        shl_ln857_1_reg_1323[7 : 2] <= shl_ln857_1_fu_883_p3[7 : 2];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln30_fu_548_p2 == 1'd1))) begin
        state_s_addr_1_reg_1208[2 : 0] <= zext_ln417_reg_1177[2 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln417_fu_524_p2 == 1'd0))) begin
        zext_ln26_reg_1190[5 : 3] <= zext_ln26_fu_544_p1[5 : 3];
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        a_coeffs_address0 = zext_ln872_1_fu_1109_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        a_coeffs_address0 = zext_ln867_1_fu_1013_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        a_coeffs_address0 = zext_ln862_2_fu_917_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        a_coeffs_address0 = zext_ln857_2_fu_833_p1;
    end else begin
        a_coeffs_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state20))) begin
        a_coeffs_ce0 = 1'b1;
    end else begin
        a_coeffs_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        a_coeffs_d0 = sub_ln880_fu_1148_p2;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        a_coeffs_d0 = sub_ln879_fu_1076_p2;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        a_coeffs_d0 = sub_ln878_fu_980_p2;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        a_coeffs_d0 = sub_ln877_fu_876_p2;
    end else begin
        a_coeffs_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state20))) begin
        a_coeffs_we0 = 1'b1;
    end else begin
        a_coeffs_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state15) & (icmp_ln856_fu_766_p2 == 1'd1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state15) & (icmp_ln856_fu_766_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        buf_address0 = zext_ln874_fu_1071_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buf_address0 = zext_ln869_fu_975_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buf_address0 = zext_ln864_fu_871_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buf_address0 = zext_ln858_fu_810_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buf_address0 = zext_ln857_1_fu_800_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buf_address0 = grp_shake256_squeezebloc_fu_490_out_r_address0;
    end else begin
        buf_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        buf_address1 = zext_ln873_fu_1061_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buf_address1 = zext_ln868_fu_965_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buf_address1 = zext_ln863_fu_861_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buf_address1 = zext_ln859_fu_820_p1;
    end else begin
        buf_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15))) begin
        buf_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buf_ce0 = grp_shake256_squeezebloc_fu_490_out_r_ce0;
    end else begin
        buf_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16))) begin
        buf_ce1 = 1'b1;
    end else begin
        buf_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buf_we0 = grp_shake256_squeezebloc_fu_490_out_r_we0;
    end else begin
        buf_we0 = 1'b0;
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
    if ((1'b1 == ap_CS_fsm_state12)) begin
        state_s_address0 = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        state_s_address0 = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        state_s_address0 = state_s_addr_1_reg_1208;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        state_s_address0 = zext_ln417_reg_1177;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        state_s_address0 = zext_ln363_fu_515_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        state_s_address0 = grp_shake256_squeezebloc_fu_490_state_s_address0;
    end else begin
        state_s_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        state_s_address1 = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        state_s_address1 = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        state_s_address1 = grp_shake256_squeezebloc_fu_490_state_s_address1;
    end else begin
        state_s_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state4))) begin
        state_s_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        state_s_ce0 = grp_shake256_squeezebloc_fu_490_state_s_ce0;
    end else begin
        state_s_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state10))) begin
        state_s_ce1 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        state_s_ce1 = grp_shake256_squeezebloc_fu_490_state_s_ce1;
    end else begin
        state_s_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        state_s_d0 = xor_ln452_fu_755_p2;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        state_s_d0 = xor_ln418_fu_610_p2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        state_s_d0 = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        state_s_d0 = grp_shake256_squeezebloc_fu_490_state_s_d0;
    end else begin
        state_s_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        state_s_d1 = xor_ln451_fu_748_p2;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        state_s_d1 = grp_shake256_squeezebloc_fu_490_state_s_d1;
    end else begin
        state_s_d1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state6) | ((1'b1 == ap_CS_fsm_state2) & (icmp_ln362_fu_503_p2 == 1'd0)))) begin
        state_s_we0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        state_s_we0 = grp_shake256_squeezebloc_fu_490_state_s_we0;
    end else begin
        state_s_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        state_s_we1 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        state_s_we1 = grp_shake256_squeezebloc_fu_490_state_s_we1;
    end else begin
        state_s_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        t_address0 = zext_ln31_3_fu_705_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        t_address0 = zext_ln426_fu_651_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        t_address0 = zext_ln425_fu_646_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        t_address0 = zext_ln388_fu_623_p1;
    end else begin
        t_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        t_ce0 = 1'b1;
    end else begin
        t_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        t_d0 = select_ln427_fu_684_p3;
    end else if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        t_d0 = 8'd0;
    end else begin
        t_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | ((1'b1 == ap_CS_fsm_state9) & (icmp_ln426_fu_656_p2 == 1'd0)) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln424_fu_634_p2 == 1'd0)))) begin
        t_we0 = 1'b1;
    end else begin
        t_we0 = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln362_fu_503_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln417_fu_524_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln30_fu_548_p2 == 1'd1))) begin
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
            if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln388_fu_628_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln424_fu_634_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln426_fu_656_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state10 : begin
            if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln30_1_fu_693_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            if (((grp_shake256_squeezebloc_fu_490_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        ap_ST_fsm_state15 : begin
            if (((1'b1 == ap_CS_fsm_state15) & (icmp_ln856_fu_766_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
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
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln31_fu_568_p2 = (zext_ln26_reg_1190 + or_ln_fu_560_p3);

assign add_ln388_fu_617_p2 = (phi_ln388_reg_422 + 3'd1);

assign add_ln417_fu_530_p2 = (i_3_i_i32_i_reg_387 + 3'd1);

assign add_ln857_fu_794_p2 = (zext_ln857_fu_790_p1 + zext_ln856_fu_762_p1);

assign add_ln858_fu_805_p2 = (10'd1 + add_ln857_reg_1286);

assign add_ln859_fu_815_p2 = (10'd2 + add_ln857_reg_1286);

assign add_ln863_fu_856_p2 = (10'd3 + add_ln857_reg_1286);

assign add_ln864_fu_866_p2 = (10'd4 + add_ln857_reg_1286);

assign add_ln868_fu_960_p2 = (10'd5 + add_ln857_reg_1286);

assign add_ln869_fu_970_p2 = (10'd6 + add_ln857_reg_1286);

assign add_ln873_fu_1056_p2 = (10'd7 + add_ln857_reg_1286);

assign add_ln874_fu_1066_p2 = (10'd8 + add_ln857_reg_1286);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];

assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign grp_shake256_squeezebloc_fu_490_ap_start = grp_shake256_squeezebloc_fu_490_ap_start_reg;

assign i_22_fu_554_p2 = (i_0_i_reg_398 + 4'd1);

assign i_23_fu_640_p2 = (i_4_i_i_i_reg_433 + 4'd1);

assign i_24_fu_662_p2 = (i_5_i_i_i_reg_444 + 2'd1);

assign i_25_fu_699_p2 = (i_0_i1_reg_455 + 4'd1);

assign i_26_fu_772_p2 = (i_0_i2_reg_479 + 7'd1);

assign i_fu_509_p2 = (i_0_i_i_i_reg_376 + 5'd1);

assign icmp_ln30_1_fu_693_p2 = ((i_0_i1_reg_455 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln30_fu_548_p2 = ((i_0_i_reg_398 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln362_fu_503_p2 = ((i_0_i_i_i_reg_376 == 5'd25) ? 1'b1 : 1'b0);

assign icmp_ln388_fu_628_p2 = ((phi_ln388_reg_422 == 3'd7) ? 1'b1 : 1'b0);

assign icmp_ln417_fu_524_p2 = ((i_3_i_i32_i_reg_387 == 3'd6) ? 1'b1 : 1'b0);

assign icmp_ln424_fu_634_p2 = ((i_4_i_i_i_reg_433 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln426_fu_656_p2 = ((i_5_i_i_i_reg_444 == 2'd2) ? 1'b1 : 1'b0);

assign icmp_ln856_fu_766_p2 = ((i_0_i2_reg_479 == 7'd64) ? 1'b1 : 1'b0);

assign lshr_ln7_fu_987_p4 = {{reg_498[7:4]}};

assign lshr_ln8_fu_1083_p4 = {{reg_498[7:6]}};

assign lshr_ln_fu_890_p4 = {{reg_498[7:2]}};

assign or_ln862_fu_904_p2 = (shl_ln857_1_fu_883_p3 | 8'd1);

assign or_ln865_fu_942_p2 = (tmp_s_fu_934_p3 | shl_ln10_fu_922_p3);

assign or_ln865_i_fu_948_p3 = {{trunc_ln865_fu_930_p1}, {or_ln865_fu_942_p2}};

assign or_ln867_fu_1001_p2 = (shl_ln857_1_reg_1323 | 8'd2);

assign or_ln870_fu_1038_p2 = (tmp_3_fu_1030_p3 | shl_ln11_fu_1018_p3);

assign or_ln870_i_fu_1044_p3 = {{trunc_ln870_fu_1026_p1}, {or_ln870_fu_1038_p2}};

assign or_ln872_fu_1097_p2 = (shl_ln857_1_reg_1323 | 8'd3);

assign or_ln874_fu_1130_p2 = (tmp_4_fu_1122_p3 | shl_ln12_fu_1114_p3);

assign or_ln874_i_fu_1136_p3 = {{buf_q0}, {or_ln874_fu_1130_p2}};

assign or_ln_fu_560_p3 = {{4'd10}, {i_0_i_reg_398}};

assign r_1_fu_736_p2 = (shl_ln31_1_fu_730_p2 | r_0_i2_reg_467);

assign r_fu_604_p2 = (shl_ln31_fu_598_p2 | r_0_i_reg_410);

assign seed_address0 = zext_ln31_fu_573_p1;

assign select_ln427_fu_684_p3 = ((trunc_ln427_fu_668_p1[0:0] === 1'b1) ? tmp_25_fu_672_p4 : trunc_ln427_1_fu_681_p1);

assign shl_ln10_fu_922_p3 = {{buf_q1}, {6'd0}};

assign shl_ln11_fu_1018_p3 = {{buf_q1}, {4'd0}};

assign shl_ln12_fu_1114_p3 = {{buf_q1}, {2'd0}};

assign shl_ln31_1_fu_730_p2 = zext_ln31_4_fu_710_p1 << zext_ln31_5_fu_726_p1;

assign shl_ln31_2_fu_718_p3 = {{trunc_ln31_1_fu_714_p1}, {3'd0}};

assign shl_ln31_fu_598_p2 = zext_ln31_1_fu_578_p1 << zext_ln31_2_fu_594_p1;

assign shl_ln857_1_fu_883_p3 = {{trunc_ln857_reg_1280}, {2'd0}};

assign shl_ln8_fu_586_p3 = {{trunc_ln31_fu_582_p1}, {3'd0}};

assign shl_ln9_fu_782_p3 = {{trunc_ln857_fu_778_p1}, {3'd0}};

assign shl_ln_fu_536_p3 = {{i_3_i_i32_i_reg_387}, {3'd0}};

assign sub_ln877_fu_876_p2 = (19'd131072 - zext_ln862_fu_852_p1);

assign sub_ln878_fu_980_p2 = (19'd131072 - zext_ln865_fu_956_p1);

assign sub_ln879_fu_1076_p2 = (19'd131072 - zext_ln870_fu_1052_p1);

assign sub_ln880_fu_1148_p2 = (19'd131072 - zext_ln874_1_fu_1144_p1);

assign tmp_25_fu_672_p4 = {{nonce[15:8]}};

assign tmp_26_fu_825_p4 = {{{a_coeffs_offset}, {trunc_ln857_reg_1280}}, {2'd0}};

assign tmp_27_fu_910_p3 = {{a_coeffs_offset}, {or_ln862_fu_904_p2}};

assign tmp_28_fu_1006_p3 = {{a_coeffs_offset}, {or_ln867_fu_1001_p2}};

assign tmp_29_fu_1102_p3 = {{a_coeffs_offset}, {or_ln872_fu_1097_p2}};

assign tmp_2_i_fu_842_p4 = {{{trunc_ln860_fu_838_p1}, {buf_q0}}, {reg_498}};

assign tmp_3_fu_1030_p3 = {{4'd0}, {zext_ln867_fu_997_p1}};

assign tmp_4_fu_1122_p3 = {{2'd0}, {zext_ln872_fu_1093_p1}};

assign tmp_s_fu_934_p3 = {{6'd0}, {zext_ln862_1_fu_900_p1}};

assign trunc_ln31_1_fu_714_p1 = i_0_i1_reg_455[2:0];

assign trunc_ln31_fu_582_p1 = i_0_i_reg_398[2:0];

assign trunc_ln427_1_fu_681_p1 = nonce[7:0];

assign trunc_ln427_fu_668_p1 = i_5_i_i_i_reg_444[0:0];

assign trunc_ln857_fu_778_p1 = i_0_i2_reg_479[5:0];

assign trunc_ln860_fu_838_p1 = buf_q1[1:0];

assign trunc_ln865_fu_930_p1 = buf_q0[3:0];

assign trunc_ln870_fu_1026_p1 = buf_q0[5:0];

assign xor_ln418_fu_610_p2 = (state_s_q0 ^ r_0_i_reg_410);

assign xor_ln451_1_fu_742_p2 = (r_0_i2_reg_467 ^ 64'd2031616);

assign xor_ln451_fu_748_p2 = (xor_ln451_1_fu_742_p2 ^ state_s_q0);

assign xor_ln452_fu_755_p2 = (state_s_q1 ^ 64'd9223372036854775808);

assign zext_ln26_fu_544_p1 = shl_ln_fu_536_p3;

assign zext_ln31_1_fu_578_p1 = seed_q0;

assign zext_ln31_2_fu_594_p1 = shl_ln8_fu_586_p3;

assign zext_ln31_3_fu_705_p1 = i_0_i1_reg_455;

assign zext_ln31_4_fu_710_p1 = t_q0;

assign zext_ln31_5_fu_726_p1 = shl_ln31_2_fu_718_p3;

assign zext_ln31_fu_573_p1 = add_ln31_fu_568_p2;

assign zext_ln363_fu_515_p1 = i_0_i_i_i_reg_376;

assign zext_ln388_fu_623_p1 = phi_ln388_reg_422;

assign zext_ln417_fu_520_p1 = i_3_i_i32_i_reg_387;

assign zext_ln425_fu_646_p1 = i_4_i_i_i_reg_433;

assign zext_ln426_fu_651_p1 = i_5_i_i_i_reg_444;

assign zext_ln856_fu_762_p1 = i_0_i2_reg_479;

assign zext_ln857_1_fu_800_p1 = add_ln857_fu_794_p2;

assign zext_ln857_2_fu_833_p1 = tmp_26_fu_825_p4;

assign zext_ln857_fu_790_p1 = shl_ln9_fu_782_p3;

assign zext_ln858_fu_810_p1 = add_ln858_fu_805_p2;

assign zext_ln859_fu_820_p1 = add_ln859_fu_815_p2;

assign zext_ln862_1_fu_900_p1 = lshr_ln_fu_890_p4;

assign zext_ln862_2_fu_917_p1 = tmp_27_fu_910_p3;

assign zext_ln862_fu_852_p1 = tmp_2_i_fu_842_p4;

assign zext_ln863_fu_861_p1 = add_ln863_fu_856_p2;

assign zext_ln864_fu_871_p1 = add_ln864_fu_866_p2;

assign zext_ln865_fu_956_p1 = or_ln865_i_fu_948_p3;

assign zext_ln867_1_fu_1013_p1 = tmp_28_fu_1006_p3;

assign zext_ln867_fu_997_p1 = lshr_ln7_fu_987_p4;

assign zext_ln868_fu_965_p1 = add_ln868_fu_960_p2;

assign zext_ln869_fu_975_p1 = add_ln869_fu_970_p2;

assign zext_ln870_fu_1052_p1 = or_ln870_i_fu_1044_p3;

assign zext_ln872_1_fu_1109_p1 = tmp_29_fu_1102_p3;

assign zext_ln872_fu_1093_p1 = lshr_ln8_fu_1083_p4;

assign zext_ln873_fu_1061_p1 = add_ln873_fu_1056_p2;

assign zext_ln874_1_fu_1144_p1 = or_ln874_i_fu_1136_p3;

assign zext_ln874_fu_1071_p1 = add_ln874_fu_1066_p2;

always @ (posedge ap_clk) begin
    zext_ln417_reg_1177[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    zext_ln26_reg_1190[2:0] <= 3'b000;
    zext_ln26_reg_1190[7:6] <= 2'b00;
    state_s_addr_1_reg_1208[4:3] <= 2'b00;
    shl_ln857_1_reg_1323[1:0] <= 2'b00;
end

endmodule //poly_uniform_gamma1
