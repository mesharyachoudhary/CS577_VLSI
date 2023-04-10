// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module pqcrystals_dilithium_8 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        r_coeffs_address0,
        r_coeffs_ce0,
        r_coeffs_we0,
        r_coeffs_d0,
        r_coeffs_address1,
        r_coeffs_ce1,
        r_coeffs_we1,
        r_coeffs_d1,
        r_coeffs_offset,
        a_address0,
        a_ce0,
        a_q0,
        a_address1,
        a_ce1,
        a_q1,
        a_offset
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
output  [9:0] r_coeffs_address0;
output   r_coeffs_ce0;
output   r_coeffs_we0;
output  [31:0] r_coeffs_d0;
output  [9:0] r_coeffs_address1;
output   r_coeffs_ce1;
output   r_coeffs_we1;
output  [31:0] r_coeffs_d1;
input  [3:0] r_coeffs_offset;
output  [11:0] a_address0;
output   a_ce0;
input  [7:0] a_q0;
output  [11:0] a_address1;
output   a_ce1;
input  [7:0] a_q1;
input  [10:0] a_offset;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[9:0] r_coeffs_address0;
reg r_coeffs_ce0;
reg r_coeffs_we0;
reg[31:0] r_coeffs_d0;
reg[9:0] r_coeffs_address1;
reg r_coeffs_ce1;
reg r_coeffs_we1;
reg[31:0] r_coeffs_d1;
reg[11:0] a_address0;
reg a_ce0;
reg a_ce1;

