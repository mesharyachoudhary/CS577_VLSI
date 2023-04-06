// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module keccak_squeezeblocks (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        out_r_address0,
        out_r_ce0,
        out_r_we0,
        out_r_d0,
        s_address0,
        s_ce0,
        s_we0,
        s_d0,
        s_q0,
        s_address1,
        s_ce1,
        s_we1,
        s_d1,
        s_q1
);

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] out_r_address0;
output   out_r_ce0;
output   out_r_we0;
output  [7:0] out_r_d0;
output  [4:0] s_address0;
output   s_ce0;
output   s_we0;
output  [63:0] s_d0;
input  [63:0] s_q0;
output  [4:0] s_address1;
output   s_ce1;
output   s_we1;
output  [63:0] s_d1;
input  [63:0] s_q1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg out_r_ce0;
reg out_r_we0;
reg[4:0] s_address0;
reg s_ce0;
reg s_we0;
reg s_ce1;
reg s_we1;

(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [4:0] i_fu_132_p2;
reg   [4:0] i_reg_218;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln476_fu_126_p2;
wire   [7:0] add_ln478_fu_143_p2;
wire   [7:0] shl_ln_fu_149_p3;
reg   [7:0] shl_ln_reg_233;
wire    ap_CS_fsm_state5;
reg   [63:0] s_load_reg_238;
wire   [3:0] i_26_fu_163_p2;
wire    ap_CS_fsm_state6;
wire    grp_KeccakF1600_StatePer_1_fu_118_ap_start;
wire    grp_KeccakF1600_StatePer_1_fu_118_ap_done;
wire    grp_KeccakF1600_StatePer_1_fu_118_ap_idle;
wire    grp_KeccakF1600_StatePer_1_fu_118_ap_ready;
wire   [4:0] grp_KeccakF1600_StatePer_1_fu_118_state_address0;
wire    grp_KeccakF1600_StatePer_1_fu_118_state_ce0;
wire    grp_KeccakF1600_StatePer_1_fu_118_state_we0;
wire   [63:0] grp_KeccakF1600_StatePer_1_fu_118_state_d0;
wire   [4:0] grp_KeccakF1600_StatePer_1_fu_118_state_address1;
wire    grp_KeccakF1600_StatePer_1_fu_118_state_ce1;
wire    grp_KeccakF1600_StatePer_1_fu_118_state_we1;
wire   [63:0] grp_KeccakF1600_StatePer_1_fu_118_state_d1;
wire   [0:0] ap_phi_mux_p_01_phi_fu_75_p4;
reg   [0:0] p_01_reg_70;
reg   [7:0] p_0_rec_reg_83;
reg   [4:0] i_0_reg_95;
wire    ap_CS_fsm_state3;
wire   [0:0] icmp_ln47_fu_157_p2;
reg   [3:0] i_0_i_reg_107;
reg    grp_KeccakF1600_StatePer_1_fu_118_ap_start_reg;
wire    ap_CS_fsm_state2;
wire   [63:0] zext_ln477_fu_138_p1;
wire   [63:0] zext_ln48_8_fu_210_p1;
wire   [2:0] trunc_ln48_fu_169_p1;
wire   [5:0] shl_ln12_fu_173_p3;
wire   [63:0] zext_ln48_fu_181_p1;
wire   [63:0] lshr_ln48_fu_185_p2;
wire   [7:0] zext_ln48_7_fu_195_p1;
wire   [7:0] add_ln48_3_fu_199_p2;
wire   [7:0] add_ln48_fu_204_p2;
reg   [5:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_KeccakF1600_StatePer_1_fu_118_ap_start_reg = 1'b0;
end

KeccakF1600_StatePer_1 grp_KeccakF1600_StatePer_1_fu_118(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_KeccakF1600_StatePer_1_fu_118_ap_start),
    .ap_done(grp_KeccakF1600_StatePer_1_fu_118_ap_done),
    .ap_idle(grp_KeccakF1600_StatePer_1_fu_118_ap_idle),
    .ap_ready(grp_KeccakF1600_StatePer_1_fu_118_ap_ready),
    .state_address0(grp_KeccakF1600_StatePer_1_fu_118_state_address0),
    .state_ce0(grp_KeccakF1600_StatePer_1_fu_118_state_ce0),
    .state_we0(grp_KeccakF1600_StatePer_1_fu_118_state_we0),
    .state_d0(grp_KeccakF1600_StatePer_1_fu_118_state_d0),
    .state_q0(s_q0),
    .state_address1(grp_KeccakF1600_StatePer_1_fu_118_state_address1),
    .state_ce1(grp_KeccakF1600_StatePer_1_fu_118_state_ce1),
    .state_we1(grp_KeccakF1600_StatePer_1_fu_118_state_we1),
    .state_d1(grp_KeccakF1600_StatePer_1_fu_118_state_d1),
    .state_q1(s_q1)
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
        grp_KeccakF1600_StatePer_1_fu_118_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_phi_mux_p_01_phi_fu_75_p4 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_KeccakF1600_StatePer_1_fu_118_ap_start_reg <= 1'b1;
        end else if ((grp_KeccakF1600_StatePer_1_fu_118_ap_ready == 1'b1)) begin
            grp_KeccakF1600_StatePer_1_fu_118_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln47_fu_157_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        i_0_i_reg_107 <= i_26_fu_163_p2;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        i_0_i_reg_107 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln47_fu_157_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        i_0_reg_95 <= i_reg_218;
    end else if (((grp_KeccakF1600_StatePer_1_fu_118_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        i_0_reg_95 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln476_fu_126_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        p_01_reg_70 <= 1'd0;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        p_01_reg_70 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln476_fu_126_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        p_0_rec_reg_83 <= add_ln478_fu_143_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        p_0_rec_reg_83 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        i_reg_218 <= i_fu_132_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        s_load_reg_238 <= s_q0;
        shl_ln_reg_233[7 : 3] <= shl_ln_fu_149_p3[7 : 3];
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((ap_phi_mux_p_01_phi_fu_75_p4 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
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
    if (((ap_phi_mux_p_01_phi_fu_75_p4 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        out_r_ce0 = 1'b1;
    end else begin
        out_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln47_fu_157_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        out_r_we0 = 1'b1;
    end else begin
        out_r_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        s_address0 = zext_ln477_fu_138_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        s_address0 = grp_KeccakF1600_StatePer_1_fu_118_state_address0;
    end else begin
        s_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        s_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        s_ce0 = grp_KeccakF1600_StatePer_1_fu_118_state_ce0;
    end else begin
        s_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        s_ce1 = grp_KeccakF1600_StatePer_1_fu_118_state_ce1;
    end else begin
        s_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        s_we0 = grp_KeccakF1600_StatePer_1_fu_118_state_we0;
    end else begin
        s_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        s_we1 = grp_KeccakF1600_StatePer_1_fu_118_state_we1;
    end else begin
        s_we1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((ap_phi_mux_p_01_phi_fu_75_p4 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((grp_KeccakF1600_StatePer_1_fu_118_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln476_fu_126_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((icmp_ln47_fu_157_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln478_fu_143_p2 = ($signed(p_0_rec_reg_83) + $signed(8'd136));

assign add_ln48_3_fu_199_p2 = (zext_ln48_7_fu_195_p1 + shl_ln_reg_233);

assign add_ln48_fu_204_p2 = (p_0_rec_reg_83 + add_ln48_3_fu_199_p2);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_phi_mux_p_01_phi_fu_75_p4 = p_01_reg_70;

assign grp_KeccakF1600_StatePer_1_fu_118_ap_start = grp_KeccakF1600_StatePer_1_fu_118_ap_start_reg;

assign i_26_fu_163_p2 = (i_0_i_reg_107 + 4'd1);

assign i_fu_132_p2 = (i_0_reg_95 + 5'd1);

assign icmp_ln476_fu_126_p2 = ((i_0_reg_95 == 5'd17) ? 1'b1 : 1'b0);

assign icmp_ln47_fu_157_p2 = ((i_0_i_reg_107 == 4'd8) ? 1'b1 : 1'b0);

assign lshr_ln48_fu_185_p2 = s_load_reg_238 >> zext_ln48_fu_181_p1;

assign out_r_address0 = zext_ln48_8_fu_210_p1;

assign out_r_d0 = lshr_ln48_fu_185_p2[7:0];

assign s_address1 = grp_KeccakF1600_StatePer_1_fu_118_state_address1;

assign s_d0 = grp_KeccakF1600_StatePer_1_fu_118_state_d0;

assign s_d1 = grp_KeccakF1600_StatePer_1_fu_118_state_d1;

assign shl_ln12_fu_173_p3 = {{trunc_ln48_fu_169_p1}, {3'd0}};

assign shl_ln_fu_149_p3 = {{i_0_reg_95}, {3'd0}};

assign trunc_ln48_fu_169_p1 = i_0_i_reg_107[2:0];

assign zext_ln477_fu_138_p1 = i_0_reg_95;

assign zext_ln48_7_fu_195_p1 = i_0_i_reg_107;

assign zext_ln48_8_fu_210_p1 = add_ln48_fu_204_p2;

assign zext_ln48_fu_181_p1 = shl_ln12_fu_173_p3;

always @ (posedge ap_clk) begin
    shl_ln_reg_233[2:0] <= 3'b000;
end

endmodule //keccak_squeezeblocks
