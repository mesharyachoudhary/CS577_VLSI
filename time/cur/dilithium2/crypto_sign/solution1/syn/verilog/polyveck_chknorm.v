// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module polyveck_chknorm (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        v_vec_coeffs_address0,
        v_vec_coeffs_ce0,
        v_vec_coeffs_q0,
        bound,
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
output  [9:0] v_vec_coeffs_address0;
output   v_vec_coeffs_ce0;
input  [31:0] v_vec_coeffs_q0;
input  [17:0] bound;
output  [0:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg v_vec_coeffs_ce0;
reg[0:0] ap_return;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [31:0] bound_cast_fu_103_p1;
reg   [31:0] bound_cast_reg_196;
wire   [0:0] icmp_ln327_fu_107_p2;
reg   [0:0] icmp_ln327_reg_201;
wire    ap_CS_fsm_state2;
wire   [2:0] i_fu_113_p2;
reg   [2:0] i_reg_205;
wire   [11:0] zext_ln287_fu_127_p1;
reg   [11:0] zext_ln287_reg_210;
wire   [8:0] i_20_fu_137_p2;
reg   [8:0] i_20_reg_218;
wire    ap_CS_fsm_state3;
wire   [0:0] icmp_ln298_fu_131_p2;
reg   [2:0] i_0_reg_69;
reg   [8:0] i_0_i_reg_80;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln303_fu_191_p2;
reg   [0:0] ap_phi_mux_p_0_phi_fu_95_p4;
reg   [0:0] p_0_reg_91;
wire   [63:0] zext_ln300_1_fu_152_p1;
wire   [10:0] tmp_fu_119_p3;
wire   [11:0] zext_ln300_fu_143_p1;
wire   [11:0] add_ln300_fu_147_p2;
wire   [0:0] tmp_3_fu_157_p3;
wire   [31:0] shl_ln301_fu_173_p2;
wire   [31:0] t_fu_165_p3;
wire   [31:0] and_ln301_fu_179_p2;
wire   [31:0] t_6_fu_185_p2;
reg   [0:0] ap_return_preg;
reg   [3:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_return_preg = 1'd0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 1'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state4) & ((icmp_ln303_fu_191_p2 == 1'd0) | (icmp_ln327_reg_201 == 1'd1)))) begin
            ap_return_preg <= ap_phi_mux_p_0_phi_fu_95_p4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln303_fu_191_p2 == 1'd1) & (icmp_ln327_reg_201 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        i_0_i_reg_80 <= i_20_reg_218;
    end else if (((icmp_ln327_fu_107_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        i_0_i_reg_80 <= 9'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln298_fu_131_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        i_0_reg_69 <= i_reg_205;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_reg_69 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln327_fu_107_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        p_0_reg_91 <= 1'd0;
    end else if (((icmp_ln303_fu_191_p2 == 1'd0) & (icmp_ln327_reg_201 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        p_0_reg_91 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        bound_cast_reg_196[17 : 0] <= bound_cast_fu_103_p1[17 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        i_20_reg_218 <= i_20_fu_137_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_205 <= i_fu_113_p2;
        icmp_ln327_reg_201 <= icmp_ln327_fu_107_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln327_fu_107_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        zext_ln287_reg_210[10 : 8] <= zext_ln287_fu_127_p1[10 : 8];
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state4) & ((icmp_ln303_fu_191_p2 == 1'd0) | (icmp_ln327_reg_201 == 1'd1))) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((icmp_ln303_fu_191_p2 == 1'd0) & (icmp_ln327_reg_201 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_phi_mux_p_0_phi_fu_95_p4 = 1'd1;
    end else begin
        ap_phi_mux_p_0_phi_fu_95_p4 = p_0_reg_91;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & ((icmp_ln303_fu_191_p2 == 1'd0) | (icmp_ln327_reg_201 == 1'd1)))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & ((icmp_ln303_fu_191_p2 == 1'd0) | (icmp_ln327_reg_201 == 1'd1)))) begin
        ap_return = ap_phi_mux_p_0_phi_fu_95_p4;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        v_vec_coeffs_ce0 = 1'b1;
    end else begin
        v_vec_coeffs_ce0 = 1'b0;
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
            if (((icmp_ln327_fu_107_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln298_fu_131_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & ((icmp_ln303_fu_191_p2 == 1'd0) | (icmp_ln327_reg_201 == 1'd1)))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln300_fu_147_p2 = (zext_ln287_reg_210 + zext_ln300_fu_143_p1);

assign and_ln301_fu_179_p2 = (t_fu_165_p3 & shl_ln301_fu_173_p2);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign bound_cast_fu_103_p1 = bound;

assign i_20_fu_137_p2 = (i_0_i_reg_80 + 9'd1);

assign i_fu_113_p2 = (i_0_reg_69 + 3'd1);

assign icmp_ln298_fu_131_p2 = ((i_0_i_reg_80 == 9'd256) ? 1'b1 : 1'b0);

assign icmp_ln303_fu_191_p2 = (($signed(t_6_fu_185_p2) < $signed(bound_cast_reg_196)) ? 1'b1 : 1'b0);

assign icmp_ln327_fu_107_p2 = ((i_0_reg_69 == 3'd4) ? 1'b1 : 1'b0);

assign shl_ln301_fu_173_p2 = v_vec_coeffs_q0 << 32'd1;

assign t_6_fu_185_p2 = (v_vec_coeffs_q0 - and_ln301_fu_179_p2);

assign t_fu_165_p3 = ((tmp_3_fu_157_p3[0:0] === 1'b1) ? 32'd4294967295 : 32'd0);

assign tmp_3_fu_157_p3 = v_vec_coeffs_q0[32'd31];

assign tmp_fu_119_p3 = {{i_0_reg_69}, {8'd0}};

assign v_vec_coeffs_address0 = zext_ln300_1_fu_152_p1;

assign zext_ln287_fu_127_p1 = tmp_fu_119_p3;

assign zext_ln300_1_fu_152_p1 = add_ln300_fu_147_p2;

assign zext_ln300_fu_143_p1 = i_0_i_reg_80;

always @ (posedge ap_clk) begin
    bound_cast_reg_196[31:18] <= 14'b00000000000000;
    zext_ln287_reg_210[7:0] <= 8'b00000000;
    zext_ln287_reg_210[11] <= 1'b0;
end

endmodule //polyveck_chknorm