(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [9:0] trunc_ln608_fu_205_p1;
reg   [9:0] trunc_ln608_reg_667;
wire   [5:0] i_fu_219_p2;
reg   [5:0] i_reg_675;
wire    ap_CS_fsm_state2;
wire   [4:0] trunc_ln609_fu_225_p1;
reg   [4:0] trunc_ln609_reg_680;
wire   [0:0] icmp_ln608_fu_213_p2;
wire  signed [7:0] sub_ln609_fu_241_p2;
reg  signed [7:0] sub_ln609_reg_686;
wire   [7:0] shl_ln_fu_269_p3;
reg   [7:0] shl_ln_reg_697;
wire    ap_CS_fsm_state3;
reg   [1:0] tmp_6_reg_707;
reg   [2:0] trunc_ln3_reg_722;
wire    ap_CS_fsm_state4;
reg   [0:0] tmp_reg_727;
wire   [1:0] trunc_ln614_fu_472_p1;
reg   [1:0] trunc_ln614_reg_732;
reg   [2:0] trunc_ln4_reg_737;
reg   [2:0] tmp_3_reg_742;
reg   [5:0] i_0_reg_194;
wire    ap_CS_fsm_state6;
wire   [63:0] zext_ln609_1_fu_256_p1;
wire   [63:0] zext_ln609_3_fu_284_p1;
wire   [63:0] zext_ln610_1_fu_316_p1;
wire  signed [63:0] sext_ln611_1_fu_345_p1;
wire  signed [63:0] sext_ln614_1_fu_364_p1;
wire   [63:0] zext_ln611_1_fu_418_p1;
wire   [63:0] zext_ln612_1_fu_449_p1;
wire   [63:0] zext_ln613_1_fu_533_p1;
wire    ap_CS_fsm_state5;
wire   [63:0] zext_ln614_1_fu_560_p1;
wire   [63:0] zext_ln615_1_fu_602_p1;
wire   [63:0] zext_ln616_1_fu_622_p1;
wire  signed [31:0] sext_ln618_fu_375_p1;
wire  signed [31:0] sext_ln619_fu_386_p1;
wire  signed [31:0] sext_ln620_fu_502_p1;
wire  signed [31:0] sext_ln621_fu_513_p1;
wire  signed [31:0] sext_ln622_fu_571_p1;
wire  signed [31:0] sext_ln623_fu_582_p1;
wire  signed [31:0] sext_ln624_fu_633_p1;
wire  signed [31:0] sext_ln625_fu_644_p1;
wire   [6:0] shl_ln609_1_fu_229_p3;
wire   [7:0] zext_ln609_fu_237_p1;
wire   [7:0] zext_ln608_fu_209_p1;
wire  signed [9:0] sext_ln609_fu_247_p1;
wire   [9:0] add_ln609_fu_251_p2;
wire   [2:0] trunc_ln609_1_fu_261_p1;
wire   [11:0] tmp_4_fu_276_p4;
wire   [2:0] trunc_ln1_fu_289_p4;
wire   [7:0] or_ln610_fu_303_p2;
wire   [11:0] tmp_5_fu_309_p3;
wire   [7:0] add_ln611_fu_331_p2;
wire  signed [10:0] sext_ln611_fu_336_p1;
wire   [10:0] add_ln611_1_fu_340_p2;
wire   [7:0] add_ln614_fu_350_p2;
wire  signed [10:0] sext_ln614_fu_355_p1;
wire   [10:0] add_ln614_1_fu_359_p2;
wire   [3:0] zext_ln609_2_fu_265_p1;
wire   [3:0] sub_ln618_fu_369_p2;
wire   [3:0] zext_ln610_fu_299_p1;
wire   [3:0] sub_ln619_fu_380_p2;
wire   [0:0] trunc_ln611_fu_391_p1;
wire   [2:0] or_ln_fu_395_p3;
wire   [7:0] or_ln611_fu_406_p2;
wire   [11:0] tmp_8_fu_411_p3;
wire   [2:0] trunc_ln2_fu_423_p4;
wire   [7:0] or_ln612_fu_437_p2;
wire   [11:0] tmp_9_fu_442_p3;
wire   [3:0] zext_ln611_fu_402_p1;
wire   [3:0] sub_ln620_fu_496_p2;
wire   [3:0] zext_ln612_fu_433_p1;
wire   [3:0] sub_ln621_fu_507_p2;
wire   [7:0] or_ln613_fu_521_p2;
wire   [11:0] tmp_s_fu_526_p3;
wire   [2:0] or_ln1_fu_538_p3;
wire   [7:0] or_ln614_fu_548_p2;
wire   [11:0] tmp_1_fu_553_p3;
wire   [3:0] zext_ln613_fu_518_p1;
wire   [3:0] sub_ln622_fu_565_p2;
wire   [3:0] zext_ln614_fu_544_p1;
wire   [3:0] sub_ln623_fu_576_p2;
wire   [7:0] or_ln615_fu_590_p2;
wire   [11:0] tmp_2_fu_595_p3;
wire   [7:0] or_ln616_fu_610_p2;
wire   [11:0] tmp_7_fu_615_p3;
wire   [3:0] zext_ln615_fu_587_p1;
wire   [3:0] sub_ln624_fu_627_p2;
wire   [3:0] zext_ln616_fu_607_p1;
wire   [3:0] sub_ln625_fu_638_p2;
reg   [5:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        i_0_reg_194 <= i_reg_675;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_0_reg_194 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_675 <= i_fu_219_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        shl_ln_reg_697[7 : 3] <= shl_ln_fu_269_p3[7 : 3];
        tmp_6_reg_707 <= {{a_q0[7:6]}};
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln608_fu_213_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        sub_ln609_reg_686 <= sub_ln609_fu_241_p2;
        trunc_ln609_reg_680 <= trunc_ln609_fu_225_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_3_reg_742 <= {{a_q1[7:5]}};
        tmp_reg_727 <= a_q0[32'd7];
        trunc_ln3_reg_722 <= {{a_q0[6:4]}};
        trunc_ln4_reg_737 <= {{a_q1[4:2]}};
        trunc_ln614_reg_732 <= trunc_ln614_fu_472_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        trunc_ln608_reg_667 <= trunc_ln608_fu_205_p1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        a_address0 = sext_ln611_1_fu_345_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        a_address0 = zext_ln609_1_fu_256_p1;
    end else begin
        a_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        a_ce0 = 1'b1;
    end else begin
        a_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        a_ce1 = 1'b1;
    end else begin
        a_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln608_fu_213_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((icmp_ln608_fu_213_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        r_coeffs_address0 = zext_ln615_1_fu_602_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        r_coeffs_address0 = zext_ln613_1_fu_533_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        r_coeffs_address0 = zext_ln611_1_fu_418_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        r_coeffs_address0 = zext_ln609_3_fu_284_p1;
    end else begin
        r_coeffs_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        r_coeffs_address1 = zext_ln616_1_fu_622_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        r_coeffs_address1 = zext_ln614_1_fu_560_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        r_coeffs_address1 = zext_ln612_1_fu_449_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        r_coeffs_address1 = zext_ln610_1_fu_316_p1;
    end else begin
        r_coeffs_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state6))) begin
        r_coeffs_ce0 = 1'b1;
    end else begin
        r_coeffs_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state6))) begin
        r_coeffs_ce1 = 1'b1;
    end else begin
        r_coeffs_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        r_coeffs_d0 = sext_ln624_fu_633_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        r_coeffs_d0 = sext_ln622_fu_571_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        r_coeffs_d0 = sext_ln620_fu_502_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        r_coeffs_d0 = sext_ln618_fu_375_p1;
    end else begin
        r_coeffs_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        r_coeffs_d1 = sext_ln625_fu_644_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        r_coeffs_d1 = sext_ln623_fu_582_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        r_coeffs_d1 = sext_ln621_fu_513_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        r_coeffs_d1 = sext_ln619_fu_386_p1;
    end else begin
        r_coeffs_d1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state6))) begin
        r_coeffs_we0 = 1'b1;
    end else begin
        r_coeffs_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state6))) begin
        r_coeffs_we1 = 1'b1;
    end else begin
        r_coeffs_we1 = 1'b0;
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
            if (((icmp_ln608_fu_213_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign a_address1 = sext_ln614_1_fu_364_p1;

assign add_ln609_fu_251_p2 = ($signed(trunc_ln608_reg_667) + $signed(sext_ln609_fu_247_p1));

assign add_ln611_1_fu_340_p2 = ($signed(a_offset) + $signed(sext_ln611_fu_336_p1));

assign add_ln611_fu_331_p2 = ($signed(8'd1) + $signed(sub_ln609_reg_686));

assign add_ln614_1_fu_359_p2 = ($signed(a_offset) + $signed(sext_ln614_fu_355_p1));

assign add_ln614_fu_350_p2 = ($signed(8'd2) + $signed(sub_ln609_reg_686));

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign i_fu_219_p2 = (i_0_reg_194 + 6'd1);

assign icmp_ln608_fu_213_p2 = ((i_0_reg_194 == 6'd32) ? 1'b1 : 1'b0);

assign or_ln1_fu_538_p3 = {{trunc_ln614_reg_732}, {tmp_reg_727}};

assign or_ln610_fu_303_p2 = (shl_ln_fu_269_p3 | 8'd1);

assign or_ln611_fu_406_p2 = (shl_ln_reg_697 | 8'd2);

assign or_ln612_fu_437_p2 = (shl_ln_reg_697 | 8'd3);

assign or_ln613_fu_521_p2 = (shl_ln_reg_697 | 8'd4);

assign or_ln614_fu_548_p2 = (shl_ln_reg_697 | 8'd5);

assign or_ln615_fu_590_p2 = (shl_ln_reg_697 | 8'd6);

assign or_ln616_fu_610_p2 = (shl_ln_reg_697 | 8'd7);

assign or_ln_fu_395_p3 = {{trunc_ln611_fu_391_p1}, {tmp_6_reg_707}};

assign sext_ln609_fu_247_p1 = sub_ln609_fu_241_p2;

assign sext_ln611_1_fu_345_p1 = $signed(add_ln611_1_fu_340_p2);

assign sext_ln611_fu_336_p1 = $signed(add_ln611_fu_331_p2);

assign sext_ln614_1_fu_364_p1 = $signed(add_ln614_1_fu_359_p2);

assign sext_ln614_fu_355_p1 = $signed(add_ln614_fu_350_p2);

assign sext_ln618_fu_375_p1 = $signed(sub_ln618_fu_369_p2);

assign sext_ln619_fu_386_p1 = $signed(sub_ln619_fu_380_p2);

assign sext_ln620_fu_502_p1 = $signed(sub_ln620_fu_496_p2);

assign sext_ln621_fu_513_p1 = $signed(sub_ln621_fu_507_p2);

assign sext_ln622_fu_571_p1 = $signed(sub_ln622_fu_565_p2);

assign sext_ln623_fu_582_p1 = $signed(sub_ln623_fu_576_p2);

assign sext_ln624_fu_633_p1 = $signed(sub_ln624_fu_627_p2);

assign sext_ln625_fu_644_p1 = $signed(sub_ln625_fu_638_p2);

assign shl_ln609_1_fu_229_p3 = {{trunc_ln609_fu_225_p1}, {2'd0}};

assign shl_ln_fu_269_p3 = {{trunc_ln609_reg_680}, {3'd0}};

assign sub_ln609_fu_241_p2 = (zext_ln609_fu_237_p1 - zext_ln608_fu_209_p1);

assign sub_ln618_fu_369_p2 = (4'd2 - zext_ln609_2_fu_265_p1);

assign sub_ln619_fu_380_p2 = (4'd2 - zext_ln610_fu_299_p1);

assign sub_ln620_fu_496_p2 = (4'd2 - zext_ln611_fu_402_p1);

assign sub_ln621_fu_507_p2 = (4'd2 - zext_ln612_fu_433_p1);

assign sub_ln622_fu_565_p2 = (4'd2 - zext_ln613_fu_518_p1);

assign sub_ln623_fu_576_p2 = (4'd2 - zext_ln614_fu_544_p1);

assign sub_ln624_fu_627_p2 = (4'd2 - zext_ln615_fu_587_p1);

assign sub_ln625_fu_638_p2 = (4'd2 - zext_ln616_fu_607_p1);

assign tmp_1_fu_553_p3 = {{r_coeffs_offset}, {or_ln614_fu_548_p2}};

assign tmp_2_fu_595_p3 = {{r_coeffs_offset}, {or_ln615_fu_590_p2}};

assign tmp_4_fu_276_p4 = {{{r_coeffs_offset}, {trunc_ln609_reg_680}}, {3'd0}};

assign tmp_5_fu_309_p3 = {{r_coeffs_offset}, {or_ln610_fu_303_p2}};

assign tmp_7_fu_615_p3 = {{r_coeffs_offset}, {or_ln616_fu_610_p2}};

assign tmp_8_fu_411_p3 = {{r_coeffs_offset}, {or_ln611_fu_406_p2}};

assign tmp_9_fu_442_p3 = {{r_coeffs_offset}, {or_ln612_fu_437_p2}};

assign tmp_s_fu_526_p3 = {{r_coeffs_offset}, {or_ln613_fu_521_p2}};

assign trunc_ln1_fu_289_p4 = {{a_q0[5:3]}};

assign trunc_ln2_fu_423_p4 = {{a_q0[3:1]}};

assign trunc_ln608_fu_205_p1 = a_offset[9:0];

assign trunc_ln609_1_fu_261_p1 = a_q0[2:0];

assign trunc_ln609_fu_225_p1 = i_0_reg_194[4:0];

assign trunc_ln611_fu_391_p1 = a_q0[0:0];

assign trunc_ln614_fu_472_p1 = a_q1[1:0];

assign zext_ln608_fu_209_p1 = i_0_reg_194;

assign zext_ln609_1_fu_256_p1 = add_ln609_fu_251_p2;

assign zext_ln609_2_fu_265_p1 = trunc_ln609_1_fu_261_p1;

assign zext_ln609_3_fu_284_p1 = tmp_4_fu_276_p4;

assign zext_ln609_fu_237_p1 = shl_ln609_1_fu_229_p3;

assign zext_ln610_1_fu_316_p1 = tmp_5_fu_309_p3;

assign zext_ln610_fu_299_p1 = trunc_ln1_fu_289_p4;

assign zext_ln611_1_fu_418_p1 = tmp_8_fu_411_p3;

assign zext_ln611_fu_402_p1 = or_ln_fu_395_p3;

assign zext_ln612_1_fu_449_p1 = tmp_9_fu_442_p3;

assign zext_ln612_fu_433_p1 = trunc_ln2_fu_423_p4;

assign zext_ln613_1_fu_533_p1 = tmp_s_fu_526_p3;

assign zext_ln613_fu_518_p1 = trunc_ln3_reg_722;

assign zext_ln614_1_fu_560_p1 = tmp_1_fu_553_p3;

assign zext_ln614_fu_544_p1 = or_ln1_fu_538_p3;

assign zext_ln615_1_fu_602_p1 = tmp_2_fu_595_p3;

assign zext_ln615_fu_587_p1 = trunc_ln4_reg_737;

assign zext_ln616_1_fu_622_p1 = tmp_7_fu_615_p3;

assign zext_ln616_fu_607_p1 = tmp_3_reg_742;

always @ (posedge ap_clk) begin
    shl_ln_reg_697[2:0] <= 3'b000;
end

endmodule //pqcrystals_dilithium_8
