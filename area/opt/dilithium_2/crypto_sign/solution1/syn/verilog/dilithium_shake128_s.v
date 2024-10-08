// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dilithium_shake128_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        state_s_address0,
        state_s_ce0,
        state_s_we0,
        state_s_d0,
        state_s_q0,
        state_s_address1,
        state_s_ce1,
        state_s_we1,
        state_s_d1,
        state_s_q1,
        seed_address0,
        seed_ce0,
        seed_q0,
        nonce
);

parameter    ap_ST_fsm_state1 = 12'd1;
parameter    ap_ST_fsm_state2 = 12'd2;
parameter    ap_ST_fsm_state3 = 12'd4;
parameter    ap_ST_fsm_state4 = 12'd8;
parameter    ap_ST_fsm_state5 = 12'd16;
parameter    ap_ST_fsm_state6 = 12'd32;
parameter    ap_ST_fsm_state7 = 12'd64;
parameter    ap_ST_fsm_state8 = 12'd128;
parameter    ap_ST_fsm_state9 = 12'd256;
parameter    ap_ST_fsm_state10 = 12'd512;
parameter    ap_ST_fsm_state11 = 12'd1024;
parameter    ap_ST_fsm_state12 = 12'd2048;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] state_s_address0;
output   state_s_ce0;
output   state_s_we0;
output  [63:0] state_s_d0;
input  [63:0] state_s_q0;
output  [4:0] state_s_address1;
output   state_s_ce1;
output   state_s_we1;
output  [63:0] state_s_d1;
input  [63:0] state_s_q1;
output  [7:0] seed_address0;
output   seed_ce0;
input  [7:0] seed_q0;
input  [9:0] nonce;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[4:0] state_s_address0;
reg state_s_ce0;
reg state_s_we0;
reg[63:0] state_s_d0;
reg[4:0] state_s_address1;
reg state_s_ce1;
reg state_s_we1;
reg seed_ce0;

