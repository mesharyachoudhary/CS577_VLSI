// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module ntt_1 (
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
        a_q0,
        a_address1,
        a_ce1,
        a_q1,
        a_offset
);

parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_state3 = 8'd4;
parameter    ap_ST_fsm_state4 = 8'd8;
parameter    ap_ST_fsm_state5 = 8'd16;
parameter    ap_ST_fsm_state6 = 8'd32;
parameter    ap_ST_fsm_state7 = 8'd64;
parameter    ap_ST_fsm_state8 = 8'd128;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] a_address0;
output   a_ce0;
output   a_we0;
output  [31:0] a_d0;
input  [31:0] a_q0;
output  [9:0] a_address1;
output   a_ce1;
input  [31:0] a_q1;
input  [2:0] a_offset;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[9:0] a_address0;
reg a_ce0;
reg a_we0;
reg[31:0] a_d0;
reg[9:0] a_address1;
reg a_ce1;

(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [7:0] zetas_address0;
reg    zetas_ce0;
wire   [22:0] zetas_q0;
wire   [11:0] zext_ln49_fu_139_p1;
reg   [11:0] zext_ln49_reg_379;
wire   [30:0] zext_ln54_fu_148_p1;
reg   [30:0] zext_ln54_reg_385;
wire    ap_CS_fsm_state2;
wire   [31:0] zext_ln55_fu_158_p1;
reg   [31:0] zext_ln55_reg_394;
wire    ap_CS_fsm_state3;
wire   [31:0] k_fu_181_p2;
reg   [31:0] k_reg_402;
wire   [0:0] icmp_ln55_fu_172_p2;
wire   [28:0] zext_ln54_1_fu_202_p1;
wire   [31:0] zext_ln57_fu_211_p1;
reg   [31:0] zext_ln57_reg_417;
wire    ap_CS_fsm_state4;
wire   [30:0] zext_ln55_1_fu_237_p1;
reg   [30:0] zext_ln55_1_reg_422;
wire  signed [53:0] sext_ln57_fu_241_p1;
reg  signed [53:0] sext_ln57_reg_427;
reg   [9:0] a_addr_reg_435;
wire    ap_CS_fsm_state5;
wire   [0:0] icmp_ln57_fu_245_p2;
reg   [9:0] a_addr_14_reg_440;
wire   [31:0] j_1_fu_288_p2;
reg   [31:0] j_1_reg_446;
wire   [30:0] add_ln55_fu_294_p2;
wire  signed [31:0] t_7_fu_355_p1;
reg  signed [31:0] t_7_reg_456;
wire    ap_CS_fsm_state6;
reg   [28:0] len_0_reg_98;
reg   [30:0] j_reg_110;
wire   [0:0] icmp_ln54_fu_152_p2;
reg   [31:0] j_0_reg_122;
wire    ap_CS_fsm_state8;
wire   [63:0] zext_ln56_fu_187_p1;
wire   [63:0] zext_ln58_fu_269_p1;
wire   [63:0] zext_ln59_fu_283_p1;
reg   [31:0] k_2_fu_50;
wire   [31:0] sub_ln59_fu_359_p2;
wire    ap_CS_fsm_state7;
wire   [31:0] add_ln60_fu_366_p2;
wire   [10:0] tmp_fu_131_p3;
wire   [22:0] tmp_7_fu_162_p4;
wire   [27:0] tmp_8_fu_192_p4;
wire   [30:0] add_ln57_fu_206_p2;
wire   [0:0] empty_53_fu_215_p2;
wire   [29:0] trunc_ln55_fu_221_p1;
wire   [29:0] trunc_ln55_1_fu_225_p1;
wire   [29:0] start_fu_229_p3;
wire   [11:0] trunc_ln58_1_fu_254_p1;
wire   [11:0] trunc_ln58_fu_250_p1;
wire   [11:0] add_ln58_fu_258_p2;
wire   [11:0] add_ln58_1_fu_264_p2;
wire   [11:0] trunc_ln59_fu_274_p1;
wire   [11:0] add_ln59_fu_278_p2;
wire  signed [31:0] sext_ln58_fu_302_p0;
wire  signed [22:0] mul_ln58_fu_306_p0;
wire  signed [31:0] mul_ln58_fu_306_p1;
wire  signed [53:0] mul_ln58_fu_306_p2;
wire  signed [31:0] trunc_ln18_fu_315_p1;
wire   [31:0] t_fu_319_p2;
wire  signed [31:0] mul_ln19_fu_329_p1;
wire   [54:0] mul_ln19_fu_329_p2;
wire  signed [55:0] sext_ln58_1_fu_311_p1;
wire  signed [55:0] sext_ln19_5_fu_335_p1;
wire   [55:0] add_ln19_fu_339_p2;
wire   [23:0] trunc_ln_fu_345_p4;
reg   [7:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 8'd1;
end

ntt_1_zetas #(
    .DataWidth( 23 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
zetas_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(zetas_address0),
    .ce0(zetas_ce0),
    .q0(zetas_q0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        j_0_reg_122 <= j_1_reg_446;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        j_0_reg_122 <= zext_ln55_reg_394;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln54_fu_152_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        j_reg_110 <= 31'd0;
    end else if (((icmp_ln57_fu_245_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        j_reg_110 <= add_ln55_fu_294_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln57_fu_245_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        k_2_fu_50 <= k_reg_402;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        k_2_fu_50 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln55_fu_172_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                len_0_reg_98[7 : 0] <= zext_ln54_1_fu_202_p1[7 : 0];
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                len_0_reg_98[0] <= 1'b0;
        len_0_reg_98[1] <= 1'b0;
        len_0_reg_98[2] <= 1'b0;
        len_0_reg_98[3] <= 1'b0;
        len_0_reg_98[4] <= 1'b0;
        len_0_reg_98[5] <= 1'b0;
        len_0_reg_98[6] <= 1'b0;
        len_0_reg_98[7] <= 1'b1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln57_fu_245_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        a_addr_14_reg_440 <= zext_ln59_fu_283_p1;
        a_addr_reg_435 <= zext_ln58_fu_269_p1;
        j_1_reg_446 <= j_1_fu_288_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln55_fu_172_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        k_reg_402 <= k_fu_181_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sext_ln57_reg_427 <= sext_ln57_fu_241_p1;
        zext_ln55_1_reg_422[29 : 0] <= zext_ln55_1_fu_237_p1[29 : 0];
        zext_ln57_reg_417[30 : 0] <= zext_ln57_fu_211_p1[30 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        t_7_reg_456 <= t_7_fu_355_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        zext_ln49_reg_379[10 : 8] <= zext_ln49_fu_139_p1[10 : 8];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        zext_ln54_reg_385[7 : 0] <= zext_ln54_fu_148_p1[7 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        zext_ln55_reg_394[30 : 0] <= zext_ln55_fu_158_p1[30 : 0];
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        a_address0 = a_addr_14_reg_440;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        a_address0 = a_addr_reg_435;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        a_address0 = zext_ln58_fu_269_p1;
    end else begin
        a_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        a_address1 = a_addr_14_reg_440;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        a_address1 = zext_ln59_fu_283_p1;
    end else begin
        a_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6))) begin
        a_ce0 = 1'b1;
    end else begin
        a_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state7))) begin
        a_ce1 = 1'b1;
    end else begin
        a_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        a_d0 = add_ln60_fu_366_p2;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        a_d0 = sub_ln59_fu_359_p2;
    end else begin
        a_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6))) begin
        a_we0 = 1'b1;
    end else begin
        a_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln54_fu_152_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((icmp_ln54_fu_152_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        zetas_ce0 = 1'b1;
    end else begin
        zetas_ce0 = 1'b0;
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
            if (((icmp_ln54_fu_152_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln55_fu_172_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((icmp_ln57_fu_245_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln19_fu_339_p2 = ($signed(sext_ln58_1_fu_311_p1) + $signed(sext_ln19_5_fu_335_p1));

assign add_ln55_fu_294_p2 = (zext_ln54_reg_385 + zext_ln55_1_reg_422);

assign add_ln57_fu_206_p2 = (zext_ln54_reg_385 + j_reg_110);

assign add_ln58_1_fu_264_p2 = (zext_ln49_reg_379 + add_ln58_fu_258_p2);

assign add_ln58_fu_258_p2 = (trunc_ln58_1_fu_254_p1 + trunc_ln58_fu_250_p1);

assign add_ln59_fu_278_p2 = (zext_ln49_reg_379 + trunc_ln59_fu_274_p1);

assign add_ln60_fu_366_p2 = ($signed(t_7_reg_456) + $signed(a_q1));

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign empty_53_fu_215_p2 = ((j_reg_110 > add_ln57_fu_206_p2) ? 1'b1 : 1'b0);

assign icmp_ln54_fu_152_p2 = ((len_0_reg_98 == 29'd0) ? 1'b1 : 1'b0);

assign icmp_ln55_fu_172_p2 = ((tmp_7_fu_162_p4 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln57_fu_245_p2 = ((j_0_reg_122 < zext_ln57_reg_417) ? 1'b1 : 1'b0);

assign j_1_fu_288_p2 = (32'd1 + j_0_reg_122);

assign k_fu_181_p2 = (32'd1 + k_2_fu_50);

assign mul_ln19_fu_329_p1 = t_fu_319_p2;

assign mul_ln19_fu_329_p2 = ($signed(55'd36028797010583551) * $signed(mul_ln19_fu_329_p1));

assign mul_ln58_fu_306_p0 = sext_ln57_reg_427;

assign mul_ln58_fu_306_p1 = sext_ln58_fu_302_p0;

assign mul_ln58_fu_306_p2 = ($signed(mul_ln58_fu_306_p0) * $signed(mul_ln58_fu_306_p1));

assign sext_ln19_5_fu_335_p1 = $signed(mul_ln19_fu_329_p2);

assign sext_ln57_fu_241_p1 = $signed(zetas_q0);

assign sext_ln58_1_fu_311_p1 = mul_ln58_fu_306_p2;

assign sext_ln58_fu_302_p0 = a_q0;

assign start_fu_229_p3 = ((empty_53_fu_215_p2[0:0] === 1'b1) ? trunc_ln55_fu_221_p1 : trunc_ln55_1_fu_225_p1);

assign sub_ln59_fu_359_p2 = ($signed(a_q1) - $signed(t_7_fu_355_p1));

assign t_7_fu_355_p1 = $signed(trunc_ln_fu_345_p4);

assign t_fu_319_p2 = ($signed({{1'b0}, {32'd58728449}}) * $signed(trunc_ln18_fu_315_p1));

assign tmp_7_fu_162_p4 = {{j_reg_110[30:8]}};

assign tmp_8_fu_192_p4 = {{len_0_reg_98[28:1]}};

assign tmp_fu_131_p3 = {{a_offset}, {8'd0}};

assign trunc_ln18_fu_315_p1 = mul_ln58_fu_306_p2[31:0];

assign trunc_ln55_1_fu_225_p1 = add_ln57_fu_206_p2[29:0];

assign trunc_ln55_fu_221_p1 = j_reg_110[29:0];

assign trunc_ln58_1_fu_254_p1 = len_0_reg_98[11:0];

assign trunc_ln58_fu_250_p1 = j_0_reg_122[11:0];

assign trunc_ln59_fu_274_p1 = j_0_reg_122[11:0];

assign trunc_ln_fu_345_p4 = {{add_ln19_fu_339_p2[55:32]}};

assign zetas_address0 = zext_ln56_fu_187_p1;

assign zext_ln49_fu_139_p1 = tmp_fu_131_p3;

assign zext_ln54_1_fu_202_p1 = tmp_8_fu_192_p4;

assign zext_ln54_fu_148_p1 = len_0_reg_98;

assign zext_ln55_1_fu_237_p1 = start_fu_229_p3;

assign zext_ln55_fu_158_p1 = j_reg_110;

assign zext_ln56_fu_187_p1 = k_fu_181_p2;

assign zext_ln57_fu_211_p1 = add_ln57_fu_206_p2;

assign zext_ln58_fu_269_p1 = add_ln58_1_fu_264_p2;

assign zext_ln59_fu_283_p1 = add_ln59_fu_278_p2;

always @ (posedge ap_clk) begin
    zext_ln49_reg_379[7:0] <= 8'b00000000;
    zext_ln49_reg_379[11] <= 1'b0;
    zext_ln54_reg_385[30:8] <= 23'b00000000000000000000000;
    zext_ln55_reg_394[31] <= 1'b0;
    zext_ln57_reg_417[31] <= 1'b0;
    zext_ln55_1_reg_422[30] <= 1'b0;
    len_0_reg_98[28:8] <= 21'b000000000000000000000;
end

endmodule //ntt_1
