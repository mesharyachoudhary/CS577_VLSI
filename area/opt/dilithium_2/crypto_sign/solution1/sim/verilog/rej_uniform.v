// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module rej_uniform (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        a_address0,
        a_ce0,
        a_we0,
        a_d0,
        a_offset,
        a_offset1,
        a_offset2,
        len,
        buf_r_address0,
        buf_r_ce0,
        buf_r_q0,
        buf_r_address1,
        buf_r_ce1,
        buf_r_q1,
        buflen,
        ap_return
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] a_address0;
output   a_ce0;
output   a_we0;
output  [22:0] a_d0;
input  [1:0] a_offset;
input  [1:0] a_offset1;
input  [31:0] a_offset2;
input  [9:0] len;
output  [9:0] buf_r_address0;
output   buf_r_ce0;
input  [7:0] buf_r_q0;
output  [9:0] buf_r_address1;
output   buf_r_ce1;
input  [7:0] buf_r_q1;
input  [10:0] buflen;
output  [31:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg a_ce0;
reg a_we0;
reg[9:0] buf_r_address0;
reg buf_r_ce0;
reg buf_r_ce1;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [31:0] buflen_cast_fu_132_p1;
reg   [31:0] buflen_cast_reg_268;
wire   [31:0] len_cast_fu_136_p1;
reg   [31:0] len_cast_reg_273;
wire   [12:0] zext_ln344_1_cast_fu_150_p1;
reg   [12:0] zext_ln344_1_cast_reg_278;
wire   [8:0] trunc_ln344_fu_154_p1;
reg   [8:0] trunc_ln344_reg_283;
reg   [31:0] ctr_1_load_reg_288;
wire    ap_CS_fsm_state2;
wire   [31:0] pos_2_fu_171_p2;
reg   [31:0] pos_2_reg_297;
wire   [0:0] icmp_ln337_fu_166_p2;
wire   [0:0] icmp_ln337_1_fu_177_p2;
reg   [7:0] buf_load_reg_310;
wire    ap_CS_fsm_state3;
reg   [31:0] pos_0_reg_120;
wire    ap_CS_fsm_state4;
wire   [63:0] zext_ln338_fu_182_p1;
wire   [63:0] zext_ln339_fu_199_p1;
wire   [63:0] zext_ln340_fu_204_p1;
wire   [63:0] zext_ln344_1_fu_251_p1;
wire   [0:0] icmp_ln343_fu_223_p2;
reg   [31:0] ctr_1_fu_40;
wire   [31:0] ctr_fu_229_p2;
wire   [22:0] tmp_s_fu_213_p4;
wire   [11:0] tmp_7_fu_140_p4;
wire   [31:0] pos_fu_187_p2;
wire   [31:0] pos_1_fu_193_p2;
wire   [6:0] trunc_ln341_fu_209_p1;
wire   [8:0] trunc_ln344_1_fu_234_p1;
wire   [8:0] add_ln344_fu_237_p2;
wire   [12:0] zext_ln344_fu_242_p1;
wire   [12:0] add_ln344_2_fu_246_p2;
reg   [3:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln343_fu_223_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        ctr_1_fu_40 <= ctr_fu_229_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ctr_1_fu_40 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        pos_0_reg_120 <= pos_2_reg_297;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        pos_0_reg_120 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_load_reg_310 <= buf_r_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        buflen_cast_reg_268[10 : 0] <= buflen_cast_fu_132_p1[10 : 0];
        len_cast_reg_273[9 : 0] <= len_cast_fu_136_p1[9 : 0];
        trunc_ln344_reg_283 <= trunc_ln344_fu_154_p1;
        zext_ln344_1_cast_reg_278[11 : 8] <= zext_ln344_1_cast_fu_150_p1[11 : 8];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        ctr_1_load_reg_288 <= ctr_1_fu_40;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln337_fu_166_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        pos_2_reg_297 <= pos_2_fu_171_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        a_ce0 = 1'b1;
    end else begin
        a_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln343_fu_223_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        a_we0 = 1'b1;
    end else begin
        a_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state2) & ((icmp_ln337_1_fu_177_p2 == 1'd1) | (icmp_ln337_fu_166_p2 == 1'd0))) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & ((icmp_ln337_1_fu_177_p2 == 1'd1) | (icmp_ln337_fu_166_p2 == 1'd0)))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_r_address0 = zext_ln339_fu_199_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buf_r_address0 = zext_ln338_fu_182_p1;
    end else begin
        buf_r_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        buf_r_ce0 = 1'b1;
    end else begin
        buf_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_r_ce1 = 1'b1;
    end else begin
        buf_r_ce1 = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & ((icmp_ln337_1_fu_177_p2 == 1'd1) | (icmp_ln337_fu_166_p2 == 1'd0)))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign a_address0 = zext_ln344_1_fu_251_p1;

assign a_d0 = tmp_s_fu_213_p4;

assign add_ln344_2_fu_246_p2 = (zext_ln344_1_cast_reg_278 + zext_ln344_fu_242_p1);

assign add_ln344_fu_237_p2 = (trunc_ln344_reg_283 + trunc_ln344_1_fu_234_p1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_return = ctr_1_fu_40;

assign buf_r_address1 = zext_ln340_fu_204_p1;

assign buflen_cast_fu_132_p1 = buflen;

assign ctr_fu_229_p2 = (32'd1 + ctr_1_load_reg_288);

assign icmp_ln337_1_fu_177_p2 = ((pos_2_fu_171_p2 > buflen_cast_reg_268) ? 1'b1 : 1'b0);

assign icmp_ln337_fu_166_p2 = ((ctr_1_fu_40 < len_cast_reg_273) ? 1'b1 : 1'b0);

assign icmp_ln343_fu_223_p2 = ((tmp_s_fu_213_p4 < 23'd8380417) ? 1'b1 : 1'b0);

assign len_cast_fu_136_p1 = len;

assign pos_1_fu_193_p2 = (32'd2 + pos_0_reg_120);

assign pos_2_fu_171_p2 = (pos_0_reg_120 + 32'd3);

assign pos_fu_187_p2 = (32'd1 + pos_0_reg_120);

assign tmp_7_fu_140_p4 = {{{a_offset}, {a_offset1}}, {8'd0}};

assign tmp_s_fu_213_p4 = {{{trunc_ln341_fu_209_p1}, {buf_r_q0}}, {buf_load_reg_310}};

assign trunc_ln341_fu_209_p1 = buf_r_q1[6:0];

assign trunc_ln344_1_fu_234_p1 = ctr_1_load_reg_288[8:0];

assign trunc_ln344_fu_154_p1 = a_offset2[8:0];

assign zext_ln338_fu_182_p1 = pos_0_reg_120;

assign zext_ln339_fu_199_p1 = pos_fu_187_p2;

assign zext_ln340_fu_204_p1 = pos_1_fu_193_p2;

assign zext_ln344_1_cast_fu_150_p1 = tmp_7_fu_140_p4;

assign zext_ln344_1_fu_251_p1 = add_ln344_2_fu_246_p2;

assign zext_ln344_fu_242_p1 = add_ln344_fu_237_p2;

always @ (posedge ap_clk) begin
    buflen_cast_reg_268[31:11] <= 21'b000000000000000000000;
    len_cast_reg_273[31:10] <= 22'b0000000000000000000000;
    zext_ln344_1_cast_reg_278[7:0] <= 8'b00000000;
    zext_ln344_1_cast_reg_278[12] <= 1'b0;
end

endmodule //rej_uniform