(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [4:0] i_fu_280_p2;
wire    ap_CS_fsm_state2;
wire   [63:0] zext_ln417_fu_291_p1;
reg   [63:0] zext_ln417_reg_547;
wire    ap_CS_fsm_state3;
wire   [2:0] add_ln417_fu_301_p2;
reg   [2:0] add_ln417_reg_555;
wire   [4:0] shl_ln_fu_311_p3;
reg   [4:0] shl_ln_reg_560;
wire   [0:0] icmp_ln417_fu_295_p2;
wire   [3:0] i_29_fu_325_p2;
reg   [3:0] i_29_reg_568;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln30_fu_319_p2;
reg   [4:0] state_s_addr_1_reg_578;
wire   [63:0] r_fu_371_p2;
wire    ap_CS_fsm_state5;
wire   [2:0] add_ln388_fu_384_p2;
wire    ap_CS_fsm_state7;
wire   [3:0] i_30_fu_407_p2;
wire    ap_CS_fsm_state8;
wire   [1:0] i_31_fu_429_p2;
wire    ap_CS_fsm_state9;
wire   [3:0] i_32_fu_470_p2;
reg   [3:0] i_32_reg_615;
wire    ap_CS_fsm_state10;
wire   [0:0] icmp_ln30_2_fu_464_p2;
wire   [63:0] r_2_fu_507_p2;
wire    ap_CS_fsm_state11;
reg   [2:0] t_address0;
reg    t_ce0;
reg    t_we0;
reg   [7:0] t_d0;
wire   [7:0] t_q0;
reg   [4:0] i_0_i_i1_reg_171;
wire   [0:0] icmp_ln362_fu_274_p2;
reg   [2:0] i_3_i_i31_reg_182;
wire    ap_CS_fsm_state6;
reg   [3:0] i_0_i_reg_193;
reg   [63:0] r_0_i_reg_205;
reg   [2:0] phi_ln388_reg_217;
wire   [0:0] icmp_ln388_fu_395_p2;
reg   [3:0] i_4_i_i_reg_228;
wire   [0:0] icmp_ln424_fu_401_p2;
reg   [1:0] i_5_i_i_reg_239;
wire   [0:0] icmp_ln426_fu_423_p2;
reg   [3:0] i_0_i29_reg_250;
reg   [63:0] r_0_i30_reg_262;
wire   [63:0] zext_ln363_fu_286_p1;
wire   [63:0] zext_ln31_8_fu_340_p1;
wire   [63:0] zext_ln388_fu_390_p1;
wire   [63:0] zext_ln425_fu_413_p1;
wire   [63:0] zext_ln426_fu_418_p1;
wire   [63:0] zext_ln31_11_fu_476_p1;
wire   [63:0] xor_ln418_fu_377_p2;
wire    ap_CS_fsm_state12;
wire   [63:0] xor_ln452_fu_526_p2;
wire   [7:0] select_ln427_fu_455_p3;
wire   [1:0] trunc_ln418_fu_307_p1;
wire   [4:0] zext_ln31_fu_331_p1;
wire   [4:0] add_ln31_fu_335_p2;
wire   [2:0] trunc_ln31_fu_349_p1;
wire   [5:0] shl_ln13_fu_353_p3;
wire   [63:0] zext_ln31_9_fu_345_p1;
wire   [63:0] zext_ln31_10_fu_361_p1;
wire   [63:0] shl_ln31_fu_365_p2;
wire   [1:0] tmp_s_fu_439_p4;
wire   [0:0] trunc_ln427_fu_435_p1;
wire   [7:0] zext_ln427_fu_448_p1;
wire   [7:0] trunc_ln427_2_fu_452_p1;
wire   [2:0] trunc_ln31_3_fu_485_p1;
wire   [5:0] shl_ln31_5_fu_489_p3;
wire   [63:0] zext_ln31_12_fu_481_p1;
wire   [63:0] zext_ln31_13_fu_497_p1;
wire   [63:0] shl_ln31_2_fu_501_p2;
wire   [63:0] xor_ln428_fu_513_p2;
reg   [11:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 12'd1;
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

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln426_fu_423_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state9))) begin
        i_0_i29_reg_250 <= 4'd0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        i_0_i29_reg_250 <= i_32_reg_615;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln362_fu_274_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        i_0_i_i1_reg_171 <= i_fu_280_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_0_i_i1_reg_171 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        i_0_i_reg_193 <= i_29_reg_568;
    end else if (((icmp_ln417_fu_295_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        i_0_i_reg_193 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln362_fu_274_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        i_3_i_i31_reg_182 <= 3'd0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        i_3_i_i31_reg_182 <= add_ln417_reg_555;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln388_fu_395_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        i_4_i_i_reg_228 <= 4'd0;
    end else if (((icmp_ln424_fu_401_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        i_4_i_i_reg_228 <= i_30_fu_407_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln424_fu_401_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
        i_5_i_i_reg_239 <= 2'd0;
    end else if (((icmp_ln426_fu_423_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
        i_5_i_i_reg_239 <= i_31_fu_429_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln417_fu_295_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        phi_ln388_reg_217 <= 3'd0;
    end else if (((icmp_ln388_fu_395_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        phi_ln388_reg_217 <= add_ln388_fu_384_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln426_fu_423_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state9))) begin
        r_0_i30_reg_262 <= 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        r_0_i30_reg_262 <= r_2_fu_507_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        r_0_i_reg_205 <= r_fu_371_p2;
    end else if (((icmp_ln417_fu_295_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        r_0_i_reg_205 <= 64'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln417_reg_555 <= add_ln417_fu_301_p2;
        zext_ln417_reg_547[2 : 0] <= zext_ln417_fu_291_p1[2 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        i_29_reg_568 <= i_29_fu_325_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        i_32_reg_615 <= i_32_fu_470_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln417_fu_295_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        shl_ln_reg_560[4 : 3] <= shl_ln_fu_311_p3[4 : 3];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln30_fu_319_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        state_s_addr_1_reg_578[2 : 0] <= zext_ln417_reg_547[2 : 0];
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if ((1'b1 == ap_CS_fsm_state12)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
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
        state_s_address0 = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        state_s_address0 = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        state_s_address0 = state_s_addr_1_reg_578;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        state_s_address0 = zext_ln417_reg_547;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        state_s_address0 = zext_ln363_fu_286_p1;
    end else begin
        state_s_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        state_s_address1 = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        state_s_address1 = 64'd20;
    end else begin
        state_s_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state10))) begin
        state_s_ce0 = 1'b1;
    end else begin
        state_s_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state10))) begin
        state_s_ce1 = 1'b1;
    end else begin
        state_s_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        state_s_d0 = xor_ln452_fu_526_p2;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        state_s_d0 = xor_ln418_fu_377_p2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        state_s_d0 = 64'd0;
    end else begin
        state_s_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state6) | ((icmp_ln362_fu_274_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        state_s_we0 = 1'b1;
    end else begin
        state_s_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        state_s_we1 = 1'b1;
    end else begin
        state_s_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        t_address0 = zext_ln31_11_fu_476_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        t_address0 = zext_ln426_fu_418_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        t_address0 = zext_ln425_fu_413_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        t_address0 = zext_ln388_fu_390_p1;
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
        t_d0 = select_ln427_fu_455_p3;
    end else if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        t_d0 = 8'd0;
    end else begin
        t_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | ((icmp_ln426_fu_423_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state9)) | ((icmp_ln424_fu_401_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8)))) begin
        t_we0 = 1'b1;
    end else begin
        t_we0 = 1'b0;
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
            if (((icmp_ln362_fu_274_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln417_fu_295_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln30_fu_319_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
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
            if (((icmp_ln388_fu_395_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state8 : begin
            if (((icmp_ln424_fu_401_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            if (((icmp_ln426_fu_423_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state10 : begin
            if (((icmp_ln30_2_fu_464_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln31_fu_335_p2 = (shl_ln_reg_560 + zext_ln31_fu_331_p1);

assign add_ln388_fu_384_p2 = (phi_ln388_reg_217 + 3'd1);

assign add_ln417_fu_301_p2 = (i_3_i_i31_reg_182 + 3'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign i_29_fu_325_p2 = (i_0_i_reg_193 + 4'd1);

assign i_30_fu_407_p2 = (i_4_i_i_reg_228 + 4'd1);

assign i_31_fu_429_p2 = (i_5_i_i_reg_239 + 2'd1);

assign i_32_fu_470_p2 = (i_0_i29_reg_250 + 4'd1);

assign i_fu_280_p2 = (i_0_i_i1_reg_171 + 5'd1);

assign icmp_ln30_2_fu_464_p2 = ((i_0_i29_reg_250 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln30_fu_319_p2 = ((i_0_i_reg_193 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln362_fu_274_p2 = ((i_0_i_i1_reg_171 == 5'd25) ? 1'b1 : 1'b0);

assign icmp_ln388_fu_395_p2 = ((phi_ln388_reg_217 == 3'd7) ? 1'b1 : 1'b0);

assign icmp_ln417_fu_295_p2 = ((i_3_i_i31_reg_182 == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln424_fu_401_p2 = ((i_4_i_i_reg_228 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln426_fu_423_p2 = ((i_5_i_i_reg_239 == 2'd2) ? 1'b1 : 1'b0);

assign r_2_fu_507_p2 = (shl_ln31_2_fu_501_p2 | r_0_i30_reg_262);

assign r_fu_371_p2 = (shl_ln31_fu_365_p2 | r_0_i_reg_205);

assign seed_address0 = zext_ln31_8_fu_340_p1;

assign select_ln427_fu_455_p3 = ((trunc_ln427_fu_435_p1[0:0] === 1'b1) ? zext_ln427_fu_448_p1 : trunc_ln427_2_fu_452_p1);

assign shl_ln13_fu_353_p3 = {{trunc_ln31_fu_349_p1}, {3'd0}};

assign shl_ln31_2_fu_501_p2 = zext_ln31_12_fu_481_p1 << zext_ln31_13_fu_497_p1;

assign shl_ln31_5_fu_489_p3 = {{trunc_ln31_3_fu_485_p1}, {3'd0}};

assign shl_ln31_fu_365_p2 = zext_ln31_9_fu_345_p1 << zext_ln31_10_fu_361_p1;

assign shl_ln_fu_311_p3 = {{trunc_ln418_fu_307_p1}, {3'd0}};

assign state_s_d1 = (xor_ln428_fu_513_p2 ^ 64'd2031616);

assign tmp_s_fu_439_p4 = {{nonce[9:8]}};

assign trunc_ln31_3_fu_485_p1 = i_0_i29_reg_250[2:0];

assign trunc_ln31_fu_349_p1 = i_0_i_reg_193[2:0];

assign trunc_ln418_fu_307_p1 = i_3_i_i31_reg_182[1:0];

assign trunc_ln427_2_fu_452_p1 = nonce[7:0];

assign trunc_ln427_fu_435_p1 = i_5_i_i_reg_239[0:0];

assign xor_ln418_fu_377_p2 = (state_s_q0 ^ r_0_i_reg_205);

assign xor_ln428_fu_513_p2 = (state_s_q0 ^ r_0_i30_reg_262);

assign xor_ln452_fu_526_p2 = (state_s_q1 ^ 64'd9223372036854775808);

assign zext_ln31_10_fu_361_p1 = shl_ln13_fu_353_p3;

assign zext_ln31_11_fu_476_p1 = i_0_i29_reg_250;

assign zext_ln31_12_fu_481_p1 = t_q0;

assign zext_ln31_13_fu_497_p1 = shl_ln31_5_fu_489_p3;

assign zext_ln31_8_fu_340_p1 = add_ln31_fu_335_p2;

assign zext_ln31_9_fu_345_p1 = seed_q0;

assign zext_ln31_fu_331_p1 = i_0_i_reg_193;

assign zext_ln363_fu_286_p1 = i_0_i_i1_reg_171;

assign zext_ln388_fu_390_p1 = phi_ln388_reg_217;

assign zext_ln417_fu_291_p1 = i_3_i_i31_reg_182;

assign zext_ln425_fu_413_p1 = i_4_i_i_reg_228;

assign zext_ln426_fu_418_p1 = i_5_i_i_reg_239;

assign zext_ln427_fu_448_p1 = tmp_s_fu_439_p4;

always @ (posedge ap_clk) begin
    zext_ln417_reg_547[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    shl_ln_reg_560[2:0] <= 3'b000;
    state_s_addr_1_reg_578[4:3] <= 2'b00;
end

endmodule //dilithium_shake128_s
