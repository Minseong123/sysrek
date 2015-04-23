////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: hdmi_main_synthesis.v
// /___/   /\     Timestamp: Thu Apr 23 19:20:44 2015
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim hdmi_main.ngc hdmi_main_synthesis.v 
// Device	: xc6slx45-2-csg324
// Input file	: hdmi_main.ngc
// Output file	: /home/lsriw/SR/Wojciech Gumula/repo/skin_color_segm/netgen/synthesis/hdmi_main_synthesis.v
// # of Modules	: 1
// Design Name	: hdmi_main
// Xilinx        : /opt/Xilinx/14.7/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module hdmi_main (
  rstbtn_n, clk100, RX1_TMDS, RX1_TMDSB, SW, TX0_TMDS, TX0_TMDSB, LED
)/* synthesis syn_black_box syn_noprune=1 */;
  input rstbtn_n;
  input clk100;
  input [3 : 0] RX1_TMDS;
  input [3 : 0] RX1_TMDSB;
  input [2 : 0] SW;
  output [3 : 0] TX0_TMDS;
  output [3 : 0] TX0_TMDSB;
  output [7 : 0] LED;
  
  // synthesis translate_off
  
  wire rstbtn_n_IBUF_8;
  wire clk100_IBUF_9;
  wire rstbtn_n_INV_31_o;
  wire clk25m;
  wire rx_reset;
  wire rx_pllclk1;
  wire \dvi_rx1/dec_b/de_38 ;
  wire \dvi_rx1/dec_b/cbnd/iamrdy_39 ;
  wire \dvi_rx1/dec_g/cbnd/iamrdy_40 ;
  wire \dvi_rx1/dec_r/cbnd/iamrdy_41 ;
  wire tx_clkfbout;
  wire tx_pllclk0;
  wire tx_pllclk2;
  wire tx_plllckd;
  wire tx_pclk;
  wire tx_clkfbin;
  wire tx_pclkx10;
  wire tx_serdesstrobe;
  wire tx_pclkx2;
  wire clk;
  wire \dvi_rx1/clkfbout ;
  wire \dvi_rx1/pclkx2 ;
  wire \dvi_rx1/pclk ;
  wire \dvi_rx1/serdesstrobe ;
  wire \dvi_rx1/bufpll_lock ;
  wire \dvi_rx1/pclkx10 ;
  wire \dvi_rx1/rxclk ;
  wire \dvi_rx1/pll_lckd ;
  wire \dvi_rx1/pllclk2 ;
  wire \dvi_rx1/pllclk0 ;
  wire \dvi_rx1/dec_r/phsalgn_0/psaligned_70 ;
  wire \dvi_rx1/dec_g/phsalgn_0/psaligned_71 ;
  wire \dvi_rx1/dec_b/phsalgn_0/psaligned_72 ;
  wire \dvi_rx1/rxclkint ;
  wire \dvi_rx1/dec_r/n0050_inv ;
  wire \dvi_rx1/dec_r/data[7]_data[7]_MUX_117_o ;
  wire \dvi_rx1/dec_r/data[6]_data[6]_MUX_116_o ;
  wire \dvi_rx1/dec_r/data[5]_data[5]_MUX_115_o ;
  wire \dvi_rx1/dec_r/data[4]_data[4]_MUX_114_o ;
  wire \dvi_rx1/dec_r/data[3]_data[3]_MUX_113_o ;
  wire \dvi_rx1/dec_r/data[2]_data[2]_MUX_112_o ;
  wire \dvi_rx1/dec_r/data[1]_data[1]_MUX_111_o ;
  wire \dvi_rx1/dec_r/rx_toggle ;
  wire \dvi_rx1/dec_r/toggle_INV_3_o ;
  wire \dvi_rx1/dec_r/bitslip_bitslip_q_AND_1_o ;
  wire \dvi_rx1/dec_r/flipgearx2_96 ;
  wire \dvi_rx1/dec_r/bitslipx2_97 ;
  wire \dvi_rx1/dec_r/bitslip_q_98 ;
  wire \dvi_rx1/dec_r/phsalgn_0/bitslip_114 ;
  wire \dvi_rx1/dec_r/phsalgn_0/flipgear_115 ;
  wire \dvi_rx1/dec_g/n0050_inv ;
  wire \dvi_rx1/dec_g/data[7]_data[7]_MUX_117_o ;
  wire \dvi_rx1/dec_g/data[6]_data[6]_MUX_116_o ;
  wire \dvi_rx1/dec_g/data[5]_data[5]_MUX_115_o ;
  wire \dvi_rx1/dec_g/data[4]_data[4]_MUX_114_o ;
  wire \dvi_rx1/dec_g/data[3]_data[3]_MUX_113_o ;
  wire \dvi_rx1/dec_g/data[2]_data[2]_MUX_112_o ;
  wire \dvi_rx1/dec_g/data[1]_data[1]_MUX_111_o ;
  wire \dvi_rx1/dec_g/rx_toggle ;
  wire \dvi_rx1/dec_g/bitslip_bitslip_q_AND_1_o ;
  wire \dvi_rx1/dec_g/flipgearx2_142 ;
  wire \dvi_rx1/dec_g/bitslipx2_143 ;
  wire \dvi_rx1/dec_g/bitslip_q_144 ;
  wire \dvi_rx1/dec_g/phsalgn_0/bitslip_160 ;
  wire \dvi_rx1/dec_g/phsalgn_0/flipgear_161 ;
  wire \dvi_rx1/dec_b/n0050_inv ;
  wire \dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ;
  wire \dvi_rx1/dec_b/data[7]_data[7]_MUX_117_o ;
  wire \dvi_rx1/dec_b/data[6]_data[6]_MUX_116_o ;
  wire \dvi_rx1/dec_b/data[5]_data[5]_MUX_115_o ;
  wire \dvi_rx1/dec_b/data[4]_data[4]_MUX_114_o ;
  wire \dvi_rx1/dec_b/data[3]_data[3]_MUX_113_o ;
  wire \dvi_rx1/dec_b/data[2]_data[2]_MUX_112_o ;
  wire \dvi_rx1/dec_b/data[1]_data[1]_MUX_111_o ;
  wire \dvi_rx1/dec_b/rx_toggle ;
  wire \dvi_rx1/dec_b/bitslip_bitslip_q_AND_1_o ;
  wire \dvi_rx1/dec_b/flipgearx2_189 ;
  wire \dvi_rx1/dec_b/bitslipx2_190 ;
  wire \dvi_rx1/dec_b/bitslip_q_191 ;
  wire \dvi_rx1/dec_r/toggle_207 ;
  wire \dvi_rx1/dec_b/phsalgn_0/bitslip_208 ;
  wire \dvi_rx1/dec_b/phsalgn_0/flipgear_209 ;
  wire \dvi_rx1/dec_b/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_cy<2> ;
  wire \dvi_rx1/dec_b/des_0/state_FSM_FFd2-In ;
  wire \dvi_rx1/dec_b/des_0/state_FSM_FFd3-In ;
  wire \dvi_rx1/dec_b/des_0/state_FSM_FFd4-In ;
  wire \dvi_rx1/dec_b/des_0/Mcount_counter8 ;
  wire \dvi_rx1/dec_b/des_0/Mcount_counter7 ;
  wire \dvi_rx1/dec_b/des_0/Mcount_counter6 ;
  wire \dvi_rx1/dec_b/des_0/Mcount_counter5 ;
  wire \dvi_rx1/dec_b/des_0/Mcount_counter4 ;
  wire \dvi_rx1/dec_b/des_0/Mcount_counter3 ;
  wire \dvi_rx1/dec_b/des_0/Mcount_counter2 ;
  wire \dvi_rx1/dec_b/des_0/Mcount_counter1 ;
  wire \dvi_rx1/dec_b/des_0/Mcount_counter ;
  wire \dvi_rx1/dec_b/des_0/counter<8>_inv ;
  wire \dvi_rx1/dec_b/des_0/GND_10_o_GND_10_o_equal_45_o_inv ;
  wire \dvi_rx1/dec_b/des_0/reset_inv ;
  wire \dvi_rx1/dec_b/des_0/pdcounter[4]_GND_10_o_equal_50_o ;
  wire \dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<1> ;
  wire \dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<2> ;
  wire \dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<3> ;
  wire \dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<4> ;
  wire \dvi_rx1/dec_b/des_0/pdcounter[4]_flag_AND_4_o ;
  wire \dvi_rx1/dec_b/des_0/pdcounter[4]_flag_AND_3_o ;
  wire \dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_equal_48_o ;
  wire \dvi_rx1/dec_b/des_0/incdec_data_d_pdcounter[4]_AND_5_o ;
  wire \dvi_rx1/dec_b/des_0/GND_10_o_busy_data_d_OR_63_o ;
  wire \dvi_rx1/dec_b/des_0/inc_data_int_266 ;
  wire \dvi_rx1/dec_b/des_0/rst_data_267 ;
  wire \dvi_rx1/dec_b/des_0/ce_data_268 ;
  wire \dvi_rx1/dec_b/des_0/valid_data_d_269 ;
  wire \dvi_rx1/dec_b/des_0/incdec_data_d_270 ;
  wire \dvi_rx1/dec_b/des_0/busy_data_d_271 ;
  wire \dvi_rx1/dec_b/des_0/flag_272 ;
  wire \dvi_rx1/dec_b/des_0/ce_data_inta_273 ;
  wire \dvi_rx1/dec_b/des_0/enable_274 ;
  wire \dvi_rx1/dec_b/des_0/cal_data_sint_275 ;
  wire \dvi_rx1/dec_b/des_0/cal_data_master_276 ;
  wire \dvi_rx1/dec_b/des_0/state_FSM_FFd4_281 ;
  wire \dvi_rx1/dec_b/des_0/state_FSM_FFd3_282 ;
  wire \dvi_rx1/dec_b/des_0/state_FSM_FFd2_283 ;
  wire \dvi_rx1/dec_b/des_0/pd_edge ;
  wire \dvi_rx1/dec_b/des_0/valid_data_im ;
  wire \dvi_rx1/dec_b/des_0/cascade ;
  wire \dvi_rx1/dec_b/des_0/incdec_data_im ;
  wire \dvi_rx1/dec_b/des_0/ddly_s ;
  wire \dvi_rx1/dec_b/des_0/ddly_m ;
  wire \dvi_rx1/dec_b/des_0/rx_data_in ;
  wire \dvi_rx1/dec_g/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_cy<2> ;
  wire \dvi_rx1/dec_g/des_0/state_FSM_FFd2-In ;
  wire \dvi_rx1/dec_g/des_0/state_FSM_FFd3-In ;
  wire \dvi_rx1/dec_g/des_0/state_FSM_FFd4-In ;
  wire \dvi_rx1/dec_g/des_0/GND_10_o_GND_10_o_equal_45_o_inv ;
  wire \dvi_rx1/dec_g/des_0/pdcounter[4]_GND_10_o_equal_50_o ;
  wire \dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<1> ;
  wire \dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<2> ;
  wire \dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<3> ;
  wire \dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<4> ;
  wire \dvi_rx1/dec_g/des_0/pdcounter[4]_flag_AND_4_o ;
  wire \dvi_rx1/dec_g/des_0/pdcounter[4]_flag_AND_3_o ;
  wire \dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_equal_48_o ;
  wire \dvi_rx1/dec_g/des_0/incdec_data_d_pdcounter[4]_AND_5_o ;
  wire \dvi_rx1/dec_g/des_0/GND_10_o_busy_data_d_OR_63_o ;
  wire \dvi_rx1/dec_g/des_0/inc_data_int_310 ;
  wire \dvi_rx1/dec_g/des_0/rst_data_311 ;
  wire \dvi_rx1/dec_g/des_0/ce_data_312 ;
  wire \dvi_rx1/dec_g/des_0/valid_data_d_313 ;
  wire \dvi_rx1/dec_g/des_0/incdec_data_d_314 ;
  wire \dvi_rx1/dec_g/des_0/busy_data_d_315 ;
  wire \dvi_rx1/dec_g/des_0/flag_316 ;
  wire \dvi_rx1/dec_g/des_0/ce_data_inta_317 ;
  wire \dvi_rx1/dec_g/des_0/cal_data_sint_318 ;
  wire \dvi_rx1/dec_g/des_0/cal_data_master_319 ;
  wire \dvi_rx1/dec_g/des_0/state_FSM_FFd4_324 ;
  wire \dvi_rx1/dec_g/des_0/state_FSM_FFd3_325 ;
  wire \dvi_rx1/dec_g/des_0/state_FSM_FFd2_326 ;
  wire \dvi_rx1/dec_g/des_0/pd_edge ;
  wire \dvi_rx1/dec_g/des_0/valid_data_im ;
  wire \dvi_rx1/dec_g/des_0/cascade ;
  wire \dvi_rx1/dec_g/des_0/incdec_data_im ;
  wire \dvi_rx1/dec_g/des_0/ddly_s ;
  wire \dvi_rx1/dec_g/des_0/ddly_m ;
  wire \dvi_rx1/dec_g/des_0/rx_data_in ;
  wire \dvi_rx1/dec_r/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_cy<2> ;
  wire \dvi_rx1/dec_r/des_0/state_FSM_FFd2-In ;
  wire \dvi_rx1/dec_r/des_0/state_FSM_FFd3-In ;
  wire \dvi_rx1/dec_r/des_0/state_FSM_FFd4-In ;
  wire \dvi_rx1/dec_r/des_0/GND_10_o_GND_10_o_equal_45_o_inv ;
  wire \dvi_rx1/dec_r/des_0/pdcounter[4]_GND_10_o_equal_50_o ;
  wire \dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<1> ;
  wire \dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<2> ;
  wire \dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<3> ;
  wire \dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<4> ;
  wire \dvi_rx1/dec_r/des_0/pdcounter[4]_flag_AND_4_o ;
  wire \dvi_rx1/dec_r/des_0/pdcounter[4]_flag_AND_3_o ;
  wire \dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_equal_48_o ;
  wire \dvi_rx1/dec_r/des_0/incdec_data_d_pdcounter[4]_AND_5_o ;
  wire \dvi_rx1/dec_r/des_0/GND_10_o_busy_data_d_OR_63_o ;
  wire \dvi_rx1/dec_r/des_0/inc_data_int_351 ;
  wire \dvi_rx1/dec_r/des_0/rst_data_352 ;
  wire \dvi_rx1/dec_r/des_0/ce_data_353 ;
  wire \dvi_rx1/dec_r/des_0/valid_data_d_354 ;
  wire \dvi_rx1/dec_r/des_0/incdec_data_d_355 ;
  wire \dvi_rx1/dec_r/des_0/busy_data_d_356 ;
  wire \dvi_rx1/dec_r/des_0/flag_357 ;
  wire \dvi_rx1/dec_r/des_0/ce_data_inta_358 ;
  wire \dvi_rx1/dec_r/des_0/cal_data_sint_359 ;
  wire \dvi_rx1/dec_r/des_0/cal_data_master_360 ;
  wire \dvi_rx1/dec_r/des_0/state_FSM_FFd4_365 ;
  wire \dvi_rx1/dec_r/des_0/state_FSM_FFd3_366 ;
  wire \dvi_rx1/dec_r/des_0/state_FSM_FFd2_367 ;
  wire \dvi_rx1/dec_r/des_0/pd_edge ;
  wire \dvi_rx1/dec_r/des_0/valid_data_im ;
  wire \dvi_rx1/dec_r/des_0/cascade ;
  wire \dvi_rx1/dec_r/des_0/incdec_data_im ;
  wire \dvi_rx1/dec_r/des_0/ddly_s ;
  wire \dvi_rx1/dec_r/des_0/ddly_m ;
  wire \dvi_rx1/dec_r/des_0/rx_data_in ;
  wire \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_counter_xor<4>11 ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1_376 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Result<6>1 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Result<5>1 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Result<4>1 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Result<3>1 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Result<2>1 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Result<1>1 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Result<0>1 ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd1-In ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd2-In ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd3-In ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4-In ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd5-In_422 ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd6-In ;
  wire \dvi_rx1/dec_b/phsalgn_0/ctkn_counter[6]_PWR_17_o_equal_17_o ;
  wire \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_52_o ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_50_o ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<0> ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<1> ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<2> ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate[5]_PWR_17_o_Select_43_o ;
  wire \dvi_rx1/dec_b/phsalgn_0/sdata[9]_sdata[9]_OR_85_o ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_47_o ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_45_o ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_41_o ;
  wire \dvi_rx1/dec_b/phsalgn_0/rcvd_ctkn_448 ;
  wire \dvi_rx1/dec_b/phsalgn_0/ctkn_cnt_tout_449 ;
  wire \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_tout_450 ;
  wire \dvi_rx1/dec_b/phsalgn_0/blnkbgn_451 ;
  wire \dvi_rx1/dec_b/phsalgn_0/rcvd_ctkn_q_452 ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd1_453 ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd2_454 ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd3_455 ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4_456 ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd5_457 ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd6_458 ;
  wire \dvi_rx1/dec_b/phsalgn_0/blnkprd_cnt_0_459 ;
  wire \dvi_rx1/dec_b/phsalgn_0/ctkn_cnt_rst_460 ;
  wire \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_rst_461 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_counter_xor<4>11 ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1_463 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Result<6>1 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Result<5>1 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Result<4>1 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Result<3>1 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Result<2>1 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Result<1>1 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Result<0>1 ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd1-In ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd2-In ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd3-In ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4-In ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd5-In_509 ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd6-In ;
  wire \dvi_rx1/dec_g/phsalgn_0/ctkn_counter[6]_PWR_17_o_equal_17_o ;
  wire \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_52_o ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_50_o ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<0> ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<1> ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<2> ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate[5]_PWR_17_o_Select_43_o ;
  wire \dvi_rx1/dec_g/phsalgn_0/sdata[9]_sdata[9]_OR_85_o ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_47_o ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_45_o ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_41_o ;
  wire \dvi_rx1/dec_g/phsalgn_0/rcvd_ctkn_535 ;
  wire \dvi_rx1/dec_g/phsalgn_0/ctkn_cnt_tout_536 ;
  wire \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_tout_537 ;
  wire \dvi_rx1/dec_g/phsalgn_0/blnkbgn_538 ;
  wire \dvi_rx1/dec_g/phsalgn_0/rcvd_ctkn_q_539 ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd1_540 ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd2_541 ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd3_542 ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4_543 ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd5_544 ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd6_545 ;
  wire \dvi_rx1/dec_g/phsalgn_0/blnkprd_cnt_0_546 ;
  wire \dvi_rx1/dec_g/phsalgn_0/ctkn_cnt_rst_547 ;
  wire \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_rst_548 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_counter_xor<4>11 ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1_550 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Result<6>1 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Result<5>1 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Result<4>1 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Result<3>1 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Result<2>1 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Result<1>1 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Result<0>1 ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd1-In ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd2-In ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd3-In ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4-In ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd5-In_596 ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd6-In ;
  wire \dvi_rx1/dec_r/phsalgn_0/ctkn_counter[6]_PWR_17_o_equal_17_o ;
  wire \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_52_o ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_50_o ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<0> ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<1> ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<2> ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate[5]_PWR_17_o_Select_43_o ;
  wire \dvi_rx1/dec_r/phsalgn_0/sdata[9]_sdata[9]_OR_85_o ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_47_o ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_45_o ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_41_o ;
  wire \dvi_rx1/dec_r/phsalgn_0/rcvd_ctkn_622 ;
  wire \dvi_rx1/dec_r/phsalgn_0/ctkn_cnt_tout_623 ;
  wire \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_tout_624 ;
  wire \dvi_rx1/dec_r/phsalgn_0/blnkbgn_625 ;
  wire \dvi_rx1/dec_r/phsalgn_0/rcvd_ctkn_q_626 ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd1_627 ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd2_628 ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd3_629 ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4_630 ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd5_631 ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd6_632 ;
  wire \dvi_rx1/dec_r/phsalgn_0/blnkprd_cnt_0_633 ;
  wire \dvi_rx1/dec_r/phsalgn_0/ctkn_cnt_rst_634 ;
  wire \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_rst_635 ;
  wire \dvi_rx1/dec_b/cbnd/Result<3>1 ;
  wire \dvi_rx1/dec_b/cbnd/Result<2>1 ;
  wire \dvi_rx1/dec_b/cbnd/Result<1>1 ;
  wire \dvi_rx1/dec_b/cbnd/Result<0>1 ;
  wire \dvi_rx1/dec_b/cbnd/rawdata_vld_inv ;
  wire \dvi_rx1/dec_b/cbnd/rawdata_vld_rawdata_vld_q_AND_23_o_norst ;
  wire \dvi_rx1/dec_b/cbnd/sdata[9]_sdata[9]_OR_126_o ;
  wire \dvi_rx1/dec_b/cbnd/_n0064 ;
  wire \dvi_rx1/dec_b/cbnd/rawdata_vld ;
  wire \dvi_rx1/dec_b/cbnd/ra_en_657 ;
  wire \dvi_rx1/dec_b/cbnd/skip_line_658 ;
  wire \dvi_rx1/dec_b/cbnd/rawdata_vld_rising_659 ;
  wire \dvi_rx1/dec_b/cbnd/rawdata_vld_q_660 ;
  wire \dvi_rx1/dec_b/cbnd/blnkbgn_661 ;
  wire \dvi_rx1/dec_b/cbnd/rcvd_ctkn_q_662 ;
  wire \dvi_rx1/dec_b/cbnd/rcvd_ctkn_663 ;
  wire \dvi_rx1/dec_g/cbnd/sdata[9]_sdata[9]_OR_126_o ;
  wire \dvi_rx1/dec_g/cbnd/_n0064 ;
  wire \dvi_rx1/dec_g/cbnd/ra_en_684 ;
  wire \dvi_rx1/dec_g/cbnd/skip_line_685 ;
  wire \dvi_rx1/dec_g/cbnd/blnkbgn_686 ;
  wire \dvi_rx1/dec_g/cbnd/rcvd_ctkn_q_687 ;
  wire \dvi_rx1/dec_g/cbnd/rcvd_ctkn_688 ;
  wire \dvi_rx1/dec_r/cbnd/sdata[9]_sdata[9]_OR_126_o ;
  wire \dvi_rx1/dec_r/cbnd/_n0064 ;
  wire \dvi_rx1/dec_r/cbnd/ra_en_709 ;
  wire \dvi_rx1/dec_r/cbnd/skip_line_710 ;
  wire \dvi_rx1/dec_r/cbnd/blnkbgn_711 ;
  wire \dvi_rx1/dec_r/cbnd/rcvd_ctkn_q_712 ;
  wire \dvi_rx1/dec_r/cbnd/rcvd_ctkn_713 ;
  wire \dvi_tx/clkout/cascade_di ;
  wire \dvi_tx/clkout/cascade_ti ;
  wire \dvi_tx/clkout/cascade_do ;
  wire \dvi_tx/clkout/cascade_to ;
  wire \dvi_tx/oserdes0/cascade_di ;
  wire \dvi_tx/oserdes0/cascade_ti ;
  wire \dvi_tx/oserdes0/cascade_do ;
  wire \dvi_tx/oserdes0/cascade_to ;
  wire \dvi_tx/oserdes1/cascade_di ;
  wire \dvi_tx/oserdes1/cascade_ti ;
  wire \dvi_tx/oserdes1/cascade_do ;
  wire \dvi_tx/oserdes1/cascade_to ;
  wire \dvi_tx/oserdes2/cascade_di ;
  wire \dvi_tx/oserdes2/cascade_ti ;
  wire \dvi_tx/oserdes2/cascade_do ;
  wire \dvi_tx/oserdes2/cascade_to ;
  wire \dvi_tx/toggle_inv ;
  wire \dvi_tx/toggle_877 ;
  wire \dvi_tx/tmdsclk ;
  wire \dvi_tx/pixel2x/Mram_ra_d3 ;
  wire \dvi_tx/pixel2x/Mram_ra_d2 ;
  wire \dvi_tx/pixel2x/Mram_ra_d1 ;
  wire \dvi_tx/pixel2x/Mram_ra_d ;
  wire \dvi_tx/pixel2x/Mram_wa_d3 ;
  wire \dvi_tx/pixel2x/Mram_wa_d2 ;
  wire \dvi_tx/pixel2x/Mram_wa_d1 ;
  wire \dvi_tx/pixel2x/Mram_wa_d ;
  wire \dvi_tx/pixel2x/sync_INV_50_o ;
  wire \dvi_tx/pixel2x/sync ;
  wire \dvi_tx/pixel2x/rstp ;
  wire \dvi_tx/pixel2x/rstsync_q ;
  wire \dvi_tx/pixel2x/rstsync ;
  wire \dvi_rx1/dec_b/des_0/_n0278_inv1_994 ;
  wire \dvi_rx1/dec_g/des_0/_n0278_inv1_995 ;
  wire \dvi_rx1/dec_r/des_0/_n0278_inv1_996 ;
  wire N14;
  wire \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11> ;
  wire \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>1_999 ;
  wire \dvi_rx1/dec_b/phsalgn_0/sdata[9]_sdata[9]_OR_85_o1_1000 ;
  wire \dvi_rx1/dec_b/phsalgn_0/sdata[9]_sdata[9]_OR_85_o2_1001 ;
  wire N16;
  wire \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11> ;
  wire \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>1_1004 ;
  wire \dvi_rx1/dec_g/phsalgn_0/sdata[9]_sdata[9]_OR_85_o1_1005 ;
  wire \dvi_rx1/dec_g/phsalgn_0/sdata[9]_sdata[9]_OR_85_o2_1006 ;
  wire N18;
  wire \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11> ;
  wire \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>1_1009 ;
  wire \dvi_rx1/dec_r/phsalgn_0/sdata[9]_sdata[9]_OR_85_o1_1010 ;
  wire \dvi_rx1/dec_r/phsalgn_0/sdata[9]_sdata[9]_OR_85_o2_1011 ;
  wire \dvi_rx1/dec_b/cbnd/sdata[9]_sdata[9]_OR_126_o2_1012 ;
  wire \dvi_rx1/dec_g/cbnd/sdata[9]_sdata[9]_OR_126_o2_1013 ;
  wire \dvi_rx1/dec_r/cbnd/sdata[9]_sdata[9]_OR_126_o2_1014 ;
  wire \dvi_rx1/dec_b/cbnd/skip_line_glue_set_1025 ;
  wire \dvi_rx1/dec_b/cbnd/iamrdy_glue_set_1026 ;
  wire \dvi_rx1/dec_g/cbnd/skip_line_glue_set_1027 ;
  wire \dvi_rx1/dec_g/cbnd/iamrdy_glue_set_1028 ;
  wire \dvi_rx1/dec_r/cbnd/skip_line_glue_set_1029 ;
  wire \dvi_rx1/dec_r/cbnd/iamrdy_glue_set_1030 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>_rt_1031 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>_rt_1032 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>_rt_1033 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>_rt_1034 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>_rt_1035 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>_rt_1036 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>_rt_1037 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>_rt_1038 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>_rt_1039 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>_rt_1040 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>_rt_1041 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>_rt_1042 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>_rt_1043 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>_rt_1044 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>_rt_1045 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>_rt_1046 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>_rt_1047 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>_rt_1048 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>_rt_1049 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>_rt_1050 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>_rt_1051 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>_rt_1052 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>_rt_1053 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>_rt_1054 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>_rt_1055 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>_rt_1056 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>_rt_1057 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>_rt_1058 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>_rt_1059 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>_rt_1060 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_xor<11>_rt_1061 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_xor<11>_rt_1062 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_xor<11>_rt_1063 ;
  wire \dvi_rx1/dec_b/des_0/cal_data_master_rstpot_1064 ;
  wire \dvi_rx1/dec_b/des_0/ce_data_inta_rstpot_1065 ;
  wire \dvi_rx1/dec_b/des_0/enable_rstpot_1066 ;
  wire \dvi_rx1/dec_b/des_0/cal_data_sint_rstpot_1067 ;
  wire \dvi_rx1/dec_b/des_0/rst_data_rstpot_1068 ;
  wire \dvi_rx1/dec_b/des_0/flag_rstpot_1069 ;
  wire \dvi_rx1/dec_g/des_0/cal_data_master_rstpot_1070 ;
  wire \dvi_rx1/dec_g/des_0/ce_data_inta_rstpot_1071 ;
  wire \dvi_rx1/dec_g/des_0/cal_data_sint_rstpot_1072 ;
  wire \dvi_rx1/dec_g/des_0/rst_data_rstpot_1073 ;
  wire \dvi_rx1/dec_g/des_0/flag_rstpot_1074 ;
  wire \dvi_rx1/dec_r/des_0/cal_data_master_rstpot_1075 ;
  wire \dvi_rx1/dec_r/des_0/ce_data_inta_rstpot_1076 ;
  wire \dvi_rx1/dec_r/des_0/cal_data_sint_rstpot_1077 ;
  wire \dvi_rx1/dec_r/des_0/rst_data_rstpot_1078 ;
  wire \dvi_rx1/dec_r/des_0/flag_rstpot_1079 ;
  wire \dvi_rx1/dec_b/de_rstpot_1080 ;
  wire \dvi_rx1/dec_b/phsalgn_0/blnkbgn_rstpot_1081 ;
  wire \dvi_rx1/dec_g/phsalgn_0/blnkbgn_rstpot_1082 ;
  wire \dvi_rx1/dec_r/phsalgn_0/blnkbgn_rstpot_1083 ;
  wire \dvi_rx1/dec_b/cbnd/blnkbgn_rstpot_1084 ;
  wire \dvi_rx1/dec_g/cbnd/blnkbgn_rstpot_1085 ;
  wire \dvi_rx1/dec_r/cbnd/blnkbgn_rstpot_1086 ;
  wire \dvi_rx1/dec_b/des_0/inc_data_int_rstpot_1087 ;
  wire \dvi_rx1/dec_b/des_0/ce_data_rstpot_1088 ;
  wire \dvi_rx1/dec_g/des_0/inc_data_int_rstpot_1089 ;
  wire \dvi_rx1/dec_g/des_0/ce_data_rstpot_1090 ;
  wire \dvi_rx1/dec_r/des_0/inc_data_int_rstpot_1091 ;
  wire \dvi_rx1/dec_r/des_0/ce_data_rstpot_1092 ;
  wire \dvi_rx1/dec_b/cbnd/ra_en_rstpot_1093 ;
  wire \dvi_rx1/dec_g/cbnd/ra_en_rstpot_1094 ;
  wire \dvi_rx1/dec_r/cbnd/ra_en_rstpot_1095 ;
  wire \dvi_rx1/dec_b/des_0/rst_data_rstpot1_1096 ;
  wire \dvi_rx1/dec_g/des_0/rst_data_rstpot1_1097 ;
  wire \dvi_rx1/dec_r/des_0/rst_data_rstpot1_1098 ;
  wire N26;
  wire N28;
  wire N30;
  wire N32;
  wire N34;
  wire N36;
  wire N38;
  wire N40;
  wire N42;
  wire N44;
  wire N45;
  wire \dvi_rx1/dec_b/des_0/pdcounter_0_dpot_1110 ;
  wire \dvi_rx1/dec_g/des_0/pdcounter_0_dpot_1111 ;
  wire \dvi_rx1/dec_r/des_0/pdcounter_0_dpot_1112 ;
  wire N47;
  wire N49;
  wire N51;
  wire \dvi_rx1/dec_b/des_0/pdcounter_1_dpot_1116 ;
  wire \dvi_rx1/dec_b/des_0/pdcounter_2_dpot_1117 ;
  wire \dvi_rx1/dec_b/des_0/pdcounter_3_dpot_1118 ;
  wire \dvi_rx1/dec_g/des_0/pdcounter_1_dpot_1119 ;
  wire \dvi_rx1/dec_g/des_0/pdcounter_2_dpot_1120 ;
  wire \dvi_rx1/dec_g/des_0/pdcounter_3_dpot_1121 ;
  wire \dvi_rx1/dec_r/des_0/pdcounter_1_dpot_1122 ;
  wire \dvi_rx1/dec_r/des_0/pdcounter_2_dpot_1123 ;
  wire \dvi_rx1/dec_r/des_0/pdcounter_3_dpot_1124 ;
  wire N59;
  wire N61;
  wire N63;
  wire \dvi_rx1/dec_b/des_0/pdcounter_4_dpot_1128 ;
  wire \dvi_rx1/dec_g/des_0/pdcounter_4_dpot_1129 ;
  wire \dvi_rx1/dec_r/des_0/pdcounter_4_dpot_1130 ;
  wire N65;
  wire N66;
  wire N67;
  wire N69;
  wire N70;
  wire N72;
  wire N73;
  wire N75;
  wire N77;
  wire N79;
  wire NLW_sysclk_div_IOCLK_UNCONNECTED;
  wire NLW_sysclk_div_SERDESSTROBE_UNCONNECTED;
  wire NLW_clk25_buf_O_UNCONNECTED;
  wire NLW_tx_ioclk_buf_LOCK_UNCONNECTED;
  wire \NLW_dvi_rx1/tmdsclk_bufg_O_UNCONNECTED ;
  wire \NLW_dvi_rx1/bufio_tmdsclk_IOCLK_UNCONNECTED ;
  wire \NLW_dvi_rx1/bufio_tmdsclk_SERDESSTROBE_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iserdes_s_CFB0_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iserdes_s_Q3_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iserdes_s_DFB_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iserdes_s_CFB1_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iserdes_s_INCDEC_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iserdes_s_VALID_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iserdes_s_Q2_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iserdes_s_Q1_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iserdes_s_FABRICOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iserdes_m_CFB0_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iserdes_m_DFB_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iserdes_m_CFB1_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iserdes_m_FABRICOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iodelay_s_DOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iodelay_s_DATAOUT2_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iodelay_s_TOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iodelay_m_BUSY_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iodelay_m_DOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iodelay_m_DATAOUT2_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iodelay_m_TOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iserdes_s_CFB0_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iserdes_s_Q3_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iserdes_s_DFB_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iserdes_s_CFB1_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iserdes_s_INCDEC_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iserdes_s_VALID_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iserdes_s_Q2_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iserdes_s_Q1_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iserdes_s_FABRICOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iserdes_m_CFB0_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iserdes_m_DFB_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iserdes_m_CFB1_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iserdes_m_FABRICOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iodelay_s_DOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iodelay_s_DATAOUT2_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iodelay_s_TOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iodelay_m_BUSY_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iodelay_m_DOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iodelay_m_DATAOUT2_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iodelay_m_TOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iserdes_s_CFB0_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iserdes_s_Q3_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iserdes_s_DFB_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iserdes_s_CFB1_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iserdes_s_INCDEC_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iserdes_s_VALID_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iserdes_s_Q2_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iserdes_s_Q1_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iserdes_s_FABRICOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iserdes_m_CFB0_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iserdes_m_DFB_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iserdes_m_CFB1_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iserdes_m_FABRICOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iodelay_s_DOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iodelay_s_DATAOUT2_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iodelay_s_TOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iodelay_m_BUSY_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iodelay_m_DOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iodelay_m_DATAOUT2_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iodelay_m_TOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[9].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[8].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[7].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[6].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[5].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[4].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[3].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[2].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[1].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[0].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[9].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[8].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[7].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[6].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[5].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[4].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[3].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[2].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[1].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[0].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[9].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[8].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[7].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[6].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[5].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[4].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[3].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[2].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[1].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[0].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/clkout/oserdes_m_TQ_UNCONNECTED ;
  wire \NLW_dvi_tx/clkout/oserdes_m_SHIFTOUT3_UNCONNECTED ;
  wire \NLW_dvi_tx/clkout/oserdes_m_SHIFTOUT4_UNCONNECTED ;
  wire \NLW_dvi_tx/clkout/oserdes_s_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_dvi_tx/clkout/oserdes_s_TQ_UNCONNECTED ;
  wire \NLW_dvi_tx/clkout/oserdes_s_OQ_UNCONNECTED ;
  wire \NLW_dvi_tx/clkout/oserdes_s_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes0/oserdes_m_TQ_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes0/oserdes_m_SHIFTOUT3_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes0/oserdes_m_SHIFTOUT4_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes0/oserdes_s_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes0/oserdes_s_TQ_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes0/oserdes_s_OQ_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes0/oserdes_s_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes1/oserdes_m_TQ_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes1/oserdes_m_SHIFTOUT3_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes1/oserdes_m_SHIFTOUT4_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes1/oserdes_s_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes1/oserdes_s_TQ_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes1/oserdes_s_OQ_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes1/oserdes_s_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes2/oserdes_m_TQ_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes2/oserdes_m_SHIFTOUT3_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes2/oserdes_m_SHIFTOUT4_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes2/oserdes_s_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes2/oserdes_s_TQ_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes2/oserdes_s_OQ_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes2/oserdes_s_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[29].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[28].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[27].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[26].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[25].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[24].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[23].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[22].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[21].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[20].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[19].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[18].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[17].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[16].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[15].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[14].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[13].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[12].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[11].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[10].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[9].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[8].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[7].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[6].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[5].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[4].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[3].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[2].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[1].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[0].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire NLW_PLL_OSERDES_0_CLKOUT3_UNCONNECTED;
  wire NLW_PLL_OSERDES_0_CLKOUT1_UNCONNECTED;
  wire NLW_PLL_OSERDES_0_CLKOUT4_UNCONNECTED;
  wire NLW_PLL_OSERDES_0_CLKOUT5_UNCONNECTED;
  wire \NLW_dvi_rx1/PLL_ISERDES_CLKOUT3_UNCONNECTED ;
  wire \NLW_dvi_rx1/PLL_ISERDES_CLKOUT4_UNCONNECTED ;
  wire \NLW_dvi_rx1/PLL_ISERDES_CLKOUT5_UNCONNECTED ;
  wire \NLW_conversion/mult3_3_p<35>_UNCONNECTED ;
  wire \NLW_conversion/mult3_3_p<34>_UNCONNECTED ;
  wire \NLW_conversion/mult3_3_p<33>_UNCONNECTED ;
  wire \NLW_conversion/mult3_3_p<32>_UNCONNECTED ;
  wire \NLW_conversion/mult3_3_p<31>_UNCONNECTED ;
  wire \NLW_conversion/mult3_3_p<30>_UNCONNECTED ;
  wire \NLW_conversion/mult3_3_p<29>_UNCONNECTED ;
  wire \NLW_conversion/mult3_3_p<28>_UNCONNECTED ;
  wire \NLW_conversion/mult3_3_p<27>_UNCONNECTED ;
  wire \NLW_conversion/mult3_3_p<26>_UNCONNECTED ;
  wire \NLW_conversion/mult3_3_p<16>_UNCONNECTED ;
  wire \NLW_conversion/mult3_3_p<15>_UNCONNECTED ;
  wire \NLW_conversion/mult3_3_p<14>_UNCONNECTED ;
  wire \NLW_conversion/mult3_3_p<13>_UNCONNECTED ;
  wire \NLW_conversion/mult3_3_p<12>_UNCONNECTED ;
  wire \NLW_conversion/mult3_3_p<11>_UNCONNECTED ;
  wire \NLW_conversion/mult3_3_p<10>_UNCONNECTED ;
  wire \NLW_conversion/mult3_3_p<9>_UNCONNECTED ;
  wire \NLW_conversion/mult3_3_p<8>_UNCONNECTED ;
  wire \NLW_conversion/mult3_3_p<7>_UNCONNECTED ;
  wire \NLW_conversion/mult3_3_p<6>_UNCONNECTED ;
  wire \NLW_conversion/mult3_3_p<5>_UNCONNECTED ;
  wire \NLW_conversion/mult3_3_p<4>_UNCONNECTED ;
  wire \NLW_conversion/mult3_3_p<3>_UNCONNECTED ;
  wire \NLW_conversion/mult3_3_p<2>_UNCONNECTED ;
  wire \NLW_conversion/mult3_3_p<1>_UNCONNECTED ;
  wire \NLW_conversion/mult3_3_p<0>_UNCONNECTED ;
  wire \NLW_conversion/mult2_3_p<35>_UNCONNECTED ;
  wire \NLW_conversion/mult2_3_p<34>_UNCONNECTED ;
  wire \NLW_conversion/mult2_3_p<33>_UNCONNECTED ;
  wire \NLW_conversion/mult2_3_p<32>_UNCONNECTED ;
  wire \NLW_conversion/mult2_3_p<31>_UNCONNECTED ;
  wire \NLW_conversion/mult2_3_p<30>_UNCONNECTED ;
  wire \NLW_conversion/mult2_3_p<29>_UNCONNECTED ;
  wire \NLW_conversion/mult2_3_p<28>_UNCONNECTED ;
  wire \NLW_conversion/mult2_3_p<27>_UNCONNECTED ;
  wire \NLW_conversion/mult2_3_p<26>_UNCONNECTED ;
  wire \NLW_conversion/mult2_3_p<16>_UNCONNECTED ;
  wire \NLW_conversion/mult2_3_p<15>_UNCONNECTED ;
  wire \NLW_conversion/mult2_3_p<14>_UNCONNECTED ;
  wire \NLW_conversion/mult2_3_p<13>_UNCONNECTED ;
  wire \NLW_conversion/mult2_3_p<12>_UNCONNECTED ;
  wire \NLW_conversion/mult2_3_p<11>_UNCONNECTED ;
  wire \NLW_conversion/mult2_3_p<10>_UNCONNECTED ;
  wire \NLW_conversion/mult2_3_p<9>_UNCONNECTED ;
  wire \NLW_conversion/mult2_3_p<8>_UNCONNECTED ;
  wire \NLW_conversion/mult2_3_p<7>_UNCONNECTED ;
  wire \NLW_conversion/mult2_3_p<6>_UNCONNECTED ;
  wire \NLW_conversion/mult2_3_p<5>_UNCONNECTED ;
  wire \NLW_conversion/mult2_3_p<4>_UNCONNECTED ;
  wire \NLW_conversion/mult2_3_p<3>_UNCONNECTED ;
  wire \NLW_conversion/mult2_3_p<2>_UNCONNECTED ;
  wire \NLW_conversion/mult2_3_p<1>_UNCONNECTED ;
  wire \NLW_conversion/mult2_3_p<0>_UNCONNECTED ;
  wire \NLW_conversion/mult1_3_p<35>_UNCONNECTED ;
  wire \NLW_conversion/mult1_3_p<34>_UNCONNECTED ;
  wire \NLW_conversion/mult1_3_p<33>_UNCONNECTED ;
  wire \NLW_conversion/mult1_3_p<32>_UNCONNECTED ;
  wire \NLW_conversion/mult1_3_p<31>_UNCONNECTED ;
  wire \NLW_conversion/mult1_3_p<30>_UNCONNECTED ;
  wire \NLW_conversion/mult1_3_p<29>_UNCONNECTED ;
  wire \NLW_conversion/mult1_3_p<28>_UNCONNECTED ;
  wire \NLW_conversion/mult1_3_p<27>_UNCONNECTED ;
  wire \NLW_conversion/mult1_3_p<26>_UNCONNECTED ;
  wire \NLW_conversion/mult1_3_p<16>_UNCONNECTED ;
  wire \NLW_conversion/mult1_3_p<15>_UNCONNECTED ;
  wire \NLW_conversion/mult1_3_p<14>_UNCONNECTED ;
  wire \NLW_conversion/mult1_3_p<13>_UNCONNECTED ;
  wire \NLW_conversion/mult1_3_p<12>_UNCONNECTED ;
  wire \NLW_conversion/mult1_3_p<11>_UNCONNECTED ;
  wire \NLW_conversion/mult1_3_p<10>_UNCONNECTED ;
  wire \NLW_conversion/mult1_3_p<9>_UNCONNECTED ;
  wire \NLW_conversion/mult1_3_p<8>_UNCONNECTED ;
  wire \NLW_conversion/mult1_3_p<7>_UNCONNECTED ;
  wire \NLW_conversion/mult1_3_p<6>_UNCONNECTED ;
  wire \NLW_conversion/mult1_3_p<5>_UNCONNECTED ;
  wire \NLW_conversion/mult1_3_p<4>_UNCONNECTED ;
  wire \NLW_conversion/mult1_3_p<3>_UNCONNECTED ;
  wire \NLW_conversion/mult1_3_p<2>_UNCONNECTED ;
  wire \NLW_conversion/mult1_3_p<1>_UNCONNECTED ;
  wire \NLW_conversion/mult1_3_p<0>_UNCONNECTED ;
  wire \NLW_conversion/mult3_2_p<35>_UNCONNECTED ;
  wire \NLW_conversion/mult3_2_p<34>_UNCONNECTED ;
  wire \NLW_conversion/mult3_2_p<33>_UNCONNECTED ;
  wire \NLW_conversion/mult3_2_p<32>_UNCONNECTED ;
  wire \NLW_conversion/mult3_2_p<31>_UNCONNECTED ;
  wire \NLW_conversion/mult3_2_p<30>_UNCONNECTED ;
  wire \NLW_conversion/mult3_2_p<29>_UNCONNECTED ;
  wire \NLW_conversion/mult3_2_p<28>_UNCONNECTED ;
  wire \NLW_conversion/mult3_2_p<27>_UNCONNECTED ;
  wire \NLW_conversion/mult3_2_p<26>_UNCONNECTED ;
  wire \NLW_conversion/mult3_2_p<16>_UNCONNECTED ;
  wire \NLW_conversion/mult3_2_p<15>_UNCONNECTED ;
  wire \NLW_conversion/mult3_2_p<14>_UNCONNECTED ;
  wire \NLW_conversion/mult3_2_p<13>_UNCONNECTED ;
  wire \NLW_conversion/mult3_2_p<12>_UNCONNECTED ;
  wire \NLW_conversion/mult3_2_p<11>_UNCONNECTED ;
  wire \NLW_conversion/mult3_2_p<10>_UNCONNECTED ;
  wire \NLW_conversion/mult3_2_p<9>_UNCONNECTED ;
  wire \NLW_conversion/mult3_2_p<8>_UNCONNECTED ;
  wire \NLW_conversion/mult3_2_p<7>_UNCONNECTED ;
  wire \NLW_conversion/mult3_2_p<6>_UNCONNECTED ;
  wire \NLW_conversion/mult3_2_p<5>_UNCONNECTED ;
  wire \NLW_conversion/mult3_2_p<4>_UNCONNECTED ;
  wire \NLW_conversion/mult3_2_p<3>_UNCONNECTED ;
  wire \NLW_conversion/mult3_2_p<2>_UNCONNECTED ;
  wire \NLW_conversion/mult3_2_p<1>_UNCONNECTED ;
  wire \NLW_conversion/mult3_2_p<0>_UNCONNECTED ;
  wire \NLW_conversion/mult2_2_p<35>_UNCONNECTED ;
  wire \NLW_conversion/mult2_2_p<34>_UNCONNECTED ;
  wire \NLW_conversion/mult2_2_p<33>_UNCONNECTED ;
  wire \NLW_conversion/mult2_2_p<32>_UNCONNECTED ;
  wire \NLW_conversion/mult2_2_p<31>_UNCONNECTED ;
  wire \NLW_conversion/mult2_2_p<30>_UNCONNECTED ;
  wire \NLW_conversion/mult2_2_p<29>_UNCONNECTED ;
  wire \NLW_conversion/mult2_2_p<28>_UNCONNECTED ;
  wire \NLW_conversion/mult2_2_p<27>_UNCONNECTED ;
  wire \NLW_conversion/mult2_2_p<26>_UNCONNECTED ;
  wire \NLW_conversion/mult2_2_p<16>_UNCONNECTED ;
  wire \NLW_conversion/mult2_2_p<15>_UNCONNECTED ;
  wire \NLW_conversion/mult2_2_p<14>_UNCONNECTED ;
  wire \NLW_conversion/mult2_2_p<13>_UNCONNECTED ;
  wire \NLW_conversion/mult2_2_p<12>_UNCONNECTED ;
  wire \NLW_conversion/mult2_2_p<11>_UNCONNECTED ;
  wire \NLW_conversion/mult2_2_p<10>_UNCONNECTED ;
  wire \NLW_conversion/mult2_2_p<9>_UNCONNECTED ;
  wire \NLW_conversion/mult2_2_p<8>_UNCONNECTED ;
  wire \NLW_conversion/mult2_2_p<7>_UNCONNECTED ;
  wire \NLW_conversion/mult2_2_p<6>_UNCONNECTED ;
  wire \NLW_conversion/mult2_2_p<5>_UNCONNECTED ;
  wire \NLW_conversion/mult2_2_p<4>_UNCONNECTED ;
  wire \NLW_conversion/mult2_2_p<3>_UNCONNECTED ;
  wire \NLW_conversion/mult2_2_p<2>_UNCONNECTED ;
  wire \NLW_conversion/mult2_2_p<1>_UNCONNECTED ;
  wire \NLW_conversion/mult2_2_p<0>_UNCONNECTED ;
  wire \NLW_conversion/mult1_2_p<35>_UNCONNECTED ;
  wire \NLW_conversion/mult1_2_p<34>_UNCONNECTED ;
  wire \NLW_conversion/mult1_2_p<33>_UNCONNECTED ;
  wire \NLW_conversion/mult1_2_p<32>_UNCONNECTED ;
  wire \NLW_conversion/mult1_2_p<31>_UNCONNECTED ;
  wire \NLW_conversion/mult1_2_p<30>_UNCONNECTED ;
  wire \NLW_conversion/mult1_2_p<29>_UNCONNECTED ;
  wire \NLW_conversion/mult1_2_p<28>_UNCONNECTED ;
  wire \NLW_conversion/mult1_2_p<27>_UNCONNECTED ;
  wire \NLW_conversion/mult1_2_p<26>_UNCONNECTED ;
  wire \NLW_conversion/mult1_2_p<16>_UNCONNECTED ;
  wire \NLW_conversion/mult1_2_p<15>_UNCONNECTED ;
  wire \NLW_conversion/mult1_2_p<14>_UNCONNECTED ;
  wire \NLW_conversion/mult1_2_p<13>_UNCONNECTED ;
  wire \NLW_conversion/mult1_2_p<12>_UNCONNECTED ;
  wire \NLW_conversion/mult1_2_p<11>_UNCONNECTED ;
  wire \NLW_conversion/mult1_2_p<10>_UNCONNECTED ;
  wire \NLW_conversion/mult1_2_p<9>_UNCONNECTED ;
  wire \NLW_conversion/mult1_2_p<8>_UNCONNECTED ;
  wire \NLW_conversion/mult1_2_p<7>_UNCONNECTED ;
  wire \NLW_conversion/mult1_2_p<6>_UNCONNECTED ;
  wire \NLW_conversion/mult1_2_p<5>_UNCONNECTED ;
  wire \NLW_conversion/mult1_2_p<4>_UNCONNECTED ;
  wire \NLW_conversion/mult1_2_p<3>_UNCONNECTED ;
  wire \NLW_conversion/mult1_2_p<2>_UNCONNECTED ;
  wire \NLW_conversion/mult1_2_p<1>_UNCONNECTED ;
  wire \NLW_conversion/mult1_2_p<0>_UNCONNECTED ;
  wire \NLW_conversion/mult3_1_p<35>_UNCONNECTED ;
  wire \NLW_conversion/mult3_1_p<34>_UNCONNECTED ;
  wire \NLW_conversion/mult3_1_p<33>_UNCONNECTED ;
  wire \NLW_conversion/mult3_1_p<32>_UNCONNECTED ;
  wire \NLW_conversion/mult3_1_p<31>_UNCONNECTED ;
  wire \NLW_conversion/mult3_1_p<30>_UNCONNECTED ;
  wire \NLW_conversion/mult3_1_p<29>_UNCONNECTED ;
  wire \NLW_conversion/mult3_1_p<28>_UNCONNECTED ;
  wire \NLW_conversion/mult3_1_p<27>_UNCONNECTED ;
  wire \NLW_conversion/mult3_1_p<26>_UNCONNECTED ;
  wire \NLW_conversion/mult3_1_p<16>_UNCONNECTED ;
  wire \NLW_conversion/mult3_1_p<15>_UNCONNECTED ;
  wire \NLW_conversion/mult3_1_p<14>_UNCONNECTED ;
  wire \NLW_conversion/mult3_1_p<13>_UNCONNECTED ;
  wire \NLW_conversion/mult3_1_p<12>_UNCONNECTED ;
  wire \NLW_conversion/mult3_1_p<11>_UNCONNECTED ;
  wire \NLW_conversion/mult3_1_p<10>_UNCONNECTED ;
  wire \NLW_conversion/mult3_1_p<9>_UNCONNECTED ;
  wire \NLW_conversion/mult3_1_p<8>_UNCONNECTED ;
  wire \NLW_conversion/mult3_1_p<7>_UNCONNECTED ;
  wire \NLW_conversion/mult3_1_p<6>_UNCONNECTED ;
  wire \NLW_conversion/mult3_1_p<5>_UNCONNECTED ;
  wire \NLW_conversion/mult3_1_p<4>_UNCONNECTED ;
  wire \NLW_conversion/mult3_1_p<3>_UNCONNECTED ;
  wire \NLW_conversion/mult3_1_p<2>_UNCONNECTED ;
  wire \NLW_conversion/mult3_1_p<1>_UNCONNECTED ;
  wire \NLW_conversion/mult3_1_p<0>_UNCONNECTED ;
  wire \NLW_conversion/mult2_1_p<35>_UNCONNECTED ;
  wire \NLW_conversion/mult2_1_p<34>_UNCONNECTED ;
  wire \NLW_conversion/mult2_1_p<33>_UNCONNECTED ;
  wire \NLW_conversion/mult2_1_p<32>_UNCONNECTED ;
  wire \NLW_conversion/mult2_1_p<31>_UNCONNECTED ;
  wire \NLW_conversion/mult2_1_p<30>_UNCONNECTED ;
  wire \NLW_conversion/mult2_1_p<29>_UNCONNECTED ;
  wire \NLW_conversion/mult2_1_p<28>_UNCONNECTED ;
  wire \NLW_conversion/mult2_1_p<27>_UNCONNECTED ;
  wire \NLW_conversion/mult2_1_p<26>_UNCONNECTED ;
  wire \NLW_conversion/mult2_1_p<16>_UNCONNECTED ;
  wire \NLW_conversion/mult2_1_p<15>_UNCONNECTED ;
  wire \NLW_conversion/mult2_1_p<14>_UNCONNECTED ;
  wire \NLW_conversion/mult2_1_p<13>_UNCONNECTED ;
  wire \NLW_conversion/mult2_1_p<12>_UNCONNECTED ;
  wire \NLW_conversion/mult2_1_p<11>_UNCONNECTED ;
  wire \NLW_conversion/mult2_1_p<10>_UNCONNECTED ;
  wire \NLW_conversion/mult2_1_p<9>_UNCONNECTED ;
  wire \NLW_conversion/mult2_1_p<8>_UNCONNECTED ;
  wire \NLW_conversion/mult2_1_p<7>_UNCONNECTED ;
  wire \NLW_conversion/mult2_1_p<6>_UNCONNECTED ;
  wire \NLW_conversion/mult2_1_p<5>_UNCONNECTED ;
  wire \NLW_conversion/mult2_1_p<4>_UNCONNECTED ;
  wire \NLW_conversion/mult2_1_p<3>_UNCONNECTED ;
  wire \NLW_conversion/mult2_1_p<2>_UNCONNECTED ;
  wire \NLW_conversion/mult2_1_p<1>_UNCONNECTED ;
  wire \NLW_conversion/mult2_1_p<0>_UNCONNECTED ;
  wire \NLW_conversion/mult1_1_p<35>_UNCONNECTED ;
  wire \NLW_conversion/mult1_1_p<34>_UNCONNECTED ;
  wire \NLW_conversion/mult1_1_p<33>_UNCONNECTED ;
  wire \NLW_conversion/mult1_1_p<32>_UNCONNECTED ;
  wire \NLW_conversion/mult1_1_p<31>_UNCONNECTED ;
  wire \NLW_conversion/mult1_1_p<30>_UNCONNECTED ;
  wire \NLW_conversion/mult1_1_p<29>_UNCONNECTED ;
  wire \NLW_conversion/mult1_1_p<28>_UNCONNECTED ;
  wire \NLW_conversion/mult1_1_p<27>_UNCONNECTED ;
  wire \NLW_conversion/mult1_1_p<26>_UNCONNECTED ;
  wire \NLW_conversion/mult1_1_p<16>_UNCONNECTED ;
  wire \NLW_conversion/mult1_1_p<15>_UNCONNECTED ;
  wire \NLW_conversion/mult1_1_p<14>_UNCONNECTED ;
  wire \NLW_conversion/mult1_1_p<13>_UNCONNECTED ;
  wire \NLW_conversion/mult1_1_p<12>_UNCONNECTED ;
  wire \NLW_conversion/mult1_1_p<11>_UNCONNECTED ;
  wire \NLW_conversion/mult1_1_p<10>_UNCONNECTED ;
  wire \NLW_conversion/mult1_1_p<9>_UNCONNECTED ;
  wire \NLW_conversion/mult1_1_p<8>_UNCONNECTED ;
  wire \NLW_conversion/mult1_1_p<7>_UNCONNECTED ;
  wire \NLW_conversion/mult1_1_p<6>_UNCONNECTED ;
  wire \NLW_conversion/mult1_1_p<5>_UNCONNECTED ;
  wire \NLW_conversion/mult1_1_p<4>_UNCONNECTED ;
  wire \NLW_conversion/mult1_1_p<3>_UNCONNECTED ;
  wire \NLW_conversion/mult1_1_p<2>_UNCONNECTED ;
  wire \NLW_conversion/mult1_1_p<1>_UNCONNECTED ;
  wire \NLW_conversion/mult1_1_p<0>_UNCONNECTED ;
  wire \NLW_conversion/summ3_3_s<8>_UNCONNECTED ;
  wire \NLW_conversion/summ3_3_s<7>_UNCONNECTED ;
  wire \NLW_conversion/summ3_3_s<6>_UNCONNECTED ;
  wire \NLW_conversion/summ3_3_s<5>_UNCONNECTED ;
  wire \NLW_conversion/summ3_3_s<4>_UNCONNECTED ;
  wire \NLW_conversion/summ3_3_s<3>_UNCONNECTED ;
  wire \NLW_conversion/summ3_3_s<2>_UNCONNECTED ;
  wire \NLW_conversion/summ3_3_s<1>_UNCONNECTED ;
  wire \NLW_conversion/summ3_3_s<0>_UNCONNECTED ;
  wire \NLW_conversion/summ2_3_s<8>_UNCONNECTED ;
  wire \NLW_conversion/summ2_3_s<7>_UNCONNECTED ;
  wire \NLW_conversion/summ2_3_s<6>_UNCONNECTED ;
  wire \NLW_conversion/summ2_3_s<5>_UNCONNECTED ;
  wire \NLW_conversion/summ2_3_s<4>_UNCONNECTED ;
  wire \NLW_conversion/summ2_3_s<3>_UNCONNECTED ;
  wire \NLW_conversion/summ2_3_s<2>_UNCONNECTED ;
  wire \NLW_conversion/summ2_3_s<1>_UNCONNECTED ;
  wire \NLW_conversion/summ2_3_s<0>_UNCONNECTED ;
  wire \NLW_conversion/summ1_3_s<8>_UNCONNECTED ;
  wire \NLW_conversion/summ1_3_s<7>_UNCONNECTED ;
  wire \NLW_conversion/summ1_3_s<6>_UNCONNECTED ;
  wire \NLW_conversion/summ1_3_s<5>_UNCONNECTED ;
  wire \NLW_conversion/summ1_3_s<4>_UNCONNECTED ;
  wire \NLW_conversion/summ1_3_s<3>_UNCONNECTED ;
  wire \NLW_conversion/summ1_3_s<2>_UNCONNECTED ;
  wire \NLW_conversion/summ1_3_s<1>_UNCONNECTED ;
  wire \NLW_conversion/summ1_3_s<0>_UNCONNECTED ;
  wire [7 : 0] \dvi_rx1/dec_r/dout ;
  wire [7 : 0] \dvi_rx1/dec_g/dout ;
  wire [7 : 0] \dvi_rx1/dec_b/dout ;
  wire [0 : 0] \dvi_rx1/dec_r/data ;
  wire [9 : 0] \dvi_rx1/dec_r/rawword ;
  wire [4 : 0] \dvi_rx1/dec_r/raw5bit_q ;
  wire [9 : 0] \dvi_rx1/dec_r/cbnd/sdata ;
  wire [4 : 0] \dvi_rx1/dec_r/raw5bit ;
  wire [0 : 0] \dvi_rx1/dec_g/data ;
  wire [9 : 0] \dvi_rx1/dec_g/rawword ;
  wire [4 : 0] \dvi_rx1/dec_g/raw5bit_q ;
  wire [9 : 0] \dvi_rx1/dec_g/cbnd/sdata ;
  wire [4 : 0] \dvi_rx1/dec_g/raw5bit ;
  wire [0 : 0] \dvi_rx1/dec_b/data ;
  wire [9 : 0] \dvi_rx1/dec_b/rawword ;
  wire [4 : 0] \dvi_rx1/dec_b/raw5bit_q ;
  wire [9 : 0] \dvi_rx1/dec_b/cbnd/sdata ;
  wire [4 : 0] \dvi_rx1/dec_b/raw5bit ;
  wire [4 : 0] \dvi_rx1/dec_b/des_0/pdcounter ;
  wire [7 : 0] \dvi_rx1/dec_b/des_0/Mcount_counter_cy ;
  wire [7 : 0] \dvi_rx1/dec_b/des_0/Mcount_counter_lut ;
  wire [8 : 0] \dvi_rx1/dec_b/des_0/counter ;
  wire [0 : 0] \dvi_rx1/dec_b/des_0/busy_data_or ;
  wire [4 : 0] \dvi_rx1/dec_g/des_0/pdcounter ;
  wire [0 : 0] \dvi_rx1/dec_g/des_0/busy_data_or ;
  wire [4 : 0] \dvi_rx1/dec_r/des_0/pdcounter ;
  wire [0 : 0] \dvi_rx1/dec_r/des_0/busy_data_or ;
  wire [6 : 0] \dvi_rx1/dec_b/phsalgn_0/ctkn_counter ;
  wire [10 : 0] \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy ;
  wire [0 : 0] \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_lut ;
  wire [2 : 0] \dvi_rx1/dec_b/phsalgn_0/bitslip_cnt ;
  wire [11 : 0] \dvi_rx1/dec_b/phsalgn_0/Result ;
  wire [11 : 0] \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer ;
  wire [6 : 0] \dvi_rx1/dec_g/phsalgn_0/ctkn_counter ;
  wire [10 : 0] \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy ;
  wire [0 : 0] \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_lut ;
  wire [2 : 0] \dvi_rx1/dec_g/phsalgn_0/bitslip_cnt ;
  wire [11 : 0] \dvi_rx1/dec_g/phsalgn_0/Result ;
  wire [11 : 0] \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer ;
  wire [6 : 0] \dvi_rx1/dec_r/phsalgn_0/ctkn_counter ;
  wire [10 : 0] \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy ;
  wire [0 : 0] \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_lut ;
  wire [2 : 0] \dvi_rx1/dec_r/phsalgn_0/bitslip_cnt ;
  wire [11 : 0] \dvi_rx1/dec_r/phsalgn_0/Result ;
  wire [11 : 0] \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer ;
  wire [3 : 0] \dvi_rx1/dec_b/cbnd/ra ;
  wire [3 : 0] \dvi_rx1/dec_b/cbnd/wa ;
  wire [3 : 0] \dvi_rx1/dec_b/cbnd/Result ;
  wire [9 : 0] \dvi_rx1/dec_b/cbnd/dpfo_dout ;
  wire [3 : 0] \dvi_rx1/dec_g/cbnd/ra ;
  wire [3 : 0] \dvi_rx1/dec_g/cbnd/Result ;
  wire [9 : 0] \dvi_rx1/dec_g/cbnd/dpfo_dout ;
  wire [3 : 0] \dvi_rx1/dec_r/cbnd/ra ;
  wire [3 : 0] \dvi_rx1/dec_r/cbnd/Result ;
  wire [9 : 0] \dvi_rx1/dec_r/cbnd/dpfo_dout ;
  wire [8 : 0] \conversion/sum3_2 ;
  wire [8 : 0] \conversion/sum2_2 ;
  wire [8 : 0] \conversion/sum1_2 ;
  wire [8 : 0] \conversion/sum3_1 ;
  wire [8 : 0] \conversion/sum2_1 ;
  wire [8 : 0] \conversion/sum1_1 ;
  wire [25 : 17] \conversion/mul3_3 ;
  wire [25 : 17] \conversion/mul2_3 ;
  wire [25 : 17] \conversion/mul1_3 ;
  wire [25 : 17] \conversion/mul3_2 ;
  wire [25 : 17] \conversion/mul2_2 ;
  wire [25 : 17] \conversion/mul1_2 ;
  wire [25 : 17] \conversion/mul3_1 ;
  wire [25 : 17] \conversion/mul2_1 ;
  wire [25 : 17] \conversion/mul1_1 ;
  wire [0 : 0] \dvi_tx/tmdsclkint ;
  wire [2 : 0] \dvi_tx/tmdsint ;
  wire [14 : 0] \dvi_tx/n0011 ;
  wire [2 : 2] \dvi_tx/blue ;
  wire [14 : 0] \dvi_tx/pixel2x/mux ;
  wire [29 : 0] \dvi_tx/pixel2x/db ;
  wire [3 : 0] \dvi_tx/pixel2x/ra ;
  wire [3 : 0] \dvi_tx/pixel2x/wa ;
  wire [29 : 0] \dvi_tx/pixel2x/dataint ;
  VCC   XST_VCC (
    .P(\dvi_tx/blue [2])
  );
  GND   XST_GND (
    .G(clk)
  );
  BUFIO2 #(
    .DIVIDE_BYPASS ( "FALSE" ),
    .I_INVERT ( "FALSE" ),
    .USE_DOUBLER ( "FALSE" ),
    .DIVIDE ( 5 ))
  sysclk_div (
    .DIVCLK(clk25m),
    .IOCLK(NLW_sysclk_div_IOCLK_UNCONNECTED),
    .I(clk100_IBUF_9),
    .SERDESSTROBE(NLW_sysclk_div_SERDESSTROBE_UNCONNECTED)
  );
  BUFG   clk25_buf (
    .O(NLW_clk25_buf_O_UNCONNECTED),
    .I(clk25m)
  );
  BUFGMUX #(
    .CLK_SEL_TYPE ( "SYNC" ))
  tx_bufg_pclk (
    .S(\dvi_tx/blue [2]),
    .O(tx_pclk),
    .I0(rx_pllclk1),
    .I1(rx_pllclk1)
  );
  BUFG   tx_clkfb_buf (
    .O(tx_clkfbin),
    .I(tx_clkfbout)
  );
  BUFPLL #(
    .ENABLE_SYNC ( "TRUE" ),
    .DIVIDE ( 5 ))
  tx_ioclk_buf (
    .IOCLK(tx_pclkx10),
    .LOCK(NLW_tx_ioclk_buf_LOCK_UNCONNECTED),
    .SERDESSTROBE(tx_serdesstrobe),
    .PLLIN(tx_pllclk0),
    .GCLK(tx_pclkx2),
    .LOCKED(tx_plllckd)
  );
  BUFG   tx0_pclkx2_buf (
    .O(tx_pclkx2),
    .I(tx_pllclk2)
  );
  BUFG   \dvi_rx1/tmdsclk_bufg  (
    .O(\NLW_dvi_rx1/tmdsclk_bufg_O_UNCONNECTED ),
    .I(\dvi_rx1/rxclk )
  );
  BUFG   \dvi_rx1/pclkx2bufg  (
    .O(\dvi_rx1/pclkx2 ),
    .I(\dvi_rx1/pllclk2 )
  );
  BUFG   \dvi_rx1/pclkbufg  (
    .O(\dvi_rx1/pclk ),
    .I(rx_pllclk1)
  );
  BUFPLL #(
    .ENABLE_SYNC ( "TRUE" ),
    .DIVIDE ( 5 ))
  \dvi_rx1/ioclk_buf  (
    .IOCLK(\dvi_rx1/pclkx10 ),
    .LOCK(\dvi_rx1/bufpll_lock ),
    .SERDESSTROBE(\dvi_rx1/serdesstrobe ),
    .PLLIN(\dvi_rx1/pllclk0 ),
    .GCLK(\dvi_rx1/pclkx2 ),
    .LOCKED(\dvi_rx1/pll_lckd )
  );
  BUFIO2 #(
    .DIVIDE_BYPASS ( "TRUE" ),
    .I_INVERT ( "FALSE" ),
    .USE_DOUBLER ( "FALSE" ),
    .DIVIDE ( 1 ))
  \dvi_rx1/bufio_tmdsclk  (
    .DIVCLK(\dvi_rx1/rxclk ),
    .IOCLK(\NLW_dvi_rx1/bufio_tmdsclk_IOCLK_UNCONNECTED ),
    .I(\dvi_rx1/rxclkint ),
    .SERDESSTROBE(\NLW_dvi_rx1/bufio_tmdsclk_SERDESSTROBE_UNCONNECTED )
  );
  IBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DIFF_TERM ( "FALSE" ),
    .DQS_BIAS ( "FALSE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "TMDS_33" ))
  \dvi_rx1/ibuf_rxclk  (
    .I(RX1_TMDS[3]),
    .IB(RX1_TMDSB[3]),
    .O(\dvi_rx1/rxclkint )
  );
  FDRE   \dvi_rx1/dec_r/dout_7  (
    .C(\dvi_rx1/pclk ),
    .CE(\dvi_rx1/dec_r/n0050_inv ),
    .D(\dvi_rx1/dec_r/data[7]_data[7]_MUX_117_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_r/dout [7])
  );
  FDRE   \dvi_rx1/dec_r/dout_6  (
    .C(\dvi_rx1/pclk ),
    .CE(\dvi_rx1/dec_r/n0050_inv ),
    .D(\dvi_rx1/dec_r/data[6]_data[6]_MUX_116_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_r/dout [6])
  );
  FDRE   \dvi_rx1/dec_r/dout_5  (
    .C(\dvi_rx1/pclk ),
    .CE(\dvi_rx1/dec_r/n0050_inv ),
    .D(\dvi_rx1/dec_r/data[5]_data[5]_MUX_115_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_r/dout [5])
  );
  FDRE   \dvi_rx1/dec_r/dout_4  (
    .C(\dvi_rx1/pclk ),
    .CE(\dvi_rx1/dec_r/n0050_inv ),
    .D(\dvi_rx1/dec_r/data[4]_data[4]_MUX_114_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_r/dout [4])
  );
  FDRE   \dvi_rx1/dec_r/dout_3  (
    .C(\dvi_rx1/pclk ),
    .CE(\dvi_rx1/dec_r/n0050_inv ),
    .D(\dvi_rx1/dec_r/data[3]_data[3]_MUX_113_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_r/dout [3])
  );
  FDRE   \dvi_rx1/dec_r/dout_2  (
    .C(\dvi_rx1/pclk ),
    .CE(\dvi_rx1/dec_r/n0050_inv ),
    .D(\dvi_rx1/dec_r/data[2]_data[2]_MUX_112_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_r/dout [2])
  );
  FDRE   \dvi_rx1/dec_r/dout_1  (
    .C(\dvi_rx1/pclk ),
    .CE(\dvi_rx1/dec_r/n0050_inv ),
    .D(\dvi_rx1/dec_r/data[1]_data[1]_MUX_111_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_r/dout [1])
  );
  FDRE   \dvi_rx1/dec_r/dout_0  (
    .C(\dvi_rx1/pclk ),
    .CE(\dvi_rx1/dec_r/n0050_inv ),
    .D(\dvi_rx1/dec_r/data [0]),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_r/dout [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_r/bitslip_q  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_r/phsalgn_0/bitslip_114 ),
    .Q(\dvi_rx1/dec_r/bitslip_q_98 )
  );
  FDE   \dvi_rx1/dec_r/rawword_9  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_r/rx_toggle ),
    .D(\dvi_rx1/dec_r/raw5bit [4]),
    .Q(\dvi_rx1/dec_r/rawword [9])
  );
  FDE   \dvi_rx1/dec_r/rawword_8  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_r/rx_toggle ),
    .D(\dvi_rx1/dec_r/raw5bit [3]),
    .Q(\dvi_rx1/dec_r/rawword [8])
  );
  FDE   \dvi_rx1/dec_r/rawword_7  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_r/rx_toggle ),
    .D(\dvi_rx1/dec_r/raw5bit [2]),
    .Q(\dvi_rx1/dec_r/rawword [7])
  );
  FDE   \dvi_rx1/dec_r/rawword_6  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_r/rx_toggle ),
    .D(\dvi_rx1/dec_r/raw5bit [1]),
    .Q(\dvi_rx1/dec_r/rawword [6])
  );
  FDE   \dvi_rx1/dec_r/rawword_5  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_r/rx_toggle ),
    .D(\dvi_rx1/dec_r/raw5bit [0]),
    .Q(\dvi_rx1/dec_r/rawword [5])
  );
  FDE   \dvi_rx1/dec_r/rawword_4  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_r/rx_toggle ),
    .D(\dvi_rx1/dec_r/raw5bit_q [4]),
    .Q(\dvi_rx1/dec_r/rawword [4])
  );
  FDE   \dvi_rx1/dec_r/rawword_3  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_r/rx_toggle ),
    .D(\dvi_rx1/dec_r/raw5bit_q [3]),
    .Q(\dvi_rx1/dec_r/rawword [3])
  );
  FDE   \dvi_rx1/dec_r/rawword_2  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_r/rx_toggle ),
    .D(\dvi_rx1/dec_r/raw5bit_q [2]),
    .Q(\dvi_rx1/dec_r/rawword [2])
  );
  FDE   \dvi_rx1/dec_r/rawword_1  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_r/rx_toggle ),
    .D(\dvi_rx1/dec_r/raw5bit_q [1]),
    .Q(\dvi_rx1/dec_r/rawword [1])
  );
  FDE   \dvi_rx1/dec_r/rawword_0  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_r/rx_toggle ),
    .D(\dvi_rx1/dec_r/raw5bit_q [0]),
    .Q(\dvi_rx1/dec_r/rawword [0])
  );
  FD   \dvi_rx1/dec_r/raw5bit_q_4  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_r/raw5bit [4]),
    .Q(\dvi_rx1/dec_r/raw5bit_q [4])
  );
  FD   \dvi_rx1/dec_r/raw5bit_q_3  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_r/raw5bit [3]),
    .Q(\dvi_rx1/dec_r/raw5bit_q [3])
  );
  FD   \dvi_rx1/dec_r/raw5bit_q_2  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_r/raw5bit [2]),
    .Q(\dvi_rx1/dec_r/raw5bit_q [2])
  );
  FD   \dvi_rx1/dec_r/raw5bit_q_1  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_r/raw5bit [1]),
    .Q(\dvi_rx1/dec_r/raw5bit_q [1])
  );
  FD   \dvi_rx1/dec_r/raw5bit_q_0  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_r/raw5bit [0]),
    .Q(\dvi_rx1/dec_r/raw5bit_q [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_r/bitslipx2  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_r/bitslip_bitslip_q_AND_1_o ),
    .Q(\dvi_rx1/dec_r/bitslipx2_97 )
  );
  FD   \dvi_rx1/dec_r/flipgearx2  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_r/phsalgn_0/flipgear_115 ),
    .Q(\dvi_rx1/dec_r/flipgearx2_96 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_r/toggle  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/toggle_INV_3_o ),
    .Q(\dvi_rx1/dec_r/toggle_207 )
  );
  FDRE   \dvi_rx1/dec_g/dout_7  (
    .C(\dvi_rx1/pclk ),
    .CE(\dvi_rx1/dec_g/n0050_inv ),
    .D(\dvi_rx1/dec_g/data[7]_data[7]_MUX_117_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_g/dout [7])
  );
  FDRE   \dvi_rx1/dec_g/dout_6  (
    .C(\dvi_rx1/pclk ),
    .CE(\dvi_rx1/dec_g/n0050_inv ),
    .D(\dvi_rx1/dec_g/data[6]_data[6]_MUX_116_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_g/dout [6])
  );
  FDRE   \dvi_rx1/dec_g/dout_5  (
    .C(\dvi_rx1/pclk ),
    .CE(\dvi_rx1/dec_g/n0050_inv ),
    .D(\dvi_rx1/dec_g/data[5]_data[5]_MUX_115_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_g/dout [5])
  );
  FDRE   \dvi_rx1/dec_g/dout_4  (
    .C(\dvi_rx1/pclk ),
    .CE(\dvi_rx1/dec_g/n0050_inv ),
    .D(\dvi_rx1/dec_g/data[4]_data[4]_MUX_114_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_g/dout [4])
  );
  FDRE   \dvi_rx1/dec_g/dout_3  (
    .C(\dvi_rx1/pclk ),
    .CE(\dvi_rx1/dec_g/n0050_inv ),
    .D(\dvi_rx1/dec_g/data[3]_data[3]_MUX_113_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_g/dout [3])
  );
  FDRE   \dvi_rx1/dec_g/dout_2  (
    .C(\dvi_rx1/pclk ),
    .CE(\dvi_rx1/dec_g/n0050_inv ),
    .D(\dvi_rx1/dec_g/data[2]_data[2]_MUX_112_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_g/dout [2])
  );
  FDRE   \dvi_rx1/dec_g/dout_1  (
    .C(\dvi_rx1/pclk ),
    .CE(\dvi_rx1/dec_g/n0050_inv ),
    .D(\dvi_rx1/dec_g/data[1]_data[1]_MUX_111_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_g/dout [1])
  );
  FDRE   \dvi_rx1/dec_g/dout_0  (
    .C(\dvi_rx1/pclk ),
    .CE(\dvi_rx1/dec_g/n0050_inv ),
    .D(\dvi_rx1/dec_g/data [0]),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_g/dout [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_g/bitslip_q  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_g/phsalgn_0/bitslip_160 ),
    .Q(\dvi_rx1/dec_g/bitslip_q_144 )
  );
  FDE   \dvi_rx1/dec_g/rawword_9  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_g/rx_toggle ),
    .D(\dvi_rx1/dec_g/raw5bit [4]),
    .Q(\dvi_rx1/dec_g/rawword [9])
  );
  FDE   \dvi_rx1/dec_g/rawword_8  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_g/rx_toggle ),
    .D(\dvi_rx1/dec_g/raw5bit [3]),
    .Q(\dvi_rx1/dec_g/rawword [8])
  );
  FDE   \dvi_rx1/dec_g/rawword_7  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_g/rx_toggle ),
    .D(\dvi_rx1/dec_g/raw5bit [2]),
    .Q(\dvi_rx1/dec_g/rawword [7])
  );
  FDE   \dvi_rx1/dec_g/rawword_6  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_g/rx_toggle ),
    .D(\dvi_rx1/dec_g/raw5bit [1]),
    .Q(\dvi_rx1/dec_g/rawword [6])
  );
  FDE   \dvi_rx1/dec_g/rawword_5  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_g/rx_toggle ),
    .D(\dvi_rx1/dec_g/raw5bit [0]),
    .Q(\dvi_rx1/dec_g/rawword [5])
  );
  FDE   \dvi_rx1/dec_g/rawword_4  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_g/rx_toggle ),
    .D(\dvi_rx1/dec_g/raw5bit_q [4]),
    .Q(\dvi_rx1/dec_g/rawword [4])
  );
  FDE   \dvi_rx1/dec_g/rawword_3  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_g/rx_toggle ),
    .D(\dvi_rx1/dec_g/raw5bit_q [3]),
    .Q(\dvi_rx1/dec_g/rawword [3])
  );
  FDE   \dvi_rx1/dec_g/rawword_2  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_g/rx_toggle ),
    .D(\dvi_rx1/dec_g/raw5bit_q [2]),
    .Q(\dvi_rx1/dec_g/rawword [2])
  );
  FDE   \dvi_rx1/dec_g/rawword_1  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_g/rx_toggle ),
    .D(\dvi_rx1/dec_g/raw5bit_q [1]),
    .Q(\dvi_rx1/dec_g/rawword [1])
  );
  FDE   \dvi_rx1/dec_g/rawword_0  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_g/rx_toggle ),
    .D(\dvi_rx1/dec_g/raw5bit_q [0]),
    .Q(\dvi_rx1/dec_g/rawword [0])
  );
  FD   \dvi_rx1/dec_g/raw5bit_q_4  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_g/raw5bit [4]),
    .Q(\dvi_rx1/dec_g/raw5bit_q [4])
  );
  FD   \dvi_rx1/dec_g/raw5bit_q_3  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_g/raw5bit [3]),
    .Q(\dvi_rx1/dec_g/raw5bit_q [3])
  );
  FD   \dvi_rx1/dec_g/raw5bit_q_2  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_g/raw5bit [2]),
    .Q(\dvi_rx1/dec_g/raw5bit_q [2])
  );
  FD   \dvi_rx1/dec_g/raw5bit_q_1  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_g/raw5bit [1]),
    .Q(\dvi_rx1/dec_g/raw5bit_q [1])
  );
  FD   \dvi_rx1/dec_g/raw5bit_q_0  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_g/raw5bit [0]),
    .Q(\dvi_rx1/dec_g/raw5bit_q [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_g/bitslipx2  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_g/bitslip_bitslip_q_AND_1_o ),
    .Q(\dvi_rx1/dec_g/bitslipx2_143 )
  );
  FD   \dvi_rx1/dec_g/flipgearx2  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_g/phsalgn_0/flipgear_161 ),
    .Q(\dvi_rx1/dec_g/flipgearx2_142 )
  );
  FDRE   \dvi_rx1/dec_b/dout_7  (
    .C(\dvi_rx1/pclk ),
    .CE(\dvi_rx1/dec_b/n0050_inv ),
    .D(\dvi_rx1/dec_b/data[7]_data[7]_MUX_117_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_b/dout [7])
  );
  FDRE   \dvi_rx1/dec_b/dout_6  (
    .C(\dvi_rx1/pclk ),
    .CE(\dvi_rx1/dec_b/n0050_inv ),
    .D(\dvi_rx1/dec_b/data[6]_data[6]_MUX_116_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_b/dout [6])
  );
  FDRE   \dvi_rx1/dec_b/dout_5  (
    .C(\dvi_rx1/pclk ),
    .CE(\dvi_rx1/dec_b/n0050_inv ),
    .D(\dvi_rx1/dec_b/data[5]_data[5]_MUX_115_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_b/dout [5])
  );
  FDRE   \dvi_rx1/dec_b/dout_4  (
    .C(\dvi_rx1/pclk ),
    .CE(\dvi_rx1/dec_b/n0050_inv ),
    .D(\dvi_rx1/dec_b/data[4]_data[4]_MUX_114_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_b/dout [4])
  );
  FDRE   \dvi_rx1/dec_b/dout_3  (
    .C(\dvi_rx1/pclk ),
    .CE(\dvi_rx1/dec_b/n0050_inv ),
    .D(\dvi_rx1/dec_b/data[3]_data[3]_MUX_113_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_b/dout [3])
  );
  FDRE   \dvi_rx1/dec_b/dout_2  (
    .C(\dvi_rx1/pclk ),
    .CE(\dvi_rx1/dec_b/n0050_inv ),
    .D(\dvi_rx1/dec_b/data[2]_data[2]_MUX_112_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_b/dout [2])
  );
  FDRE   \dvi_rx1/dec_b/dout_1  (
    .C(\dvi_rx1/pclk ),
    .CE(\dvi_rx1/dec_b/n0050_inv ),
    .D(\dvi_rx1/dec_b/data[1]_data[1]_MUX_111_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_b/dout [1])
  );
  FDRE   \dvi_rx1/dec_b/dout_0  (
    .C(\dvi_rx1/pclk ),
    .CE(\dvi_rx1/dec_b/n0050_inv ),
    .D(\dvi_rx1/dec_b/data [0]),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_b/dout [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_b/bitslip_q  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_b/phsalgn_0/bitslip_208 ),
    .Q(\dvi_rx1/dec_b/bitslip_q_191 )
  );
  FDE   \dvi_rx1/dec_b/rawword_9  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/rx_toggle ),
    .D(\dvi_rx1/dec_b/raw5bit [4]),
    .Q(\dvi_rx1/dec_b/rawword [9])
  );
  FDE   \dvi_rx1/dec_b/rawword_8  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/rx_toggle ),
    .D(\dvi_rx1/dec_b/raw5bit [3]),
    .Q(\dvi_rx1/dec_b/rawword [8])
  );
  FDE   \dvi_rx1/dec_b/rawword_7  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/rx_toggle ),
    .D(\dvi_rx1/dec_b/raw5bit [2]),
    .Q(\dvi_rx1/dec_b/rawword [7])
  );
  FDE   \dvi_rx1/dec_b/rawword_6  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/rx_toggle ),
    .D(\dvi_rx1/dec_b/raw5bit [1]),
    .Q(\dvi_rx1/dec_b/rawword [6])
  );
  FDE   \dvi_rx1/dec_b/rawword_5  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/rx_toggle ),
    .D(\dvi_rx1/dec_b/raw5bit [0]),
    .Q(\dvi_rx1/dec_b/rawword [5])
  );
  FDE   \dvi_rx1/dec_b/rawword_4  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/rx_toggle ),
    .D(\dvi_rx1/dec_b/raw5bit_q [4]),
    .Q(\dvi_rx1/dec_b/rawword [4])
  );
  FDE   \dvi_rx1/dec_b/rawword_3  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/rx_toggle ),
    .D(\dvi_rx1/dec_b/raw5bit_q [3]),
    .Q(\dvi_rx1/dec_b/rawword [3])
  );
  FDE   \dvi_rx1/dec_b/rawword_2  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/rx_toggle ),
    .D(\dvi_rx1/dec_b/raw5bit_q [2]),
    .Q(\dvi_rx1/dec_b/rawword [2])
  );
  FDE   \dvi_rx1/dec_b/rawword_1  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/rx_toggle ),
    .D(\dvi_rx1/dec_b/raw5bit_q [1]),
    .Q(\dvi_rx1/dec_b/rawword [1])
  );
  FDE   \dvi_rx1/dec_b/rawword_0  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/rx_toggle ),
    .D(\dvi_rx1/dec_b/raw5bit_q [0]),
    .Q(\dvi_rx1/dec_b/rawword [0])
  );
  FD   \dvi_rx1/dec_b/raw5bit_q_4  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_b/raw5bit [4]),
    .Q(\dvi_rx1/dec_b/raw5bit_q [4])
  );
  FD   \dvi_rx1/dec_b/raw5bit_q_3  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_b/raw5bit [3]),
    .Q(\dvi_rx1/dec_b/raw5bit_q [3])
  );
  FD   \dvi_rx1/dec_b/raw5bit_q_2  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_b/raw5bit [2]),
    .Q(\dvi_rx1/dec_b/raw5bit_q [2])
  );
  FD   \dvi_rx1/dec_b/raw5bit_q_1  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_b/raw5bit [1]),
    .Q(\dvi_rx1/dec_b/raw5bit_q [1])
  );
  FD   \dvi_rx1/dec_b/raw5bit_q_0  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_b/raw5bit [0]),
    .Q(\dvi_rx1/dec_b/raw5bit_q [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_b/bitslipx2  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_b/bitslip_bitslip_q_AND_1_o ),
    .Q(\dvi_rx1/dec_b/bitslipx2_190 )
  );
  FD   \dvi_rx1/dec_b/flipgearx2  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_b/phsalgn_0/flipgear_209 ),
    .Q(\dvi_rx1/dec_b/flipgearx2_189 )
  );
  ISERDES2 #(
    .BITSLIP_ENABLE ( "TRUE" ),
    .DATA_RATE ( "SDR" ),
    .INTERFACE_TYPE ( "RETIMED" ),
    .SERDES_MODE ( "SLAVE" ),
    .DATA_WIDTH ( 5 ))
  \dvi_rx1/dec_b/des_0/iserdes_s  (
    .CFB0(\NLW_dvi_rx1/dec_b/des_0/iserdes_s_CFB0_UNCONNECTED ),
    .CLKDIV(\dvi_rx1/pclkx2 ),
    .Q3(\NLW_dvi_rx1/dec_b/des_0/iserdes_s_Q3_UNCONNECTED ),
    .DFB(\NLW_dvi_rx1/dec_b/des_0/iserdes_s_DFB_UNCONNECTED ),
    .CE0(\dvi_tx/blue [2]),
    .CFB1(\NLW_dvi_rx1/dec_b/des_0/iserdes_s_CFB1_UNCONNECTED ),
    .INCDEC(\NLW_dvi_rx1/dec_b/des_0/iserdes_s_INCDEC_UNCONNECTED ),
    .CLK0(\dvi_rx1/pclkx10 ),
    .IOCE(\dvi_rx1/serdesstrobe ),
    .SHIFTIN(\dvi_rx1/dec_b/des_0/cascade ),
    .VALID(\NLW_dvi_rx1/dec_b/des_0/iserdes_s_VALID_UNCONNECTED ),
    .Q4(\dvi_rx1/dec_b/raw5bit [0]),
    .Q2(\NLW_dvi_rx1/dec_b/des_0/iserdes_s_Q2_UNCONNECTED ),
    .Q1(\NLW_dvi_rx1/dec_b/des_0/iserdes_s_Q1_UNCONNECTED ),
    .FABRICOUT(\NLW_dvi_rx1/dec_b/des_0/iserdes_s_FABRICOUT_UNCONNECTED ),
    .CLK1(clk),
    .D(\dvi_rx1/dec_b/des_0/ddly_s ),
    .RST(rx_reset),
    .BITSLIP(\dvi_rx1/dec_b/bitslipx2_190 ),
    .SHIFTOUT(\dvi_rx1/dec_b/des_0/pd_edge )
  );
  ISERDES2 #(
    .BITSLIP_ENABLE ( "TRUE" ),
    .DATA_RATE ( "SDR" ),
    .INTERFACE_TYPE ( "RETIMED" ),
    .SERDES_MODE ( "MASTER" ),
    .DATA_WIDTH ( 5 ))
  \dvi_rx1/dec_b/des_0/iserdes_m  (
    .CFB0(\NLW_dvi_rx1/dec_b/des_0/iserdes_m_CFB0_UNCONNECTED ),
    .CLKDIV(\dvi_rx1/pclkx2 ),
    .Q3(\dvi_rx1/dec_b/raw5bit [3]),
    .DFB(\NLW_dvi_rx1/dec_b/des_0/iserdes_m_DFB_UNCONNECTED ),
    .CE0(\dvi_tx/blue [2]),
    .CFB1(\NLW_dvi_rx1/dec_b/des_0/iserdes_m_CFB1_UNCONNECTED ),
    .INCDEC(\dvi_rx1/dec_b/des_0/incdec_data_im ),
    .CLK0(\dvi_rx1/pclkx10 ),
    .IOCE(\dvi_rx1/serdesstrobe ),
    .SHIFTIN(\dvi_rx1/dec_b/des_0/pd_edge ),
    .VALID(\dvi_rx1/dec_b/des_0/valid_data_im ),
    .Q4(\dvi_rx1/dec_b/raw5bit [4]),
    .Q2(\dvi_rx1/dec_b/raw5bit [2]),
    .Q1(\dvi_rx1/dec_b/raw5bit [1]),
    .FABRICOUT(\NLW_dvi_rx1/dec_b/des_0/iserdes_m_FABRICOUT_UNCONNECTED ),
    .CLK1(clk),
    .D(\dvi_rx1/dec_b/des_0/ddly_m ),
    .RST(rx_reset),
    .BITSLIP(\dvi_rx1/dec_b/bitslipx2_190 ),
    .SHIFTOUT(\dvi_rx1/dec_b/des_0/cascade )
  );
  IODELAY2 #(
    .COUNTER_WRAPAROUND ( "WRAPAROUND" ),
    .DATA_RATE ( "SDR" ),
    .DELAY_SRC ( "IDATAIN" ),
    .IDELAY_MODE ( "NORMAL" ),
    .IDELAY_TYPE ( "DIFF_PHASE_DETECTOR" ),
    .SERDES_MODE ( "SLAVE" ),
    .IDELAY2_VALUE ( 0 ),
    .IDELAY_VALUE ( 0 ),
    .ODELAY_VALUE ( 0 ),
    .SIM_TAPDELAY_VALUE ( 49 ))
  \dvi_rx1/dec_b/des_0/iodelay_s  (
    .BUSY(\dvi_rx1/dec_b/des_0/busy_data_or [0]),
    .T(\dvi_tx/blue [2]),
    .CAL(\dvi_rx1/dec_b/des_0/cal_data_sint_275 ),
    .DOUT(\NLW_dvi_rx1/dec_b/des_0/iodelay_s_DOUT_UNCONNECTED ),
    .IOCLK0(\dvi_rx1/pclkx10 ),
    .IOCLK1(clk),
    .CLK(\dvi_rx1/pclkx2 ),
    .IDATAIN(\dvi_rx1/dec_b/des_0/rx_data_in ),
    .INC(\dvi_rx1/dec_b/des_0/inc_data_int_266 ),
    .CE(\dvi_rx1/dec_b/des_0/ce_data_268 ),
    .DATAOUT(\dvi_rx1/dec_b/des_0/ddly_s ),
    .DATAOUT2(\NLW_dvi_rx1/dec_b/des_0/iodelay_s_DATAOUT2_UNCONNECTED ),
    .RST(\dvi_rx1/dec_b/des_0/rst_data_267 ),
    .ODATAIN(clk),
    .TOUT(\NLW_dvi_rx1/dec_b/des_0/iodelay_s_TOUT_UNCONNECTED )
  );
  IODELAY2 #(
    .COUNTER_WRAPAROUND ( "STAY_AT_LIMIT" ),
    .DATA_RATE ( "SDR" ),
    .DELAY_SRC ( "IDATAIN" ),
    .IDELAY_MODE ( "NORMAL" ),
    .IDELAY_TYPE ( "DIFF_PHASE_DETECTOR" ),
    .SERDES_MODE ( "MASTER" ),
    .IDELAY2_VALUE ( 0 ),
    .IDELAY_VALUE ( 0 ),
    .ODELAY_VALUE ( 0 ),
    .SIM_TAPDELAY_VALUE ( 49 ))
  \dvi_rx1/dec_b/des_0/iodelay_m  (
    .BUSY(\NLW_dvi_rx1/dec_b/des_0/iodelay_m_BUSY_UNCONNECTED ),
    .T(\dvi_tx/blue [2]),
    .CAL(\dvi_rx1/dec_b/des_0/cal_data_master_276 ),
    .DOUT(\NLW_dvi_rx1/dec_b/des_0/iodelay_m_DOUT_UNCONNECTED ),
    .IOCLK0(\dvi_rx1/pclkx10 ),
    .IOCLK1(clk),
    .CLK(\dvi_rx1/pclkx2 ),
    .IDATAIN(\dvi_rx1/dec_b/des_0/rx_data_in ),
    .INC(\dvi_rx1/dec_b/des_0/inc_data_int_266 ),
    .CE(\dvi_rx1/dec_b/des_0/ce_data_268 ),
    .DATAOUT(\dvi_rx1/dec_b/des_0/ddly_m ),
    .DATAOUT2(\NLW_dvi_rx1/dec_b/des_0/iodelay_m_DATAOUT2_UNCONNECTED ),
    .RST(\dvi_rx1/dec_b/des_0/rst_data_267 ),
    .ODATAIN(clk),
    .TOUT(\NLW_dvi_rx1/dec_b/des_0/iodelay_m_TOUT_UNCONNECTED )
  );
  IBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DIFF_TERM ( "FALSE" ),
    .DQS_BIAS ( "FALSE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ))
  \dvi_rx1/dec_b/des_0/data_in  (
    .I(RX1_TMDS[0]),
    .IB(RX1_TMDSB[0]),
    .O(\dvi_rx1/dec_b/des_0/rx_data_in )
  );
  FDC   \dvi_rx1/dec_b/des_0/state_FSM_FFd2  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/state_FSM_FFd2-In ),
    .Q(\dvi_rx1/dec_b/des_0/state_FSM_FFd2_283 )
  );
  FDC   \dvi_rx1/dec_b/des_0/state_FSM_FFd3  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/state_FSM_FFd3-In ),
    .Q(\dvi_rx1/dec_b/des_0/state_FSM_FFd3_282 )
  );
  FDC   \dvi_rx1/dec_b/des_0/state_FSM_FFd4  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/state_FSM_FFd4-In ),
    .Q(\dvi_rx1/dec_b/des_0/state_FSM_FFd4_281 )
  );
  FDC   \dvi_rx1/dec_b/des_0/counter_8  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/Mcount_counter8 ),
    .Q(\dvi_rx1/dec_b/des_0/counter [8])
  );
  FDC   \dvi_rx1/dec_b/des_0/counter_7  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/Mcount_counter7 ),
    .Q(\dvi_rx1/dec_b/des_0/counter [7])
  );
  FDC   \dvi_rx1/dec_b/des_0/counter_6  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/Mcount_counter6 ),
    .Q(\dvi_rx1/dec_b/des_0/counter [6])
  );
  FDC   \dvi_rx1/dec_b/des_0/counter_5  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/Mcount_counter5 ),
    .Q(\dvi_rx1/dec_b/des_0/counter [5])
  );
  FDC   \dvi_rx1/dec_b/des_0/counter_4  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/Mcount_counter4 ),
    .Q(\dvi_rx1/dec_b/des_0/counter [4])
  );
  FDC   \dvi_rx1/dec_b/des_0/counter_3  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/Mcount_counter3 ),
    .Q(\dvi_rx1/dec_b/des_0/counter [3])
  );
  FDC   \dvi_rx1/dec_b/des_0/counter_2  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/Mcount_counter2 ),
    .Q(\dvi_rx1/dec_b/des_0/counter [2])
  );
  FDC   \dvi_rx1/dec_b/des_0/counter_1  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/Mcount_counter1 ),
    .Q(\dvi_rx1/dec_b/des_0/counter [1])
  );
  FDC   \dvi_rx1/dec_b/des_0/counter_0  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/Mcount_counter ),
    .Q(\dvi_rx1/dec_b/des_0/counter [0])
  );
  XORCY   \dvi_rx1/dec_b/des_0/Mcount_counter_xor<8>  (
    .CI(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [7]),
    .LI(clk),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter8 )
  );
  XORCY   \dvi_rx1/dec_b/des_0/Mcount_counter_xor<7>  (
    .CI(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [6]),
    .LI(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [7]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter7 )
  );
  MUXCY   \dvi_rx1/dec_b/des_0/Mcount_counter_cy<7>  (
    .CI(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [6]),
    .DI(clk),
    .S(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [7]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_rx1/dec_b/des_0/Mcount_counter_lut<7>  (
    .I0(\dvi_rx1/dec_b/des_0/counter [8]),
    .I1(\dvi_rx1/dec_b/des_0/counter [7]),
    .I2(clk),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [7])
  );
  XORCY   \dvi_rx1/dec_b/des_0/Mcount_counter_xor<6>  (
    .CI(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [5]),
    .LI(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [6]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter6 )
  );
  MUXCY   \dvi_rx1/dec_b/des_0/Mcount_counter_cy<6>  (
    .CI(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [5]),
    .DI(clk),
    .S(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [6]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_rx1/dec_b/des_0/Mcount_counter_lut<6>  (
    .I0(\dvi_rx1/dec_b/des_0/counter [8]),
    .I1(\dvi_rx1/dec_b/des_0/counter [6]),
    .I2(clk),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [6])
  );
  XORCY   \dvi_rx1/dec_b/des_0/Mcount_counter_xor<5>  (
    .CI(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [4]),
    .LI(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [5]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter5 )
  );
  MUXCY   \dvi_rx1/dec_b/des_0/Mcount_counter_cy<5>  (
    .CI(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [4]),
    .DI(clk),
    .S(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [5]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_rx1/dec_b/des_0/Mcount_counter_lut<5>  (
    .I0(\dvi_rx1/dec_b/des_0/counter [8]),
    .I1(\dvi_rx1/dec_b/des_0/counter [5]),
    .I2(clk),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [5])
  );
  XORCY   \dvi_rx1/dec_b/des_0/Mcount_counter_xor<4>  (
    .CI(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [3]),
    .LI(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [4]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter4 )
  );
  MUXCY   \dvi_rx1/dec_b/des_0/Mcount_counter_cy<4>  (
    .CI(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [3]),
    .DI(clk),
    .S(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [4]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_rx1/dec_b/des_0/Mcount_counter_lut<4>  (
    .I0(\dvi_rx1/dec_b/des_0/counter [8]),
    .I1(\dvi_rx1/dec_b/des_0/counter [4]),
    .I2(clk),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [4])
  );
  XORCY   \dvi_rx1/dec_b/des_0/Mcount_counter_xor<3>  (
    .CI(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [2]),
    .LI(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [3]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter3 )
  );
  MUXCY   \dvi_rx1/dec_b/des_0/Mcount_counter_cy<3>  (
    .CI(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [2]),
    .DI(clk),
    .S(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [3]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_rx1/dec_b/des_0/Mcount_counter_lut<3>  (
    .I0(\dvi_rx1/dec_b/des_0/counter [8]),
    .I1(\dvi_rx1/dec_b/des_0/counter [3]),
    .I2(clk),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [3])
  );
  XORCY   \dvi_rx1/dec_b/des_0/Mcount_counter_xor<2>  (
    .CI(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [1]),
    .LI(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [2]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter2 )
  );
  MUXCY   \dvi_rx1/dec_b/des_0/Mcount_counter_cy<2>  (
    .CI(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [1]),
    .DI(clk),
    .S(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [2]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_rx1/dec_b/des_0/Mcount_counter_lut<2>  (
    .I0(\dvi_rx1/dec_b/des_0/counter [8]),
    .I1(\dvi_rx1/dec_b/des_0/counter [2]),
    .I2(clk),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [2])
  );
  XORCY   \dvi_rx1/dec_b/des_0/Mcount_counter_xor<1>  (
    .CI(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [0]),
    .LI(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [1]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter1 )
  );
  MUXCY   \dvi_rx1/dec_b/des_0/Mcount_counter_cy<1>  (
    .CI(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [0]),
    .DI(clk),
    .S(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [1]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_rx1/dec_b/des_0/Mcount_counter_lut<1>  (
    .I0(\dvi_rx1/dec_b/des_0/counter [8]),
    .I1(\dvi_rx1/dec_b/des_0/counter [1]),
    .I2(clk),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [1])
  );
  XORCY   \dvi_rx1/dec_b/des_0/Mcount_counter_xor<0>  (
    .CI(\dvi_rx1/dec_b/des_0/counter<8>_inv ),
    .LI(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [0]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter )
  );
  MUXCY   \dvi_rx1/dec_b/des_0/Mcount_counter_cy<0>  (
    .CI(\dvi_rx1/dec_b/des_0/counter<8>_inv ),
    .DI(clk),
    .S(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [0]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_rx1/dec_b/des_0/Mcount_counter_lut<0>  (
    .I0(\dvi_rx1/dec_b/des_0/counter [8]),
    .I1(\dvi_rx1/dec_b/des_0/counter [0]),
    .I2(clk),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [0])
  );
  FDE   \dvi_rx1/dec_b/des_0/valid_data_d  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/des_0/reset_inv ),
    .D(\dvi_rx1/dec_b/des_0/valid_data_im ),
    .Q(\dvi_rx1/dec_b/des_0/valid_data_d_269 )
  );
  FDE   \dvi_rx1/dec_b/des_0/incdec_data_d  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/des_0/reset_inv ),
    .D(\dvi_rx1/dec_b/des_0/incdec_data_im ),
    .Q(\dvi_rx1/dec_b/des_0/incdec_data_d_270 )
  );
  FDCE   \dvi_rx1/dec_b/des_0/pdcounter_4  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/des_0/_n0278_inv1_994 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/pdcounter_4_dpot_1128 ),
    .Q(\dvi_rx1/dec_b/des_0/pdcounter [4])
  );
  FDPE   \dvi_rx1/dec_b/des_0/pdcounter_3  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/des_0/_n0278_inv1_994 ),
    .D(\dvi_rx1/dec_b/des_0/pdcounter_3_dpot_1118 ),
    .PRE(rx_reset),
    .Q(\dvi_rx1/dec_b/des_0/pdcounter [3])
  );
  FDCE   \dvi_rx1/dec_b/des_0/pdcounter_2  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/des_0/_n0278_inv1_994 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/pdcounter_2_dpot_1117 ),
    .Q(\dvi_rx1/dec_b/des_0/pdcounter [2])
  );
  FDCE   \dvi_rx1/dec_b/des_0/pdcounter_1  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/des_0/_n0278_inv1_994 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/pdcounter_1_dpot_1116 ),
    .Q(\dvi_rx1/dec_b/des_0/pdcounter [1])
  );
  FDCE   \dvi_rx1/dec_b/des_0/pdcounter_0  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/des_0/_n0278_inv1_994 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/pdcounter_0_dpot_1110 ),
    .Q(\dvi_rx1/dec_b/des_0/pdcounter [0])
  );
  FDE   \dvi_rx1/dec_b/des_0/busy_data_d  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/des_0/reset_inv ),
    .D(\dvi_rx1/dec_b/des_0/busy_data_or [0]),
    .Q(\dvi_rx1/dec_b/des_0/busy_data_d_271 )
  );
  ISERDES2 #(
    .BITSLIP_ENABLE ( "TRUE" ),
    .DATA_RATE ( "SDR" ),
    .INTERFACE_TYPE ( "RETIMED" ),
    .SERDES_MODE ( "SLAVE" ),
    .DATA_WIDTH ( 5 ))
  \dvi_rx1/dec_g/des_0/iserdes_s  (
    .CFB0(\NLW_dvi_rx1/dec_g/des_0/iserdes_s_CFB0_UNCONNECTED ),
    .CLKDIV(\dvi_rx1/pclkx2 ),
    .Q3(\NLW_dvi_rx1/dec_g/des_0/iserdes_s_Q3_UNCONNECTED ),
    .DFB(\NLW_dvi_rx1/dec_g/des_0/iserdes_s_DFB_UNCONNECTED ),
    .CE0(\dvi_tx/blue [2]),
    .CFB1(\NLW_dvi_rx1/dec_g/des_0/iserdes_s_CFB1_UNCONNECTED ),
    .INCDEC(\NLW_dvi_rx1/dec_g/des_0/iserdes_s_INCDEC_UNCONNECTED ),
    .CLK0(\dvi_rx1/pclkx10 ),
    .IOCE(\dvi_rx1/serdesstrobe ),
    .SHIFTIN(\dvi_rx1/dec_g/des_0/cascade ),
    .VALID(\NLW_dvi_rx1/dec_g/des_0/iserdes_s_VALID_UNCONNECTED ),
    .Q4(\dvi_rx1/dec_g/raw5bit [0]),
    .Q2(\NLW_dvi_rx1/dec_g/des_0/iserdes_s_Q2_UNCONNECTED ),
    .Q1(\NLW_dvi_rx1/dec_g/des_0/iserdes_s_Q1_UNCONNECTED ),
    .FABRICOUT(\NLW_dvi_rx1/dec_g/des_0/iserdes_s_FABRICOUT_UNCONNECTED ),
    .CLK1(clk),
    .D(\dvi_rx1/dec_g/des_0/ddly_s ),
    .RST(rx_reset),
    .BITSLIP(\dvi_rx1/dec_g/bitslipx2_143 ),
    .SHIFTOUT(\dvi_rx1/dec_g/des_0/pd_edge )
  );
  ISERDES2 #(
    .BITSLIP_ENABLE ( "TRUE" ),
    .DATA_RATE ( "SDR" ),
    .INTERFACE_TYPE ( "RETIMED" ),
    .SERDES_MODE ( "MASTER" ),
    .DATA_WIDTH ( 5 ))
  \dvi_rx1/dec_g/des_0/iserdes_m  (
    .CFB0(\NLW_dvi_rx1/dec_g/des_0/iserdes_m_CFB0_UNCONNECTED ),
    .CLKDIV(\dvi_rx1/pclkx2 ),
    .Q3(\dvi_rx1/dec_g/raw5bit [3]),
    .DFB(\NLW_dvi_rx1/dec_g/des_0/iserdes_m_DFB_UNCONNECTED ),
    .CE0(\dvi_tx/blue [2]),
    .CFB1(\NLW_dvi_rx1/dec_g/des_0/iserdes_m_CFB1_UNCONNECTED ),
    .INCDEC(\dvi_rx1/dec_g/des_0/incdec_data_im ),
    .CLK0(\dvi_rx1/pclkx10 ),
    .IOCE(\dvi_rx1/serdesstrobe ),
    .SHIFTIN(\dvi_rx1/dec_g/des_0/pd_edge ),
    .VALID(\dvi_rx1/dec_g/des_0/valid_data_im ),
    .Q4(\dvi_rx1/dec_g/raw5bit [4]),
    .Q2(\dvi_rx1/dec_g/raw5bit [2]),
    .Q1(\dvi_rx1/dec_g/raw5bit [1]),
    .FABRICOUT(\NLW_dvi_rx1/dec_g/des_0/iserdes_m_FABRICOUT_UNCONNECTED ),
    .CLK1(clk),
    .D(\dvi_rx1/dec_g/des_0/ddly_m ),
    .RST(rx_reset),
    .BITSLIP(\dvi_rx1/dec_g/bitslipx2_143 ),
    .SHIFTOUT(\dvi_rx1/dec_g/des_0/cascade )
  );
  IODELAY2 #(
    .COUNTER_WRAPAROUND ( "WRAPAROUND" ),
    .DATA_RATE ( "SDR" ),
    .DELAY_SRC ( "IDATAIN" ),
    .IDELAY_MODE ( "NORMAL" ),
    .IDELAY_TYPE ( "DIFF_PHASE_DETECTOR" ),
    .SERDES_MODE ( "SLAVE" ),
    .IDELAY2_VALUE ( 0 ),
    .IDELAY_VALUE ( 0 ),
    .ODELAY_VALUE ( 0 ),
    .SIM_TAPDELAY_VALUE ( 49 ))
  \dvi_rx1/dec_g/des_0/iodelay_s  (
    .BUSY(\dvi_rx1/dec_g/des_0/busy_data_or [0]),
    .T(\dvi_tx/blue [2]),
    .CAL(\dvi_rx1/dec_g/des_0/cal_data_sint_318 ),
    .DOUT(\NLW_dvi_rx1/dec_g/des_0/iodelay_s_DOUT_UNCONNECTED ),
    .IOCLK0(\dvi_rx1/pclkx10 ),
    .IOCLK1(clk),
    .CLK(\dvi_rx1/pclkx2 ),
    .IDATAIN(\dvi_rx1/dec_g/des_0/rx_data_in ),
    .INC(\dvi_rx1/dec_g/des_0/inc_data_int_310 ),
    .CE(\dvi_rx1/dec_g/des_0/ce_data_312 ),
    .DATAOUT(\dvi_rx1/dec_g/des_0/ddly_s ),
    .DATAOUT2(\NLW_dvi_rx1/dec_g/des_0/iodelay_s_DATAOUT2_UNCONNECTED ),
    .RST(\dvi_rx1/dec_g/des_0/rst_data_311 ),
    .ODATAIN(clk),
    .TOUT(\NLW_dvi_rx1/dec_g/des_0/iodelay_s_TOUT_UNCONNECTED )
  );
  IODELAY2 #(
    .COUNTER_WRAPAROUND ( "STAY_AT_LIMIT" ),
    .DATA_RATE ( "SDR" ),
    .DELAY_SRC ( "IDATAIN" ),
    .IDELAY_MODE ( "NORMAL" ),
    .IDELAY_TYPE ( "DIFF_PHASE_DETECTOR" ),
    .SERDES_MODE ( "MASTER" ),
    .IDELAY2_VALUE ( 0 ),
    .IDELAY_VALUE ( 0 ),
    .ODELAY_VALUE ( 0 ),
    .SIM_TAPDELAY_VALUE ( 49 ))
  \dvi_rx1/dec_g/des_0/iodelay_m  (
    .BUSY(\NLW_dvi_rx1/dec_g/des_0/iodelay_m_BUSY_UNCONNECTED ),
    .T(\dvi_tx/blue [2]),
    .CAL(\dvi_rx1/dec_g/des_0/cal_data_master_319 ),
    .DOUT(\NLW_dvi_rx1/dec_g/des_0/iodelay_m_DOUT_UNCONNECTED ),
    .IOCLK0(\dvi_rx1/pclkx10 ),
    .IOCLK1(clk),
    .CLK(\dvi_rx1/pclkx2 ),
    .IDATAIN(\dvi_rx1/dec_g/des_0/rx_data_in ),
    .INC(\dvi_rx1/dec_g/des_0/inc_data_int_310 ),
    .CE(\dvi_rx1/dec_g/des_0/ce_data_312 ),
    .DATAOUT(\dvi_rx1/dec_g/des_0/ddly_m ),
    .DATAOUT2(\NLW_dvi_rx1/dec_g/des_0/iodelay_m_DATAOUT2_UNCONNECTED ),
    .RST(\dvi_rx1/dec_g/des_0/rst_data_311 ),
    .ODATAIN(clk),
    .TOUT(\NLW_dvi_rx1/dec_g/des_0/iodelay_m_TOUT_UNCONNECTED )
  );
  IBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DIFF_TERM ( "FALSE" ),
    .DQS_BIAS ( "FALSE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ))
  \dvi_rx1/dec_g/des_0/data_in  (
    .I(RX1_TMDS[1]),
    .IB(RX1_TMDSB[1]),
    .O(\dvi_rx1/dec_g/des_0/rx_data_in )
  );
  FDC   \dvi_rx1/dec_g/des_0/state_FSM_FFd2  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/des_0/state_FSM_FFd2-In ),
    .Q(\dvi_rx1/dec_g/des_0/state_FSM_FFd2_326 )
  );
  FDC   \dvi_rx1/dec_g/des_0/state_FSM_FFd3  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/des_0/state_FSM_FFd3-In ),
    .Q(\dvi_rx1/dec_g/des_0/state_FSM_FFd3_325 )
  );
  FDC   \dvi_rx1/dec_g/des_0/state_FSM_FFd4  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/des_0/state_FSM_FFd4-In ),
    .Q(\dvi_rx1/dec_g/des_0/state_FSM_FFd4_324 )
  );
  FDE   \dvi_rx1/dec_g/des_0/valid_data_d  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/des_0/reset_inv ),
    .D(\dvi_rx1/dec_g/des_0/valid_data_im ),
    .Q(\dvi_rx1/dec_g/des_0/valid_data_d_313 )
  );
  FDE   \dvi_rx1/dec_g/des_0/incdec_data_d  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/des_0/reset_inv ),
    .D(\dvi_rx1/dec_g/des_0/incdec_data_im ),
    .Q(\dvi_rx1/dec_g/des_0/incdec_data_d_314 )
  );
  FDCE   \dvi_rx1/dec_g/des_0/pdcounter_4  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_g/des_0/_n0278_inv1_995 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/des_0/pdcounter_4_dpot_1129 ),
    .Q(\dvi_rx1/dec_g/des_0/pdcounter [4])
  );
  FDPE   \dvi_rx1/dec_g/des_0/pdcounter_3  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_g/des_0/_n0278_inv1_995 ),
    .D(\dvi_rx1/dec_g/des_0/pdcounter_3_dpot_1121 ),
    .PRE(rx_reset),
    .Q(\dvi_rx1/dec_g/des_0/pdcounter [3])
  );
  FDCE   \dvi_rx1/dec_g/des_0/pdcounter_2  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_g/des_0/_n0278_inv1_995 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/des_0/pdcounter_2_dpot_1120 ),
    .Q(\dvi_rx1/dec_g/des_0/pdcounter [2])
  );
  FDCE   \dvi_rx1/dec_g/des_0/pdcounter_1  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_g/des_0/_n0278_inv1_995 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/des_0/pdcounter_1_dpot_1119 ),
    .Q(\dvi_rx1/dec_g/des_0/pdcounter [1])
  );
  FDCE   \dvi_rx1/dec_g/des_0/pdcounter_0  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_g/des_0/_n0278_inv1_995 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/des_0/pdcounter_0_dpot_1111 ),
    .Q(\dvi_rx1/dec_g/des_0/pdcounter [0])
  );
  FDE   \dvi_rx1/dec_g/des_0/busy_data_d  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/des_0/reset_inv ),
    .D(\dvi_rx1/dec_g/des_0/busy_data_or [0]),
    .Q(\dvi_rx1/dec_g/des_0/busy_data_d_315 )
  );
  ISERDES2 #(
    .BITSLIP_ENABLE ( "TRUE" ),
    .DATA_RATE ( "SDR" ),
    .INTERFACE_TYPE ( "RETIMED" ),
    .SERDES_MODE ( "SLAVE" ),
    .DATA_WIDTH ( 5 ))
  \dvi_rx1/dec_r/des_0/iserdes_s  (
    .CFB0(\NLW_dvi_rx1/dec_r/des_0/iserdes_s_CFB0_UNCONNECTED ),
    .CLKDIV(\dvi_rx1/pclkx2 ),
    .Q3(\NLW_dvi_rx1/dec_r/des_0/iserdes_s_Q3_UNCONNECTED ),
    .DFB(\NLW_dvi_rx1/dec_r/des_0/iserdes_s_DFB_UNCONNECTED ),
    .CE0(\dvi_tx/blue [2]),
    .CFB1(\NLW_dvi_rx1/dec_r/des_0/iserdes_s_CFB1_UNCONNECTED ),
    .INCDEC(\NLW_dvi_rx1/dec_r/des_0/iserdes_s_INCDEC_UNCONNECTED ),
    .CLK0(\dvi_rx1/pclkx10 ),
    .IOCE(\dvi_rx1/serdesstrobe ),
    .SHIFTIN(\dvi_rx1/dec_r/des_0/cascade ),
    .VALID(\NLW_dvi_rx1/dec_r/des_0/iserdes_s_VALID_UNCONNECTED ),
    .Q4(\dvi_rx1/dec_r/raw5bit [0]),
    .Q2(\NLW_dvi_rx1/dec_r/des_0/iserdes_s_Q2_UNCONNECTED ),
    .Q1(\NLW_dvi_rx1/dec_r/des_0/iserdes_s_Q1_UNCONNECTED ),
    .FABRICOUT(\NLW_dvi_rx1/dec_r/des_0/iserdes_s_FABRICOUT_UNCONNECTED ),
    .CLK1(clk),
    .D(\dvi_rx1/dec_r/des_0/ddly_s ),
    .RST(rx_reset),
    .BITSLIP(\dvi_rx1/dec_r/bitslipx2_97 ),
    .SHIFTOUT(\dvi_rx1/dec_r/des_0/pd_edge )
  );
  ISERDES2 #(
    .BITSLIP_ENABLE ( "TRUE" ),
    .DATA_RATE ( "SDR" ),
    .INTERFACE_TYPE ( "RETIMED" ),
    .SERDES_MODE ( "MASTER" ),
    .DATA_WIDTH ( 5 ))
  \dvi_rx1/dec_r/des_0/iserdes_m  (
    .CFB0(\NLW_dvi_rx1/dec_r/des_0/iserdes_m_CFB0_UNCONNECTED ),
    .CLKDIV(\dvi_rx1/pclkx2 ),
    .Q3(\dvi_rx1/dec_r/raw5bit [3]),
    .DFB(\NLW_dvi_rx1/dec_r/des_0/iserdes_m_DFB_UNCONNECTED ),
    .CE0(\dvi_tx/blue [2]),
    .CFB1(\NLW_dvi_rx1/dec_r/des_0/iserdes_m_CFB1_UNCONNECTED ),
    .INCDEC(\dvi_rx1/dec_r/des_0/incdec_data_im ),
    .CLK0(\dvi_rx1/pclkx10 ),
    .IOCE(\dvi_rx1/serdesstrobe ),
    .SHIFTIN(\dvi_rx1/dec_r/des_0/pd_edge ),
    .VALID(\dvi_rx1/dec_r/des_0/valid_data_im ),
    .Q4(\dvi_rx1/dec_r/raw5bit [4]),
    .Q2(\dvi_rx1/dec_r/raw5bit [2]),
    .Q1(\dvi_rx1/dec_r/raw5bit [1]),
    .FABRICOUT(\NLW_dvi_rx1/dec_r/des_0/iserdes_m_FABRICOUT_UNCONNECTED ),
    .CLK1(clk),
    .D(\dvi_rx1/dec_r/des_0/ddly_m ),
    .RST(rx_reset),
    .BITSLIP(\dvi_rx1/dec_r/bitslipx2_97 ),
    .SHIFTOUT(\dvi_rx1/dec_r/des_0/cascade )
  );
  IODELAY2 #(
    .COUNTER_WRAPAROUND ( "WRAPAROUND" ),
    .DATA_RATE ( "SDR" ),
    .DELAY_SRC ( "IDATAIN" ),
    .IDELAY_MODE ( "NORMAL" ),
    .IDELAY_TYPE ( "DIFF_PHASE_DETECTOR" ),
    .SERDES_MODE ( "SLAVE" ),
    .IDELAY2_VALUE ( 0 ),
    .IDELAY_VALUE ( 0 ),
    .ODELAY_VALUE ( 0 ),
    .SIM_TAPDELAY_VALUE ( 49 ))
  \dvi_rx1/dec_r/des_0/iodelay_s  (
    .BUSY(\dvi_rx1/dec_r/des_0/busy_data_or [0]),
    .T(\dvi_tx/blue [2]),
    .CAL(\dvi_rx1/dec_r/des_0/cal_data_sint_359 ),
    .DOUT(\NLW_dvi_rx1/dec_r/des_0/iodelay_s_DOUT_UNCONNECTED ),
    .IOCLK0(\dvi_rx1/pclkx10 ),
    .IOCLK1(clk),
    .CLK(\dvi_rx1/pclkx2 ),
    .IDATAIN(\dvi_rx1/dec_r/des_0/rx_data_in ),
    .INC(\dvi_rx1/dec_r/des_0/inc_data_int_351 ),
    .CE(\dvi_rx1/dec_r/des_0/ce_data_353 ),
    .DATAOUT(\dvi_rx1/dec_r/des_0/ddly_s ),
    .DATAOUT2(\NLW_dvi_rx1/dec_r/des_0/iodelay_s_DATAOUT2_UNCONNECTED ),
    .RST(\dvi_rx1/dec_r/des_0/rst_data_352 ),
    .ODATAIN(clk),
    .TOUT(\NLW_dvi_rx1/dec_r/des_0/iodelay_s_TOUT_UNCONNECTED )
  );
  IODELAY2 #(
    .COUNTER_WRAPAROUND ( "STAY_AT_LIMIT" ),
    .DATA_RATE ( "SDR" ),
    .DELAY_SRC ( "IDATAIN" ),
    .IDELAY_MODE ( "NORMAL" ),
    .IDELAY_TYPE ( "DIFF_PHASE_DETECTOR" ),
    .SERDES_MODE ( "MASTER" ),
    .IDELAY2_VALUE ( 0 ),
    .IDELAY_VALUE ( 0 ),
    .ODELAY_VALUE ( 0 ),
    .SIM_TAPDELAY_VALUE ( 49 ))
  \dvi_rx1/dec_r/des_0/iodelay_m  (
    .BUSY(\NLW_dvi_rx1/dec_r/des_0/iodelay_m_BUSY_UNCONNECTED ),
    .T(\dvi_tx/blue [2]),
    .CAL(\dvi_rx1/dec_r/des_0/cal_data_master_360 ),
    .DOUT(\NLW_dvi_rx1/dec_r/des_0/iodelay_m_DOUT_UNCONNECTED ),
    .IOCLK0(\dvi_rx1/pclkx10 ),
    .IOCLK1(clk),
    .CLK(\dvi_rx1/pclkx2 ),
    .IDATAIN(\dvi_rx1/dec_r/des_0/rx_data_in ),
    .INC(\dvi_rx1/dec_r/des_0/inc_data_int_351 ),
    .CE(\dvi_rx1/dec_r/des_0/ce_data_353 ),
    .DATAOUT(\dvi_rx1/dec_r/des_0/ddly_m ),
    .DATAOUT2(\NLW_dvi_rx1/dec_r/des_0/iodelay_m_DATAOUT2_UNCONNECTED ),
    .RST(\dvi_rx1/dec_r/des_0/rst_data_352 ),
    .ODATAIN(clk),
    .TOUT(\NLW_dvi_rx1/dec_r/des_0/iodelay_m_TOUT_UNCONNECTED )
  );
  IBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DIFF_TERM ( "FALSE" ),
    .DQS_BIAS ( "FALSE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ))
  \dvi_rx1/dec_r/des_0/data_in  (
    .I(RX1_TMDS[2]),
    .IB(RX1_TMDSB[2]),
    .O(\dvi_rx1/dec_r/des_0/rx_data_in )
  );
  FDC   \dvi_rx1/dec_r/des_0/state_FSM_FFd2  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/des_0/state_FSM_FFd2-In ),
    .Q(\dvi_rx1/dec_r/des_0/state_FSM_FFd2_367 )
  );
  FDC   \dvi_rx1/dec_r/des_0/state_FSM_FFd3  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/des_0/state_FSM_FFd3-In ),
    .Q(\dvi_rx1/dec_r/des_0/state_FSM_FFd3_366 )
  );
  FDC   \dvi_rx1/dec_r/des_0/state_FSM_FFd4  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/des_0/state_FSM_FFd4-In ),
    .Q(\dvi_rx1/dec_r/des_0/state_FSM_FFd4_365 )
  );
  FDE   \dvi_rx1/dec_r/des_0/valid_data_d  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/des_0/reset_inv ),
    .D(\dvi_rx1/dec_r/des_0/valid_data_im ),
    .Q(\dvi_rx1/dec_r/des_0/valid_data_d_354 )
  );
  FDE   \dvi_rx1/dec_r/des_0/incdec_data_d  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/des_0/reset_inv ),
    .D(\dvi_rx1/dec_r/des_0/incdec_data_im ),
    .Q(\dvi_rx1/dec_r/des_0/incdec_data_d_355 )
  );
  FDCE   \dvi_rx1/dec_r/des_0/pdcounter_4  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_r/des_0/_n0278_inv1_996 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/des_0/pdcounter_4_dpot_1130 ),
    .Q(\dvi_rx1/dec_r/des_0/pdcounter [4])
  );
  FDPE   \dvi_rx1/dec_r/des_0/pdcounter_3  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_r/des_0/_n0278_inv1_996 ),
    .D(\dvi_rx1/dec_r/des_0/pdcounter_3_dpot_1124 ),
    .PRE(rx_reset),
    .Q(\dvi_rx1/dec_r/des_0/pdcounter [3])
  );
  FDCE   \dvi_rx1/dec_r/des_0/pdcounter_2  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_r/des_0/_n0278_inv1_996 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/des_0/pdcounter_2_dpot_1123 ),
    .Q(\dvi_rx1/dec_r/des_0/pdcounter [2])
  );
  FDCE   \dvi_rx1/dec_r/des_0/pdcounter_1  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_r/des_0/_n0278_inv1_996 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/des_0/pdcounter_1_dpot_1122 ),
    .Q(\dvi_rx1/dec_r/des_0/pdcounter [1])
  );
  FDCE   \dvi_rx1/dec_r/des_0/pdcounter_0  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_r/des_0/_n0278_inv1_996 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/des_0/pdcounter_0_dpot_1112 ),
    .Q(\dvi_rx1/dec_r/des_0/pdcounter [0])
  );
  FDE   \dvi_rx1/dec_r/des_0/busy_data_d  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/des_0/reset_inv ),
    .D(\dvi_rx1/dec_r/des_0/busy_data_or [0]),
    .Q(\dvi_rx1/dec_r/des_0/busy_data_d_356 )
  );
  XORCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_xor<11>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [10]),
    .LI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_xor<11>_rt_1061 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result [11])
  );
  XORCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_xor<10>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [9]),
    .LI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>_rt_1031 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result [10])
  );
  MUXCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [9]),
    .DI(clk),
    .S(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>_rt_1031 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [10])
  );
  XORCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_xor<9>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [8]),
    .LI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>_rt_1032 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result [9])
  );
  MUXCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [8]),
    .DI(clk),
    .S(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>_rt_1032 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [9])
  );
  XORCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_xor<8>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [7]),
    .LI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>_rt_1033 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result [8])
  );
  MUXCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [7]),
    .DI(clk),
    .S(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>_rt_1033 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [8])
  );
  XORCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_xor<7>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [6]),
    .LI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>_rt_1034 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result [7])
  );
  MUXCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [6]),
    .DI(clk),
    .S(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>_rt_1034 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [7])
  );
  XORCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_xor<6>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [5]),
    .LI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>_rt_1035 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result [6])
  );
  MUXCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [5]),
    .DI(clk),
    .S(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>_rt_1035 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [6])
  );
  XORCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_xor<5>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [4]),
    .LI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>_rt_1036 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result [5])
  );
  MUXCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [4]),
    .DI(clk),
    .S(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>_rt_1036 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [5])
  );
  XORCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_xor<4>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [3]),
    .LI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>_rt_1037 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result [4])
  );
  MUXCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [3]),
    .DI(clk),
    .S(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>_rt_1037 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [4])
  );
  XORCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_xor<3>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [2]),
    .LI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>_rt_1038 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result [3])
  );
  MUXCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [2]),
    .DI(clk),
    .S(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>_rt_1038 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [3])
  );
  XORCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_xor<2>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [1]),
    .LI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>_rt_1039 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result [2])
  );
  MUXCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [1]),
    .DI(clk),
    .S(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>_rt_1039 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [2])
  );
  XORCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_xor<1>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [0]),
    .LI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>_rt_1040 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result [1])
  );
  MUXCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [0]),
    .DI(clk),
    .S(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>_rt_1040 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [1])
  );
  XORCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_xor<0>  (
    .CI(clk),
    .LI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_lut [0]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result [0])
  );
  MUXCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<0>  (
    .CI(clk),
    .DI(\dvi_tx/blue [2]),
    .S(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_lut [0]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [0])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer_11  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result [11]),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_rst_461 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [11])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer_10  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result [10]),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_rst_461 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [10])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer_9  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result [9]),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_rst_461 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [9])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer_8  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result [8]),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_rst_461 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [8])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer_7  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result [7]),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_rst_461 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [7])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer_6  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result [6]),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_rst_461 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [6])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer_5  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result [5]),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_rst_461 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [5])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer_4  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result [4]),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_rst_461 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [4])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer_3  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result [3]),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_rst_461 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [3])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer_2  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result [2]),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_rst_461 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [2])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer_1  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result [1]),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_rst_461 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [1])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer_0  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result [0]),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_rst_461 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [0])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_counter_6  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result<6>1 ),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_cnt_rst_460 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [6])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_counter_5  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result<5>1 ),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_cnt_rst_460 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [5])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_counter_4  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result<4>1 ),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_cnt_rst_460 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [4])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_counter_3  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result<3>1 ),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_cnt_rst_460 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [3])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_counter_2  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result<2>1 ),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_cnt_rst_460 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [2])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_counter_1  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result<1>1 ),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_cnt_rst_460 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [1])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_counter_0  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result<0>1 ),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_cnt_rst_460 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd1  (
    .C(\dvi_rx1/pclk ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd1-In ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd1_453 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd2  (
    .C(\dvi_rx1/pclk ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd2-In ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd2_454 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4  (
    .C(\dvi_rx1/pclk ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4-In ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4_456 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd5  (
    .C(\dvi_rx1/pclk ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd5-In_422 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd5_457 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd3  (
    .C(\dvi_rx1/pclk ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd3-In ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd3_455 )
  );
  FDP #(
    .INIT ( 1'b1 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd6  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd6-In ),
    .PRE(rx_reset),
    .Q(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd6_458 )
  );
  FD   \dvi_rx1/dec_b/phsalgn_0/rcvd_ctkn_q  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/phsalgn_0/rcvd_ctkn_448 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/rcvd_ctkn_q_452 )
  );
  FD   \dvi_rx1/dec_b/phsalgn_0/rcvd_ctkn  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/phsalgn_0/sdata[9]_sdata[9]_OR_85_o ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/rcvd_ctkn_448 )
  );
  FD   \dvi_rx1/dec_b/phsalgn_0/ctkn_cnt_tout  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter[6]_PWR_17_o_equal_17_o ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_cnt_tout_449 )
  );
  FD   \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_tout  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_tout_450 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_b/phsalgn_0/blnkprd_cnt_0  (
    .C(\dvi_rx1/pclk ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_52_o ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/blnkprd_cnt_0_459 )
  );
  FDC   \dvi_rx1/dec_b/phsalgn_0/flipgear  (
    .C(\dvi_rx1/pclk ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_50_o ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/flipgear_209 )
  );
  FDC   \dvi_rx1/dec_b/phsalgn_0/bitslip  (
    .C(\dvi_rx1/pclk ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_45_o ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/bitslip_208 )
  );
  FDC   \dvi_rx1/dec_b/phsalgn_0/psaligned  (
    .C(\dvi_rx1/pclk ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_47_o ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/psaligned_72 )
  );
  FDP   \dvi_rx1/dec_b/phsalgn_0/ctkn_cnt_rst  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_PWR_17_o_Select_43_o ),
    .PRE(rx_reset),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_cnt_rst_460 )
  );
  FDP   \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_rst  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_41_o ),
    .PRE(rx_reset),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_rst_461 )
  );
  FDC   \dvi_rx1/dec_b/phsalgn_0/bitslip_cnt_2  (
    .C(\dvi_rx1/pclk ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<2> ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/bitslip_cnt [2])
  );
  FDC   \dvi_rx1/dec_b/phsalgn_0/bitslip_cnt_1  (
    .C(\dvi_rx1/pclk ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<1> ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/bitslip_cnt [1])
  );
  FDC   \dvi_rx1/dec_b/phsalgn_0/bitslip_cnt_0  (
    .C(\dvi_rx1/pclk ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<0> ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/bitslip_cnt [0])
  );
  XORCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_xor<11>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [10]),
    .LI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_xor<11>_rt_1062 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result [11])
  );
  XORCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_xor<10>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [9]),
    .LI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>_rt_1041 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result [10])
  );
  MUXCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [9]),
    .DI(clk),
    .S(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>_rt_1041 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [10])
  );
  XORCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_xor<9>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [8]),
    .LI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>_rt_1042 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result [9])
  );
  MUXCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [8]),
    .DI(clk),
    .S(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>_rt_1042 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [9])
  );
  XORCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_xor<8>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [7]),
    .LI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>_rt_1043 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result [8])
  );
  MUXCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [7]),
    .DI(clk),
    .S(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>_rt_1043 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [8])
  );
  XORCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_xor<7>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [6]),
    .LI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>_rt_1044 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result [7])
  );
  MUXCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [6]),
    .DI(clk),
    .S(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>_rt_1044 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [7])
  );
  XORCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_xor<6>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [5]),
    .LI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>_rt_1045 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result [6])
  );
  MUXCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [5]),
    .DI(clk),
    .S(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>_rt_1045 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [6])
  );
  XORCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_xor<5>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [4]),
    .LI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>_rt_1046 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result [5])
  );
  MUXCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [4]),
    .DI(clk),
    .S(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>_rt_1046 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [5])
  );
  XORCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_xor<4>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [3]),
    .LI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>_rt_1047 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result [4])
  );
  MUXCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [3]),
    .DI(clk),
    .S(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>_rt_1047 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [4])
  );
  XORCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_xor<3>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [2]),
    .LI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>_rt_1048 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result [3])
  );
  MUXCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [2]),
    .DI(clk),
    .S(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>_rt_1048 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [3])
  );
  XORCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_xor<2>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [1]),
    .LI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>_rt_1049 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result [2])
  );
  MUXCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [1]),
    .DI(clk),
    .S(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>_rt_1049 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [2])
  );
  XORCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_xor<1>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [0]),
    .LI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>_rt_1050 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result [1])
  );
  MUXCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [0]),
    .DI(clk),
    .S(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>_rt_1050 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [1])
  );
  XORCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_xor<0>  (
    .CI(clk),
    .LI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_lut [0]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result [0])
  );
  MUXCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<0>  (
    .CI(clk),
    .DI(\dvi_tx/blue [2]),
    .S(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_lut [0]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [0])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer_11  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result [11]),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_rst_548 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [11])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer_10  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result [10]),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_rst_548 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [10])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer_9  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result [9]),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_rst_548 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [9])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer_8  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result [8]),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_rst_548 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [8])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer_7  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result [7]),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_rst_548 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [7])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer_6  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result [6]),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_rst_548 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [6])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer_5  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result [5]),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_rst_548 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [5])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer_4  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result [4]),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_rst_548 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [4])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer_3  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result [3]),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_rst_548 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [3])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer_2  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result [2]),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_rst_548 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [2])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer_1  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result [1]),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_rst_548 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [1])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer_0  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result [0]),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_rst_548 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [0])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_counter_6  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result<6>1 ),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_cnt_rst_547 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [6])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_counter_5  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result<5>1 ),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_cnt_rst_547 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [5])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_counter_4  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result<4>1 ),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_cnt_rst_547 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [4])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_counter_3  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result<3>1 ),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_cnt_rst_547 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [3])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_counter_2  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result<2>1 ),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_cnt_rst_547 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [2])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_counter_1  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result<1>1 ),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_cnt_rst_547 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [1])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_counter_0  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result<0>1 ),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_cnt_rst_547 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd1  (
    .C(\dvi_rx1/pclk ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd1-In ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd1_540 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd2  (
    .C(\dvi_rx1/pclk ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd2-In ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd2_541 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4  (
    .C(\dvi_rx1/pclk ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4-In ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4_543 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd5  (
    .C(\dvi_rx1/pclk ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd5-In_509 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd5_544 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd3  (
    .C(\dvi_rx1/pclk ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd3-In ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd3_542 )
  );
  FDP #(
    .INIT ( 1'b1 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd6  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd6-In ),
    .PRE(rx_reset),
    .Q(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd6_545 )
  );
  FD   \dvi_rx1/dec_g/phsalgn_0/rcvd_ctkn_q  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_g/phsalgn_0/rcvd_ctkn_535 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/rcvd_ctkn_q_539 )
  );
  FD   \dvi_rx1/dec_g/phsalgn_0/rcvd_ctkn  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_g/phsalgn_0/sdata[9]_sdata[9]_OR_85_o ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/rcvd_ctkn_535 )
  );
  FD   \dvi_rx1/dec_g/phsalgn_0/ctkn_cnt_tout  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter[6]_PWR_17_o_equal_17_o ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_cnt_tout_536 )
  );
  FD   \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_tout  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_tout_537 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_g/phsalgn_0/blnkprd_cnt_0  (
    .C(\dvi_rx1/pclk ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_52_o ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/blnkprd_cnt_0_546 )
  );
  FDC   \dvi_rx1/dec_g/phsalgn_0/flipgear  (
    .C(\dvi_rx1/pclk ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_50_o ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/flipgear_161 )
  );
  FDC   \dvi_rx1/dec_g/phsalgn_0/bitslip  (
    .C(\dvi_rx1/pclk ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_45_o ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/bitslip_160 )
  );
  FDC   \dvi_rx1/dec_g/phsalgn_0/psaligned  (
    .C(\dvi_rx1/pclk ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_47_o ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/psaligned_71 )
  );
  FDP   \dvi_rx1/dec_g/phsalgn_0/ctkn_cnt_rst  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_PWR_17_o_Select_43_o ),
    .PRE(rx_reset),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_cnt_rst_547 )
  );
  FDP   \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_rst  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_41_o ),
    .PRE(rx_reset),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_rst_548 )
  );
  FDC   \dvi_rx1/dec_g/phsalgn_0/bitslip_cnt_2  (
    .C(\dvi_rx1/pclk ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<2> ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/bitslip_cnt [2])
  );
  FDC   \dvi_rx1/dec_g/phsalgn_0/bitslip_cnt_1  (
    .C(\dvi_rx1/pclk ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<1> ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/bitslip_cnt [1])
  );
  FDC   \dvi_rx1/dec_g/phsalgn_0/bitslip_cnt_0  (
    .C(\dvi_rx1/pclk ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<0> ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/bitslip_cnt [0])
  );
  XORCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_xor<11>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [10]),
    .LI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_xor<11>_rt_1063 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result [11])
  );
  XORCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_xor<10>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [9]),
    .LI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>_rt_1051 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result [10])
  );
  MUXCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [9]),
    .DI(clk),
    .S(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>_rt_1051 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [10])
  );
  XORCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_xor<9>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [8]),
    .LI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>_rt_1052 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result [9])
  );
  MUXCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [8]),
    .DI(clk),
    .S(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>_rt_1052 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [9])
  );
  XORCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_xor<8>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [7]),
    .LI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>_rt_1053 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result [8])
  );
  MUXCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [7]),
    .DI(clk),
    .S(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>_rt_1053 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [8])
  );
  XORCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_xor<7>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [6]),
    .LI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>_rt_1054 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result [7])
  );
  MUXCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [6]),
    .DI(clk),
    .S(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>_rt_1054 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [7])
  );
  XORCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_xor<6>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [5]),
    .LI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>_rt_1055 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result [6])
  );
  MUXCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [5]),
    .DI(clk),
    .S(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>_rt_1055 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [6])
  );
  XORCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_xor<5>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [4]),
    .LI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>_rt_1056 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result [5])
  );
  MUXCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [4]),
    .DI(clk),
    .S(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>_rt_1056 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [5])
  );
  XORCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_xor<4>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [3]),
    .LI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>_rt_1057 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result [4])
  );
  MUXCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [3]),
    .DI(clk),
    .S(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>_rt_1057 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [4])
  );
  XORCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_xor<3>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [2]),
    .LI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>_rt_1058 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result [3])
  );
  MUXCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [2]),
    .DI(clk),
    .S(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>_rt_1058 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [3])
  );
  XORCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_xor<2>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [1]),
    .LI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>_rt_1059 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result [2])
  );
  MUXCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [1]),
    .DI(clk),
    .S(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>_rt_1059 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [2])
  );
  XORCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_xor<1>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [0]),
    .LI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>_rt_1060 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result [1])
  );
  MUXCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [0]),
    .DI(clk),
    .S(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>_rt_1060 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [1])
  );
  XORCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_xor<0>  (
    .CI(clk),
    .LI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_lut [0]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result [0])
  );
  MUXCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<0>  (
    .CI(clk),
    .DI(\dvi_tx/blue [2]),
    .S(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_lut [0]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [0])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer_11  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result [11]),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_rst_635 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [11])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer_10  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result [10]),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_rst_635 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [10])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer_9  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result [9]),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_rst_635 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [9])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer_8  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result [8]),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_rst_635 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [8])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer_7  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result [7]),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_rst_635 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [7])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer_6  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result [6]),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_rst_635 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [6])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer_5  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result [5]),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_rst_635 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [5])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer_4  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result [4]),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_rst_635 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [4])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer_3  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result [3]),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_rst_635 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [3])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer_2  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result [2]),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_rst_635 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [2])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer_1  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result [1]),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_rst_635 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [1])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer_0  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result [0]),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_rst_635 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [0])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_counter_6  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result<6>1 ),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_cnt_rst_634 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [6])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_counter_5  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result<5>1 ),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_cnt_rst_634 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [5])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_counter_4  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result<4>1 ),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_cnt_rst_634 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [4])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_counter_3  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result<3>1 ),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_cnt_rst_634 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [3])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_counter_2  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result<2>1 ),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_cnt_rst_634 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [2])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_counter_1  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result<1>1 ),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_cnt_rst_634 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [1])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_counter_0  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result<0>1 ),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_cnt_rst_634 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd1  (
    .C(\dvi_rx1/pclk ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd1-In ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd1_627 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd2  (
    .C(\dvi_rx1/pclk ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd2-In ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd2_628 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4  (
    .C(\dvi_rx1/pclk ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4-In ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4_630 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd5  (
    .C(\dvi_rx1/pclk ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd5-In_596 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd5_631 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd3  (
    .C(\dvi_rx1/pclk ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd3-In ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd3_629 )
  );
  FDP #(
    .INIT ( 1'b1 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd6  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd6-In ),
    .PRE(rx_reset),
    .Q(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd6_632 )
  );
  FD   \dvi_rx1/dec_r/phsalgn_0/rcvd_ctkn_q  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_r/phsalgn_0/rcvd_ctkn_622 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/rcvd_ctkn_q_626 )
  );
  FD   \dvi_rx1/dec_r/phsalgn_0/rcvd_ctkn  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_r/phsalgn_0/sdata[9]_sdata[9]_OR_85_o ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/rcvd_ctkn_622 )
  );
  FD   \dvi_rx1/dec_r/phsalgn_0/ctkn_cnt_tout  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter[6]_PWR_17_o_equal_17_o ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_cnt_tout_623 )
  );
  FD   \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_tout  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_tout_624 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_r/phsalgn_0/blnkprd_cnt_0  (
    .C(\dvi_rx1/pclk ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_52_o ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/blnkprd_cnt_0_633 )
  );
  FDC   \dvi_rx1/dec_r/phsalgn_0/flipgear  (
    .C(\dvi_rx1/pclk ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_50_o ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/flipgear_115 )
  );
  FDC   \dvi_rx1/dec_r/phsalgn_0/bitslip  (
    .C(\dvi_rx1/pclk ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_45_o ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/bitslip_114 )
  );
  FDC   \dvi_rx1/dec_r/phsalgn_0/psaligned  (
    .C(\dvi_rx1/pclk ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_47_o ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/psaligned_70 )
  );
  FDP   \dvi_rx1/dec_r/phsalgn_0/ctkn_cnt_rst  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_PWR_17_o_Select_43_o ),
    .PRE(rx_reset),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_cnt_rst_634 )
  );
  FDP   \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_rst  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_41_o ),
    .PRE(rx_reset),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_rst_635 )
  );
  FDC   \dvi_rx1/dec_r/phsalgn_0/bitslip_cnt_2  (
    .C(\dvi_rx1/pclk ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<2> ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/bitslip_cnt [2])
  );
  FDC   \dvi_rx1/dec_r/phsalgn_0/bitslip_cnt_1  (
    .C(\dvi_rx1/pclk ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<1> ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/bitslip_cnt [1])
  );
  FDC   \dvi_rx1/dec_r/phsalgn_0/bitslip_cnt_0  (
    .C(\dvi_rx1/pclk ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<0> ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/bitslip_cnt [0])
  );
  FDR   \dvi_rx1/dec_b/cbnd/wa_3  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/cbnd/Result<3>1 ),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_b/cbnd/wa [3])
  );
  FDR   \dvi_rx1/dec_b/cbnd/wa_2  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/cbnd/Result<2>1 ),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_b/cbnd/wa [2])
  );
  FDR   \dvi_rx1/dec_b/cbnd/wa_1  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/cbnd/Result<1>1 ),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_b/cbnd/wa [1])
  );
  FDR   \dvi_rx1/dec_b/cbnd/wa_0  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/cbnd/Result<0>1 ),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_b/cbnd/wa [0])
  );
  FDRE   \dvi_rx1/dec_b/cbnd/ra_3  (
    .C(\dvi_rx1/pclk ),
    .CE(\dvi_rx1/dec_b/cbnd/ra_en_657 ),
    .D(\dvi_rx1/dec_b/cbnd/Result [3]),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_b/cbnd/ra [3])
  );
  FDRE   \dvi_rx1/dec_b/cbnd/ra_2  (
    .C(\dvi_rx1/pclk ),
    .CE(\dvi_rx1/dec_b/cbnd/ra_en_657 ),
    .D(\dvi_rx1/dec_b/cbnd/Result [2]),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_b/cbnd/ra [2])
  );
  FDRE   \dvi_rx1/dec_b/cbnd/ra_1  (
    .C(\dvi_rx1/pclk ),
    .CE(\dvi_rx1/dec_b/cbnd/ra_en_657 ),
    .D(\dvi_rx1/dec_b/cbnd/Result [1]),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_b/cbnd/ra [1])
  );
  FDRE   \dvi_rx1/dec_b/cbnd/ra_0  (
    .C(\dvi_rx1/pclk ),
    .CE(\dvi_rx1/dec_b/cbnd/ra_en_657 ),
    .D(\dvi_rx1/dec_b/cbnd/Result [0]),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_b/cbnd/ra [0])
  );
  FD   \dvi_rx1/dec_b/cbnd/sdata_9  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/cbnd/dpfo_dout [9]),
    .Q(\dvi_rx1/dec_b/cbnd/sdata [9])
  );
  FD   \dvi_rx1/dec_b/cbnd/sdata_8  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/cbnd/dpfo_dout [8]),
    .Q(\dvi_rx1/dec_b/cbnd/sdata [8])
  );
  FD   \dvi_rx1/dec_b/cbnd/sdata_7  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/cbnd/dpfo_dout [7]),
    .Q(\dvi_rx1/dec_b/cbnd/sdata [7])
  );
  FD   \dvi_rx1/dec_b/cbnd/sdata_6  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/cbnd/dpfo_dout [6]),
    .Q(\dvi_rx1/dec_b/cbnd/sdata [6])
  );
  FD   \dvi_rx1/dec_b/cbnd/sdata_5  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/cbnd/dpfo_dout [5]),
    .Q(\dvi_rx1/dec_b/cbnd/sdata [5])
  );
  FD   \dvi_rx1/dec_b/cbnd/sdata_4  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/cbnd/dpfo_dout [4]),
    .Q(\dvi_rx1/dec_b/cbnd/sdata [4])
  );
  FD   \dvi_rx1/dec_b/cbnd/sdata_3  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/cbnd/dpfo_dout [3]),
    .Q(\dvi_rx1/dec_b/cbnd/sdata [3])
  );
  FD   \dvi_rx1/dec_b/cbnd/sdata_2  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/cbnd/dpfo_dout [2]),
    .Q(\dvi_rx1/dec_b/cbnd/sdata [2])
  );
  FD   \dvi_rx1/dec_b/cbnd/sdata_1  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/cbnd/dpfo_dout [1]),
    .Q(\dvi_rx1/dec_b/cbnd/sdata [1])
  );
  FD   \dvi_rx1/dec_b/cbnd/sdata_0  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/cbnd/dpfo_dout [0]),
    .Q(\dvi_rx1/dec_b/cbnd/sdata [0])
  );
  FD   \dvi_rx1/dec_b/cbnd/rcvd_ctkn_q  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/cbnd/rcvd_ctkn_663 ),
    .Q(\dvi_rx1/dec_b/cbnd/rcvd_ctkn_q_662 )
  );
  FDR   \dvi_rx1/dec_b/cbnd/rawdata_vld_rising  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/cbnd/rawdata_vld_rawdata_vld_q_AND_23_o_norst ),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_b/cbnd/rawdata_vld_rising_659 )
  );
  FD   \dvi_rx1/dec_b/cbnd/rawdata_vld_q  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/cbnd/rawdata_vld ),
    .Q(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_660 )
  );
  FD   \dvi_rx1/dec_b/cbnd/rcvd_ctkn  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/cbnd/sdata[9]_sdata[9]_OR_126_o ),
    .Q(\dvi_rx1/dec_b/cbnd/rcvd_ctkn_663 )
  );
  FDRE   \dvi_rx1/dec_g/cbnd/ra_3  (
    .C(\dvi_rx1/pclk ),
    .CE(\dvi_rx1/dec_g/cbnd/ra_en_684 ),
    .D(\dvi_rx1/dec_g/cbnd/Result [3]),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_g/cbnd/ra [3])
  );
  FDRE   \dvi_rx1/dec_g/cbnd/ra_2  (
    .C(\dvi_rx1/pclk ),
    .CE(\dvi_rx1/dec_g/cbnd/ra_en_684 ),
    .D(\dvi_rx1/dec_g/cbnd/Result [2]),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_g/cbnd/ra [2])
  );
  FDRE   \dvi_rx1/dec_g/cbnd/ra_1  (
    .C(\dvi_rx1/pclk ),
    .CE(\dvi_rx1/dec_g/cbnd/ra_en_684 ),
    .D(\dvi_rx1/dec_g/cbnd/Result [1]),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_g/cbnd/ra [1])
  );
  FDRE   \dvi_rx1/dec_g/cbnd/ra_0  (
    .C(\dvi_rx1/pclk ),
    .CE(\dvi_rx1/dec_g/cbnd/ra_en_684 ),
    .D(\dvi_rx1/dec_g/cbnd/Result [0]),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_g/cbnd/ra [0])
  );
  FD   \dvi_rx1/dec_g/cbnd/sdata_9  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_g/cbnd/dpfo_dout [9]),
    .Q(\dvi_rx1/dec_g/cbnd/sdata [9])
  );
  FD   \dvi_rx1/dec_g/cbnd/sdata_8  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_g/cbnd/dpfo_dout [8]),
    .Q(\dvi_rx1/dec_g/cbnd/sdata [8])
  );
  FD   \dvi_rx1/dec_g/cbnd/sdata_7  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_g/cbnd/dpfo_dout [7]),
    .Q(\dvi_rx1/dec_g/cbnd/sdata [7])
  );
  FD   \dvi_rx1/dec_g/cbnd/sdata_6  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_g/cbnd/dpfo_dout [6]),
    .Q(\dvi_rx1/dec_g/cbnd/sdata [6])
  );
  FD   \dvi_rx1/dec_g/cbnd/sdata_5  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_g/cbnd/dpfo_dout [5]),
    .Q(\dvi_rx1/dec_g/cbnd/sdata [5])
  );
  FD   \dvi_rx1/dec_g/cbnd/sdata_4  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_g/cbnd/dpfo_dout [4]),
    .Q(\dvi_rx1/dec_g/cbnd/sdata [4])
  );
  FD   \dvi_rx1/dec_g/cbnd/sdata_3  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_g/cbnd/dpfo_dout [3]),
    .Q(\dvi_rx1/dec_g/cbnd/sdata [3])
  );
  FD   \dvi_rx1/dec_g/cbnd/sdata_2  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_g/cbnd/dpfo_dout [2]),
    .Q(\dvi_rx1/dec_g/cbnd/sdata [2])
  );
  FD   \dvi_rx1/dec_g/cbnd/sdata_1  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_g/cbnd/dpfo_dout [1]),
    .Q(\dvi_rx1/dec_g/cbnd/sdata [1])
  );
  FD   \dvi_rx1/dec_g/cbnd/sdata_0  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_g/cbnd/dpfo_dout [0]),
    .Q(\dvi_rx1/dec_g/cbnd/sdata [0])
  );
  FD   \dvi_rx1/dec_g/cbnd/rcvd_ctkn_q  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_g/cbnd/rcvd_ctkn_688 ),
    .Q(\dvi_rx1/dec_g/cbnd/rcvd_ctkn_q_687 )
  );
  FD   \dvi_rx1/dec_g/cbnd/rcvd_ctkn  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_g/cbnd/sdata[9]_sdata[9]_OR_126_o ),
    .Q(\dvi_rx1/dec_g/cbnd/rcvd_ctkn_688 )
  );
  FDRE   \dvi_rx1/dec_r/cbnd/ra_3  (
    .C(\dvi_rx1/pclk ),
    .CE(\dvi_rx1/dec_r/cbnd/ra_en_709 ),
    .D(\dvi_rx1/dec_r/cbnd/Result [3]),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_r/cbnd/ra [3])
  );
  FDRE   \dvi_rx1/dec_r/cbnd/ra_2  (
    .C(\dvi_rx1/pclk ),
    .CE(\dvi_rx1/dec_r/cbnd/ra_en_709 ),
    .D(\dvi_rx1/dec_r/cbnd/Result [2]),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_r/cbnd/ra [2])
  );
  FDRE   \dvi_rx1/dec_r/cbnd/ra_1  (
    .C(\dvi_rx1/pclk ),
    .CE(\dvi_rx1/dec_r/cbnd/ra_en_709 ),
    .D(\dvi_rx1/dec_r/cbnd/Result [1]),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_r/cbnd/ra [1])
  );
  FDRE   \dvi_rx1/dec_r/cbnd/ra_0  (
    .C(\dvi_rx1/pclk ),
    .CE(\dvi_rx1/dec_r/cbnd/ra_en_709 ),
    .D(\dvi_rx1/dec_r/cbnd/Result [0]),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_r/cbnd/ra [0])
  );
  FD   \dvi_rx1/dec_r/cbnd/sdata_9  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_r/cbnd/dpfo_dout [9]),
    .Q(\dvi_rx1/dec_r/cbnd/sdata [9])
  );
  FD   \dvi_rx1/dec_r/cbnd/sdata_8  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_r/cbnd/dpfo_dout [8]),
    .Q(\dvi_rx1/dec_r/cbnd/sdata [8])
  );
  FD   \dvi_rx1/dec_r/cbnd/sdata_7  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_r/cbnd/dpfo_dout [7]),
    .Q(\dvi_rx1/dec_r/cbnd/sdata [7])
  );
  FD   \dvi_rx1/dec_r/cbnd/sdata_6  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_r/cbnd/dpfo_dout [6]),
    .Q(\dvi_rx1/dec_r/cbnd/sdata [6])
  );
  FD   \dvi_rx1/dec_r/cbnd/sdata_5  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_r/cbnd/dpfo_dout [5]),
    .Q(\dvi_rx1/dec_r/cbnd/sdata [5])
  );
  FD   \dvi_rx1/dec_r/cbnd/sdata_4  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_r/cbnd/dpfo_dout [4]),
    .Q(\dvi_rx1/dec_r/cbnd/sdata [4])
  );
  FD   \dvi_rx1/dec_r/cbnd/sdata_3  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_r/cbnd/dpfo_dout [3]),
    .Q(\dvi_rx1/dec_r/cbnd/sdata [3])
  );
  FD   \dvi_rx1/dec_r/cbnd/sdata_2  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_r/cbnd/dpfo_dout [2]),
    .Q(\dvi_rx1/dec_r/cbnd/sdata [2])
  );
  FD   \dvi_rx1/dec_r/cbnd/sdata_1  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_r/cbnd/dpfo_dout [1]),
    .Q(\dvi_rx1/dec_r/cbnd/sdata [1])
  );
  FD   \dvi_rx1/dec_r/cbnd/sdata_0  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_r/cbnd/dpfo_dout [0]),
    .Q(\dvi_rx1/dec_r/cbnd/sdata [0])
  );
  FD   \dvi_rx1/dec_r/cbnd/rcvd_ctkn_q  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_r/cbnd/rcvd_ctkn_713 ),
    .Q(\dvi_rx1/dec_r/cbnd/rcvd_ctkn_q_712 )
  );
  FD   \dvi_rx1/dec_r/cbnd/rcvd_ctkn  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_r/cbnd/sdata[9]_sdata[9]_OR_126_o ),
    .Q(\dvi_rx1/dec_r/cbnd/rcvd_ctkn_713 )
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[9].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_r/rawword [9]),
    .DPRA0(\dvi_rx1/dec_r/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_r/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_r/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_r/cbnd/ra [3]),
    .WCLK(\dvi_rx1/pclk ),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_660 ),
    .SPO(\NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[9].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_r/cbnd/dpfo_dout [9])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[8].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_r/rawword [8]),
    .DPRA0(\dvi_rx1/dec_r/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_r/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_r/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_r/cbnd/ra [3]),
    .WCLK(\dvi_rx1/pclk ),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_660 ),
    .SPO(\NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[8].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_r/cbnd/dpfo_dout [8])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[7].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_r/rawword [7]),
    .DPRA0(\dvi_rx1/dec_r/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_r/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_r/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_r/cbnd/ra [3]),
    .WCLK(\dvi_rx1/pclk ),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_660 ),
    .SPO(\NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[7].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_r/cbnd/dpfo_dout [7])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[6].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_r/rawword [6]),
    .DPRA0(\dvi_rx1/dec_r/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_r/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_r/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_r/cbnd/ra [3]),
    .WCLK(\dvi_rx1/pclk ),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_660 ),
    .SPO(\NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[6].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_r/cbnd/dpfo_dout [6])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[5].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_r/rawword [5]),
    .DPRA0(\dvi_rx1/dec_r/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_r/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_r/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_r/cbnd/ra [3]),
    .WCLK(\dvi_rx1/pclk ),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_660 ),
    .SPO(\NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[5].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_r/cbnd/dpfo_dout [5])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[4].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_r/rawword [4]),
    .DPRA0(\dvi_rx1/dec_r/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_r/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_r/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_r/cbnd/ra [3]),
    .WCLK(\dvi_rx1/pclk ),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_660 ),
    .SPO(\NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[4].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_r/cbnd/dpfo_dout [4])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[3].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_r/rawword [3]),
    .DPRA0(\dvi_rx1/dec_r/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_r/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_r/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_r/cbnd/ra [3]),
    .WCLK(\dvi_rx1/pclk ),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_660 ),
    .SPO(\NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[3].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_r/cbnd/dpfo_dout [3])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[2].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_r/rawword [2]),
    .DPRA0(\dvi_rx1/dec_r/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_r/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_r/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_r/cbnd/ra [3]),
    .WCLK(\dvi_rx1/pclk ),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_660 ),
    .SPO(\NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[2].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_r/cbnd/dpfo_dout [2])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[1].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_r/rawword [1]),
    .DPRA0(\dvi_rx1/dec_r/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_r/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_r/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_r/cbnd/ra [3]),
    .WCLK(\dvi_rx1/pclk ),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_660 ),
    .SPO(\NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[1].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_r/cbnd/dpfo_dout [1])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[0].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_r/rawword [0]),
    .DPRA0(\dvi_rx1/dec_r/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_r/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_r/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_r/cbnd/ra [3]),
    .WCLK(\dvi_rx1/pclk ),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_660 ),
    .SPO(\NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[0].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_r/cbnd/dpfo_dout [0])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[9].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_g/rawword [9]),
    .DPRA0(\dvi_rx1/dec_g/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_g/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_g/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_g/cbnd/ra [3]),
    .WCLK(\dvi_rx1/pclk ),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_660 ),
    .SPO(\NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[9].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_g/cbnd/dpfo_dout [9])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[8].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_g/rawword [8]),
    .DPRA0(\dvi_rx1/dec_g/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_g/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_g/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_g/cbnd/ra [3]),
    .WCLK(\dvi_rx1/pclk ),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_660 ),
    .SPO(\NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[8].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_g/cbnd/dpfo_dout [8])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[7].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_g/rawword [7]),
    .DPRA0(\dvi_rx1/dec_g/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_g/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_g/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_g/cbnd/ra [3]),
    .WCLK(\dvi_rx1/pclk ),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_660 ),
    .SPO(\NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[7].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_g/cbnd/dpfo_dout [7])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[6].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_g/rawword [6]),
    .DPRA0(\dvi_rx1/dec_g/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_g/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_g/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_g/cbnd/ra [3]),
    .WCLK(\dvi_rx1/pclk ),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_660 ),
    .SPO(\NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[6].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_g/cbnd/dpfo_dout [6])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[5].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_g/rawword [5]),
    .DPRA0(\dvi_rx1/dec_g/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_g/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_g/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_g/cbnd/ra [3]),
    .WCLK(\dvi_rx1/pclk ),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_660 ),
    .SPO(\NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[5].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_g/cbnd/dpfo_dout [5])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[4].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_g/rawword [4]),
    .DPRA0(\dvi_rx1/dec_g/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_g/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_g/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_g/cbnd/ra [3]),
    .WCLK(\dvi_rx1/pclk ),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_660 ),
    .SPO(\NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[4].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_g/cbnd/dpfo_dout [4])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[3].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_g/rawword [3]),
    .DPRA0(\dvi_rx1/dec_g/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_g/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_g/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_g/cbnd/ra [3]),
    .WCLK(\dvi_rx1/pclk ),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_660 ),
    .SPO(\NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[3].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_g/cbnd/dpfo_dout [3])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[2].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_g/rawword [2]),
    .DPRA0(\dvi_rx1/dec_g/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_g/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_g/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_g/cbnd/ra [3]),
    .WCLK(\dvi_rx1/pclk ),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_660 ),
    .SPO(\NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[2].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_g/cbnd/dpfo_dout [2])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[1].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_g/rawword [1]),
    .DPRA0(\dvi_rx1/dec_g/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_g/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_g/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_g/cbnd/ra [3]),
    .WCLK(\dvi_rx1/pclk ),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_660 ),
    .SPO(\NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[1].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_g/cbnd/dpfo_dout [1])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[0].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_g/rawword [0]),
    .DPRA0(\dvi_rx1/dec_g/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_g/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_g/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_g/cbnd/ra [3]),
    .WCLK(\dvi_rx1/pclk ),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_660 ),
    .SPO(\NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[0].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_g/cbnd/dpfo_dout [0])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[9].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_b/rawword [9]),
    .DPRA0(\dvi_rx1/dec_b/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_b/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_b/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_b/cbnd/ra [3]),
    .WCLK(\dvi_rx1/pclk ),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_660 ),
    .SPO(\NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[9].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_b/cbnd/dpfo_dout [9])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[8].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_b/rawword [8]),
    .DPRA0(\dvi_rx1/dec_b/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_b/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_b/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_b/cbnd/ra [3]),
    .WCLK(\dvi_rx1/pclk ),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_660 ),
    .SPO(\NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[8].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_b/cbnd/dpfo_dout [8])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[7].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_b/rawword [7]),
    .DPRA0(\dvi_rx1/dec_b/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_b/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_b/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_b/cbnd/ra [3]),
    .WCLK(\dvi_rx1/pclk ),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_660 ),
    .SPO(\NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[7].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_b/cbnd/dpfo_dout [7])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[6].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_b/rawword [6]),
    .DPRA0(\dvi_rx1/dec_b/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_b/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_b/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_b/cbnd/ra [3]),
    .WCLK(\dvi_rx1/pclk ),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_660 ),
    .SPO(\NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[6].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_b/cbnd/dpfo_dout [6])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[5].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_b/rawword [5]),
    .DPRA0(\dvi_rx1/dec_b/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_b/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_b/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_b/cbnd/ra [3]),
    .WCLK(\dvi_rx1/pclk ),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_660 ),
    .SPO(\NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[5].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_b/cbnd/dpfo_dout [5])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[4].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_b/rawword [4]),
    .DPRA0(\dvi_rx1/dec_b/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_b/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_b/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_b/cbnd/ra [3]),
    .WCLK(\dvi_rx1/pclk ),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_660 ),
    .SPO(\NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[4].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_b/cbnd/dpfo_dout [4])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[3].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_b/rawword [3]),
    .DPRA0(\dvi_rx1/dec_b/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_b/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_b/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_b/cbnd/ra [3]),
    .WCLK(\dvi_rx1/pclk ),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_660 ),
    .SPO(\NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[3].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_b/cbnd/dpfo_dout [3])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[2].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_b/rawword [2]),
    .DPRA0(\dvi_rx1/dec_b/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_b/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_b/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_b/cbnd/ra [3]),
    .WCLK(\dvi_rx1/pclk ),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_660 ),
    .SPO(\NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[2].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_b/cbnd/dpfo_dout [2])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[1].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_b/rawword [1]),
    .DPRA0(\dvi_rx1/dec_b/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_b/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_b/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_b/cbnd/ra [3]),
    .WCLK(\dvi_rx1/pclk ),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_660 ),
    .SPO(\NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[1].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_b/cbnd/dpfo_dout [1])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[0].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_b/rawword [0]),
    .DPRA0(\dvi_rx1/dec_b/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_b/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_b/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_b/cbnd/ra [3]),
    .WCLK(\dvi_rx1/pclk ),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_660 ),
    .SPO(\NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[0].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_b/cbnd/dpfo_dout [0])
  );
  OSERDES2 #(
    .BYPASS_GCLK_FF ( "FALSE" ),
    .DATA_RATE_OQ ( "SDR" ),
    .DATA_RATE_OT ( "SDR" ),
    .OUTPUT_MODE ( "DIFFERENTIAL" ),
    .SERDES_MODE ( "MASTER" ),
    .DATA_WIDTH ( 5 ),
    .TRAIN_PATTERN ( 0 ))
  \dvi_tx/clkout/oserdes_m  (
    .SHIFTOUT1(\dvi_tx/clkout/cascade_di ),
    .D2(clk),
    .D3(clk),
    .CLKDIV(tx_pclkx2),
    .TQ(\NLW_dvi_tx/clkout/oserdes_m_TQ_UNCONNECTED ),
    .SHIFTIN1(\dvi_tx/blue [2]),
    .T4(clk),
    .OCE(\dvi_tx/blue [2]),
    .SHIFTIN4(\dvi_tx/clkout/cascade_to ),
    .SHIFTIN3(\dvi_tx/clkout/cascade_do ),
    .SHIFTOUT3(\NLW_dvi_tx/clkout/oserdes_m_SHIFTOUT3_UNCONNECTED ),
    .OQ(\dvi_tx/tmdsclk ),
    .CLK0(tx_pclkx10),
    .T1(clk),
    .IOCE(tx_serdesstrobe),
    .SHIFTIN2(\dvi_tx/blue [2]),
    .D1(\dvi_tx/tmdsclkint [0]),
    .D4(clk),
    .TCE(\dvi_tx/blue [2]),
    .T3(clk),
    .SHIFTOUT2(\dvi_tx/clkout/cascade_ti ),
    .TRAIN(clk),
    .CLK1(clk),
    .RST(clk),
    .SHIFTOUT4(\NLW_dvi_tx/clkout/oserdes_m_SHIFTOUT4_UNCONNECTED ),
    .T2(clk)
  );
  OSERDES2 #(
    .BYPASS_GCLK_FF ( "FALSE" ),
    .DATA_RATE_OQ ( "SDR" ),
    .DATA_RATE_OT ( "SDR" ),
    .OUTPUT_MODE ( "DIFFERENTIAL" ),
    .SERDES_MODE ( "SLAVE" ),
    .DATA_WIDTH ( 5 ),
    .TRAIN_PATTERN ( 0 ))
  \dvi_tx/clkout/oserdes_s  (
    .SHIFTOUT1(\NLW_dvi_tx/clkout/oserdes_s_SHIFTOUT1_UNCONNECTED ),
    .D2(\dvi_tx/tmdsclkint [0]),
    .D3(\dvi_tx/tmdsclkint [0]),
    .CLKDIV(tx_pclkx2),
    .TQ(\NLW_dvi_tx/clkout/oserdes_s_TQ_UNCONNECTED ),
    .SHIFTIN1(\dvi_tx/clkout/cascade_di ),
    .T4(clk),
    .OCE(\dvi_tx/blue [2]),
    .SHIFTIN4(\dvi_tx/blue [2]),
    .SHIFTIN3(\dvi_tx/blue [2]),
    .SHIFTOUT3(\dvi_tx/clkout/cascade_do ),
    .OQ(\NLW_dvi_tx/clkout/oserdes_s_OQ_UNCONNECTED ),
    .CLK0(tx_pclkx10),
    .T1(clk),
    .IOCE(tx_serdesstrobe),
    .SHIFTIN2(\dvi_tx/clkout/cascade_ti ),
    .D1(\dvi_tx/tmdsclkint [0]),
    .D4(\dvi_tx/tmdsclkint [0]),
    .TCE(\dvi_tx/blue [2]),
    .T3(clk),
    .SHIFTOUT2(\NLW_dvi_tx/clkout/oserdes_s_SHIFTOUT2_UNCONNECTED ),
    .TRAIN(clk),
    .CLK1(clk),
    .RST(clk),
    .SHIFTOUT4(\dvi_tx/clkout/cascade_to ),
    .T2(clk)
  );
  OSERDES2 #(
    .BYPASS_GCLK_FF ( "FALSE" ),
    .DATA_RATE_OQ ( "SDR" ),
    .DATA_RATE_OT ( "SDR" ),
    .OUTPUT_MODE ( "DIFFERENTIAL" ),
    .SERDES_MODE ( "MASTER" ),
    .DATA_WIDTH ( 5 ),
    .TRAIN_PATTERN ( 0 ))
  \dvi_tx/oserdes0/oserdes_m  (
    .SHIFTOUT1(\dvi_tx/oserdes0/cascade_di ),
    .D2(clk),
    .D3(clk),
    .CLKDIV(tx_pclkx2),
    .TQ(\NLW_dvi_tx/oserdes0/oserdes_m_TQ_UNCONNECTED ),
    .SHIFTIN1(\dvi_tx/blue [2]),
    .T4(clk),
    .OCE(\dvi_tx/blue [2]),
    .SHIFTIN4(\dvi_tx/oserdes0/cascade_to ),
    .SHIFTIN3(\dvi_tx/oserdes0/cascade_do ),
    .SHIFTOUT3(\NLW_dvi_tx/oserdes0/oserdes_m_SHIFTOUT3_UNCONNECTED ),
    .OQ(\dvi_tx/tmdsint [0]),
    .CLK0(tx_pclkx10),
    .T1(clk),
    .IOCE(tx_serdesstrobe),
    .SHIFTIN2(\dvi_tx/blue [2]),
    .D1(\dvi_tx/n0011 [4]),
    .D4(clk),
    .TCE(\dvi_tx/blue [2]),
    .T3(clk),
    .SHIFTOUT2(\dvi_tx/oserdes0/cascade_ti ),
    .TRAIN(clk),
    .CLK1(clk),
    .RST(clk),
    .SHIFTOUT4(\NLW_dvi_tx/oserdes0/oserdes_m_SHIFTOUT4_UNCONNECTED ),
    .T2(clk)
  );
  OSERDES2 #(
    .BYPASS_GCLK_FF ( "FALSE" ),
    .DATA_RATE_OQ ( "SDR" ),
    .DATA_RATE_OT ( "SDR" ),
    .OUTPUT_MODE ( "DIFFERENTIAL" ),
    .SERDES_MODE ( "SLAVE" ),
    .DATA_WIDTH ( 5 ),
    .TRAIN_PATTERN ( 0 ))
  \dvi_tx/oserdes0/oserdes_s  (
    .SHIFTOUT1(\NLW_dvi_tx/oserdes0/oserdes_s_SHIFTOUT1_UNCONNECTED ),
    .D2(\dvi_tx/n0011 [1]),
    .D3(\dvi_tx/n0011 [2]),
    .CLKDIV(tx_pclkx2),
    .TQ(\NLW_dvi_tx/oserdes0/oserdes_s_TQ_UNCONNECTED ),
    .SHIFTIN1(\dvi_tx/oserdes0/cascade_di ),
    .T4(clk),
    .OCE(\dvi_tx/blue [2]),
    .SHIFTIN4(\dvi_tx/blue [2]),
    .SHIFTIN3(\dvi_tx/blue [2]),
    .SHIFTOUT3(\dvi_tx/oserdes0/cascade_do ),
    .OQ(\NLW_dvi_tx/oserdes0/oserdes_s_OQ_UNCONNECTED ),
    .CLK0(tx_pclkx10),
    .T1(clk),
    .IOCE(tx_serdesstrobe),
    .SHIFTIN2(\dvi_tx/oserdes0/cascade_ti ),
    .D1(\dvi_tx/n0011 [0]),
    .D4(\dvi_tx/n0011 [3]),
    .TCE(\dvi_tx/blue [2]),
    .T3(clk),
    .SHIFTOUT2(\NLW_dvi_tx/oserdes0/oserdes_s_SHIFTOUT2_UNCONNECTED ),
    .TRAIN(clk),
    .CLK1(clk),
    .RST(clk),
    .SHIFTOUT4(\dvi_tx/oserdes0/cascade_to ),
    .T2(clk)
  );
  OSERDES2 #(
    .BYPASS_GCLK_FF ( "FALSE" ),
    .DATA_RATE_OQ ( "SDR" ),
    .DATA_RATE_OT ( "SDR" ),
    .OUTPUT_MODE ( "DIFFERENTIAL" ),
    .SERDES_MODE ( "MASTER" ),
    .DATA_WIDTH ( 5 ),
    .TRAIN_PATTERN ( 0 ))
  \dvi_tx/oserdes1/oserdes_m  (
    .SHIFTOUT1(\dvi_tx/oserdes1/cascade_di ),
    .D2(clk),
    .D3(clk),
    .CLKDIV(tx_pclkx2),
    .TQ(\NLW_dvi_tx/oserdes1/oserdes_m_TQ_UNCONNECTED ),
    .SHIFTIN1(\dvi_tx/blue [2]),
    .T4(clk),
    .OCE(\dvi_tx/blue [2]),
    .SHIFTIN4(\dvi_tx/oserdes1/cascade_to ),
    .SHIFTIN3(\dvi_tx/oserdes1/cascade_do ),
    .SHIFTOUT3(\NLW_dvi_tx/oserdes1/oserdes_m_SHIFTOUT3_UNCONNECTED ),
    .OQ(\dvi_tx/tmdsint [1]),
    .CLK0(tx_pclkx10),
    .T1(clk),
    .IOCE(tx_serdesstrobe),
    .SHIFTIN2(\dvi_tx/blue [2]),
    .D1(\dvi_tx/n0011 [9]),
    .D4(clk),
    .TCE(\dvi_tx/blue [2]),
    .T3(clk),
    .SHIFTOUT2(\dvi_tx/oserdes1/cascade_ti ),
    .TRAIN(clk),
    .CLK1(clk),
    .RST(clk),
    .SHIFTOUT4(\NLW_dvi_tx/oserdes1/oserdes_m_SHIFTOUT4_UNCONNECTED ),
    .T2(clk)
  );
  OSERDES2 #(
    .BYPASS_GCLK_FF ( "FALSE" ),
    .DATA_RATE_OQ ( "SDR" ),
    .DATA_RATE_OT ( "SDR" ),
    .OUTPUT_MODE ( "DIFFERENTIAL" ),
    .SERDES_MODE ( "SLAVE" ),
    .DATA_WIDTH ( 5 ),
    .TRAIN_PATTERN ( 0 ))
  \dvi_tx/oserdes1/oserdes_s  (
    .SHIFTOUT1(\NLW_dvi_tx/oserdes1/oserdes_s_SHIFTOUT1_UNCONNECTED ),
    .D2(\dvi_tx/n0011 [6]),
    .D3(\dvi_tx/n0011 [7]),
    .CLKDIV(tx_pclkx2),
    .TQ(\NLW_dvi_tx/oserdes1/oserdes_s_TQ_UNCONNECTED ),
    .SHIFTIN1(\dvi_tx/oserdes1/cascade_di ),
    .T4(clk),
    .OCE(\dvi_tx/blue [2]),
    .SHIFTIN4(\dvi_tx/blue [2]),
    .SHIFTIN3(\dvi_tx/blue [2]),
    .SHIFTOUT3(\dvi_tx/oserdes1/cascade_do ),
    .OQ(\NLW_dvi_tx/oserdes1/oserdes_s_OQ_UNCONNECTED ),
    .CLK0(tx_pclkx10),
    .T1(clk),
    .IOCE(tx_serdesstrobe),
    .SHIFTIN2(\dvi_tx/oserdes1/cascade_ti ),
    .D1(\dvi_tx/n0011 [5]),
    .D4(\dvi_tx/n0011 [8]),
    .TCE(\dvi_tx/blue [2]),
    .T3(clk),
    .SHIFTOUT2(\NLW_dvi_tx/oserdes1/oserdes_s_SHIFTOUT2_UNCONNECTED ),
    .TRAIN(clk),
    .CLK1(clk),
    .RST(clk),
    .SHIFTOUT4(\dvi_tx/oserdes1/cascade_to ),
    .T2(clk)
  );
  OSERDES2 #(
    .BYPASS_GCLK_FF ( "FALSE" ),
    .DATA_RATE_OQ ( "SDR" ),
    .DATA_RATE_OT ( "SDR" ),
    .OUTPUT_MODE ( "DIFFERENTIAL" ),
    .SERDES_MODE ( "MASTER" ),
    .DATA_WIDTH ( 5 ),
    .TRAIN_PATTERN ( 0 ))
  \dvi_tx/oserdes2/oserdes_m  (
    .SHIFTOUT1(\dvi_tx/oserdes2/cascade_di ),
    .D2(clk),
    .D3(clk),
    .CLKDIV(tx_pclkx2),
    .TQ(\NLW_dvi_tx/oserdes2/oserdes_m_TQ_UNCONNECTED ),
    .SHIFTIN1(\dvi_tx/blue [2]),
    .T4(clk),
    .OCE(\dvi_tx/blue [2]),
    .SHIFTIN4(\dvi_tx/oserdes2/cascade_to ),
    .SHIFTIN3(\dvi_tx/oserdes2/cascade_do ),
    .SHIFTOUT3(\NLW_dvi_tx/oserdes2/oserdes_m_SHIFTOUT3_UNCONNECTED ),
    .OQ(\dvi_tx/tmdsint [2]),
    .CLK0(tx_pclkx10),
    .T1(clk),
    .IOCE(tx_serdesstrobe),
    .SHIFTIN2(\dvi_tx/blue [2]),
    .D1(\dvi_tx/n0011 [14]),
    .D4(clk),
    .TCE(\dvi_tx/blue [2]),
    .T3(clk),
    .SHIFTOUT2(\dvi_tx/oserdes2/cascade_ti ),
    .TRAIN(clk),
    .CLK1(clk),
    .RST(clk),
    .SHIFTOUT4(\NLW_dvi_tx/oserdes2/oserdes_m_SHIFTOUT4_UNCONNECTED ),
    .T2(clk)
  );
  OSERDES2 #(
    .BYPASS_GCLK_FF ( "FALSE" ),
    .DATA_RATE_OQ ( "SDR" ),
    .DATA_RATE_OT ( "SDR" ),
    .OUTPUT_MODE ( "DIFFERENTIAL" ),
    .SERDES_MODE ( "SLAVE" ),
    .DATA_WIDTH ( 5 ),
    .TRAIN_PATTERN ( 0 ))
  \dvi_tx/oserdes2/oserdes_s  (
    .SHIFTOUT1(\NLW_dvi_tx/oserdes2/oserdes_s_SHIFTOUT1_UNCONNECTED ),
    .D2(\dvi_tx/n0011 [11]),
    .D3(\dvi_tx/n0011 [12]),
    .CLKDIV(tx_pclkx2),
    .TQ(\NLW_dvi_tx/oserdes2/oserdes_s_TQ_UNCONNECTED ),
    .SHIFTIN1(\dvi_tx/oserdes2/cascade_di ),
    .T4(clk),
    .OCE(\dvi_tx/blue [2]),
    .SHIFTIN4(\dvi_tx/blue [2]),
    .SHIFTIN3(\dvi_tx/blue [2]),
    .SHIFTOUT3(\dvi_tx/oserdes2/cascade_do ),
    .OQ(\NLW_dvi_tx/oserdes2/oserdes_s_OQ_UNCONNECTED ),
    .CLK0(tx_pclkx10),
    .T1(clk),
    .IOCE(tx_serdesstrobe),
    .SHIFTIN2(\dvi_tx/oserdes2/cascade_ti ),
    .D1(\dvi_tx/n0011 [10]),
    .D4(\dvi_tx/n0011 [13]),
    .TCE(\dvi_tx/blue [2]),
    .T3(clk),
    .SHIFTOUT2(\NLW_dvi_tx/oserdes2/oserdes_s_SHIFTOUT2_UNCONNECTED ),
    .TRAIN(clk),
    .CLK1(clk),
    .RST(clk),
    .SHIFTOUT4(\dvi_tx/oserdes2/cascade_to ),
    .T2(clk)
  );
  OBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \dvi_tx/TMDS2  (
    .I(\dvi_tx/tmdsint [2]),
    .O(TX0_TMDS[2]),
    .OB(TX0_TMDSB[2])
  );
  OBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \dvi_tx/TMDS1  (
    .I(\dvi_tx/tmdsint [1]),
    .O(TX0_TMDS[1]),
    .OB(TX0_TMDSB[1])
  );
  OBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \dvi_tx/TMDS0  (
    .I(\dvi_tx/tmdsint [0]),
    .O(TX0_TMDS[0]),
    .OB(TX0_TMDSB[0])
  );
  OBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \dvi_tx/TMDS3  (
    .I(\dvi_tx/tmdsclk ),
    .O(TX0_TMDS[3]),
    .OB(TX0_TMDSB[3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/toggle  (
    .C(tx_pclkx2),
    .D(\dvi_tx/toggle_inv ),
    .Q(\dvi_tx/toggle_877 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_out14  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/mux [14]),
    .Q(\dvi_tx/n0011 [14])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_out13  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/mux [13]),
    .Q(\dvi_tx/n0011 [13])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_out12  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/mux [12]),
    .Q(\dvi_tx/n0011 [12])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_out11  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/mux [11]),
    .Q(\dvi_tx/n0011 [11])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_out10  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/mux [10]),
    .Q(\dvi_tx/n0011 [10])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_out9  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/mux [9]),
    .Q(\dvi_tx/n0011 [9])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_out8  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/mux [8]),
    .Q(\dvi_tx/n0011 [8])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_out7  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/mux [7]),
    .Q(\dvi_tx/n0011 [7])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_out6  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/mux [6]),
    .Q(\dvi_tx/n0011 [6])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_out5  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/mux [5]),
    .Q(\dvi_tx/n0011 [5])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_out4  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/mux [4]),
    .Q(\dvi_tx/n0011 [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_out3  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/mux [3]),
    .Q(\dvi_tx/n0011 [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_out2  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/mux [2]),
    .Q(\dvi_tx/n0011 [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_out1  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/mux [1]),
    .Q(\dvi_tx/n0011 [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_out0  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/mux [0]),
    .Q(\dvi_tx/n0011 [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db29  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [29]),
    .Q(\dvi_tx/pixel2x/db [29])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db28  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [28]),
    .Q(\dvi_tx/pixel2x/db [28])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db27  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [27]),
    .Q(\dvi_tx/pixel2x/db [27])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db26  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [26]),
    .Q(\dvi_tx/pixel2x/db [26])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db25  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [25]),
    .Q(\dvi_tx/pixel2x/db [25])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db24  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [24]),
    .Q(\dvi_tx/pixel2x/db [24])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db23  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [23]),
    .Q(\dvi_tx/pixel2x/db [23])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db22  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [22]),
    .Q(\dvi_tx/pixel2x/db [22])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db21  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [21]),
    .Q(\dvi_tx/pixel2x/db [21])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db20  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [20]),
    .Q(\dvi_tx/pixel2x/db [20])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db19  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [19]),
    .Q(\dvi_tx/pixel2x/db [19])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db18  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [18]),
    .Q(\dvi_tx/pixel2x/db [18])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db17  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [17]),
    .Q(\dvi_tx/pixel2x/db [17])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db16  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [16]),
    .Q(\dvi_tx/pixel2x/db [16])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db15  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [15]),
    .Q(\dvi_tx/pixel2x/db [15])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db14  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [14]),
    .Q(\dvi_tx/pixel2x/db [14])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db13  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [13]),
    .Q(\dvi_tx/pixel2x/db [13])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db12  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [12]),
    .Q(\dvi_tx/pixel2x/db [12])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db11  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [11]),
    .Q(\dvi_tx/pixel2x/db [11])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db10  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [10]),
    .Q(\dvi_tx/pixel2x/db [10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db9  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [9]),
    .Q(\dvi_tx/pixel2x/db [9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db8  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [8]),
    .Q(\dvi_tx/pixel2x/db [8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db7  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [7]),
    .Q(\dvi_tx/pixel2x/db [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db6  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [6]),
    .Q(\dvi_tx/pixel2x/db [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db5  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [5]),
    .Q(\dvi_tx/pixel2x/db [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db4  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [4]),
    .Q(\dvi_tx/pixel2x/db [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db3  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [3]),
    .Q(\dvi_tx/pixel2x/db [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db2  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [2]),
    .Q(\dvi_tx/pixel2x/db [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db1  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [1]),
    .Q(\dvi_tx/pixel2x/db [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db0  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [0]),
    .Q(\dvi_tx/pixel2x/db [0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fdc_ra3  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/Mram_ra_d3 ),
    .R(\dvi_tx/pixel2x/rstp ),
    .Q(\dvi_tx/pixel2x/ra [3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fdc_ra2  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/Mram_ra_d2 ),
    .R(\dvi_tx/pixel2x/rstp ),
    .Q(\dvi_tx/pixel2x/ra [2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fdc_ra1  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/Mram_ra_d1 ),
    .R(\dvi_tx/pixel2x/rstp ),
    .Q(\dvi_tx/pixel2x/ra [1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fdc_ra0  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/Mram_ra_d ),
    .R(\dvi_tx/pixel2x/rstp ),
    .Q(\dvi_tx/pixel2x/ra [0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/sync_gen  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/sync_INV_50_o ),
    .R(\dvi_tx/pixel2x/rstp ),
    .Q(\dvi_tx/pixel2x/sync )
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_rstp  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/rstsync_q ),
    .Q(\dvi_tx/pixel2x/rstp )
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_rstsync  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/rstsync ),
    .Q(\dvi_tx/pixel2x/rstsync_q )
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[29].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/blue [2]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(\dvi_tx/blue [2]),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[29].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [29])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[28].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/blue [2]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(\dvi_tx/blue [2]),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[28].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [28])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[27].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(clk),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(\dvi_tx/blue [2]),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[27].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [27])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[26].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/blue [2]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(\dvi_tx/blue [2]),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[26].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [26])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[25].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(clk),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(\dvi_tx/blue [2]),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[25].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [25])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[24].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/blue [2]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(\dvi_tx/blue [2]),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[24].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [24])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[23].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/blue [2]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(\dvi_tx/blue [2]),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[23].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [23])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[22].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(clk),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(\dvi_tx/blue [2]),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[22].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [22])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[21].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/blue [2]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(\dvi_tx/blue [2]),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[21].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [21])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[20].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(clk),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(\dvi_tx/blue [2]),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[20].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [20])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[19].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/blue [2]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(\dvi_tx/blue [2]),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[19].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [19])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[18].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/blue [2]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(\dvi_tx/blue [2]),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[18].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [18])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[17].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(clk),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(\dvi_tx/blue [2]),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[17].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [17])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[16].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/blue [2]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(\dvi_tx/blue [2]),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[16].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [16])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[15].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(clk),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(\dvi_tx/blue [2]),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[15].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [15])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[14].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/blue [2]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(\dvi_tx/blue [2]),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[14].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [14])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[13].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(clk),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(\dvi_tx/blue [2]),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[13].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [13])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[12].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/blue [2]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(\dvi_tx/blue [2]),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[12].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [12])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[11].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(clk),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(\dvi_tx/blue [2]),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[11].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [11])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[10].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(clk),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(\dvi_tx/blue [2]),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[10].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [10])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[9].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/blue [2]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(\dvi_tx/blue [2]),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[9].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [9])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[8].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(clk),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(\dvi_tx/blue [2]),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[8].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [8])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[7].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/blue [2]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(\dvi_tx/blue [2]),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[7].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [7])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[6].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(clk),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(\dvi_tx/blue [2]),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[6].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [6])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[5].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(clk),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(\dvi_tx/blue [2]),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[5].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [5])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[4].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/blue [2]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(\dvi_tx/blue [2]),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[4].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [4])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[3].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(clk),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(\dvi_tx/blue [2]),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[3].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [3])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[2].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/blue [2]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(\dvi_tx/blue [2]),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[2].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [2])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[1].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(clk),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(\dvi_tx/blue [2]),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[1].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [1])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[0].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(clk),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(\dvi_tx/blue [2]),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[0].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [0])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_r/data[7]_data[7]_MUX_117_o1  (
    .I0(\dvi_rx1/dec_r/cbnd/sdata [6]),
    .I1(\dvi_rx1/dec_r/cbnd/sdata [7]),
    .I2(\dvi_rx1/dec_r/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_r/data[7]_data[7]_MUX_117_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_r/data[4]_data[4]_MUX_114_o1  (
    .I0(\dvi_rx1/dec_r/cbnd/sdata [3]),
    .I1(\dvi_rx1/dec_r/cbnd/sdata [4]),
    .I2(\dvi_rx1/dec_r/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_r/data[4]_data[4]_MUX_114_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_r/data[1]_data[1]_MUX_111_o1  (
    .I0(\dvi_rx1/dec_r/cbnd/sdata [0]),
    .I1(\dvi_rx1/dec_r/cbnd/sdata [1]),
    .I2(\dvi_rx1/dec_r/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_r/data[1]_data[1]_MUX_111_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_r/data[2]_data[2]_MUX_112_o1  (
    .I0(\dvi_rx1/dec_r/cbnd/sdata [1]),
    .I1(\dvi_rx1/dec_r/cbnd/sdata [2]),
    .I2(\dvi_rx1/dec_r/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_r/data[2]_data[2]_MUX_112_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_r/data[3]_data[3]_MUX_113_o1  (
    .I0(\dvi_rx1/dec_r/cbnd/sdata [2]),
    .I1(\dvi_rx1/dec_r/cbnd/sdata [3]),
    .I2(\dvi_rx1/dec_r/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_r/data[3]_data[3]_MUX_113_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_r/data[5]_data[5]_MUX_115_o1  (
    .I0(\dvi_rx1/dec_r/cbnd/sdata [4]),
    .I1(\dvi_rx1/dec_r/cbnd/sdata [5]),
    .I2(\dvi_rx1/dec_r/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_r/data[5]_data[5]_MUX_115_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_r/data[6]_data[6]_MUX_116_o1  (
    .I0(\dvi_rx1/dec_r/cbnd/sdata [5]),
    .I1(\dvi_rx1/dec_r/cbnd/sdata [6]),
    .I2(\dvi_rx1/dec_r/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_r/data[6]_data[6]_MUX_116_o )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_rx1/dec_r/Mmux_data11  (
    .I0(\dvi_rx1/dec_r/cbnd/sdata [0]),
    .I1(\dvi_rx1/dec_r/cbnd/sdata [9]),
    .O(\dvi_rx1/dec_r/data [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_rx1/dec_r/Mxor_rx_toggle_xo<0>1  (
    .I0(\dvi_rx1/dec_r/flipgearx2_96 ),
    .I1(\dvi_rx1/dec_r/toggle_207 ),
    .O(\dvi_rx1/dec_r/rx_toggle )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \dvi_rx1/dec_r/iamrdy_other_ch1_rdy_AND_30_o_inv1  (
    .I0(\dvi_rx1/dec_b/cbnd/iamrdy_39 ),
    .I1(\dvi_rx1/dec_g/cbnd/iamrdy_40 ),
    .I2(\dvi_rx1/dec_r/cbnd/iamrdy_41 ),
    .O(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \dvi_rx1/dec_r/bitslip_bitslip_q_AND_1_o1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/bitslip_114 ),
    .I1(\dvi_rx1/dec_r/bitslip_q_98 ),
    .O(\dvi_rx1/dec_r/bitslip_bitslip_q_AND_1_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_g/data[7]_data[7]_MUX_117_o1  (
    .I0(\dvi_rx1/dec_g/cbnd/sdata [6]),
    .I1(\dvi_rx1/dec_g/cbnd/sdata [7]),
    .I2(\dvi_rx1/dec_g/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_g/data[7]_data[7]_MUX_117_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_g/data[4]_data[4]_MUX_114_o1  (
    .I0(\dvi_rx1/dec_g/cbnd/sdata [3]),
    .I1(\dvi_rx1/dec_g/cbnd/sdata [4]),
    .I2(\dvi_rx1/dec_g/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_g/data[4]_data[4]_MUX_114_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_g/data[1]_data[1]_MUX_111_o1  (
    .I0(\dvi_rx1/dec_g/cbnd/sdata [0]),
    .I1(\dvi_rx1/dec_g/cbnd/sdata [1]),
    .I2(\dvi_rx1/dec_g/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_g/data[1]_data[1]_MUX_111_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_g/data[2]_data[2]_MUX_112_o1  (
    .I0(\dvi_rx1/dec_g/cbnd/sdata [1]),
    .I1(\dvi_rx1/dec_g/cbnd/sdata [2]),
    .I2(\dvi_rx1/dec_g/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_g/data[2]_data[2]_MUX_112_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_g/data[3]_data[3]_MUX_113_o1  (
    .I0(\dvi_rx1/dec_g/cbnd/sdata [2]),
    .I1(\dvi_rx1/dec_g/cbnd/sdata [3]),
    .I2(\dvi_rx1/dec_g/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_g/data[3]_data[3]_MUX_113_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_g/data[5]_data[5]_MUX_115_o1  (
    .I0(\dvi_rx1/dec_g/cbnd/sdata [4]),
    .I1(\dvi_rx1/dec_g/cbnd/sdata [5]),
    .I2(\dvi_rx1/dec_g/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_g/data[5]_data[5]_MUX_115_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_g/data[6]_data[6]_MUX_116_o1  (
    .I0(\dvi_rx1/dec_g/cbnd/sdata [5]),
    .I1(\dvi_rx1/dec_g/cbnd/sdata [6]),
    .I2(\dvi_rx1/dec_g/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_g/data[6]_data[6]_MUX_116_o )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_rx1/dec_g/Mmux_data11  (
    .I0(\dvi_rx1/dec_g/cbnd/sdata [0]),
    .I1(\dvi_rx1/dec_g/cbnd/sdata [9]),
    .O(\dvi_rx1/dec_g/data [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_rx1/dec_g/Mxor_rx_toggle_xo<0>1  (
    .I0(\dvi_rx1/dec_g/flipgearx2_142 ),
    .I1(\dvi_rx1/dec_r/toggle_207 ),
    .O(\dvi_rx1/dec_g/rx_toggle )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \dvi_rx1/dec_g/bitslip_bitslip_q_AND_1_o1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/bitslip_160 ),
    .I1(\dvi_rx1/dec_g/bitslip_q_144 ),
    .O(\dvi_rx1/dec_g/bitslip_bitslip_q_AND_1_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_b/data[7]_data[7]_MUX_117_o1  (
    .I0(\dvi_rx1/dec_b/cbnd/sdata [6]),
    .I1(\dvi_rx1/dec_b/cbnd/sdata [7]),
    .I2(\dvi_rx1/dec_b/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_b/data[7]_data[7]_MUX_117_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_b/data[4]_data[4]_MUX_114_o1  (
    .I0(\dvi_rx1/dec_b/cbnd/sdata [3]),
    .I1(\dvi_rx1/dec_b/cbnd/sdata [4]),
    .I2(\dvi_rx1/dec_b/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_b/data[4]_data[4]_MUX_114_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_b/data[1]_data[1]_MUX_111_o1  (
    .I0(\dvi_rx1/dec_b/cbnd/sdata [0]),
    .I1(\dvi_rx1/dec_b/cbnd/sdata [1]),
    .I2(\dvi_rx1/dec_b/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_b/data[1]_data[1]_MUX_111_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_b/data[2]_data[2]_MUX_112_o1  (
    .I0(\dvi_rx1/dec_b/cbnd/sdata [1]),
    .I1(\dvi_rx1/dec_b/cbnd/sdata [2]),
    .I2(\dvi_rx1/dec_b/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_b/data[2]_data[2]_MUX_112_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_b/data[3]_data[3]_MUX_113_o1  (
    .I0(\dvi_rx1/dec_b/cbnd/sdata [2]),
    .I1(\dvi_rx1/dec_b/cbnd/sdata [3]),
    .I2(\dvi_rx1/dec_b/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_b/data[3]_data[3]_MUX_113_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_b/data[5]_data[5]_MUX_115_o1  (
    .I0(\dvi_rx1/dec_b/cbnd/sdata [4]),
    .I1(\dvi_rx1/dec_b/cbnd/sdata [5]),
    .I2(\dvi_rx1/dec_b/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_b/data[5]_data[5]_MUX_115_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_b/data[6]_data[6]_MUX_116_o1  (
    .I0(\dvi_rx1/dec_b/cbnd/sdata [5]),
    .I1(\dvi_rx1/dec_b/cbnd/sdata [6]),
    .I2(\dvi_rx1/dec_b/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_b/data[6]_data[6]_MUX_116_o )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_rx1/dec_b/Mmux_data11  (
    .I0(\dvi_rx1/dec_b/cbnd/sdata [0]),
    .I1(\dvi_rx1/dec_b/cbnd/sdata [9]),
    .O(\dvi_rx1/dec_b/data [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_rx1/dec_b/Mxor_rx_toggle_xo<0>1  (
    .I0(\dvi_rx1/dec_b/flipgearx2_189 ),
    .I1(\dvi_rx1/dec_r/toggle_207 ),
    .O(\dvi_rx1/dec_b/rx_toggle )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \dvi_rx1/dec_b/bitslip_bitslip_q_AND_1_o1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/bitslip_208 ),
    .I1(\dvi_rx1/dec_b/bitslip_q_191 ),
    .O(\dvi_rx1/dec_b/bitslip_bitslip_q_AND_1_o )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \dvi_rx1/dec_b/des_0/GND_10_o_GND_10_o_equal_45_o_inv1  (
    .I0(\dvi_rx1/dec_b/des_0/state_FSM_FFd3_282 ),
    .I1(\dvi_rx1/dec_b/des_0/state_FSM_FFd4_281 ),
    .I2(\dvi_rx1/dec_b/des_0/state_FSM_FFd2_283 ),
    .O(\dvi_rx1/dec_b/des_0/GND_10_o_GND_10_o_equal_45_o_inv )
  );
  LUT4 #(
    .INIT ( 16'hDD28 ))
  \dvi_rx1/dec_b/des_0/state_FSM_FFd3-In1  (
    .I0(\dvi_rx1/dec_b/des_0/state_FSM_FFd4_281 ),
    .I1(\dvi_rx1/dec_b/des_0/busy_data_d_271 ),
    .I2(\dvi_rx1/dec_b/des_0/state_FSM_FFd2_283 ),
    .I3(\dvi_rx1/dec_b/des_0/state_FSM_FFd3_282 ),
    .O(\dvi_rx1/dec_b/des_0/state_FSM_FFd3-In )
  );
  LUT6 #(
    .INIT ( 64'hA9B5A9B4A985A984 ))
  \dvi_rx1/dec_b/des_0/state_FSM_FFd4-In1  (
    .I0(\dvi_rx1/dec_b/des_0/busy_data_d_271 ),
    .I1(\dvi_rx1/dec_b/des_0/state_FSM_FFd3_282 ),
    .I2(\dvi_rx1/dec_b/des_0/state_FSM_FFd2_283 ),
    .I3(\dvi_rx1/dec_b/des_0/state_FSM_FFd4_281 ),
    .I4(\dvi_rx1/dec_b/des_0/enable_274 ),
    .I5(\dvi_rx1/dec_b/des_0/counter [8]),
    .O(\dvi_rx1/dec_b/des_0/state_FSM_FFd4-In )
  );
  LUT4 #(
    .INIT ( 16'hFF40 ))
  \dvi_rx1/dec_b/des_0/state_FSM_FFd2-In1  (
    .I0(\dvi_rx1/dec_b/des_0/busy_data_d_271 ),
    .I1(\dvi_rx1/dec_b/des_0/state_FSM_FFd3_282 ),
    .I2(\dvi_rx1/dec_b/des_0/state_FSM_FFd4_281 ),
    .I3(\dvi_rx1/dec_b/des_0/state_FSM_FFd2_283 ),
    .O(\dvi_rx1/dec_b/des_0/state_FSM_FFd2-In )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \dvi_rx1/dec_b/des_0/pdcounter[4]_GND_10_o_equal_50_o<4>1  (
    .I0(\dvi_rx1/dec_b/des_0/pdcounter [4]),
    .I1(\dvi_rx1/dec_b/des_0/pdcounter [3]),
    .I2(\dvi_rx1/dec_b/des_0/pdcounter [2]),
    .I3(\dvi_rx1/dec_b/des_0/pdcounter [1]),
    .I4(\dvi_rx1/dec_b/des_0/pdcounter [0]),
    .O(\dvi_rx1/dec_b/des_0/pdcounter[4]_GND_10_o_equal_50_o )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_equal_48_o<4>1  (
    .I0(\dvi_rx1/dec_b/des_0/pdcounter [4]),
    .I1(\dvi_rx1/dec_b/des_0/pdcounter [3]),
    .I2(\dvi_rx1/dec_b/des_0/pdcounter [2]),
    .I3(\dvi_rx1/dec_b/des_0/pdcounter [1]),
    .I4(\dvi_rx1/dec_b/des_0/pdcounter [0]),
    .O(\dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_equal_48_o )
  );
  LUT4 #(
    .INIT ( 16'hFEFF ))
  \dvi_rx1/dec_b/des_0/GND_10_o_busy_data_d_OR_63_o1  (
    .I0(\dvi_rx1/dec_b/des_0/busy_data_d_271 ),
    .I1(\dvi_rx1/dec_b/des_0/state_FSM_FFd4_281 ),
    .I2(\dvi_rx1/dec_b/des_0/state_FSM_FFd3_282 ),
    .I3(\dvi_rx1/dec_b/des_0/state_FSM_FFd2_283 ),
    .O(\dvi_rx1/dec_b/des_0/GND_10_o_busy_data_d_OR_63_o )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \dvi_rx1/dec_g/des_0/GND_10_o_GND_10_o_equal_45_o_inv1  (
    .I0(\dvi_rx1/dec_g/des_0/state_FSM_FFd3_325 ),
    .I1(\dvi_rx1/dec_g/des_0/state_FSM_FFd4_324 ),
    .I2(\dvi_rx1/dec_g/des_0/state_FSM_FFd2_326 ),
    .O(\dvi_rx1/dec_g/des_0/GND_10_o_GND_10_o_equal_45_o_inv )
  );
  LUT4 #(
    .INIT ( 16'hDD28 ))
  \dvi_rx1/dec_g/des_0/state_FSM_FFd3-In1  (
    .I0(\dvi_rx1/dec_g/des_0/state_FSM_FFd4_324 ),
    .I1(\dvi_rx1/dec_g/des_0/busy_data_d_315 ),
    .I2(\dvi_rx1/dec_g/des_0/state_FSM_FFd2_326 ),
    .I3(\dvi_rx1/dec_g/des_0/state_FSM_FFd3_325 ),
    .O(\dvi_rx1/dec_g/des_0/state_FSM_FFd3-In )
  );
  LUT6 #(
    .INIT ( 64'hA9B5A9B4A985A984 ))
  \dvi_rx1/dec_g/des_0/state_FSM_FFd4-In1  (
    .I0(\dvi_rx1/dec_g/des_0/busy_data_d_315 ),
    .I1(\dvi_rx1/dec_g/des_0/state_FSM_FFd3_325 ),
    .I2(\dvi_rx1/dec_g/des_0/state_FSM_FFd2_326 ),
    .I3(\dvi_rx1/dec_g/des_0/state_FSM_FFd4_324 ),
    .I4(\dvi_rx1/dec_b/des_0/enable_274 ),
    .I5(\dvi_rx1/dec_b/des_0/counter [8]),
    .O(\dvi_rx1/dec_g/des_0/state_FSM_FFd4-In )
  );
  LUT4 #(
    .INIT ( 16'hFF40 ))
  \dvi_rx1/dec_g/des_0/state_FSM_FFd2-In1  (
    .I0(\dvi_rx1/dec_g/des_0/busy_data_d_315 ),
    .I1(\dvi_rx1/dec_g/des_0/state_FSM_FFd3_325 ),
    .I2(\dvi_rx1/dec_g/des_0/state_FSM_FFd4_324 ),
    .I3(\dvi_rx1/dec_g/des_0/state_FSM_FFd2_326 ),
    .O(\dvi_rx1/dec_g/des_0/state_FSM_FFd2-In )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \dvi_rx1/dec_g/des_0/pdcounter[4]_GND_10_o_equal_50_o<4>1  (
    .I0(\dvi_rx1/dec_g/des_0/pdcounter [4]),
    .I1(\dvi_rx1/dec_g/des_0/pdcounter [3]),
    .I2(\dvi_rx1/dec_g/des_0/pdcounter [2]),
    .I3(\dvi_rx1/dec_g/des_0/pdcounter [1]),
    .I4(\dvi_rx1/dec_g/des_0/pdcounter [0]),
    .O(\dvi_rx1/dec_g/des_0/pdcounter[4]_GND_10_o_equal_50_o )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_equal_48_o<4>1  (
    .I0(\dvi_rx1/dec_g/des_0/pdcounter [4]),
    .I1(\dvi_rx1/dec_g/des_0/pdcounter [3]),
    .I2(\dvi_rx1/dec_g/des_0/pdcounter [2]),
    .I3(\dvi_rx1/dec_g/des_0/pdcounter [1]),
    .I4(\dvi_rx1/dec_g/des_0/pdcounter [0]),
    .O(\dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_equal_48_o )
  );
  LUT4 #(
    .INIT ( 16'hFEFF ))
  \dvi_rx1/dec_g/des_0/GND_10_o_busy_data_d_OR_63_o1  (
    .I0(\dvi_rx1/dec_g/des_0/busy_data_d_315 ),
    .I1(\dvi_rx1/dec_g/des_0/state_FSM_FFd4_324 ),
    .I2(\dvi_rx1/dec_g/des_0/state_FSM_FFd3_325 ),
    .I3(\dvi_rx1/dec_g/des_0/state_FSM_FFd2_326 ),
    .O(\dvi_rx1/dec_g/des_0/GND_10_o_busy_data_d_OR_63_o )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \dvi_rx1/dec_r/des_0/GND_10_o_GND_10_o_equal_45_o_inv1  (
    .I0(\dvi_rx1/dec_r/des_0/state_FSM_FFd3_366 ),
    .I1(\dvi_rx1/dec_r/des_0/state_FSM_FFd4_365 ),
    .I2(\dvi_rx1/dec_r/des_0/state_FSM_FFd2_367 ),
    .O(\dvi_rx1/dec_r/des_0/GND_10_o_GND_10_o_equal_45_o_inv )
  );
  LUT4 #(
    .INIT ( 16'hDD28 ))
  \dvi_rx1/dec_r/des_0/state_FSM_FFd3-In1  (
    .I0(\dvi_rx1/dec_r/des_0/state_FSM_FFd4_365 ),
    .I1(\dvi_rx1/dec_r/des_0/busy_data_d_356 ),
    .I2(\dvi_rx1/dec_r/des_0/state_FSM_FFd2_367 ),
    .I3(\dvi_rx1/dec_r/des_0/state_FSM_FFd3_366 ),
    .O(\dvi_rx1/dec_r/des_0/state_FSM_FFd3-In )
  );
  LUT6 #(
    .INIT ( 64'hA9B5A9B4A985A984 ))
  \dvi_rx1/dec_r/des_0/state_FSM_FFd4-In1  (
    .I0(\dvi_rx1/dec_r/des_0/busy_data_d_356 ),
    .I1(\dvi_rx1/dec_r/des_0/state_FSM_FFd3_366 ),
    .I2(\dvi_rx1/dec_r/des_0/state_FSM_FFd2_367 ),
    .I3(\dvi_rx1/dec_r/des_0/state_FSM_FFd4_365 ),
    .I4(\dvi_rx1/dec_b/des_0/enable_274 ),
    .I5(\dvi_rx1/dec_b/des_0/counter [8]),
    .O(\dvi_rx1/dec_r/des_0/state_FSM_FFd4-In )
  );
  LUT4 #(
    .INIT ( 16'hFF40 ))
  \dvi_rx1/dec_r/des_0/state_FSM_FFd2-In1  (
    .I0(\dvi_rx1/dec_r/des_0/busy_data_d_356 ),
    .I1(\dvi_rx1/dec_r/des_0/state_FSM_FFd3_366 ),
    .I2(\dvi_rx1/dec_r/des_0/state_FSM_FFd4_365 ),
    .I3(\dvi_rx1/dec_r/des_0/state_FSM_FFd2_367 ),
    .O(\dvi_rx1/dec_r/des_0/state_FSM_FFd2-In )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \dvi_rx1/dec_r/des_0/pdcounter[4]_GND_10_o_equal_50_o<4>1  (
    .I0(\dvi_rx1/dec_r/des_0/pdcounter [4]),
    .I1(\dvi_rx1/dec_r/des_0/pdcounter [3]),
    .I2(\dvi_rx1/dec_r/des_0/pdcounter [2]),
    .I3(\dvi_rx1/dec_r/des_0/pdcounter [1]),
    .I4(\dvi_rx1/dec_r/des_0/pdcounter [0]),
    .O(\dvi_rx1/dec_r/des_0/pdcounter[4]_GND_10_o_equal_50_o )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_equal_48_o<4>1  (
    .I0(\dvi_rx1/dec_r/des_0/pdcounter [4]),
    .I1(\dvi_rx1/dec_r/des_0/pdcounter [3]),
    .I2(\dvi_rx1/dec_r/des_0/pdcounter [2]),
    .I3(\dvi_rx1/dec_r/des_0/pdcounter [1]),
    .I4(\dvi_rx1/dec_r/des_0/pdcounter [0]),
    .O(\dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_equal_48_o )
  );
  LUT4 #(
    .INIT ( 16'hFEFF ))
  \dvi_rx1/dec_r/des_0/GND_10_o_busy_data_d_OR_63_o1  (
    .I0(\dvi_rx1/dec_r/des_0/busy_data_d_356 ),
    .I1(\dvi_rx1/dec_r/des_0/state_FSM_FFd4_365 ),
    .I2(\dvi_rx1/dec_r/des_0/state_FSM_FFd3_366 ),
    .I3(\dvi_rx1/dec_r/des_0/state_FSM_FFd2_367 ),
    .O(\dvi_rx1/dec_r/des_0/GND_10_o_busy_data_d_OR_63_o )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFAAA8 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate[5]_PWR_17_o_Select_43_o1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_cnt_rst_460 ),
    .I1(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4_456 ),
    .I2(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd2_454 ),
    .I3(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd1_453 ),
    .I4(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd6_458 ),
    .I5(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd5_457 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_PWR_17_o_Select_43_o )
  );
  LUT5 #(
    .INIT ( 32'hFFFFAAA8 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_45_o1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/bitslip_208 ),
    .I1(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd3_455 ),
    .I2(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd2_454 ),
    .I3(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd1_453 ),
    .I4(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4_456 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_45_o )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>11  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd3_455 ),
    .I1(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd2_454 ),
    .I2(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd1_453 ),
    .I3(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd5_457 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1_376 )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_41_o1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_rst_461 ),
    .I1(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd2_454 ),
    .I2(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd1_453 ),
    .I3(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4_456 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_41_o )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_counter_xor<3>11  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [3]),
    .I1(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [0]),
    .I2(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [1]),
    .I3(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [2]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result<3>1 )
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_counter_xor<4>111  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [2]),
    .I1(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [0]),
    .I2(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [1]),
    .I3(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [3]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_counter_xor<4>11 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_counter_xor<2>11  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [2]),
    .I1(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [0]),
    .I2(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [1]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result<2>1 )
  );
  LUT4 #(
    .INIT ( 16'hEA48 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<1>1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/bitslip_cnt [1]),
    .I1(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4_456 ),
    .I2(\dvi_rx1/dec_b/phsalgn_0/bitslip_cnt [0]),
    .I3(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1_376 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<1> )
  );
  LUT4 #(
    .INIT ( 16'h9AAA ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_counter_xor<6>11  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [6]),
    .I1(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_counter_xor<4>11 ),
    .I2(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [5]),
    .I3(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [4]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result<6>1 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFAAA8 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_47_o1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/psaligned_72 ),
    .I1(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4_456 ),
    .I2(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd3_455 ),
    .I3(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd2_454 ),
    .I4(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd1_453 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_47_o )
  );
  LUT5 #(
    .INIT ( 32'hEAAA4888 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<2>1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/bitslip_cnt [2]),
    .I1(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4_456 ),
    .I2(\dvi_rx1/dec_b/phsalgn_0/bitslip_cnt [0]),
    .I3(\dvi_rx1/dec_b/phsalgn_0/bitslip_cnt [1]),
    .I4(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1_376 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFDAAAAAAA8 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_52_o<0>1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/blnkprd_cnt_0_459 ),
    .I1(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd5_457 ),
    .I2(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4_456 ),
    .I3(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd3_455 ),
    .I4(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd1_453 ),
    .I5(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd2_454 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_52_o )
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \dvi_rx1/dec_b/phsalgn_0/ctkn_counter[6]_PWR_17_o_equal_17_o<6>1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [5]),
    .I1(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [6]),
    .I2(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_counter_xor<4>11 ),
    .I3(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [4]),
    .O(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter[6]_PWR_17_o_equal_17_o )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4_456 ),
    .I1(\dvi_rx1/dec_b/phsalgn_0/bitslip_cnt [2]),
    .I2(\dvi_rx1/dec_b/phsalgn_0/flipgear_209 ),
    .I3(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1_376 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_50_o )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_counter_xor<1>11  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [1]),
    .I1(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [0]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result<1>1 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd1-In1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/blnkprd_cnt_0_459 ),
    .I1(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd2_454 ),
    .I2(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd1_453 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd1-In )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd2-In1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd3_455 ),
    .I1(\dvi_rx1/dec_b/phsalgn_0/rcvd_ctkn_448 ),
    .I2(\dvi_rx1/dec_b/phsalgn_0/ctkn_cnt_tout_449 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd2-In )
  );
  LUT5 #(
    .INIT ( 32'h8888F888 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd3-In1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd5_457 ),
    .I1(\dvi_rx1/dec_b/phsalgn_0/blnkbgn_451 ),
    .I2(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd3_455 ),
    .I3(\dvi_rx1/dec_b/phsalgn_0/rcvd_ctkn_448 ),
    .I4(\dvi_rx1/dec_b/phsalgn_0/ctkn_cnt_tout_449 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd3-In )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4-In1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd5_457 ),
    .I1(\dvi_rx1/dec_b/phsalgn_0/blnkbgn_451 ),
    .I2(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_tout_450 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4-In )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd6-In1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd6_458 ),
    .I1(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_tout_450 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd6-In )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFAAA8 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate[5]_PWR_17_o_Select_43_o1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_cnt_rst_547 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4_543 ),
    .I2(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd2_541 ),
    .I3(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd1_540 ),
    .I4(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd6_545 ),
    .I5(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd5_544 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_PWR_17_o_Select_43_o )
  );
  LUT5 #(
    .INIT ( 32'hFFFFAAA8 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_45_o1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/bitslip_160 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd3_542 ),
    .I2(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd2_541 ),
    .I3(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd1_540 ),
    .I4(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4_543 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_45_o )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>11  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd3_542 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd2_541 ),
    .I2(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd1_540 ),
    .I3(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd5_544 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1_463 )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_41_o1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_rst_548 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd2_541 ),
    .I2(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd1_540 ),
    .I3(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4_543 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_41_o )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_counter_xor<3>11  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [3]),
    .I1(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [0]),
    .I2(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [1]),
    .I3(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [2]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result<3>1 )
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_counter_xor<4>111  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [2]),
    .I1(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [0]),
    .I2(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [1]),
    .I3(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [3]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_counter_xor<4>11 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_counter_xor<2>11  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [2]),
    .I1(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [0]),
    .I2(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [1]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result<2>1 )
  );
  LUT4 #(
    .INIT ( 16'hEA48 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<1>1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/bitslip_cnt [1]),
    .I1(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4_543 ),
    .I2(\dvi_rx1/dec_g/phsalgn_0/bitslip_cnt [0]),
    .I3(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1_463 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<1> )
  );
  LUT4 #(
    .INIT ( 16'h9AAA ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_counter_xor<6>11  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [6]),
    .I1(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_counter_xor<4>11 ),
    .I2(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [5]),
    .I3(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [4]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result<6>1 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFAAA8 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_47_o1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/psaligned_71 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4_543 ),
    .I2(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd3_542 ),
    .I3(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd2_541 ),
    .I4(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd1_540 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_47_o )
  );
  LUT5 #(
    .INIT ( 32'hEAAA4888 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<2>1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/bitslip_cnt [2]),
    .I1(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4_543 ),
    .I2(\dvi_rx1/dec_g/phsalgn_0/bitslip_cnt [0]),
    .I3(\dvi_rx1/dec_g/phsalgn_0/bitslip_cnt [1]),
    .I4(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1_463 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFDAAAAAAA8 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_52_o<0>1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/blnkprd_cnt_0_546 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd5_544 ),
    .I2(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4_543 ),
    .I3(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd3_542 ),
    .I4(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd1_540 ),
    .I5(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd2_541 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_52_o )
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \dvi_rx1/dec_g/phsalgn_0/ctkn_counter[6]_PWR_17_o_equal_17_o<6>1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [5]),
    .I1(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [6]),
    .I2(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_counter_xor<4>11 ),
    .I3(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [4]),
    .O(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter[6]_PWR_17_o_equal_17_o )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4_543 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/bitslip_cnt [2]),
    .I2(\dvi_rx1/dec_g/phsalgn_0/flipgear_161 ),
    .I3(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1_463 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_50_o )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_counter_xor<1>11  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [1]),
    .I1(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [0]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result<1>1 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd1-In1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/blnkprd_cnt_0_546 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd2_541 ),
    .I2(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd1_540 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd1-In )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd2-In1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd3_542 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/rcvd_ctkn_535 ),
    .I2(\dvi_rx1/dec_g/phsalgn_0/ctkn_cnt_tout_536 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd2-In )
  );
  LUT5 #(
    .INIT ( 32'h8888F888 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd3-In1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd5_544 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/blnkbgn_538 ),
    .I2(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd3_542 ),
    .I3(\dvi_rx1/dec_g/phsalgn_0/rcvd_ctkn_535 ),
    .I4(\dvi_rx1/dec_g/phsalgn_0/ctkn_cnt_tout_536 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd3-In )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4-In1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd5_544 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/blnkbgn_538 ),
    .I2(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_tout_537 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4-In )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd6-In1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd6_545 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_tout_537 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd6-In )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFAAA8 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate[5]_PWR_17_o_Select_43_o1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_cnt_rst_634 ),
    .I1(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4_630 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd2_628 ),
    .I3(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd1_627 ),
    .I4(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd6_632 ),
    .I5(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd5_631 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_PWR_17_o_Select_43_o )
  );
  LUT5 #(
    .INIT ( 32'hFFFFAAA8 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_45_o1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/bitslip_114 ),
    .I1(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd3_629 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd2_628 ),
    .I3(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd1_627 ),
    .I4(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4_630 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_45_o )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>11  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd3_629 ),
    .I1(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd2_628 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd1_627 ),
    .I3(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd5_631 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1_550 )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_41_o1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_rst_635 ),
    .I1(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd2_628 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd1_627 ),
    .I3(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4_630 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_41_o )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_counter_xor<3>11  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [3]),
    .I1(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [0]),
    .I2(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [1]),
    .I3(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [2]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result<3>1 )
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_counter_xor<4>111  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [2]),
    .I1(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [0]),
    .I2(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [1]),
    .I3(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [3]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_counter_xor<4>11 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_counter_xor<2>11  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [2]),
    .I1(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [0]),
    .I2(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [1]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result<2>1 )
  );
  LUT4 #(
    .INIT ( 16'hEA48 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<1>1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/bitslip_cnt [1]),
    .I1(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4_630 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/bitslip_cnt [0]),
    .I3(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1_550 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<1> )
  );
  LUT4 #(
    .INIT ( 16'h9AAA ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_counter_xor<6>11  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [6]),
    .I1(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_counter_xor<4>11 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [5]),
    .I3(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [4]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result<6>1 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFAAA8 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_47_o1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/psaligned_70 ),
    .I1(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4_630 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd3_629 ),
    .I3(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd2_628 ),
    .I4(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd1_627 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_47_o )
  );
  LUT5 #(
    .INIT ( 32'hEAAA4888 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<2>1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/bitslip_cnt [2]),
    .I1(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4_630 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/bitslip_cnt [0]),
    .I3(\dvi_rx1/dec_r/phsalgn_0/bitslip_cnt [1]),
    .I4(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1_550 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFDAAAAAAA8 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_52_o<0>1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/blnkprd_cnt_0_633 ),
    .I1(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd5_631 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4_630 ),
    .I3(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd3_629 ),
    .I4(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd1_627 ),
    .I5(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd2_628 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_52_o )
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \dvi_rx1/dec_r/phsalgn_0/ctkn_counter[6]_PWR_17_o_equal_17_o<6>1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [5]),
    .I1(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [6]),
    .I2(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_counter_xor<4>11 ),
    .I3(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [4]),
    .O(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter[6]_PWR_17_o_equal_17_o )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4_630 ),
    .I1(\dvi_rx1/dec_r/phsalgn_0/bitslip_cnt [2]),
    .I2(\dvi_rx1/dec_r/phsalgn_0/flipgear_115 ),
    .I3(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1_550 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_50_o )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_counter_xor<1>11  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [1]),
    .I1(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [0]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result<1>1 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd1-In1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/blnkprd_cnt_0_633 ),
    .I1(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd2_628 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd1_627 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd1-In )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd2-In1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd3_629 ),
    .I1(\dvi_rx1/dec_r/phsalgn_0/rcvd_ctkn_622 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/ctkn_cnt_tout_623 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd2-In )
  );
  LUT5 #(
    .INIT ( 32'h8888F888 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd3-In1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd5_631 ),
    .I1(\dvi_rx1/dec_r/phsalgn_0/blnkbgn_625 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd3_629 ),
    .I3(\dvi_rx1/dec_r/phsalgn_0/rcvd_ctkn_622 ),
    .I4(\dvi_rx1/dec_r/phsalgn_0/ctkn_cnt_tout_623 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd3-In )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4-In1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd5_631 ),
    .I1(\dvi_rx1/dec_r/phsalgn_0/blnkbgn_625 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_tout_624 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4-In )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd6-In1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd6_632 ),
    .I1(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_tout_624 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd6-In )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \dvi_rx1/dec_b/cbnd/Mcount_ra_xor<2>11  (
    .I0(\dvi_rx1/dec_b/cbnd/ra [2]),
    .I1(\dvi_rx1/dec_b/cbnd/ra [0]),
    .I2(\dvi_rx1/dec_b/cbnd/ra [1]),
    .O(\dvi_rx1/dec_b/cbnd/Result [2])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \dvi_rx1/dec_b/cbnd/Mcount_wa_xor<2>11  (
    .I0(\dvi_rx1/dec_b/cbnd/wa [2]),
    .I1(\dvi_rx1/dec_b/cbnd/wa [0]),
    .I2(\dvi_rx1/dec_b/cbnd/wa [1]),
    .O(\dvi_rx1/dec_b/cbnd/Result<2>1 )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \dvi_rx1/dec_b/cbnd/Mcount_ra_xor<3>11  (
    .I0(\dvi_rx1/dec_b/cbnd/ra [3]),
    .I1(\dvi_rx1/dec_b/cbnd/ra [0]),
    .I2(\dvi_rx1/dec_b/cbnd/ra [1]),
    .I3(\dvi_rx1/dec_b/cbnd/ra [2]),
    .O(\dvi_rx1/dec_b/cbnd/Result [3])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \dvi_rx1/dec_b/cbnd/Mcount_wa_xor<3>11  (
    .I0(\dvi_rx1/dec_b/cbnd/wa [3]),
    .I1(\dvi_rx1/dec_b/cbnd/wa [0]),
    .I2(\dvi_rx1/dec_b/cbnd/wa [1]),
    .I3(\dvi_rx1/dec_b/cbnd/wa [2]),
    .O(\dvi_rx1/dec_b/cbnd/Result<3>1 )
  );
  LUT6 #(
    .INIT ( 64'h0020202020202020 ))
  \dvi_rx1/dec_b/cbnd/_n00641  (
    .I0(\dvi_rx1/dec_b/cbnd/blnkbgn_661 ),
    .I1(\dvi_rx1/dec_b/cbnd/rawdata_vld_rising_659 ),
    .I2(\dvi_rx1/dec_b/cbnd/skip_line_658 ),
    .I3(\dvi_rx1/dec_b/cbnd/iamrdy_39 ),
    .I4(\dvi_rx1/dec_g/cbnd/iamrdy_40 ),
    .I5(\dvi_rx1/dec_r/cbnd/iamrdy_41 ),
    .O(\dvi_rx1/dec_b/cbnd/_n0064 )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \dvi_rx1/dec_b/cbnd/rawdata_vld_inv1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/psaligned_72 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/psaligned_71 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/psaligned_70 ),
    .O(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_rx1/dec_b/cbnd/Mcount_ra_xor<1>11  (
    .I0(\dvi_rx1/dec_b/cbnd/ra [1]),
    .I1(\dvi_rx1/dec_b/cbnd/ra [0]),
    .O(\dvi_rx1/dec_b/cbnd/Result [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_rx1/dec_b/cbnd/Mcount_wa_xor<1>11  (
    .I0(\dvi_rx1/dec_b/cbnd/wa [1]),
    .I1(\dvi_rx1/dec_b/cbnd/wa [0]),
    .O(\dvi_rx1/dec_b/cbnd/Result<1>1 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \dvi_rx1/dec_b/cbnd/rawdata_vld1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/psaligned_72 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/psaligned_71 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/psaligned_70 ),
    .O(\dvi_rx1/dec_b/cbnd/rawdata_vld )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \dvi_rx1/dec_g/cbnd/Mcount_ra_xor<2>11  (
    .I0(\dvi_rx1/dec_g/cbnd/ra [2]),
    .I1(\dvi_rx1/dec_g/cbnd/ra [0]),
    .I2(\dvi_rx1/dec_g/cbnd/ra [1]),
    .O(\dvi_rx1/dec_g/cbnd/Result [2])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \dvi_rx1/dec_g/cbnd/Mcount_ra_xor<3>11  (
    .I0(\dvi_rx1/dec_g/cbnd/ra [3]),
    .I1(\dvi_rx1/dec_g/cbnd/ra [0]),
    .I2(\dvi_rx1/dec_g/cbnd/ra [1]),
    .I3(\dvi_rx1/dec_g/cbnd/ra [2]),
    .O(\dvi_rx1/dec_g/cbnd/Result [3])
  );
  LUT6 #(
    .INIT ( 64'h0020202020202020 ))
  \dvi_rx1/dec_g/cbnd/_n00641  (
    .I0(\dvi_rx1/dec_g/cbnd/blnkbgn_686 ),
    .I1(\dvi_rx1/dec_b/cbnd/rawdata_vld_rising_659 ),
    .I2(\dvi_rx1/dec_g/cbnd/skip_line_685 ),
    .I3(\dvi_rx1/dec_g/cbnd/iamrdy_40 ),
    .I4(\dvi_rx1/dec_b/cbnd/iamrdy_39 ),
    .I5(\dvi_rx1/dec_r/cbnd/iamrdy_41 ),
    .O(\dvi_rx1/dec_g/cbnd/_n0064 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_rx1/dec_g/cbnd/Mcount_ra_xor<1>11  (
    .I0(\dvi_rx1/dec_g/cbnd/ra [1]),
    .I1(\dvi_rx1/dec_g/cbnd/ra [0]),
    .O(\dvi_rx1/dec_g/cbnd/Result [1])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \dvi_rx1/dec_r/cbnd/Mcount_ra_xor<2>11  (
    .I0(\dvi_rx1/dec_r/cbnd/ra [2]),
    .I1(\dvi_rx1/dec_r/cbnd/ra [0]),
    .I2(\dvi_rx1/dec_r/cbnd/ra [1]),
    .O(\dvi_rx1/dec_r/cbnd/Result [2])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \dvi_rx1/dec_r/cbnd/Mcount_ra_xor<3>11  (
    .I0(\dvi_rx1/dec_r/cbnd/ra [3]),
    .I1(\dvi_rx1/dec_r/cbnd/ra [0]),
    .I2(\dvi_rx1/dec_r/cbnd/ra [1]),
    .I3(\dvi_rx1/dec_r/cbnd/ra [2]),
    .O(\dvi_rx1/dec_r/cbnd/Result [3])
  );
  LUT6 #(
    .INIT ( 64'h0020202020202020 ))
  \dvi_rx1/dec_r/cbnd/_n00641  (
    .I0(\dvi_rx1/dec_r/cbnd/blnkbgn_711 ),
    .I1(\dvi_rx1/dec_b/cbnd/rawdata_vld_rising_659 ),
    .I2(\dvi_rx1/dec_r/cbnd/skip_line_710 ),
    .I3(\dvi_rx1/dec_r/cbnd/iamrdy_41 ),
    .I4(\dvi_rx1/dec_b/cbnd/iamrdy_39 ),
    .I5(\dvi_rx1/dec_g/cbnd/iamrdy_40 ),
    .O(\dvi_rx1/dec_r/cbnd/_n0064 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_rx1/dec_r/cbnd/Mcount_ra_xor<1>11  (
    .I0(\dvi_rx1/dec_r/cbnd/ra [1]),
    .I1(\dvi_rx1/dec_r/cbnd/ra [0]),
    .O(\dvi_rx1/dec_r/cbnd/Result [1])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \dvi_tx/pixel2x/Mram_ra_d21  (
    .I0(\dvi_tx/pixel2x/ra [2]),
    .I1(\dvi_tx/pixel2x/ra [0]),
    .I2(\dvi_tx/pixel2x/ra [1]),
    .O(\dvi_tx/pixel2x/Mram_ra_d2 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \dvi_tx/pixel2x/Mram_wa_d21  (
    .I0(\dvi_tx/pixel2x/wa [2]),
    .I1(\dvi_tx/pixel2x/wa [0]),
    .I2(\dvi_tx/pixel2x/wa [1]),
    .O(\dvi_tx/pixel2x/Mram_wa_d2 )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \dvi_tx/pixel2x/Mram_ra_d31  (
    .I0(\dvi_tx/pixel2x/ra [3]),
    .I1(\dvi_tx/pixel2x/ra [0]),
    .I2(\dvi_tx/pixel2x/ra [1]),
    .I3(\dvi_tx/pixel2x/ra [2]),
    .O(\dvi_tx/pixel2x/Mram_ra_d3 )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \dvi_tx/pixel2x/Mram_wa_d31  (
    .I0(\dvi_tx/pixel2x/wa [3]),
    .I1(\dvi_tx/pixel2x/wa [0]),
    .I2(\dvi_tx/pixel2x/wa [1]),
    .I3(\dvi_tx/pixel2x/wa [2]),
    .O(\dvi_tx/pixel2x/Mram_wa_d3 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_tx/pixel2x/Mmux_mux16  (
    .I0(\dvi_tx/pixel2x/sync ),
    .I1(\dvi_tx/pixel2x/db [0]),
    .I2(\dvi_tx/pixel2x/db [15]),
    .O(\dvi_tx/pixel2x/mux [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_tx/pixel2x/Mmux_mux21  (
    .I0(\dvi_tx/pixel2x/sync ),
    .I1(\dvi_tx/pixel2x/db [10]),
    .I2(\dvi_tx/pixel2x/db [25]),
    .O(\dvi_tx/pixel2x/mux [10])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_tx/pixel2x/Mmux_mux31  (
    .I0(\dvi_tx/pixel2x/sync ),
    .I1(\dvi_tx/pixel2x/db [11]),
    .I2(\dvi_tx/pixel2x/db [26]),
    .O(\dvi_tx/pixel2x/mux [11])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_tx/pixel2x/Mmux_mux41  (
    .I0(\dvi_tx/pixel2x/sync ),
    .I1(\dvi_tx/pixel2x/db [12]),
    .I2(\dvi_tx/pixel2x/db [27]),
    .O(\dvi_tx/pixel2x/mux [12])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_tx/pixel2x/Mmux_mux51  (
    .I0(\dvi_tx/pixel2x/sync ),
    .I1(\dvi_tx/pixel2x/db [13]),
    .I2(\dvi_tx/pixel2x/db [28]),
    .O(\dvi_tx/pixel2x/mux [13])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_tx/pixel2x/Mmux_mux61  (
    .I0(\dvi_tx/pixel2x/sync ),
    .I1(\dvi_tx/pixel2x/db [14]),
    .I2(\dvi_tx/pixel2x/db [29]),
    .O(\dvi_tx/pixel2x/mux [14])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_tx/pixel2x/Mmux_mux71  (
    .I0(\dvi_tx/pixel2x/sync ),
    .I1(\dvi_tx/pixel2x/db [1]),
    .I2(\dvi_tx/pixel2x/db [16]),
    .O(\dvi_tx/pixel2x/mux [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_tx/pixel2x/Mmux_mux81  (
    .I0(\dvi_tx/pixel2x/sync ),
    .I1(\dvi_tx/pixel2x/db [2]),
    .I2(\dvi_tx/pixel2x/db [17]),
    .O(\dvi_tx/pixel2x/mux [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_tx/pixel2x/Mmux_mux91  (
    .I0(\dvi_tx/pixel2x/sync ),
    .I1(\dvi_tx/pixel2x/db [3]),
    .I2(\dvi_tx/pixel2x/db [18]),
    .O(\dvi_tx/pixel2x/mux [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_tx/pixel2x/Mmux_mux101  (
    .I0(\dvi_tx/pixel2x/sync ),
    .I1(\dvi_tx/pixel2x/db [4]),
    .I2(\dvi_tx/pixel2x/db [19]),
    .O(\dvi_tx/pixel2x/mux [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_tx/pixel2x/Mmux_mux111  (
    .I0(\dvi_tx/pixel2x/sync ),
    .I1(\dvi_tx/pixel2x/db [5]),
    .I2(\dvi_tx/pixel2x/db [20]),
    .O(\dvi_tx/pixel2x/mux [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_tx/pixel2x/Mmux_mux121  (
    .I0(\dvi_tx/pixel2x/sync ),
    .I1(\dvi_tx/pixel2x/db [6]),
    .I2(\dvi_tx/pixel2x/db [21]),
    .O(\dvi_tx/pixel2x/mux [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_tx/pixel2x/Mmux_mux131  (
    .I0(\dvi_tx/pixel2x/sync ),
    .I1(\dvi_tx/pixel2x/db [7]),
    .I2(\dvi_tx/pixel2x/db [22]),
    .O(\dvi_tx/pixel2x/mux [7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_tx/pixel2x/Mmux_mux141  (
    .I0(\dvi_tx/pixel2x/sync ),
    .I1(\dvi_tx/pixel2x/db [8]),
    .I2(\dvi_tx/pixel2x/db [23]),
    .O(\dvi_tx/pixel2x/mux [8])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_tx/pixel2x/Mmux_mux151  (
    .I0(\dvi_tx/pixel2x/sync ),
    .I1(\dvi_tx/pixel2x/db [9]),
    .I2(\dvi_tx/pixel2x/db [24]),
    .O(\dvi_tx/pixel2x/mux [9])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_tx/pixel2x/Mram_ra_d111  (
    .I0(\dvi_tx/pixel2x/ra [0]),
    .I1(\dvi_tx/pixel2x/ra [1]),
    .O(\dvi_tx/pixel2x/Mram_ra_d1 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_tx/pixel2x/Mram_wa_d111  (
    .I0(\dvi_tx/pixel2x/wa [0]),
    .I1(\dvi_tx/pixel2x/wa [1]),
    .O(\dvi_tx/pixel2x/Mram_wa_d1 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF0F8F2FAA ))
  \dvi_rx1/dec_b/des_0/_n0278_inv1  (
    .I0(\dvi_rx1/dec_b/des_0/valid_data_d_269 ),
    .I1(\dvi_rx1/dec_b/des_0/incdec_data_d_270 ),
    .I2(\dvi_rx1/dec_b/des_0/flag_272 ),
    .I3(\dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_equal_48_o ),
    .I4(\dvi_rx1/dec_b/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I5(\dvi_rx1/dec_b/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .O(\dvi_rx1/dec_b/des_0/_n0278_inv1_994 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF0F8F2FAA ))
  \dvi_rx1/dec_g/des_0/_n0278_inv1  (
    .I0(\dvi_rx1/dec_g/des_0/valid_data_d_313 ),
    .I1(\dvi_rx1/dec_g/des_0/incdec_data_d_314 ),
    .I2(\dvi_rx1/dec_g/des_0/flag_316 ),
    .I3(\dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_equal_48_o ),
    .I4(\dvi_rx1/dec_g/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I5(\dvi_rx1/dec_g/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .O(\dvi_rx1/dec_g/des_0/_n0278_inv1_995 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF0F8F2FAA ))
  \dvi_rx1/dec_r/des_0/_n0278_inv1  (
    .I0(\dvi_rx1/dec_r/des_0/valid_data_d_354 ),
    .I1(\dvi_rx1/dec_r/des_0/incdec_data_d_355 ),
    .I2(\dvi_rx1/dec_r/des_0/flag_357 ),
    .I3(\dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_equal_48_o ),
    .I4(\dvi_rx1/dec_r/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I5(\dvi_rx1/dec_r/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .O(\dvi_rx1/dec_r/des_0/_n0278_inv1_996 )
  );
  LUT4 #(
    .INIT ( 16'h22F2 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd5-In_SW0  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd2_454 ),
    .I1(\dvi_rx1/dec_b/phsalgn_0/blnkprd_cnt_0_459 ),
    .I2(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd3_455 ),
    .I3(\dvi_rx1/dec_b/phsalgn_0/rcvd_ctkn_448 ),
    .O(N14)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFF8F8FDF8 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd5-In  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_tout_450 ),
    .I1(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd6_458 ),
    .I2(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4_456 ),
    .I3(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd5_457 ),
    .I4(\dvi_rx1/dec_b/phsalgn_0/blnkbgn_451 ),
    .I5(N14),
    .O(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd5-In_422 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [7]),
    .I1(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [6]),
    .I2(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [9]),
    .I3(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [8]),
    .I4(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [11]),
    .I5(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [10]),
    .O(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11> )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>2  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [1]),
    .I1(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [0]),
    .I2(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [3]),
    .I3(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [2]),
    .I4(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [5]),
    .I5(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [4]),
    .O(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>1_999 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>3  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11> ),
    .I1(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>1_999 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o )
  );
  LUT5 #(
    .INIT ( 32'h00000020 ))
  \dvi_rx1/dec_b/phsalgn_0/sdata[9]_sdata[9]_OR_85_o1  (
    .I0(\dvi_rx1/dec_b/rawword [2]),
    .I1(\dvi_rx1/dec_b/rawword [1]),
    .I2(\dvi_rx1/dec_b/rawword [4]),
    .I3(\dvi_rx1/dec_b/rawword [0]),
    .I4(\dvi_rx1/dec_b/rawword [3]),
    .O(\dvi_rx1/dec_b/phsalgn_0/sdata[9]_sdata[9]_OR_85_o1_1000 )
  );
  LUT5 #(
    .INIT ( 32'h04000000 ))
  \dvi_rx1/dec_b/phsalgn_0/sdata[9]_sdata[9]_OR_85_o2  (
    .I0(\dvi_rx1/dec_b/rawword [2]),
    .I1(\dvi_rx1/dec_b/rawword [0]),
    .I2(\dvi_rx1/dec_b/rawword [4]),
    .I3(\dvi_rx1/dec_b/rawword [3]),
    .I4(\dvi_rx1/dec_b/rawword [1]),
    .O(\dvi_rx1/dec_b/phsalgn_0/sdata[9]_sdata[9]_OR_85_o2_1001 )
  );
  LUT6 #(
    .INIT ( 64'h0420002004000000 ))
  \dvi_rx1/dec_b/phsalgn_0/sdata[9]_sdata[9]_OR_85_o3  (
    .I0(\dvi_rx1/dec_b/rawword [8]),
    .I1(\dvi_rx1/dec_b/rawword [5]),
    .I2(\dvi_rx1/dec_b/rawword [6]),
    .I3(\dvi_rx1/dec_b/rawword [7]),
    .I4(\dvi_rx1/dec_b/phsalgn_0/sdata[9]_sdata[9]_OR_85_o2_1001 ),
    .I5(\dvi_rx1/dec_b/phsalgn_0/sdata[9]_sdata[9]_OR_85_o1_1000 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/sdata[9]_sdata[9]_OR_85_o )
  );
  LUT4 #(
    .INIT ( 16'h22F2 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd5-In_SW0  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd2_541 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/blnkprd_cnt_0_546 ),
    .I2(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd3_542 ),
    .I3(\dvi_rx1/dec_g/phsalgn_0/rcvd_ctkn_535 ),
    .O(N16)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFF8F8FDF8 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd5-In  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_tout_537 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd6_545 ),
    .I2(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4_543 ),
    .I3(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd5_544 ),
    .I4(\dvi_rx1/dec_g/phsalgn_0/blnkbgn_538 ),
    .I5(N16),
    .O(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd5-In_509 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [7]),
    .I1(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [6]),
    .I2(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [9]),
    .I3(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [8]),
    .I4(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [11]),
    .I5(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [10]),
    .O(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11> )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>2  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [1]),
    .I1(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [0]),
    .I2(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [3]),
    .I3(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [2]),
    .I4(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [5]),
    .I5(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [4]),
    .O(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>1_1004 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>3  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11> ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>1_1004 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o )
  );
  LUT5 #(
    .INIT ( 32'h00000020 ))
  \dvi_rx1/dec_g/phsalgn_0/sdata[9]_sdata[9]_OR_85_o1  (
    .I0(\dvi_rx1/dec_g/rawword [2]),
    .I1(\dvi_rx1/dec_g/rawword [1]),
    .I2(\dvi_rx1/dec_g/rawword [4]),
    .I3(\dvi_rx1/dec_g/rawword [0]),
    .I4(\dvi_rx1/dec_g/rawword [3]),
    .O(\dvi_rx1/dec_g/phsalgn_0/sdata[9]_sdata[9]_OR_85_o1_1005 )
  );
  LUT5 #(
    .INIT ( 32'h04000000 ))
  \dvi_rx1/dec_g/phsalgn_0/sdata[9]_sdata[9]_OR_85_o2  (
    .I0(\dvi_rx1/dec_g/rawword [2]),
    .I1(\dvi_rx1/dec_g/rawword [0]),
    .I2(\dvi_rx1/dec_g/rawword [4]),
    .I3(\dvi_rx1/dec_g/rawword [3]),
    .I4(\dvi_rx1/dec_g/rawword [1]),
    .O(\dvi_rx1/dec_g/phsalgn_0/sdata[9]_sdata[9]_OR_85_o2_1006 )
  );
  LUT6 #(
    .INIT ( 64'h0420002004000000 ))
  \dvi_rx1/dec_g/phsalgn_0/sdata[9]_sdata[9]_OR_85_o3  (
    .I0(\dvi_rx1/dec_g/rawword [8]),
    .I1(\dvi_rx1/dec_g/rawword [5]),
    .I2(\dvi_rx1/dec_g/rawword [6]),
    .I3(\dvi_rx1/dec_g/rawword [7]),
    .I4(\dvi_rx1/dec_g/phsalgn_0/sdata[9]_sdata[9]_OR_85_o2_1006 ),
    .I5(\dvi_rx1/dec_g/phsalgn_0/sdata[9]_sdata[9]_OR_85_o1_1005 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/sdata[9]_sdata[9]_OR_85_o )
  );
  LUT4 #(
    .INIT ( 16'h22F2 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd5-In_SW0  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd2_628 ),
    .I1(\dvi_rx1/dec_r/phsalgn_0/blnkprd_cnt_0_633 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd3_629 ),
    .I3(\dvi_rx1/dec_r/phsalgn_0/rcvd_ctkn_622 ),
    .O(N18)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFF8F8FDF8 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd5-In  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_tout_624 ),
    .I1(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd6_632 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4_630 ),
    .I3(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd5_631 ),
    .I4(\dvi_rx1/dec_r/phsalgn_0/blnkbgn_625 ),
    .I5(N18),
    .O(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd5-In_596 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [7]),
    .I1(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [6]),
    .I2(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [9]),
    .I3(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [8]),
    .I4(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [11]),
    .I5(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [10]),
    .O(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11> )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>2  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [1]),
    .I1(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [0]),
    .I2(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [3]),
    .I3(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [2]),
    .I4(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [5]),
    .I5(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [4]),
    .O(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>1_1009 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>3  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11> ),
    .I1(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>1_1009 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o )
  );
  LUT5 #(
    .INIT ( 32'h00000020 ))
  \dvi_rx1/dec_r/phsalgn_0/sdata[9]_sdata[9]_OR_85_o1  (
    .I0(\dvi_rx1/dec_r/rawword [2]),
    .I1(\dvi_rx1/dec_r/rawword [1]),
    .I2(\dvi_rx1/dec_r/rawword [4]),
    .I3(\dvi_rx1/dec_r/rawword [0]),
    .I4(\dvi_rx1/dec_r/rawword [3]),
    .O(\dvi_rx1/dec_r/phsalgn_0/sdata[9]_sdata[9]_OR_85_o1_1010 )
  );
  LUT5 #(
    .INIT ( 32'h04000000 ))
  \dvi_rx1/dec_r/phsalgn_0/sdata[9]_sdata[9]_OR_85_o2  (
    .I0(\dvi_rx1/dec_r/rawword [2]),
    .I1(\dvi_rx1/dec_r/rawword [0]),
    .I2(\dvi_rx1/dec_r/rawword [4]),
    .I3(\dvi_rx1/dec_r/rawword [3]),
    .I4(\dvi_rx1/dec_r/rawword [1]),
    .O(\dvi_rx1/dec_r/phsalgn_0/sdata[9]_sdata[9]_OR_85_o2_1011 )
  );
  LUT6 #(
    .INIT ( 64'h0420002004000000 ))
  \dvi_rx1/dec_r/phsalgn_0/sdata[9]_sdata[9]_OR_85_o3  (
    .I0(\dvi_rx1/dec_r/rawword [8]),
    .I1(\dvi_rx1/dec_r/rawword [5]),
    .I2(\dvi_rx1/dec_r/rawword [6]),
    .I3(\dvi_rx1/dec_r/rawword [7]),
    .I4(\dvi_rx1/dec_r/phsalgn_0/sdata[9]_sdata[9]_OR_85_o2_1011 ),
    .I5(\dvi_rx1/dec_r/phsalgn_0/sdata[9]_sdata[9]_OR_85_o1_1010 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/sdata[9]_sdata[9]_OR_85_o )
  );
  LUT6 #(
    .INIT ( 64'h1000000000000000 ))
  \dvi_rx1/dec_b/cbnd/sdata[9]_sdata[9]_OR_126_o2  (
    .I0(\dvi_rx1/dec_b/cbnd/sdata [0]),
    .I1(\dvi_rx1/dec_b/cbnd/sdata [1]),
    .I2(\dvi_rx1/dec_b/cbnd/sdata [8]),
    .I3(\dvi_rx1/dec_b/cbnd/sdata [6]),
    .I4(\dvi_rx1/dec_b/cbnd/sdata [4]),
    .I5(\dvi_rx1/dec_b/cbnd/sdata [2]),
    .O(\dvi_rx1/dec_b/cbnd/sdata[9]_sdata[9]_OR_126_o2_1012 )
  );
  LUT6 #(
    .INIT ( 64'h1000000000000000 ))
  \dvi_rx1/dec_g/cbnd/sdata[9]_sdata[9]_OR_126_o2  (
    .I0(\dvi_rx1/dec_g/cbnd/sdata [0]),
    .I1(\dvi_rx1/dec_g/cbnd/sdata [1]),
    .I2(\dvi_rx1/dec_g/cbnd/sdata [8]),
    .I3(\dvi_rx1/dec_g/cbnd/sdata [6]),
    .I4(\dvi_rx1/dec_g/cbnd/sdata [4]),
    .I5(\dvi_rx1/dec_g/cbnd/sdata [2]),
    .O(\dvi_rx1/dec_g/cbnd/sdata[9]_sdata[9]_OR_126_o2_1013 )
  );
  LUT6 #(
    .INIT ( 64'h1000000000000000 ))
  \dvi_rx1/dec_r/cbnd/sdata[9]_sdata[9]_OR_126_o2  (
    .I0(\dvi_rx1/dec_r/cbnd/sdata [0]),
    .I1(\dvi_rx1/dec_r/cbnd/sdata [1]),
    .I2(\dvi_rx1/dec_r/cbnd/sdata [8]),
    .I3(\dvi_rx1/dec_r/cbnd/sdata [6]),
    .I4(\dvi_rx1/dec_r/cbnd/sdata [4]),
    .I5(\dvi_rx1/dec_r/cbnd/sdata [2]),
    .O(\dvi_rx1/dec_r/cbnd/sdata[9]_sdata[9]_OR_126_o2_1014 )
  );
  IBUF   clk100_IBUF (
    .I(clk100),
    .O(clk100_IBUF_9)
  );
  IBUF   rstbtn_n_IBUF (
    .I(rstbtn_n),
    .O(rstbtn_n_IBUF_8)
  );
  OBUF   LED_7_OBUF (
    .I(\dvi_rx1/dec_r/cbnd/iamrdy_41 ),
    .O(LED[7])
  );
  OBUF   LED_6_OBUF (
    .I(\dvi_rx1/dec_g/cbnd/iamrdy_40 ),
    .O(LED[6])
  );
  OBUF   LED_5_OBUF (
    .I(\dvi_rx1/dec_b/cbnd/iamrdy_39 ),
    .O(LED[5])
  );
  OBUF   LED_4_OBUF (
    .I(\dvi_rx1/dec_r/cbnd/iamrdy_41 ),
    .O(LED[4])
  );
  OBUF   LED_3_OBUF (
    .I(\dvi_rx1/dec_g/cbnd/iamrdy_40 ),
    .O(LED[3])
  );
  OBUF   LED_2_OBUF (
    .I(\dvi_rx1/dec_b/cbnd/iamrdy_39 ),
    .O(LED[2])
  );
  OBUF   LED_1_OBUF (
    .I(\dvi_rx1/dec_b/de_38 ),
    .O(LED[1])
  );
  OBUF   LED_0_OBUF (
    .I(\dvi_rx1/dec_b/de_38 ),
    .O(LED[0])
  );
  FDR   \dvi_rx1/dec_b/cbnd/skip_line  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/cbnd/skip_line_glue_set_1025 ),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_b/cbnd/skip_line_658 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \dvi_rx1/dec_b/cbnd/skip_line_glue_set  (
    .I0(\dvi_rx1/dec_b/cbnd/skip_line_658 ),
    .I1(\dvi_rx1/dec_b/cbnd/blnkbgn_661 ),
    .O(\dvi_rx1/dec_b/cbnd/skip_line_glue_set_1025 )
  );
  FDR   \dvi_rx1/dec_b/cbnd/iamrdy  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/cbnd/iamrdy_glue_set_1026 ),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_b/cbnd/iamrdy_39 )
  );
  FDR   \dvi_rx1/dec_g/cbnd/skip_line  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_g/cbnd/skip_line_glue_set_1027 ),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_g/cbnd/skip_line_685 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \dvi_rx1/dec_g/cbnd/skip_line_glue_set  (
    .I0(\dvi_rx1/dec_g/cbnd/skip_line_685 ),
    .I1(\dvi_rx1/dec_g/cbnd/blnkbgn_686 ),
    .O(\dvi_rx1/dec_g/cbnd/skip_line_glue_set_1027 )
  );
  FDR   \dvi_rx1/dec_g/cbnd/iamrdy  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_g/cbnd/iamrdy_glue_set_1028 ),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_g/cbnd/iamrdy_40 )
  );
  FDR   \dvi_rx1/dec_r/cbnd/skip_line  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_r/cbnd/skip_line_glue_set_1029 ),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_r/cbnd/skip_line_710 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \dvi_rx1/dec_r/cbnd/skip_line_glue_set  (
    .I0(\dvi_rx1/dec_r/cbnd/skip_line_710 ),
    .I1(\dvi_rx1/dec_r/cbnd/blnkbgn_711 ),
    .O(\dvi_rx1/dec_r/cbnd/skip_line_glue_set_1029 )
  );
  FDR   \dvi_rx1/dec_r/cbnd/iamrdy  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_r/cbnd/iamrdy_glue_set_1030 ),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_r/cbnd/iamrdy_41 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>_rt  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [10]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>_rt_1031 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>_rt  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [9]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>_rt_1032 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>_rt  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [8]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>_rt_1033 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>_rt  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [7]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>_rt_1034 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>_rt  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [6]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>_rt_1035 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>_rt  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [5]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>_rt_1036 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>_rt  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [4]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>_rt_1037 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>_rt  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [3]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>_rt_1038 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>_rt  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [2]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>_rt_1039 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>_rt  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [1]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>_rt_1040 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>_rt  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [10]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>_rt_1041 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>_rt  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [9]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>_rt_1042 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>_rt  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [8]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>_rt_1043 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>_rt  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [7]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>_rt_1044 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>_rt  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [6]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>_rt_1045 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>_rt  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [5]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>_rt_1046 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>_rt  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [4]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>_rt_1047 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>_rt  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [3]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>_rt_1048 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>_rt  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [2]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>_rt_1049 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>_rt  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [1]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>_rt_1050 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>_rt  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [10]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>_rt_1051 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>_rt  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [9]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>_rt_1052 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>_rt  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [8]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>_rt_1053 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>_rt  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [7]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>_rt_1054 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>_rt  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [6]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>_rt_1055 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>_rt  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [5]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>_rt_1056 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>_rt  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [4]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>_rt_1057 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>_rt  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [3]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>_rt_1058 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>_rt  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [2]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>_rt_1059 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>_rt  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [1]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>_rt_1060 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_xor<11>_rt  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [11]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_xor<11>_rt_1061 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_xor<11>_rt  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [11]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_xor<11>_rt_1062 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_xor<11>_rt  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [11]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_xor<11>_rt_1063 )
  );
  FDC   \dvi_rx1/dec_b/des_0/cal_data_master  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/cal_data_master_rstpot_1064 ),
    .Q(\dvi_rx1/dec_b/des_0/cal_data_master_276 )
  );
  FDC   \dvi_rx1/dec_b/des_0/ce_data_inta  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/ce_data_inta_rstpot_1065 ),
    .Q(\dvi_rx1/dec_b/des_0/ce_data_inta_273 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_rx1/dec_b/des_0/enable_rstpot  (
    .I0(\dvi_rx1/dec_b/des_0/counter [5]),
    .I1(\dvi_rx1/dec_b/des_0/enable_274 ),
    .I2(\dvi_tx/blue [2]),
    .O(\dvi_rx1/dec_b/des_0/enable_rstpot_1066 )
  );
  FDC   \dvi_rx1/dec_b/des_0/enable  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/enable_rstpot_1066 ),
    .Q(\dvi_rx1/dec_b/des_0/enable_274 )
  );
  FDC   \dvi_rx1/dec_b/des_0/cal_data_sint  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/cal_data_sint_rstpot_1067 ),
    .Q(\dvi_rx1/dec_b/des_0/cal_data_sint_275 )
  );
  FDC   \dvi_rx1/dec_b/des_0/flag  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/flag_rstpot_1069 ),
    .Q(\dvi_rx1/dec_b/des_0/flag_272 )
  );
  FDC   \dvi_rx1/dec_g/des_0/cal_data_master  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/des_0/cal_data_master_rstpot_1070 ),
    .Q(\dvi_rx1/dec_g/des_0/cal_data_master_319 )
  );
  FDC   \dvi_rx1/dec_g/des_0/ce_data_inta  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/des_0/ce_data_inta_rstpot_1071 ),
    .Q(\dvi_rx1/dec_g/des_0/ce_data_inta_317 )
  );
  FDC   \dvi_rx1/dec_g/des_0/cal_data_sint  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/des_0/cal_data_sint_rstpot_1072 ),
    .Q(\dvi_rx1/dec_g/des_0/cal_data_sint_318 )
  );
  FDC   \dvi_rx1/dec_g/des_0/flag  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/des_0/flag_rstpot_1074 ),
    .Q(\dvi_rx1/dec_g/des_0/flag_316 )
  );
  FDC   \dvi_rx1/dec_r/des_0/cal_data_master  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/des_0/cal_data_master_rstpot_1075 ),
    .Q(\dvi_rx1/dec_r/des_0/cal_data_master_360 )
  );
  FDC   \dvi_rx1/dec_r/des_0/ce_data_inta  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/des_0/ce_data_inta_rstpot_1076 ),
    .Q(\dvi_rx1/dec_r/des_0/ce_data_inta_358 )
  );
  FDC   \dvi_rx1/dec_r/des_0/cal_data_sint  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/des_0/cal_data_sint_rstpot_1077 ),
    .Q(\dvi_rx1/dec_r/des_0/cal_data_sint_359 )
  );
  FDC   \dvi_rx1/dec_r/des_0/flag  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/des_0/flag_rstpot_1079 ),
    .Q(\dvi_rx1/dec_r/des_0/flag_357 )
  );
  FD   \dvi_rx1/dec_b/de  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/de_rstpot_1080 ),
    .Q(\dvi_rx1/dec_b/de_38 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \dvi_rx1/dec_b/phsalgn_0/blnkbgn_rstpot  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/rcvd_ctkn_448 ),
    .I1(\dvi_rx1/dec_b/phsalgn_0/rcvd_ctkn_q_452 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/blnkbgn_rstpot_1081 )
  );
  FD   \dvi_rx1/dec_b/phsalgn_0/blnkbgn  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/phsalgn_0/blnkbgn_rstpot_1081 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/blnkbgn_451 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \dvi_rx1/dec_g/phsalgn_0/blnkbgn_rstpot  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/rcvd_ctkn_535 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/rcvd_ctkn_q_539 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/blnkbgn_rstpot_1082 )
  );
  FD   \dvi_rx1/dec_g/phsalgn_0/blnkbgn  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_g/phsalgn_0/blnkbgn_rstpot_1082 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/blnkbgn_538 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \dvi_rx1/dec_r/phsalgn_0/blnkbgn_rstpot  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/rcvd_ctkn_622 ),
    .I1(\dvi_rx1/dec_r/phsalgn_0/rcvd_ctkn_q_626 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/blnkbgn_rstpot_1083 )
  );
  FD   \dvi_rx1/dec_r/phsalgn_0/blnkbgn  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_r/phsalgn_0/blnkbgn_rstpot_1083 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/blnkbgn_625 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \dvi_rx1/dec_b/cbnd/blnkbgn_rstpot  (
    .I0(\dvi_rx1/dec_b/cbnd/rcvd_ctkn_663 ),
    .I1(\dvi_rx1/dec_b/cbnd/rcvd_ctkn_q_662 ),
    .O(\dvi_rx1/dec_b/cbnd/blnkbgn_rstpot_1084 )
  );
  FD   \dvi_rx1/dec_b/cbnd/blnkbgn  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/cbnd/blnkbgn_rstpot_1084 ),
    .Q(\dvi_rx1/dec_b/cbnd/blnkbgn_661 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \dvi_rx1/dec_g/cbnd/blnkbgn_rstpot  (
    .I0(\dvi_rx1/dec_g/cbnd/rcvd_ctkn_688 ),
    .I1(\dvi_rx1/dec_g/cbnd/rcvd_ctkn_q_687 ),
    .O(\dvi_rx1/dec_g/cbnd/blnkbgn_rstpot_1085 )
  );
  FD   \dvi_rx1/dec_g/cbnd/blnkbgn  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_g/cbnd/blnkbgn_rstpot_1085 ),
    .Q(\dvi_rx1/dec_g/cbnd/blnkbgn_686 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \dvi_rx1/dec_r/cbnd/blnkbgn_rstpot  (
    .I0(\dvi_rx1/dec_r/cbnd/rcvd_ctkn_713 ),
    .I1(\dvi_rx1/dec_r/cbnd/rcvd_ctkn_q_712 ),
    .O(\dvi_rx1/dec_r/cbnd/blnkbgn_rstpot_1086 )
  );
  FD   \dvi_rx1/dec_r/cbnd/blnkbgn  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_r/cbnd/blnkbgn_rstpot_1086 ),
    .Q(\dvi_rx1/dec_r/cbnd/blnkbgn_711 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/tmdsclkint_0  (
    .C(tx_pclkx2),
    .D(\dvi_tx/toggle_877 ),
    .Q(\dvi_tx/tmdsclkint [0])
  );
  FD   \dvi_rx1/dec_b/des_0/inc_data_int  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_b/des_0/inc_data_int_rstpot_1087 ),
    .Q(\dvi_rx1/dec_b/des_0/inc_data_int_266 )
  );
  FD   \dvi_rx1/dec_b/des_0/ce_data  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_b/des_0/ce_data_rstpot_1088 ),
    .Q(\dvi_rx1/dec_b/des_0/ce_data_268 )
  );
  FD   \dvi_rx1/dec_g/des_0/inc_data_int  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_g/des_0/inc_data_int_rstpot_1089 ),
    .Q(\dvi_rx1/dec_g/des_0/inc_data_int_310 )
  );
  FD   \dvi_rx1/dec_g/des_0/ce_data  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_g/des_0/ce_data_rstpot_1090 ),
    .Q(\dvi_rx1/dec_g/des_0/ce_data_312 )
  );
  FD   \dvi_rx1/dec_r/des_0/inc_data_int  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_r/des_0/inc_data_int_rstpot_1091 ),
    .Q(\dvi_rx1/dec_r/des_0/inc_data_int_351 )
  );
  FD   \dvi_rx1/dec_r/des_0/ce_data  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_r/des_0/ce_data_rstpot_1092 ),
    .Q(\dvi_rx1/dec_r/des_0/ce_data_353 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_b/cbnd/ra_en  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_b/cbnd/ra_en_rstpot_1093 ),
    .Q(\dvi_rx1/dec_b/cbnd/ra_en_657 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_g/cbnd/ra_en  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_g/cbnd/ra_en_rstpot_1094 ),
    .Q(\dvi_rx1/dec_g/cbnd/ra_en_684 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_r/cbnd/ra_en  (
    .C(\dvi_rx1/pclk ),
    .D(\dvi_rx1/dec_r/cbnd/ra_en_rstpot_1095 ),
    .Q(\dvi_rx1/dec_r/cbnd/ra_en_709 )
  );
  FD   \dvi_rx1/dec_b/des_0/rst_data  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_b/des_0/rst_data_rstpot1_1096 ),
    .Q(\dvi_rx1/dec_b/des_0/rst_data_267 )
  );
  FD   \dvi_rx1/dec_g/des_0/rst_data  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_g/des_0/rst_data_rstpot1_1097 ),
    .Q(\dvi_rx1/dec_g/des_0/rst_data_311 )
  );
  FD   \dvi_rx1/dec_r/des_0/rst_data  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_r/des_0/rst_data_rstpot1_1098 ),
    .Q(\dvi_rx1/dec_r/des_0/rst_data_352 )
  );
  LUT6 #(
    .INIT ( 64'h2AAAAAAAAAAAAAAA ))
  \dvi_rx1/dec_b/des_0/incdec_data_d_pdcounter[4]_AND_5_o1  (
    .I0(\dvi_rx1/dec_b/des_0/incdec_data_d_270 ),
    .I1(\dvi_rx1/dec_b/des_0/pdcounter [4]),
    .I2(\dvi_rx1/dec_b/des_0/pdcounter [3]),
    .I3(\dvi_rx1/dec_b/des_0/pdcounter [2]),
    .I4(\dvi_rx1/dec_b/des_0/pdcounter [1]),
    .I5(\dvi_rx1/dec_b/des_0/pdcounter [0]),
    .O(\dvi_rx1/dec_b/des_0/incdec_data_d_pdcounter[4]_AND_5_o )
  );
  LUT6 #(
    .INIT ( 64'h2AAAAAAAAAAAAAAA ))
  \dvi_rx1/dec_g/des_0/incdec_data_d_pdcounter[4]_AND_5_o1  (
    .I0(\dvi_rx1/dec_g/des_0/incdec_data_d_314 ),
    .I1(\dvi_rx1/dec_g/des_0/pdcounter [4]),
    .I2(\dvi_rx1/dec_g/des_0/pdcounter [3]),
    .I3(\dvi_rx1/dec_g/des_0/pdcounter [2]),
    .I4(\dvi_rx1/dec_g/des_0/pdcounter [1]),
    .I5(\dvi_rx1/dec_g/des_0/pdcounter [0]),
    .O(\dvi_rx1/dec_g/des_0/incdec_data_d_pdcounter[4]_AND_5_o )
  );
  LUT6 #(
    .INIT ( 64'h2AAAAAAAAAAAAAAA ))
  \dvi_rx1/dec_r/des_0/incdec_data_d_pdcounter[4]_AND_5_o1  (
    .I0(\dvi_rx1/dec_r/des_0/incdec_data_d_355 ),
    .I1(\dvi_rx1/dec_r/des_0/pdcounter [4]),
    .I2(\dvi_rx1/dec_r/des_0/pdcounter [3]),
    .I3(\dvi_rx1/dec_r/des_0/pdcounter [2]),
    .I4(\dvi_rx1/dec_r/des_0/pdcounter [1]),
    .I5(\dvi_rx1/dec_r/des_0/pdcounter [0]),
    .O(\dvi_rx1/dec_r/des_0/incdec_data_d_pdcounter[4]_AND_5_o )
  );
  LUT6 #(
    .INIT ( 64'h0800000000000000 ))
  \dvi_rx1/dec_b/des_0/pdcounter[4]_flag_AND_3_o1  (
    .I0(\dvi_rx1/dec_b/des_0/pdcounter [4]),
    .I1(\dvi_rx1/dec_b/des_0/pdcounter [3]),
    .I2(\dvi_rx1/dec_b/des_0/flag_272 ),
    .I3(\dvi_rx1/dec_b/des_0/pdcounter [0]),
    .I4(\dvi_rx1/dec_b/des_0/pdcounter [1]),
    .I5(\dvi_rx1/dec_b/des_0/pdcounter [2]),
    .O(\dvi_rx1/dec_b/des_0/pdcounter[4]_flag_AND_3_o )
  );
  LUT6 #(
    .INIT ( 64'h0800000000000000 ))
  \dvi_rx1/dec_g/des_0/pdcounter[4]_flag_AND_3_o1  (
    .I0(\dvi_rx1/dec_g/des_0/pdcounter [4]),
    .I1(\dvi_rx1/dec_g/des_0/pdcounter [3]),
    .I2(\dvi_rx1/dec_g/des_0/flag_316 ),
    .I3(\dvi_rx1/dec_g/des_0/pdcounter [0]),
    .I4(\dvi_rx1/dec_g/des_0/pdcounter [1]),
    .I5(\dvi_rx1/dec_g/des_0/pdcounter [2]),
    .O(\dvi_rx1/dec_g/des_0/pdcounter[4]_flag_AND_3_o )
  );
  LUT6 #(
    .INIT ( 64'h0800000000000000 ))
  \dvi_rx1/dec_r/des_0/pdcounter[4]_flag_AND_3_o1  (
    .I0(\dvi_rx1/dec_r/des_0/pdcounter [4]),
    .I1(\dvi_rx1/dec_r/des_0/pdcounter [3]),
    .I2(\dvi_rx1/dec_r/des_0/flag_357 ),
    .I3(\dvi_rx1/dec_r/des_0/pdcounter [0]),
    .I4(\dvi_rx1/dec_r/des_0/pdcounter [1]),
    .I5(\dvi_rx1/dec_r/des_0/pdcounter [2]),
    .O(\dvi_rx1/dec_r/des_0/pdcounter[4]_flag_AND_3_o )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \dvi_rx1/dec_b/des_0/_n0327_inv1_SW0  (
    .I0(\dvi_rx1/dec_b/des_0/state_FSM_FFd4_281 ),
    .I1(\dvi_rx1/dec_b/des_0/state_FSM_FFd3_282 ),
    .I2(\dvi_rx1/dec_b/des_0/state_FSM_FFd2_283 ),
    .O(N26)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \dvi_rx1/dec_g/des_0/_n0327_inv1_SW0  (
    .I0(\dvi_rx1/dec_g/des_0/state_FSM_FFd4_324 ),
    .I1(\dvi_rx1/dec_g/des_0/state_FSM_FFd3_325 ),
    .I2(\dvi_rx1/dec_g/des_0/state_FSM_FFd2_326 ),
    .O(N28)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \dvi_rx1/dec_r/des_0/_n0327_inv1_SW0  (
    .I0(\dvi_rx1/dec_r/des_0/state_FSM_FFd4_365 ),
    .I1(\dvi_rx1/dec_r/des_0/state_FSM_FFd3_366 ),
    .I2(\dvi_rx1/dec_r/des_0/state_FSM_FFd2_367 ),
    .O(N30)
  );
  LUT6 #(
    .INIT ( 64'hCCCCCCCC88CDCCCC ))
  \dvi_rx1/dec_b/des_0/rst_data_rstpot  (
    .I0(rx_reset),
    .I1(\dvi_rx1/dec_b/des_0/rst_data_267 ),
    .I2(\dvi_rx1/dec_b/des_0/busy_data_d_271 ),
    .I3(\dvi_rx1/dec_b/des_0/state_FSM_FFd4_281 ),
    .I4(\dvi_rx1/dec_b/des_0/state_FSM_FFd3_282 ),
    .I5(\dvi_rx1/dec_b/des_0/state_FSM_FFd2_283 ),
    .O(\dvi_rx1/dec_b/des_0/rst_data_rstpot_1068 )
  );
  LUT6 #(
    .INIT ( 64'hCCCCCCCC88CDCCCC ))
  \dvi_rx1/dec_g/des_0/rst_data_rstpot  (
    .I0(rx_reset),
    .I1(\dvi_rx1/dec_g/des_0/rst_data_311 ),
    .I2(\dvi_rx1/dec_g/des_0/busy_data_d_315 ),
    .I3(\dvi_rx1/dec_g/des_0/state_FSM_FFd4_324 ),
    .I4(\dvi_rx1/dec_g/des_0/state_FSM_FFd3_325 ),
    .I5(\dvi_rx1/dec_g/des_0/state_FSM_FFd2_326 ),
    .O(\dvi_rx1/dec_g/des_0/rst_data_rstpot_1073 )
  );
  LUT6 #(
    .INIT ( 64'hCCCCCCCC88CDCCCC ))
  \dvi_rx1/dec_r/des_0/rst_data_rstpot  (
    .I0(rx_reset),
    .I1(\dvi_rx1/dec_r/des_0/rst_data_352 ),
    .I2(\dvi_rx1/dec_r/des_0/busy_data_d_356 ),
    .I3(\dvi_rx1/dec_r/des_0/state_FSM_FFd4_365 ),
    .I4(\dvi_rx1/dec_r/des_0/state_FSM_FFd3_366 ),
    .I5(\dvi_rx1/dec_r/des_0/state_FSM_FFd2_367 ),
    .O(\dvi_rx1/dec_r/des_0/rst_data_rstpot_1078 )
  );
  LUT4 #(
    .INIT ( 16'hEAAA ))
  \dvi_rx1/dec_b/des_0/_n0251_SW1  (
    .I0(rx_reset),
    .I1(\dvi_rx1/dec_b/des_0/state_FSM_FFd3_282 ),
    .I2(\dvi_rx1/dec_b/des_0/state_FSM_FFd4_281 ),
    .I3(\dvi_rx1/dec_b/des_0/state_FSM_FFd2_283 ),
    .O(N32)
  );
  LUT4 #(
    .INIT ( 16'hEAAA ))
  \dvi_rx1/dec_g/des_0/_n0251_SW1  (
    .I0(rx_reset),
    .I1(\dvi_rx1/dec_g/des_0/state_FSM_FFd3_325 ),
    .I2(\dvi_rx1/dec_g/des_0/state_FSM_FFd4_324 ),
    .I3(\dvi_rx1/dec_g/des_0/state_FSM_FFd2_326 ),
    .O(N34)
  );
  LUT4 #(
    .INIT ( 16'hEAAA ))
  \dvi_rx1/dec_r/des_0/_n0251_SW1  (
    .I0(rx_reset),
    .I1(\dvi_rx1/dec_r/des_0/state_FSM_FFd3_366 ),
    .I2(\dvi_rx1/dec_r/des_0/state_FSM_FFd4_365 ),
    .I3(\dvi_rx1/dec_r/des_0/state_FSM_FFd2_367 ),
    .O(N36)
  );
  LUT6 #(
    .INIT ( 64'h00000000000082C3 ))
  \dvi_rx1/dec_b/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT3  (
    .I0(\dvi_rx1/dec_b/des_0/flag_272 ),
    .I1(\dvi_rx1/dec_b/des_0/pdcounter [2]),
    .I2(N38),
    .I3(\dvi_rx1/dec_b/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I4(\dvi_rx1/dec_b/des_0/pdcounter[4]_flag_AND_3_o ),
    .I5(\dvi_rx1/dec_b/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .O(\dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'h00000000000082C3 ))
  \dvi_rx1/dec_g/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT3  (
    .I0(\dvi_rx1/dec_g/des_0/flag_316 ),
    .I1(\dvi_rx1/dec_g/des_0/pdcounter [2]),
    .I2(N40),
    .I3(\dvi_rx1/dec_g/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I4(\dvi_rx1/dec_g/des_0/pdcounter[4]_flag_AND_3_o ),
    .I5(\dvi_rx1/dec_g/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .O(\dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'h00000000000082C3 ))
  \dvi_rx1/dec_r/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT3  (
    .I0(\dvi_rx1/dec_r/des_0/flag_357 ),
    .I1(\dvi_rx1/dec_r/des_0/pdcounter [2]),
    .I2(N42),
    .I3(\dvi_rx1/dec_r/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I4(\dvi_rx1/dec_r/des_0/pdcounter[4]_flag_AND_3_o ),
    .I5(\dvi_rx1/dec_r/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .O(\dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000069 ))
  \dvi_rx1/dec_b/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT41  (
    .I0(\dvi_rx1/dec_b/des_0/pdcounter [3]),
    .I1(\dvi_rx1/dec_b/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_cy<2> ),
    .I2(\dvi_rx1/dec_b/des_0/incdec_data_d_pdcounter[4]_AND_5_o ),
    .I3(\dvi_rx1/dec_b/des_0/pdcounter[4]_flag_AND_4_o ),
    .I4(\dvi_rx1/dec_b/des_0/pdcounter[4]_flag_AND_3_o ),
    .I5(\dvi_rx1/dec_b/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .O(\dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000069 ))
  \dvi_rx1/dec_g/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT41  (
    .I0(\dvi_rx1/dec_g/des_0/pdcounter [3]),
    .I1(\dvi_rx1/dec_g/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_cy<2> ),
    .I2(\dvi_rx1/dec_g/des_0/incdec_data_d_pdcounter[4]_AND_5_o ),
    .I3(\dvi_rx1/dec_g/des_0/pdcounter[4]_flag_AND_4_o ),
    .I4(\dvi_rx1/dec_g/des_0/pdcounter[4]_flag_AND_3_o ),
    .I5(\dvi_rx1/dec_g/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .O(\dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000069 ))
  \dvi_rx1/dec_r/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT41  (
    .I0(\dvi_rx1/dec_r/des_0/pdcounter [3]),
    .I1(\dvi_rx1/dec_r/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_cy<2> ),
    .I2(\dvi_rx1/dec_r/des_0/incdec_data_d_pdcounter[4]_AND_5_o ),
    .I3(\dvi_rx1/dec_r/des_0/pdcounter[4]_flag_AND_4_o ),
    .I4(\dvi_rx1/dec_r/des_0/pdcounter[4]_flag_AND_3_o ),
    .I5(\dvi_rx1/dec_r/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .O(\dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFB00000000 ))
  \dvi_rx1/dec_b/des_0/rst_data_rstpot1  (
    .I0(rx_reset),
    .I1(\dvi_rx1/dec_b/des_0/enable_274 ),
    .I2(\dvi_rx1/dec_b/des_0/state_FSM_FFd4_281 ),
    .I3(\dvi_rx1/dec_b/des_0/state_FSM_FFd3_282 ),
    .I4(\dvi_rx1/dec_b/des_0/state_FSM_FFd2_283 ),
    .I5(\dvi_rx1/dec_b/des_0/rst_data_rstpot_1068 ),
    .O(\dvi_rx1/dec_b/des_0/rst_data_rstpot1_1096 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFB00000000 ))
  \dvi_rx1/dec_g/des_0/rst_data_rstpot1  (
    .I0(rx_reset),
    .I1(\dvi_rx1/dec_b/des_0/enable_274 ),
    .I2(\dvi_rx1/dec_g/des_0/state_FSM_FFd4_324 ),
    .I3(\dvi_rx1/dec_g/des_0/state_FSM_FFd3_325 ),
    .I4(\dvi_rx1/dec_g/des_0/state_FSM_FFd2_326 ),
    .I5(\dvi_rx1/dec_g/des_0/rst_data_rstpot_1073 ),
    .O(\dvi_rx1/dec_g/des_0/rst_data_rstpot1_1097 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFB00000000 ))
  \dvi_rx1/dec_r/des_0/rst_data_rstpot1  (
    .I0(rx_reset),
    .I1(\dvi_rx1/dec_b/des_0/enable_274 ),
    .I2(\dvi_rx1/dec_r/des_0/state_FSM_FFd4_365 ),
    .I3(\dvi_rx1/dec_r/des_0/state_FSM_FFd3_366 ),
    .I4(\dvi_rx1/dec_r/des_0/state_FSM_FFd2_367 ),
    .I5(\dvi_rx1/dec_r/des_0/rst_data_rstpot_1078 ),
    .O(\dvi_rx1/dec_r/des_0/rst_data_rstpot1_1098 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFDFFF ))
  \dvi_rx1/dec_b/n0050_inv4_SW0  (
    .I0(\dvi_rx1/dec_b/cbnd/sdata [3]),
    .I1(\dvi_rx1/dec_b/cbnd/sdata [4]),
    .I2(\dvi_rx1/dec_b/cbnd/sdata [1]),
    .I3(\dvi_rx1/dec_b/cbnd/sdata [0]),
    .I4(\dvi_rx1/dec_b/cbnd/sdata [2]),
    .O(N44)
  );
  LUT5 #(
    .INIT ( 32'hFFFFFBFF ))
  \dvi_rx1/dec_b/n0050_inv4_SW1  (
    .I0(\dvi_rx1/dec_b/cbnd/sdata [3]),
    .I1(\dvi_rx1/dec_b/cbnd/sdata [2]),
    .I2(\dvi_rx1/dec_b/cbnd/sdata [1]),
    .I3(\dvi_rx1/dec_b/cbnd/sdata [4]),
    .I4(\dvi_rx1/dec_b/cbnd/sdata [0]),
    .O(N45)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFF7EFFFEFF7 ))
  \dvi_rx1/dec_b/n0050_inv4  (
    .I0(\dvi_rx1/dec_b/cbnd/sdata [7]),
    .I1(\dvi_rx1/dec_b/cbnd/sdata [5]),
    .I2(\dvi_rx1/dec_b/cbnd/sdata [6]),
    .I3(\dvi_rx1/dec_b/cbnd/sdata [8]),
    .I4(N44),
    .I5(N45),
    .O(\dvi_rx1/dec_b/n0050_inv )
  );
  LUT6 #(
    .INIT ( 64'hE2E2F0F0E2E2F2E2 ))
  \dvi_rx1/dec_b/des_0/flag_rstpot  (
    .I0(\dvi_rx1/dec_b/des_0/flag_272 ),
    .I1(N26),
    .I2(\dvi_rx1/dec_b/des_0/GND_10_o_GND_10_o_equal_45_o_inv ),
    .I3(\dvi_rx1/dec_b/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I4(\dvi_rx1/dec_b/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I5(\dvi_rx1/dec_b/des_0/pdcounter[4]_flag_AND_3_o ),
    .O(\dvi_rx1/dec_b/des_0/flag_rstpot_1069 )
  );
  LUT6 #(
    .INIT ( 64'hE2E2F0F0E2E2F2E2 ))
  \dvi_rx1/dec_g/des_0/flag_rstpot  (
    .I0(\dvi_rx1/dec_g/des_0/flag_316 ),
    .I1(N28),
    .I2(\dvi_rx1/dec_g/des_0/GND_10_o_GND_10_o_equal_45_o_inv ),
    .I3(\dvi_rx1/dec_g/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I4(\dvi_rx1/dec_g/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I5(\dvi_rx1/dec_g/des_0/pdcounter[4]_flag_AND_3_o ),
    .O(\dvi_rx1/dec_g/des_0/flag_rstpot_1074 )
  );
  LUT6 #(
    .INIT ( 64'hE2E2F0F0E2E2F2E2 ))
  \dvi_rx1/dec_r/des_0/flag_rstpot  (
    .I0(\dvi_rx1/dec_r/des_0/flag_357 ),
    .I1(N30),
    .I2(\dvi_rx1/dec_r/des_0/GND_10_o_GND_10_o_equal_45_o_inv ),
    .I3(\dvi_rx1/dec_r/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I4(\dvi_rx1/dec_r/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I5(\dvi_rx1/dec_r/des_0/pdcounter[4]_flag_AND_3_o ),
    .O(\dvi_rx1/dec_r/des_0/flag_rstpot_1079 )
  );
  LUT6 #(
    .INIT ( 64'h0A0AFAFA0A0A3A0A ))
  \dvi_rx1/dec_b/des_0/ce_data_inta_rstpot  (
    .I0(\dvi_rx1/dec_b/des_0/ce_data_inta_273 ),
    .I1(\dvi_rx1/dec_b/des_0/flag_272 ),
    .I2(\dvi_rx1/dec_b/des_0/GND_10_o_GND_10_o_equal_45_o_inv ),
    .I3(\dvi_rx1/dec_b/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I4(\dvi_rx1/dec_b/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I5(\dvi_rx1/dec_b/des_0/pdcounter[4]_flag_AND_3_o ),
    .O(\dvi_rx1/dec_b/des_0/ce_data_inta_rstpot_1065 )
  );
  LUT6 #(
    .INIT ( 64'h0A0AFAFA0A0A3A0A ))
  \dvi_rx1/dec_g/des_0/ce_data_inta_rstpot  (
    .I0(\dvi_rx1/dec_g/des_0/ce_data_inta_317 ),
    .I1(\dvi_rx1/dec_g/des_0/flag_316 ),
    .I2(\dvi_rx1/dec_g/des_0/GND_10_o_GND_10_o_equal_45_o_inv ),
    .I3(\dvi_rx1/dec_g/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I4(\dvi_rx1/dec_g/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I5(\dvi_rx1/dec_g/des_0/pdcounter[4]_flag_AND_3_o ),
    .O(\dvi_rx1/dec_g/des_0/ce_data_inta_rstpot_1071 )
  );
  LUT6 #(
    .INIT ( 64'h0A0AFAFA0A0A3A0A ))
  \dvi_rx1/dec_r/des_0/ce_data_inta_rstpot  (
    .I0(\dvi_rx1/dec_r/des_0/ce_data_inta_358 ),
    .I1(\dvi_rx1/dec_r/des_0/flag_357 ),
    .I2(\dvi_rx1/dec_r/des_0/GND_10_o_GND_10_o_equal_45_o_inv ),
    .I3(\dvi_rx1/dec_r/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I4(\dvi_rx1/dec_r/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I5(\dvi_rx1/dec_r/des_0/pdcounter[4]_flag_AND_3_o ),
    .O(\dvi_rx1/dec_r/des_0/ce_data_inta_rstpot_1076 )
  );
  LUT4 #(
    .INIT ( 16'hD554 ))
  \dvi_rx1/dec_b/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_cy<2>11  (
    .I0(\dvi_rx1/dec_b/des_0/incdec_data_d_270 ),
    .I1(\dvi_rx1/dec_b/des_0/pdcounter [2]),
    .I2(\dvi_rx1/dec_b/des_0/pdcounter [1]),
    .I3(\dvi_rx1/dec_b/des_0/pdcounter [0]),
    .O(\dvi_rx1/dec_b/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_cy<2> )
  );
  LUT4 #(
    .INIT ( 16'hD554 ))
  \dvi_rx1/dec_g/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_cy<2>11  (
    .I0(\dvi_rx1/dec_g/des_0/incdec_data_d_314 ),
    .I1(\dvi_rx1/dec_g/des_0/pdcounter [2]),
    .I2(\dvi_rx1/dec_g/des_0/pdcounter [1]),
    .I3(\dvi_rx1/dec_g/des_0/pdcounter [0]),
    .O(\dvi_rx1/dec_g/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_cy<2> )
  );
  LUT4 #(
    .INIT ( 16'hD554 ))
  \dvi_rx1/dec_r/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_cy<2>11  (
    .I0(\dvi_rx1/dec_r/des_0/incdec_data_d_355 ),
    .I1(\dvi_rx1/dec_r/des_0/pdcounter [2]),
    .I2(\dvi_rx1/dec_r/des_0/pdcounter [1]),
    .I3(\dvi_rx1/dec_r/des_0/pdcounter [0]),
    .O(\dvi_rx1/dec_r/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_cy<2> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_rx1/dec_b/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_lut<1>1_SW0  (
    .I0(\dvi_rx1/dec_b/des_0/pdcounter [1]),
    .I1(\dvi_rx1/dec_b/des_0/pdcounter [0]),
    .O(N47)
  );
  LUT6 #(
    .INIT ( 64'h00000000000082C3 ))
  \dvi_rx1/dec_b/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT21  (
    .I0(\dvi_rx1/dec_b/des_0/flag_272 ),
    .I1(N47),
    .I2(\dvi_rx1/dec_b/des_0/incdec_data_d_pdcounter[4]_AND_5_o ),
    .I3(\dvi_rx1/dec_b/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I4(\dvi_rx1/dec_b/des_0/pdcounter[4]_flag_AND_3_o ),
    .I5(\dvi_rx1/dec_b/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .O(\dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<1> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_rx1/dec_g/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_lut<1>1_SW0  (
    .I0(\dvi_rx1/dec_g/des_0/pdcounter [1]),
    .I1(\dvi_rx1/dec_g/des_0/pdcounter [0]),
    .O(N49)
  );
  LUT6 #(
    .INIT ( 64'h00000000000082C3 ))
  \dvi_rx1/dec_g/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT21  (
    .I0(\dvi_rx1/dec_g/des_0/flag_316 ),
    .I1(N49),
    .I2(\dvi_rx1/dec_g/des_0/incdec_data_d_pdcounter[4]_AND_5_o ),
    .I3(\dvi_rx1/dec_g/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I4(\dvi_rx1/dec_g/des_0/pdcounter[4]_flag_AND_3_o ),
    .I5(\dvi_rx1/dec_g/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .O(\dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<1> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_rx1/dec_r/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_lut<1>1_SW0  (
    .I0(\dvi_rx1/dec_r/des_0/pdcounter [1]),
    .I1(\dvi_rx1/dec_r/des_0/pdcounter [0]),
    .O(N51)
  );
  LUT6 #(
    .INIT ( 64'h00000000000082C3 ))
  \dvi_rx1/dec_r/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT21  (
    .I0(\dvi_rx1/dec_r/des_0/flag_357 ),
    .I1(N51),
    .I2(\dvi_rx1/dec_r/des_0/incdec_data_d_pdcounter[4]_AND_5_o ),
    .I3(\dvi_rx1/dec_r/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I4(\dvi_rx1/dec_r/des_0/pdcounter[4]_flag_AND_3_o ),
    .I5(\dvi_rx1/dec_r/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .O(\dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'hD5FF55FFFFAAFFAA ))
  \dvi_rx1/dec_b/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT3_SW1  (
    .I0(\dvi_rx1/dec_b/des_0/incdec_data_d_270 ),
    .I1(\dvi_rx1/dec_b/des_0/pdcounter [4]),
    .I2(\dvi_rx1/dec_b/des_0/pdcounter [3]),
    .I3(\dvi_rx1/dec_b/des_0/pdcounter [0]),
    .I4(\dvi_rx1/dec_b/des_0/pdcounter [2]),
    .I5(\dvi_rx1/dec_b/des_0/pdcounter [1]),
    .O(N38)
  );
  LUT6 #(
    .INIT ( 64'hD5FF55FFFFAAFFAA ))
  \dvi_rx1/dec_g/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT3_SW1  (
    .I0(\dvi_rx1/dec_g/des_0/incdec_data_d_314 ),
    .I1(\dvi_rx1/dec_g/des_0/pdcounter [4]),
    .I2(\dvi_rx1/dec_g/des_0/pdcounter [3]),
    .I3(\dvi_rx1/dec_g/des_0/pdcounter [0]),
    .I4(\dvi_rx1/dec_g/des_0/pdcounter [2]),
    .I5(\dvi_rx1/dec_g/des_0/pdcounter [1]),
    .O(N40)
  );
  LUT6 #(
    .INIT ( 64'hD5FF55FFFFAAFFAA ))
  \dvi_rx1/dec_r/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT3_SW1  (
    .I0(\dvi_rx1/dec_r/des_0/incdec_data_d_355 ),
    .I1(\dvi_rx1/dec_r/des_0/pdcounter [4]),
    .I2(\dvi_rx1/dec_r/des_0/pdcounter [3]),
    .I3(\dvi_rx1/dec_r/des_0/pdcounter [0]),
    .I4(\dvi_rx1/dec_r/des_0/pdcounter [2]),
    .I5(\dvi_rx1/dec_r/des_0/pdcounter [1]),
    .O(N42)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \dvi_rx1/dec_b/des_0/pdcounter[4]_flag_AND_4_o1  (
    .I0(\dvi_rx1/dec_b/des_0/pdcounter [4]),
    .I1(\dvi_rx1/dec_b/des_0/pdcounter [3]),
    .I2(\dvi_rx1/dec_b/des_0/pdcounter [2]),
    .I3(\dvi_rx1/dec_b/des_0/pdcounter [1]),
    .I4(\dvi_rx1/dec_b/des_0/pdcounter [0]),
    .I5(\dvi_rx1/dec_b/des_0/flag_272 ),
    .O(\dvi_rx1/dec_b/des_0/pdcounter[4]_flag_AND_4_o )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \dvi_rx1/dec_g/des_0/pdcounter[4]_flag_AND_4_o1  (
    .I0(\dvi_rx1/dec_g/des_0/pdcounter [4]),
    .I1(\dvi_rx1/dec_g/des_0/pdcounter [3]),
    .I2(\dvi_rx1/dec_g/des_0/pdcounter [2]),
    .I3(\dvi_rx1/dec_g/des_0/pdcounter [1]),
    .I4(\dvi_rx1/dec_g/des_0/pdcounter [0]),
    .I5(\dvi_rx1/dec_g/des_0/flag_316 ),
    .O(\dvi_rx1/dec_g/des_0/pdcounter[4]_flag_AND_4_o )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \dvi_rx1/dec_r/des_0/pdcounter[4]_flag_AND_4_o1  (
    .I0(\dvi_rx1/dec_r/des_0/pdcounter [4]),
    .I1(\dvi_rx1/dec_r/des_0/pdcounter [3]),
    .I2(\dvi_rx1/dec_r/des_0/pdcounter [2]),
    .I3(\dvi_rx1/dec_r/des_0/pdcounter [1]),
    .I4(\dvi_rx1/dec_r/des_0/pdcounter [0]),
    .I5(\dvi_rx1/dec_r/des_0/flag_357 ),
    .O(\dvi_rx1/dec_r/des_0/pdcounter[4]_flag_AND_4_o )
  );
  LUT6 #(
    .INIT ( 64'h0C0C0C0C0C0C2C3C ))
  \dvi_rx1/dec_b/des_0/pdcounter_0_dpot  (
    .I0(\dvi_rx1/dec_b/des_0/flag_272 ),
    .I1(\dvi_rx1/dec_b/des_0/pdcounter [0]),
    .I2(\dvi_rx1/dec_b/des_0/GND_10_o_GND_10_o_equal_45_o_inv ),
    .I3(\dvi_rx1/dec_b/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I4(\dvi_rx1/dec_b/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I5(\dvi_rx1/dec_b/des_0/pdcounter[4]_flag_AND_3_o ),
    .O(\dvi_rx1/dec_b/des_0/pdcounter_0_dpot_1110 )
  );
  LUT6 #(
    .INIT ( 64'h0C0C0C0C0C0C2C3C ))
  \dvi_rx1/dec_g/des_0/pdcounter_0_dpot  (
    .I0(\dvi_rx1/dec_g/des_0/flag_316 ),
    .I1(\dvi_rx1/dec_g/des_0/pdcounter [0]),
    .I2(\dvi_rx1/dec_g/des_0/GND_10_o_GND_10_o_equal_45_o_inv ),
    .I3(\dvi_rx1/dec_g/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I4(\dvi_rx1/dec_g/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I5(\dvi_rx1/dec_g/des_0/pdcounter[4]_flag_AND_3_o ),
    .O(\dvi_rx1/dec_g/des_0/pdcounter_0_dpot_1111 )
  );
  LUT6 #(
    .INIT ( 64'h0C0C0C0C0C0C2C3C ))
  \dvi_rx1/dec_r/des_0/pdcounter_0_dpot  (
    .I0(\dvi_rx1/dec_r/des_0/flag_357 ),
    .I1(\dvi_rx1/dec_r/des_0/pdcounter [0]),
    .I2(\dvi_rx1/dec_r/des_0/GND_10_o_GND_10_o_equal_45_o_inv ),
    .I3(\dvi_rx1/dec_r/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I4(\dvi_rx1/dec_r/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I5(\dvi_rx1/dec_r/des_0/pdcounter[4]_flag_AND_3_o ),
    .O(\dvi_rx1/dec_r/des_0/pdcounter_0_dpot_1112 )
  );
  LUT6 #(
    .INIT ( 64'hCCCCDDDDCCCCC0CC ))
  \dvi_rx1/dec_b/des_0/inc_data_int_rstpot  (
    .I0(rx_reset),
    .I1(\dvi_rx1/dec_b/des_0/inc_data_int_266 ),
    .I2(N32),
    .I3(\dvi_rx1/dec_b/des_0/pdcounter[4]_flag_AND_4_o ),
    .I4(\dvi_rx1/dec_b/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I5(\dvi_rx1/dec_b/des_0/pdcounter[4]_flag_AND_3_o ),
    .O(\dvi_rx1/dec_b/des_0/inc_data_int_rstpot_1087 )
  );
  LUT6 #(
    .INIT ( 64'hCCCCDDDDCCCCC0CC ))
  \dvi_rx1/dec_g/des_0/inc_data_int_rstpot  (
    .I0(rx_reset),
    .I1(\dvi_rx1/dec_g/des_0/inc_data_int_310 ),
    .I2(N34),
    .I3(\dvi_rx1/dec_g/des_0/pdcounter[4]_flag_AND_4_o ),
    .I4(\dvi_rx1/dec_g/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I5(\dvi_rx1/dec_g/des_0/pdcounter[4]_flag_AND_3_o ),
    .O(\dvi_rx1/dec_g/des_0/inc_data_int_rstpot_1089 )
  );
  LUT6 #(
    .INIT ( 64'hCCCCDDDDCCCCC0CC ))
  \dvi_rx1/dec_r/des_0/inc_data_int_rstpot  (
    .I0(rx_reset),
    .I1(\dvi_rx1/dec_r/des_0/inc_data_int_351 ),
    .I2(N36),
    .I3(\dvi_rx1/dec_r/des_0/pdcounter[4]_flag_AND_4_o ),
    .I4(\dvi_rx1/dec_r/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I5(\dvi_rx1/dec_r/des_0/pdcounter[4]_flag_AND_3_o ),
    .O(\dvi_rx1/dec_r/des_0/inc_data_int_rstpot_1091 )
  );
  LUT6 #(
    .INIT ( 64'hECCCCCCCCCCCCCC9 ))
  \dvi_rx1/dec_b/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT51_SW0  (
    .I0(\dvi_rx1/dec_b/des_0/incdec_data_d_270 ),
    .I1(\dvi_rx1/dec_b/des_0/pdcounter [4]),
    .I2(\dvi_rx1/dec_b/des_0/pdcounter [3]),
    .I3(\dvi_rx1/dec_b/des_0/pdcounter [0]),
    .I4(\dvi_rx1/dec_b/des_0/pdcounter [1]),
    .I5(\dvi_rx1/dec_b/des_0/pdcounter [2]),
    .O(N59)
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFDC ))
  \dvi_rx1/dec_b/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT51  (
    .I0(\dvi_rx1/dec_b/des_0/flag_272 ),
    .I1(N59),
    .I2(\dvi_rx1/dec_b/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I3(\dvi_rx1/dec_b/des_0/pdcounter[4]_flag_AND_3_o ),
    .I4(\dvi_rx1/dec_b/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .O(\dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'hECCCCCCCCCCCCCC9 ))
  \dvi_rx1/dec_g/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT51_SW0  (
    .I0(\dvi_rx1/dec_g/des_0/incdec_data_d_314 ),
    .I1(\dvi_rx1/dec_g/des_0/pdcounter [4]),
    .I2(\dvi_rx1/dec_g/des_0/pdcounter [3]),
    .I3(\dvi_rx1/dec_g/des_0/pdcounter [0]),
    .I4(\dvi_rx1/dec_g/des_0/pdcounter [1]),
    .I5(\dvi_rx1/dec_g/des_0/pdcounter [2]),
    .O(N61)
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFDC ))
  \dvi_rx1/dec_g/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT51  (
    .I0(\dvi_rx1/dec_g/des_0/flag_316 ),
    .I1(N61),
    .I2(\dvi_rx1/dec_g/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I3(\dvi_rx1/dec_g/des_0/pdcounter[4]_flag_AND_3_o ),
    .I4(\dvi_rx1/dec_g/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .O(\dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'hECCCCCCCCCCCCCC9 ))
  \dvi_rx1/dec_r/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT51_SW0  (
    .I0(\dvi_rx1/dec_r/des_0/incdec_data_d_355 ),
    .I1(\dvi_rx1/dec_r/des_0/pdcounter [4]),
    .I2(\dvi_rx1/dec_r/des_0/pdcounter [3]),
    .I3(\dvi_rx1/dec_r/des_0/pdcounter [0]),
    .I4(\dvi_rx1/dec_r/des_0/pdcounter [1]),
    .I5(\dvi_rx1/dec_r/des_0/pdcounter [2]),
    .O(N63)
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFDC ))
  \dvi_rx1/dec_r/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT51  (
    .I0(\dvi_rx1/dec_r/des_0/flag_357 ),
    .I1(N63),
    .I2(\dvi_rx1/dec_r/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I3(\dvi_rx1/dec_r/des_0/pdcounter[4]_flag_AND_3_o ),
    .I4(\dvi_rx1/dec_r/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .O(\dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<4> )
  );
  LUT5 #(
    .INIT ( 32'hBFFF8000 ))
  \dvi_rx1/dec_b/des_0/pdcounter_1_dpot  (
    .I0(\dvi_rx1/dec_b/des_0/pdcounter [1]),
    .I1(\dvi_rx1/dec_b/des_0/state_FSM_FFd4_281 ),
    .I2(\dvi_rx1/dec_b/des_0/state_FSM_FFd2_283 ),
    .I3(\dvi_rx1/dec_b/des_0/state_FSM_FFd3_282 ),
    .I4(\dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<1> ),
    .O(\dvi_rx1/dec_b/des_0/pdcounter_1_dpot_1116 )
  );
  LUT5 #(
    .INIT ( 32'hBFFF8000 ))
  \dvi_rx1/dec_b/des_0/pdcounter_2_dpot  (
    .I0(\dvi_rx1/dec_b/des_0/pdcounter [2]),
    .I1(\dvi_rx1/dec_b/des_0/state_FSM_FFd4_281 ),
    .I2(\dvi_rx1/dec_b/des_0/state_FSM_FFd2_283 ),
    .I3(\dvi_rx1/dec_b/des_0/state_FSM_FFd3_282 ),
    .I4(\dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<2> ),
    .O(\dvi_rx1/dec_b/des_0/pdcounter_2_dpot_1117 )
  );
  LUT5 #(
    .INIT ( 32'hBFFF8000 ))
  \dvi_rx1/dec_b/des_0/pdcounter_3_dpot  (
    .I0(\dvi_rx1/dec_b/des_0/pdcounter [3]),
    .I1(\dvi_rx1/dec_b/des_0/state_FSM_FFd4_281 ),
    .I2(\dvi_rx1/dec_b/des_0/state_FSM_FFd2_283 ),
    .I3(\dvi_rx1/dec_b/des_0/state_FSM_FFd3_282 ),
    .I4(\dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<3> ),
    .O(\dvi_rx1/dec_b/des_0/pdcounter_3_dpot_1118 )
  );
  LUT5 #(
    .INIT ( 32'hBFFF8000 ))
  \dvi_rx1/dec_g/des_0/pdcounter_1_dpot  (
    .I0(\dvi_rx1/dec_g/des_0/pdcounter [1]),
    .I1(\dvi_rx1/dec_g/des_0/state_FSM_FFd4_324 ),
    .I2(\dvi_rx1/dec_g/des_0/state_FSM_FFd2_326 ),
    .I3(\dvi_rx1/dec_g/des_0/state_FSM_FFd3_325 ),
    .I4(\dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<1> ),
    .O(\dvi_rx1/dec_g/des_0/pdcounter_1_dpot_1119 )
  );
  LUT5 #(
    .INIT ( 32'hBFFF8000 ))
  \dvi_rx1/dec_g/des_0/pdcounter_2_dpot  (
    .I0(\dvi_rx1/dec_g/des_0/pdcounter [2]),
    .I1(\dvi_rx1/dec_g/des_0/state_FSM_FFd4_324 ),
    .I2(\dvi_rx1/dec_g/des_0/state_FSM_FFd2_326 ),
    .I3(\dvi_rx1/dec_g/des_0/state_FSM_FFd3_325 ),
    .I4(\dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<2> ),
    .O(\dvi_rx1/dec_g/des_0/pdcounter_2_dpot_1120 )
  );
  LUT5 #(
    .INIT ( 32'hBFFF8000 ))
  \dvi_rx1/dec_g/des_0/pdcounter_3_dpot  (
    .I0(\dvi_rx1/dec_g/des_0/pdcounter [3]),
    .I1(\dvi_rx1/dec_g/des_0/state_FSM_FFd4_324 ),
    .I2(\dvi_rx1/dec_g/des_0/state_FSM_FFd2_326 ),
    .I3(\dvi_rx1/dec_g/des_0/state_FSM_FFd3_325 ),
    .I4(\dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<3> ),
    .O(\dvi_rx1/dec_g/des_0/pdcounter_3_dpot_1121 )
  );
  LUT5 #(
    .INIT ( 32'hBFFF8000 ))
  \dvi_rx1/dec_r/des_0/pdcounter_1_dpot  (
    .I0(\dvi_rx1/dec_r/des_0/pdcounter [1]),
    .I1(\dvi_rx1/dec_r/des_0/state_FSM_FFd4_365 ),
    .I2(\dvi_rx1/dec_r/des_0/state_FSM_FFd2_367 ),
    .I3(\dvi_rx1/dec_r/des_0/state_FSM_FFd3_366 ),
    .I4(\dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<1> ),
    .O(\dvi_rx1/dec_r/des_0/pdcounter_1_dpot_1122 )
  );
  LUT5 #(
    .INIT ( 32'hBFFF8000 ))
  \dvi_rx1/dec_r/des_0/pdcounter_2_dpot  (
    .I0(\dvi_rx1/dec_r/des_0/pdcounter [2]),
    .I1(\dvi_rx1/dec_r/des_0/state_FSM_FFd4_365 ),
    .I2(\dvi_rx1/dec_r/des_0/state_FSM_FFd2_367 ),
    .I3(\dvi_rx1/dec_r/des_0/state_FSM_FFd3_366 ),
    .I4(\dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<2> ),
    .O(\dvi_rx1/dec_r/des_0/pdcounter_2_dpot_1123 )
  );
  LUT5 #(
    .INIT ( 32'hBFFF8000 ))
  \dvi_rx1/dec_r/des_0/pdcounter_3_dpot  (
    .I0(\dvi_rx1/dec_r/des_0/pdcounter [3]),
    .I1(\dvi_rx1/dec_r/des_0/state_FSM_FFd4_365 ),
    .I2(\dvi_rx1/dec_r/des_0/state_FSM_FFd2_367 ),
    .I3(\dvi_rx1/dec_r/des_0/state_FSM_FFd3_366 ),
    .I4(\dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<3> ),
    .O(\dvi_rx1/dec_r/des_0/pdcounter_3_dpot_1124 )
  );
  LUT5 #(
    .INIT ( 32'hBFFF8000 ))
  \dvi_rx1/dec_b/des_0/pdcounter_4_dpot  (
    .I0(\dvi_rx1/dec_b/des_0/pdcounter [4]),
    .I1(\dvi_rx1/dec_b/des_0/state_FSM_FFd4_281 ),
    .I2(\dvi_rx1/dec_b/des_0/state_FSM_FFd2_283 ),
    .I3(\dvi_rx1/dec_b/des_0/state_FSM_FFd3_282 ),
    .I4(\dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<4> ),
    .O(\dvi_rx1/dec_b/des_0/pdcounter_4_dpot_1128 )
  );
  LUT5 #(
    .INIT ( 32'hBFFF8000 ))
  \dvi_rx1/dec_g/des_0/pdcounter_4_dpot  (
    .I0(\dvi_rx1/dec_g/des_0/pdcounter [4]),
    .I1(\dvi_rx1/dec_g/des_0/state_FSM_FFd4_324 ),
    .I2(\dvi_rx1/dec_g/des_0/state_FSM_FFd2_326 ),
    .I3(\dvi_rx1/dec_g/des_0/state_FSM_FFd3_325 ),
    .I4(\dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<4> ),
    .O(\dvi_rx1/dec_g/des_0/pdcounter_4_dpot_1129 )
  );
  LUT5 #(
    .INIT ( 32'hBFFF8000 ))
  \dvi_rx1/dec_r/des_0/pdcounter_4_dpot  (
    .I0(\dvi_rx1/dec_r/des_0/pdcounter [4]),
    .I1(\dvi_rx1/dec_r/des_0/state_FSM_FFd4_365 ),
    .I2(\dvi_rx1/dec_r/des_0/state_FSM_FFd2_367 ),
    .I3(\dvi_rx1/dec_r/des_0/state_FSM_FFd3_366 ),
    .I4(\dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<4> ),
    .O(\dvi_rx1/dec_r/des_0/pdcounter_4_dpot_1130 )
  );
  LUT6 #(
    .INIT ( 64'h8080808000808080 ))
  \dvi_rx1/dec_b/n0050_inv4_SW2  (
    .I0(\dvi_rx1/dec_g/cbnd/iamrdy_40 ),
    .I1(\dvi_rx1/dec_b/cbnd/iamrdy_39 ),
    .I2(\dvi_rx1/dec_r/cbnd/iamrdy_41 ),
    .I3(\dvi_rx1/dec_b/cbnd/sdata [7]),
    .I4(\dvi_rx1/dec_b/cbnd/sdata [5]),
    .I5(\dvi_rx1/dec_b/cbnd/sdata [6]),
    .O(N65)
  );
  LUT6 #(
    .INIT ( 64'h8080808080008080 ))
  \dvi_rx1/dec_b/n0050_inv4_SW3  (
    .I0(\dvi_rx1/dec_b/cbnd/iamrdy_39 ),
    .I1(\dvi_rx1/dec_g/cbnd/iamrdy_40 ),
    .I2(\dvi_rx1/dec_r/cbnd/iamrdy_41 ),
    .I3(\dvi_rx1/dec_b/cbnd/sdata [7]),
    .I4(\dvi_rx1/dec_b/cbnd/sdata [6]),
    .I5(\dvi_rx1/dec_b/cbnd/sdata [5]),
    .O(N66)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \dvi_rx1/dec_b/n0050_inv4_SW4  (
    .I0(\dvi_rx1/dec_r/cbnd/iamrdy_41 ),
    .I1(\dvi_rx1/dec_g/cbnd/iamrdy_40 ),
    .I2(\dvi_rx1/dec_b/cbnd/iamrdy_39 ),
    .O(N67)
  );
  LUT6 #(
    .INIT ( 64'hBABFBAB08A8F8A80 ))
  \dvi_rx1/dec_b/de_rstpot  (
    .I0(N67),
    .I1(N45),
    .I2(\dvi_rx1/dec_b/cbnd/sdata [8]),
    .I3(N44),
    .I4(N65),
    .I5(N66),
    .O(\dvi_rx1/dec_b/de_rstpot_1080 )
  );
  FD #(
    .INIT ( 1'b1 ))
  \dvi_tx/pixel2x/fdp_rst  (
    .C(tx_pclkx2),
    .D(clk),
    .Q(\dvi_tx/pixel2x/rstsync )
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fdc_wa3  (
    .C(tx_pclk),
    .D(\dvi_tx/pixel2x/Mram_wa_d3 ),
    .Q(\dvi_tx/pixel2x/wa [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fdc_wa2  (
    .C(tx_pclk),
    .D(\dvi_tx/pixel2x/Mram_wa_d2 ),
    .Q(\dvi_tx/pixel2x/wa [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fdc_wa1  (
    .C(tx_pclk),
    .D(\dvi_tx/pixel2x/Mram_wa_d1 ),
    .Q(\dvi_tx/pixel2x/wa [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fdc_wa0  (
    .C(tx_pclk),
    .D(\dvi_tx/pixel2x/Mram_wa_d ),
    .Q(\dvi_tx/pixel2x/wa [0])
  );
  LUT5 #(
    .INIT ( 32'hFFFFDFFF ))
  \dvi_rx1/dec_r/n0050_inv4_SW0  (
    .I0(\dvi_rx1/dec_r/cbnd/sdata [3]),
    .I1(\dvi_rx1/dec_r/cbnd/sdata [4]),
    .I2(\dvi_rx1/dec_r/cbnd/sdata [1]),
    .I3(\dvi_rx1/dec_r/cbnd/sdata [0]),
    .I4(\dvi_rx1/dec_r/cbnd/sdata [2]),
    .O(N69)
  );
  LUT5 #(
    .INIT ( 32'hFFFFFBFF ))
  \dvi_rx1/dec_r/n0050_inv4_SW1  (
    .I0(\dvi_rx1/dec_r/cbnd/sdata [3]),
    .I1(\dvi_rx1/dec_r/cbnd/sdata [2]),
    .I2(\dvi_rx1/dec_r/cbnd/sdata [1]),
    .I3(\dvi_rx1/dec_r/cbnd/sdata [4]),
    .I4(\dvi_rx1/dec_r/cbnd/sdata [0]),
    .O(N70)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFF7EFFFEFF7 ))
  \dvi_rx1/dec_r/n0050_inv4  (
    .I0(\dvi_rx1/dec_r/cbnd/sdata [7]),
    .I1(\dvi_rx1/dec_r/cbnd/sdata [5]),
    .I2(\dvi_rx1/dec_r/cbnd/sdata [6]),
    .I3(\dvi_rx1/dec_r/cbnd/sdata [8]),
    .I4(N69),
    .I5(N70),
    .O(\dvi_rx1/dec_r/n0050_inv )
  );
  LUT5 #(
    .INIT ( 32'hFFFFDFFF ))
  \dvi_rx1/dec_g/n0050_inv4_SW0  (
    .I0(\dvi_rx1/dec_g/cbnd/sdata [3]),
    .I1(\dvi_rx1/dec_g/cbnd/sdata [4]),
    .I2(\dvi_rx1/dec_g/cbnd/sdata [1]),
    .I3(\dvi_rx1/dec_g/cbnd/sdata [0]),
    .I4(\dvi_rx1/dec_g/cbnd/sdata [2]),
    .O(N72)
  );
  LUT5 #(
    .INIT ( 32'hFFFFFBFF ))
  \dvi_rx1/dec_g/n0050_inv4_SW1  (
    .I0(\dvi_rx1/dec_g/cbnd/sdata [3]),
    .I1(\dvi_rx1/dec_g/cbnd/sdata [2]),
    .I2(\dvi_rx1/dec_g/cbnd/sdata [1]),
    .I3(\dvi_rx1/dec_g/cbnd/sdata [4]),
    .I4(\dvi_rx1/dec_g/cbnd/sdata [0]),
    .O(N73)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFF7EFFFEFF7 ))
  \dvi_rx1/dec_g/n0050_inv4  (
    .I0(\dvi_rx1/dec_g/cbnd/sdata [7]),
    .I1(\dvi_rx1/dec_g/cbnd/sdata [5]),
    .I2(\dvi_rx1/dec_g/cbnd/sdata [6]),
    .I3(\dvi_rx1/dec_g/cbnd/sdata [8]),
    .I4(N72),
    .I5(N73),
    .O(\dvi_rx1/dec_g/n0050_inv )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \dvi_rx1/dec_b/cbnd/iamrdy_glue_set  (
    .I0(\dvi_rx1/dec_b/cbnd/skip_line_658 ),
    .I1(\dvi_rx1/dec_b/cbnd/blnkbgn_661 ),
    .I2(\dvi_rx1/dec_b/cbnd/iamrdy_39 ),
    .O(\dvi_rx1/dec_b/cbnd/iamrdy_glue_set_1026 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \dvi_rx1/dec_g/cbnd/iamrdy_glue_set  (
    .I0(\dvi_rx1/dec_g/cbnd/skip_line_685 ),
    .I1(\dvi_rx1/dec_g/cbnd/blnkbgn_686 ),
    .I2(\dvi_rx1/dec_g/cbnd/iamrdy_40 ),
    .O(\dvi_rx1/dec_g/cbnd/iamrdy_glue_set_1028 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \dvi_rx1/dec_r/cbnd/iamrdy_glue_set  (
    .I0(\dvi_rx1/dec_r/cbnd/skip_line_710 ),
    .I1(\dvi_rx1/dec_r/cbnd/blnkbgn_711 ),
    .I2(\dvi_rx1/dec_r/cbnd/iamrdy_41 ),
    .O(\dvi_rx1/dec_r/cbnd/iamrdy_glue_set_1030 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFD ))
  \dvi_rx1/dec_b/cbnd/sdata[9]_sdata[9]_OR_126_o4_SW0  (
    .I0(\dvi_rx1/dec_b/cbnd/sdata [1]),
    .I1(\dvi_rx1/dec_b/cbnd/sdata [2]),
    .I2(\dvi_rx1/dec_b/cbnd/sdata [4]),
    .I3(\dvi_rx1/dec_b/cbnd/sdata [6]),
    .I4(\dvi_rx1/dec_b/cbnd/sdata [8]),
    .O(N75)
  );
  LUT6 #(
    .INIT ( 64'h0101810100008000 ))
  \dvi_rx1/dec_b/cbnd/sdata[9]_sdata[9]_OR_126_o4  (
    .I0(\dvi_rx1/dec_b/cbnd/sdata [3]),
    .I1(\dvi_rx1/dec_b/cbnd/sdata [5]),
    .I2(\dvi_rx1/dec_b/cbnd/sdata [7]),
    .I3(\dvi_rx1/dec_b/cbnd/sdata [0]),
    .I4(N75),
    .I5(\dvi_rx1/dec_b/cbnd/sdata[9]_sdata[9]_OR_126_o2_1012 ),
    .O(\dvi_rx1/dec_b/cbnd/sdata[9]_sdata[9]_OR_126_o )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFD ))
  \dvi_rx1/dec_g/cbnd/sdata[9]_sdata[9]_OR_126_o4_SW0  (
    .I0(\dvi_rx1/dec_g/cbnd/sdata [1]),
    .I1(\dvi_rx1/dec_g/cbnd/sdata [2]),
    .I2(\dvi_rx1/dec_g/cbnd/sdata [4]),
    .I3(\dvi_rx1/dec_g/cbnd/sdata [6]),
    .I4(\dvi_rx1/dec_g/cbnd/sdata [8]),
    .O(N77)
  );
  LUT6 #(
    .INIT ( 64'h0101810100008000 ))
  \dvi_rx1/dec_g/cbnd/sdata[9]_sdata[9]_OR_126_o4  (
    .I0(\dvi_rx1/dec_g/cbnd/sdata [3]),
    .I1(\dvi_rx1/dec_g/cbnd/sdata [5]),
    .I2(\dvi_rx1/dec_g/cbnd/sdata [7]),
    .I3(\dvi_rx1/dec_g/cbnd/sdata [0]),
    .I4(N77),
    .I5(\dvi_rx1/dec_g/cbnd/sdata[9]_sdata[9]_OR_126_o2_1013 ),
    .O(\dvi_rx1/dec_g/cbnd/sdata[9]_sdata[9]_OR_126_o )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFD ))
  \dvi_rx1/dec_r/cbnd/sdata[9]_sdata[9]_OR_126_o4_SW0  (
    .I0(\dvi_rx1/dec_r/cbnd/sdata [1]),
    .I1(\dvi_rx1/dec_r/cbnd/sdata [2]),
    .I2(\dvi_rx1/dec_r/cbnd/sdata [4]),
    .I3(\dvi_rx1/dec_r/cbnd/sdata [6]),
    .I4(\dvi_rx1/dec_r/cbnd/sdata [8]),
    .O(N79)
  );
  LUT6 #(
    .INIT ( 64'h0101810100008000 ))
  \dvi_rx1/dec_r/cbnd/sdata[9]_sdata[9]_OR_126_o4  (
    .I0(\dvi_rx1/dec_r/cbnd/sdata [3]),
    .I1(\dvi_rx1/dec_r/cbnd/sdata [5]),
    .I2(\dvi_rx1/dec_r/cbnd/sdata [7]),
    .I3(\dvi_rx1/dec_r/cbnd/sdata [0]),
    .I4(N79),
    .I5(\dvi_rx1/dec_r/cbnd/sdata[9]_sdata[9]_OR_126_o2_1014 ),
    .O(\dvi_rx1/dec_r/cbnd/sdata[9]_sdata[9]_OR_126_o )
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAAA ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_counter_xor<4>12  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [4]),
    .I1(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [3]),
    .I2(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [2]),
    .I3(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [0]),
    .I4(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [1]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result<4>1 )
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAAA ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_counter_xor<4>12  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [4]),
    .I1(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [3]),
    .I2(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [2]),
    .I3(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [0]),
    .I4(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [1]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result<4>1 )
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAAA ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_counter_xor<4>12  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [4]),
    .I1(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [3]),
    .I2(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [2]),
    .I3(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [0]),
    .I4(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [1]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result<4>1 )
  );
  LUT6 #(
    .INIT ( 64'h6AAAAAAAAAAAAAAA ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_counter_xor<5>11  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [5]),
    .I1(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [2]),
    .I2(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [0]),
    .I3(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [1]),
    .I4(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [3]),
    .I5(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [4]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result<5>1 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFDAAAAAAA8 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<0>1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/bitslip_cnt [0]),
    .I1(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd3_455 ),
    .I2(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd2_454 ),
    .I3(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd1_453 ),
    .I4(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd5_457 ),
    .I5(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4_456 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'h6AAAAAAAAAAAAAAA ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_counter_xor<5>11  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [5]),
    .I1(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [2]),
    .I2(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [0]),
    .I3(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [1]),
    .I4(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [3]),
    .I5(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [4]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result<5>1 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFDAAAAAAA8 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<0>1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/bitslip_cnt [0]),
    .I1(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd3_542 ),
    .I2(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd2_541 ),
    .I3(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd1_540 ),
    .I4(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd5_544 ),
    .I5(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4_543 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'h6AAAAAAAAAAAAAAA ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_counter_xor<5>11  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [5]),
    .I1(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [2]),
    .I2(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [0]),
    .I3(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [1]),
    .I4(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [3]),
    .I5(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [4]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result<5>1 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFDAAAAAAA8 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<0>1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/bitslip_cnt [0]),
    .I1(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd3_629 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd2_628 ),
    .I3(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd1_627 ),
    .I4(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd5_631 ),
    .I5(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4_630 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'h5555555554444444 ))
  \dvi_rx1/dec_b/cbnd/ra_en_rstpot  (
    .I0(\dvi_rx1/dec_b/cbnd/_n0064 ),
    .I1(\dvi_rx1/dec_b/cbnd/rawdata_vld_rising_659 ),
    .I2(\dvi_rx1/dec_b/cbnd/iamrdy_39 ),
    .I3(\dvi_rx1/dec_g/cbnd/iamrdy_40 ),
    .I4(\dvi_rx1/dec_r/cbnd/iamrdy_41 ),
    .I5(\dvi_rx1/dec_b/cbnd/ra_en_657 ),
    .O(\dvi_rx1/dec_b/cbnd/ra_en_rstpot_1093 )
  );
  LUT6 #(
    .INIT ( 64'h5555555554444444 ))
  \dvi_rx1/dec_g/cbnd/ra_en_rstpot  (
    .I0(\dvi_rx1/dec_g/cbnd/_n0064 ),
    .I1(\dvi_rx1/dec_b/cbnd/rawdata_vld_rising_659 ),
    .I2(\dvi_rx1/dec_b/cbnd/iamrdy_39 ),
    .I3(\dvi_rx1/dec_g/cbnd/iamrdy_40 ),
    .I4(\dvi_rx1/dec_r/cbnd/iamrdy_41 ),
    .I5(\dvi_rx1/dec_g/cbnd/ra_en_684 ),
    .O(\dvi_rx1/dec_g/cbnd/ra_en_rstpot_1094 )
  );
  LUT6 #(
    .INIT ( 64'h5555555554444444 ))
  \dvi_rx1/dec_r/cbnd/ra_en_rstpot  (
    .I0(\dvi_rx1/dec_r/cbnd/_n0064 ),
    .I1(\dvi_rx1/dec_b/cbnd/rawdata_vld_rising_659 ),
    .I2(\dvi_rx1/dec_b/cbnd/iamrdy_39 ),
    .I3(\dvi_rx1/dec_g/cbnd/iamrdy_40 ),
    .I4(\dvi_rx1/dec_r/cbnd/iamrdy_41 ),
    .I5(\dvi_rx1/dec_r/cbnd/ra_en_709 ),
    .O(\dvi_rx1/dec_r/cbnd/ra_en_rstpot_1095 )
  );
  LUT5 #(
    .INIT ( 32'hA8A8B8BA ))
  \dvi_rx1/dec_b/des_0/cal_data_master_rstpot  (
    .I0(\dvi_rx1/dec_b/des_0/cal_data_master_276 ),
    .I1(\dvi_rx1/dec_b/des_0/state_FSM_FFd2_283 ),
    .I2(\dvi_rx1/dec_b/des_0/state_FSM_FFd4_281 ),
    .I3(\dvi_rx1/dec_b/des_0/enable_274 ),
    .I4(\dvi_rx1/dec_b/des_0/state_FSM_FFd3_282 ),
    .O(\dvi_rx1/dec_b/des_0/cal_data_master_rstpot_1064 )
  );
  LUT5 #(
    .INIT ( 32'hA8A8B8BA ))
  \dvi_rx1/dec_g/des_0/cal_data_master_rstpot  (
    .I0(\dvi_rx1/dec_g/des_0/cal_data_master_319 ),
    .I1(\dvi_rx1/dec_g/des_0/state_FSM_FFd2_326 ),
    .I2(\dvi_rx1/dec_g/des_0/state_FSM_FFd4_324 ),
    .I3(\dvi_rx1/dec_b/des_0/enable_274 ),
    .I4(\dvi_rx1/dec_g/des_0/state_FSM_FFd3_325 ),
    .O(\dvi_rx1/dec_g/des_0/cal_data_master_rstpot_1070 )
  );
  LUT5 #(
    .INIT ( 32'hA8A8B8BA ))
  \dvi_rx1/dec_r/des_0/cal_data_master_rstpot  (
    .I0(\dvi_rx1/dec_r/des_0/cal_data_master_360 ),
    .I1(\dvi_rx1/dec_r/des_0/state_FSM_FFd2_367 ),
    .I2(\dvi_rx1/dec_r/des_0/state_FSM_FFd4_365 ),
    .I3(\dvi_rx1/dec_b/des_0/enable_274 ),
    .I4(\dvi_rx1/dec_r/des_0/state_FSM_FFd3_366 ),
    .O(\dvi_rx1/dec_r/des_0/cal_data_master_rstpot_1075 )
  );
  LUT6 #(
    .INIT ( 64'h55CC044455DD0444 ))
  \dvi_rx1/dec_b/des_0/cal_data_sint_rstpot  (
    .I0(\dvi_rx1/dec_b/des_0/state_FSM_FFd3_282 ),
    .I1(\dvi_rx1/dec_b/des_0/state_FSM_FFd4_281 ),
    .I2(\dvi_rx1/dec_b/des_0/busy_data_d_271 ),
    .I3(\dvi_rx1/dec_b/des_0/state_FSM_FFd2_283 ),
    .I4(\dvi_rx1/dec_b/des_0/cal_data_sint_275 ),
    .I5(\dvi_rx1/dec_b/des_0/enable_274 ),
    .O(\dvi_rx1/dec_b/des_0/cal_data_sint_rstpot_1067 )
  );
  LUT6 #(
    .INIT ( 64'h55CC044455DD0444 ))
  \dvi_rx1/dec_g/des_0/cal_data_sint_rstpot  (
    .I0(\dvi_rx1/dec_g/des_0/state_FSM_FFd3_325 ),
    .I1(\dvi_rx1/dec_g/des_0/state_FSM_FFd4_324 ),
    .I2(\dvi_rx1/dec_g/des_0/busy_data_d_315 ),
    .I3(\dvi_rx1/dec_g/des_0/state_FSM_FFd2_326 ),
    .I4(\dvi_rx1/dec_g/des_0/cal_data_sint_318 ),
    .I5(\dvi_rx1/dec_b/des_0/enable_274 ),
    .O(\dvi_rx1/dec_g/des_0/cal_data_sint_rstpot_1072 )
  );
  LUT6 #(
    .INIT ( 64'h55CC044455DD0444 ))
  \dvi_rx1/dec_r/des_0/cal_data_sint_rstpot  (
    .I0(\dvi_rx1/dec_r/des_0/state_FSM_FFd3_366 ),
    .I1(\dvi_rx1/dec_r/des_0/state_FSM_FFd4_365 ),
    .I2(\dvi_rx1/dec_r/des_0/busy_data_d_356 ),
    .I3(\dvi_rx1/dec_r/des_0/state_FSM_FFd2_367 ),
    .I4(\dvi_rx1/dec_r/des_0/cal_data_sint_359 ),
    .I5(\dvi_rx1/dec_b/des_0/enable_274 ),
    .O(\dvi_rx1/dec_r/des_0/cal_data_sint_rstpot_1077 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_rx1/dec_b/des_0/ce_data_rstpot  (
    .I0(rx_reset),
    .I1(\dvi_rx1/dec_b/des_0/ce_data_inta_273 ),
    .I2(\dvi_rx1/dec_b/des_0/ce_data_268 ),
    .O(\dvi_rx1/dec_b/des_0/ce_data_rstpot_1088 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_rx1/dec_g/des_0/ce_data_rstpot  (
    .I0(rx_reset),
    .I1(\dvi_rx1/dec_g/des_0/ce_data_inta_317 ),
    .I2(\dvi_rx1/dec_g/des_0/ce_data_312 ),
    .O(\dvi_rx1/dec_g/des_0/ce_data_rstpot_1090 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_rx1/dec_r/des_0/ce_data_rstpot  (
    .I0(rx_reset),
    .I1(\dvi_rx1/dec_r/des_0/ce_data_inta_358 ),
    .I2(\dvi_rx1/dec_r/des_0/ce_data_353 ),
    .O(\dvi_rx1/dec_r/des_0/ce_data_rstpot_1092 )
  );
  INV   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_lut<0>_INV_0  (
    .I(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [0]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_lut [0])
  );
  INV   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_lut<0>_INV_0  (
    .I(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [0]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_lut [0])
  );
  INV   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_lut<0>_INV_0  (
    .I(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [0]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_lut [0])
  );
  INV   rstbtn_n_INV_31_o1_INV_0 (
    .I(rstbtn_n_IBUF_8),
    .O(rstbtn_n_INV_31_o)
  );
  INV   \dvi_rx1/reset1_INV_0  (
    .I(\dvi_rx1/bufpll_lock ),
    .O(rx_reset)
  );
  INV   \dvi_rx1/dec_r/toggle_INV_3_o1_INV_0  (
    .I(\dvi_rx1/dec_r/toggle_207 ),
    .O(\dvi_rx1/dec_r/toggle_INV_3_o )
  );
  INV   \dvi_rx1/dec_b/des_0/counter<8>_inv1_INV_0  (
    .I(\dvi_rx1/dec_b/des_0/counter [8]),
    .O(\dvi_rx1/dec_b/des_0/counter<8>_inv )
  );
  INV   \dvi_rx1/dec_b/des_0/reset_inv1_INV_0  (
    .I(rx_reset),
    .O(\dvi_rx1/dec_b/des_0/reset_inv )
  );
  INV   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_counter_xor<0>11_INV_0  (
    .I(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [0]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result<0>1 )
  );
  INV   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_counter_xor<0>11_INV_0  (
    .I(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [0]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result<0>1 )
  );
  INV   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_counter_xor<0>11_INV_0  (
    .I(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [0]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result<0>1 )
  );
  INV   \dvi_rx1/dec_b/cbnd/Mcount_ra_xor<0>11_INV_0  (
    .I(\dvi_rx1/dec_b/cbnd/ra [0]),
    .O(\dvi_rx1/dec_b/cbnd/Result [0])
  );
  INV   \dvi_rx1/dec_b/cbnd/Mcount_wa_xor<0>11_INV_0  (
    .I(\dvi_rx1/dec_b/cbnd/wa [0]),
    .O(\dvi_rx1/dec_b/cbnd/Result<0>1 )
  );
  INV   \dvi_rx1/dec_b/cbnd/rawdata_vld_rawdata_vld_q_AND_23_o_norst1_INV_0  (
    .I(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_660 ),
    .O(\dvi_rx1/dec_b/cbnd/rawdata_vld_rawdata_vld_q_AND_23_o_norst )
  );
  INV   \dvi_rx1/dec_g/cbnd/Mcount_ra_xor<0>11_INV_0  (
    .I(\dvi_rx1/dec_g/cbnd/ra [0]),
    .O(\dvi_rx1/dec_g/cbnd/Result [0])
  );
  INV   \dvi_rx1/dec_r/cbnd/Mcount_ra_xor<0>11_INV_0  (
    .I(\dvi_rx1/dec_r/cbnd/ra [0]),
    .O(\dvi_rx1/dec_r/cbnd/Result [0])
  );
  INV   \dvi_tx/toggle_inv1_INV_0  (
    .I(\dvi_tx/toggle_877 ),
    .O(\dvi_tx/toggle_inv )
  );
  INV   \dvi_tx/pixel2x/Mram_ra_d11_INV_0  (
    .I(\dvi_tx/pixel2x/ra [0]),
    .O(\dvi_tx/pixel2x/Mram_ra_d )
  );
  INV   \dvi_tx/pixel2x/Mram_wa_d11_INV_0  (
    .I(\dvi_tx/pixel2x/wa [0]),
    .O(\dvi_tx/pixel2x/Mram_wa_d )
  );
  INV   \dvi_tx/pixel2x/sync_INV_50_o1_INV_0  (
    .I(\dvi_tx/pixel2x/sync ),
    .O(\dvi_tx/pixel2x/sync_INV_50_o )
  );
  PLL_BASE #(
    .BANDWIDTH ( "OPTIMIZED" ),
    .CLK_FEEDBACK ( "CLKFBOUT" ),
    .COMPENSATION ( "SOURCE_SYNCHRONOUS" ),
    .RESET_ON_LOSS_OF_LOCK ( "FALSE" ),
    .CLKFBOUT_MULT ( 10 ),
    .CLKOUT0_DIVIDE ( 1 ),
    .CLKOUT1_DIVIDE ( 10 ),
    .CLKOUT2_DIVIDE ( 5 ),
    .CLKOUT3_DIVIDE ( 1 ),
    .CLKOUT4_DIVIDE ( 1 ),
    .CLKOUT5_DIVIDE ( 1 ),
    .DIVCLK_DIVIDE ( 1 ),
    .CLKFBOUT_PHASE ( 0.000000 ),
    .CLKIN_PERIOD ( 10 ),
    .CLKOUT0_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT0_PHASE ( 0.000000 ),
    .CLKOUT1_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT1_PHASE ( 0.000000 ),
    .CLKOUT2_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT2_PHASE ( 0.000000 ),
    .CLKOUT3_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT3_PHASE ( 0.000000 ),
    .CLKOUT4_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT4_PHASE ( 0.000000 ),
    .CLKOUT5_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT5_PHASE ( 0.000000 ),
    .REF_JITTER ( 0.100000 ))
  PLL_OSERDES_0 (
    .CLKIN(tx_pclk),
    .CLKFBIN(tx_clkfbin),
    .CLKOUT0(tx_pllclk0),
    .CLKFBOUT(tx_clkfbout),
    .CLKOUT2(tx_pllclk2),
    .RST(rx_reset),
    .LOCKED(tx_plllckd),
    .CLKOUT3(NLW_PLL_OSERDES_0_CLKOUT3_UNCONNECTED),
    .CLKOUT1(NLW_PLL_OSERDES_0_CLKOUT1_UNCONNECTED),
    .CLKOUT4(NLW_PLL_OSERDES_0_CLKOUT4_UNCONNECTED),
    .CLKOUT5(NLW_PLL_OSERDES_0_CLKOUT5_UNCONNECTED)
  );
  PLL_BASE #(
    .BANDWIDTH ( "OPTIMIZED" ),
    .CLK_FEEDBACK ( "CLKFBOUT" ),
    .COMPENSATION ( "INTERNAL" ),
    .RESET_ON_LOSS_OF_LOCK ( "FALSE" ),
    .CLKFBOUT_MULT ( 10 ),
    .CLKOUT0_DIVIDE ( 1 ),
    .CLKOUT1_DIVIDE ( 10 ),
    .CLKOUT2_DIVIDE ( 5 ),
    .CLKOUT3_DIVIDE ( 1 ),
    .CLKOUT4_DIVIDE ( 1 ),
    .CLKOUT5_DIVIDE ( 1 ),
    .DIVCLK_DIVIDE ( 1 ),
    .CLKFBOUT_PHASE ( 0.000000 ),
    .CLKIN_PERIOD ( 10 ),
    .CLKOUT0_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT0_PHASE ( 0.000000 ),
    .CLKOUT1_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT1_PHASE ( 0.000000 ),
    .CLKOUT2_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT2_PHASE ( 0.000000 ),
    .CLKOUT3_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT3_PHASE ( 0.000000 ),
    .CLKOUT4_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT4_PHASE ( 0.000000 ),
    .CLKOUT5_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT5_PHASE ( 0.000000 ),
    .REF_JITTER ( 0.100000 ))
  \dvi_rx1/PLL_ISERDES  (
    .CLKIN(\dvi_rx1/rxclk ),
    .CLKOUT1(rx_pllclk1),
    .CLKOUT0(\dvi_rx1/pllclk0 ),
    .CLKOUT2(\dvi_rx1/pllclk2 ),
    .RST(rstbtn_n_INV_31_o),
    .LOCKED(\dvi_rx1/pll_lckd ),
    .CLKFBOUT(\dvi_rx1/clkfbout ),
    .CLKFBIN(\dvi_rx1/clkfbout ),
    .CLKOUT3(\NLW_dvi_rx1/PLL_ISERDES_CLKOUT3_UNCONNECTED ),
    .CLKOUT4(\NLW_dvi_rx1/PLL_ISERDES_CLKOUT4_UNCONNECTED ),
    .CLKOUT5(\NLW_dvi_rx1/PLL_ISERDES_CLKOUT5_UNCONNECTED )
  );
  multiply   \conversion/mult3_3  (
    .clk(clk),
    .a({\dvi_tx/blue [2], \dvi_tx/blue [2], \dvi_tx/blue [2], \dvi_tx/blue [2], clk, \dvi_tx/blue [2], clk, \dvi_tx/blue [2], \dvi_tx/blue [2], clk, 
clk, \dvi_tx/blue [2], clk, \dvi_tx/blue [2], \dvi_tx/blue [2], \dvi_tx/blue [2], \dvi_tx/blue [2], clk}),
    .b({clk, clk, clk, clk, clk, clk, clk, clk, clk, clk, \dvi_rx1/dec_b/dout [7], \dvi_rx1/dec_b/dout [6], \dvi_rx1/dec_b/dout [5], 
\dvi_rx1/dec_b/dout [4], \dvi_rx1/dec_b/dout [3], \dvi_rx1/dec_b/dout [2], \dvi_rx1/dec_b/dout [1], \dvi_rx1/dec_b/dout [0]}),
    .p({\NLW_conversion/mult3_3_p<35>_UNCONNECTED , \NLW_conversion/mult3_3_p<34>_UNCONNECTED , \NLW_conversion/mult3_3_p<33>_UNCONNECTED , 
\NLW_conversion/mult3_3_p<32>_UNCONNECTED , \NLW_conversion/mult3_3_p<31>_UNCONNECTED , \NLW_conversion/mult3_3_p<30>_UNCONNECTED , 
\NLW_conversion/mult3_3_p<29>_UNCONNECTED , \NLW_conversion/mult3_3_p<28>_UNCONNECTED , \NLW_conversion/mult3_3_p<27>_UNCONNECTED , 
\NLW_conversion/mult3_3_p<26>_UNCONNECTED , \conversion/mul3_3 [25], \conversion/mul3_3 [24], \conversion/mul3_3 [23], \conversion/mul3_3 [22], 
\conversion/mul3_3 [21], \conversion/mul3_3 [20], \conversion/mul3_3 [19], \conversion/mul3_3 [18], \conversion/mul3_3 [17], 
\NLW_conversion/mult3_3_p<16>_UNCONNECTED , \NLW_conversion/mult3_3_p<15>_UNCONNECTED , \NLW_conversion/mult3_3_p<14>_UNCONNECTED , 
\NLW_conversion/mult3_3_p<13>_UNCONNECTED , \NLW_conversion/mult3_3_p<12>_UNCONNECTED , \NLW_conversion/mult3_3_p<11>_UNCONNECTED , 
\NLW_conversion/mult3_3_p<10>_UNCONNECTED , \NLW_conversion/mult3_3_p<9>_UNCONNECTED , \NLW_conversion/mult3_3_p<8>_UNCONNECTED , 
\NLW_conversion/mult3_3_p<7>_UNCONNECTED , \NLW_conversion/mult3_3_p<6>_UNCONNECTED , \NLW_conversion/mult3_3_p<5>_UNCONNECTED , 
\NLW_conversion/mult3_3_p<4>_UNCONNECTED , \NLW_conversion/mult3_3_p<3>_UNCONNECTED , \NLW_conversion/mult3_3_p<2>_UNCONNECTED , 
\NLW_conversion/mult3_3_p<1>_UNCONNECTED , \NLW_conversion/mult3_3_p<0>_UNCONNECTED })
  );
  multiply   \conversion/mult2_3  (
    .clk(clk),
    .a({clk, \dvi_tx/blue [2], clk, clk, clk, clk, clk, clk, clk, clk, clk, clk, clk, clk, clk, clk, clk, clk}),
    .b({clk, clk, clk, clk, clk, clk, clk, clk, clk, clk, \dvi_rx1/dec_b/dout [7], \dvi_rx1/dec_b/dout [6], \dvi_rx1/dec_b/dout [5], 
\dvi_rx1/dec_b/dout [4], \dvi_rx1/dec_b/dout [3], \dvi_rx1/dec_b/dout [2], \dvi_rx1/dec_b/dout [1], \dvi_rx1/dec_b/dout [0]}),
    .p({\NLW_conversion/mult2_3_p<35>_UNCONNECTED , \NLW_conversion/mult2_3_p<34>_UNCONNECTED , \NLW_conversion/mult2_3_p<33>_UNCONNECTED , 
\NLW_conversion/mult2_3_p<32>_UNCONNECTED , \NLW_conversion/mult2_3_p<31>_UNCONNECTED , \NLW_conversion/mult2_3_p<30>_UNCONNECTED , 
\NLW_conversion/mult2_3_p<29>_UNCONNECTED , \NLW_conversion/mult2_3_p<28>_UNCONNECTED , \NLW_conversion/mult2_3_p<27>_UNCONNECTED , 
\NLW_conversion/mult2_3_p<26>_UNCONNECTED , \conversion/mul2_3 [25], \conversion/mul2_3 [24], \conversion/mul2_3 [23], \conversion/mul2_3 [22], 
\conversion/mul2_3 [21], \conversion/mul2_3 [20], \conversion/mul2_3 [19], \conversion/mul2_3 [18], \conversion/mul2_3 [17], 
\NLW_conversion/mult2_3_p<16>_UNCONNECTED , \NLW_conversion/mult2_3_p<15>_UNCONNECTED , \NLW_conversion/mult2_3_p<14>_UNCONNECTED , 
\NLW_conversion/mult2_3_p<13>_UNCONNECTED , \NLW_conversion/mult2_3_p<12>_UNCONNECTED , \NLW_conversion/mult2_3_p<11>_UNCONNECTED , 
\NLW_conversion/mult2_3_p<10>_UNCONNECTED , \NLW_conversion/mult2_3_p<9>_UNCONNECTED , \NLW_conversion/mult2_3_p<8>_UNCONNECTED , 
\NLW_conversion/mult2_3_p<7>_UNCONNECTED , \NLW_conversion/mult2_3_p<6>_UNCONNECTED , \NLW_conversion/mult2_3_p<5>_UNCONNECTED , 
\NLW_conversion/mult2_3_p<4>_UNCONNECTED , \NLW_conversion/mult2_3_p<3>_UNCONNECTED , \NLW_conversion/mult2_3_p<2>_UNCONNECTED , 
\NLW_conversion/mult2_3_p<1>_UNCONNECTED , \NLW_conversion/mult2_3_p<0>_UNCONNECTED })
  );
  multiply   \conversion/mult1_3  (
    .clk(clk),
    .a({clk, clk, clk, clk, \dvi_tx/blue [2], \dvi_tx/blue [2], \dvi_tx/blue [2], clk, \dvi_tx/blue [2], clk, clk, \dvi_tx/blue [2], clk, 
\dvi_tx/blue [2], \dvi_tx/blue [2], \dvi_tx/blue [2], \dvi_tx/blue [2], clk}),
    .b({clk, clk, clk, clk, clk, clk, clk, clk, clk, clk, \dvi_rx1/dec_b/dout [7], \dvi_rx1/dec_b/dout [6], \dvi_rx1/dec_b/dout [5], 
\dvi_rx1/dec_b/dout [4], \dvi_rx1/dec_b/dout [3], \dvi_rx1/dec_b/dout [2], \dvi_rx1/dec_b/dout [1], \dvi_rx1/dec_b/dout [0]}),
    .p({\NLW_conversion/mult1_3_p<35>_UNCONNECTED , \NLW_conversion/mult1_3_p<34>_UNCONNECTED , \NLW_conversion/mult1_3_p<33>_UNCONNECTED , 
\NLW_conversion/mult1_3_p<32>_UNCONNECTED , \NLW_conversion/mult1_3_p<31>_UNCONNECTED , \NLW_conversion/mult1_3_p<30>_UNCONNECTED , 
\NLW_conversion/mult1_3_p<29>_UNCONNECTED , \NLW_conversion/mult1_3_p<28>_UNCONNECTED , \NLW_conversion/mult1_3_p<27>_UNCONNECTED , 
\NLW_conversion/mult1_3_p<26>_UNCONNECTED , \conversion/mul1_3 [25], \conversion/mul1_3 [24], \conversion/mul1_3 [23], \conversion/mul1_3 [22], 
\conversion/mul1_3 [21], \conversion/mul1_3 [20], \conversion/mul1_3 [19], \conversion/mul1_3 [18], \conversion/mul1_3 [17], 
\NLW_conversion/mult1_3_p<16>_UNCONNECTED , \NLW_conversion/mult1_3_p<15>_UNCONNECTED , \NLW_conversion/mult1_3_p<14>_UNCONNECTED , 
\NLW_conversion/mult1_3_p<13>_UNCONNECTED , \NLW_conversion/mult1_3_p<12>_UNCONNECTED , \NLW_conversion/mult1_3_p<11>_UNCONNECTED , 
\NLW_conversion/mult1_3_p<10>_UNCONNECTED , \NLW_conversion/mult1_3_p<9>_UNCONNECTED , \NLW_conversion/mult1_3_p<8>_UNCONNECTED , 
\NLW_conversion/mult1_3_p<7>_UNCONNECTED , \NLW_conversion/mult1_3_p<6>_UNCONNECTED , \NLW_conversion/mult1_3_p<5>_UNCONNECTED , 
\NLW_conversion/mult1_3_p<4>_UNCONNECTED , \NLW_conversion/mult1_3_p<3>_UNCONNECTED , \NLW_conversion/mult1_3_p<2>_UNCONNECTED , 
\NLW_conversion/mult1_3_p<1>_UNCONNECTED , \NLW_conversion/mult1_3_p<0>_UNCONNECTED })
  );
  multiply   \conversion/mult3_2  (
    .clk(clk),
    .a({\dvi_tx/blue [2], \dvi_tx/blue [2], clk, clk, \dvi_tx/blue [2], clk, \dvi_tx/blue [2], clk, clk, \dvi_tx/blue [2], \dvi_tx/blue [2], clk, 
\dvi_tx/blue [2], clk, clk, clk, clk, \dvi_tx/blue [2]}),
    .b({clk, clk, clk, clk, clk, clk, clk, clk, clk, clk, \dvi_rx1/dec_g/dout [7], \dvi_rx1/dec_g/dout [6], \dvi_rx1/dec_g/dout [5], 
\dvi_rx1/dec_g/dout [4], \dvi_rx1/dec_g/dout [3], \dvi_rx1/dec_g/dout [2], \dvi_rx1/dec_g/dout [1], \dvi_rx1/dec_g/dout [0]}),
    .p({\NLW_conversion/mult3_2_p<35>_UNCONNECTED , \NLW_conversion/mult3_2_p<34>_UNCONNECTED , \NLW_conversion/mult3_2_p<33>_UNCONNECTED , 
\NLW_conversion/mult3_2_p<32>_UNCONNECTED , \NLW_conversion/mult3_2_p<31>_UNCONNECTED , \NLW_conversion/mult3_2_p<30>_UNCONNECTED , 
\NLW_conversion/mult3_2_p<29>_UNCONNECTED , \NLW_conversion/mult3_2_p<28>_UNCONNECTED , \NLW_conversion/mult3_2_p<27>_UNCONNECTED , 
\NLW_conversion/mult3_2_p<26>_UNCONNECTED , \conversion/mul3_2 [25], \conversion/mul3_2 [24], \conversion/mul3_2 [23], \conversion/mul3_2 [22], 
\conversion/mul3_2 [21], \conversion/mul3_2 [20], \conversion/mul3_2 [19], \conversion/mul3_2 [18], \conversion/mul3_2 [17], 
\NLW_conversion/mult3_2_p<16>_UNCONNECTED , \NLW_conversion/mult3_2_p<15>_UNCONNECTED , \NLW_conversion/mult3_2_p<14>_UNCONNECTED , 
\NLW_conversion/mult3_2_p<13>_UNCONNECTED , \NLW_conversion/mult3_2_p<12>_UNCONNECTED , \NLW_conversion/mult3_2_p<11>_UNCONNECTED , 
\NLW_conversion/mult3_2_p<10>_UNCONNECTED , \NLW_conversion/mult3_2_p<9>_UNCONNECTED , \NLW_conversion/mult3_2_p<8>_UNCONNECTED , 
\NLW_conversion/mult3_2_p<7>_UNCONNECTED , \NLW_conversion/mult3_2_p<6>_UNCONNECTED , \NLW_conversion/mult3_2_p<5>_UNCONNECTED , 
\NLW_conversion/mult3_2_p<4>_UNCONNECTED , \NLW_conversion/mult3_2_p<3>_UNCONNECTED , \NLW_conversion/mult3_2_p<2>_UNCONNECTED , 
\NLW_conversion/mult3_2_p<1>_UNCONNECTED , \NLW_conversion/mult3_2_p<0>_UNCONNECTED })
  );
  multiply   \conversion/mult2_2  (
    .clk(clk),
    .a({\dvi_tx/blue [2], \dvi_tx/blue [2], clk, \dvi_tx/blue [2], clk, \dvi_tx/blue [2], clk, \dvi_tx/blue [2], \dvi_tx/blue [2], clk, clk, 
\dvi_tx/blue [2], \dvi_tx/blue [2], clk, clk, \dvi_tx/blue [2], clk, clk}),
    .b({clk, clk, clk, clk, clk, clk, clk, clk, clk, clk, \dvi_rx1/dec_g/dout [7], \dvi_rx1/dec_g/dout [6], \dvi_rx1/dec_g/dout [5], 
\dvi_rx1/dec_g/dout [4], \dvi_rx1/dec_g/dout [3], \dvi_rx1/dec_g/dout [2], \dvi_rx1/dec_g/dout [1], \dvi_rx1/dec_g/dout [0]}),
    .p({\NLW_conversion/mult2_2_p<35>_UNCONNECTED , \NLW_conversion/mult2_2_p<34>_UNCONNECTED , \NLW_conversion/mult2_2_p<33>_UNCONNECTED , 
\NLW_conversion/mult2_2_p<32>_UNCONNECTED , \NLW_conversion/mult2_2_p<31>_UNCONNECTED , \NLW_conversion/mult2_2_p<30>_UNCONNECTED , 
\NLW_conversion/mult2_2_p<29>_UNCONNECTED , \NLW_conversion/mult2_2_p<28>_UNCONNECTED , \NLW_conversion/mult2_2_p<27>_UNCONNECTED , 
\NLW_conversion/mult2_2_p<26>_UNCONNECTED , \conversion/mul2_2 [25], \conversion/mul2_2 [24], \conversion/mul2_2 [23], \conversion/mul2_2 [22], 
\conversion/mul2_2 [21], \conversion/mul2_2 [20], \conversion/mul2_2 [19], \conversion/mul2_2 [18], \conversion/mul2_2 [17], 
\NLW_conversion/mult2_2_p<16>_UNCONNECTED , \NLW_conversion/mult2_2_p<15>_UNCONNECTED , \NLW_conversion/mult2_2_p<14>_UNCONNECTED , 
\NLW_conversion/mult2_2_p<13>_UNCONNECTED , \NLW_conversion/mult2_2_p<12>_UNCONNECTED , \NLW_conversion/mult2_2_p<11>_UNCONNECTED , 
\NLW_conversion/mult2_2_p<10>_UNCONNECTED , \NLW_conversion/mult2_2_p<9>_UNCONNECTED , \NLW_conversion/mult2_2_p<8>_UNCONNECTED , 
\NLW_conversion/mult2_2_p<7>_UNCONNECTED , \NLW_conversion/mult2_2_p<6>_UNCONNECTED , \NLW_conversion/mult2_2_p<5>_UNCONNECTED , 
\NLW_conversion/mult2_2_p<4>_UNCONNECTED , \NLW_conversion/mult2_2_p<3>_UNCONNECTED , \NLW_conversion/mult2_2_p<2>_UNCONNECTED , 
\NLW_conversion/mult2_2_p<1>_UNCONNECTED , \NLW_conversion/mult2_2_p<0>_UNCONNECTED })
  );
  multiply   \conversion/mult1_2  (
    .clk(clk),
    .a({clk, \dvi_tx/blue [2], clk, clk, \dvi_tx/blue [2], clk, \dvi_tx/blue [2], \dvi_tx/blue [2], clk, clk, \dvi_tx/blue [2], clk, clk, clk, 
\dvi_tx/blue [2], clk, \dvi_tx/blue [2], \dvi_tx/blue [2]}),
    .b({clk, clk, clk, clk, clk, clk, clk, clk, clk, clk, \dvi_rx1/dec_g/dout [7], \dvi_rx1/dec_g/dout [6], \dvi_rx1/dec_g/dout [5], 
\dvi_rx1/dec_g/dout [4], \dvi_rx1/dec_g/dout [3], \dvi_rx1/dec_g/dout [2], \dvi_rx1/dec_g/dout [1], \dvi_rx1/dec_g/dout [0]}),
    .p({\NLW_conversion/mult1_2_p<35>_UNCONNECTED , \NLW_conversion/mult1_2_p<34>_UNCONNECTED , \NLW_conversion/mult1_2_p<33>_UNCONNECTED , 
\NLW_conversion/mult1_2_p<32>_UNCONNECTED , \NLW_conversion/mult1_2_p<31>_UNCONNECTED , \NLW_conversion/mult1_2_p<30>_UNCONNECTED , 
\NLW_conversion/mult1_2_p<29>_UNCONNECTED , \NLW_conversion/mult1_2_p<28>_UNCONNECTED , \NLW_conversion/mult1_2_p<27>_UNCONNECTED , 
\NLW_conversion/mult1_2_p<26>_UNCONNECTED , \conversion/mul1_2 [25], \conversion/mul1_2 [24], \conversion/mul1_2 [23], \conversion/mul1_2 [22], 
\conversion/mul1_2 [21], \conversion/mul1_2 [20], \conversion/mul1_2 [19], \conversion/mul1_2 [18], \conversion/mul1_2 [17], 
\NLW_conversion/mult1_2_p<16>_UNCONNECTED , \NLW_conversion/mult1_2_p<15>_UNCONNECTED , \NLW_conversion/mult1_2_p<14>_UNCONNECTED , 
\NLW_conversion/mult1_2_p<13>_UNCONNECTED , \NLW_conversion/mult1_2_p<12>_UNCONNECTED , \NLW_conversion/mult1_2_p<11>_UNCONNECTED , 
\NLW_conversion/mult1_2_p<10>_UNCONNECTED , \NLW_conversion/mult1_2_p<9>_UNCONNECTED , \NLW_conversion/mult1_2_p<8>_UNCONNECTED , 
\NLW_conversion/mult1_2_p<7>_UNCONNECTED , \NLW_conversion/mult1_2_p<6>_UNCONNECTED , \NLW_conversion/mult1_2_p<5>_UNCONNECTED , 
\NLW_conversion/mult1_2_p<4>_UNCONNECTED , \NLW_conversion/mult1_2_p<3>_UNCONNECTED , \NLW_conversion/mult1_2_p<2>_UNCONNECTED , 
\NLW_conversion/mult1_2_p<1>_UNCONNECTED , \NLW_conversion/mult1_2_p<0>_UNCONNECTED })
  );
  multiply   \conversion/mult3_1  (
    .clk(clk),
    .a({clk, \dvi_tx/blue [2], clk, clk, clk, clk, clk, clk, clk, clk, clk, clk, clk, clk, clk, clk, clk, clk}),
    .b({clk, clk, clk, clk, clk, clk, clk, clk, clk, clk, \dvi_rx1/dec_r/dout [7], \dvi_rx1/dec_r/dout [6], \dvi_rx1/dec_r/dout [5], 
\dvi_rx1/dec_r/dout [4], \dvi_rx1/dec_r/dout [3], \dvi_rx1/dec_r/dout [2], \dvi_rx1/dec_r/dout [1], \dvi_rx1/dec_r/dout [0]}),
    .p({\NLW_conversion/mult3_1_p<35>_UNCONNECTED , \NLW_conversion/mult3_1_p<34>_UNCONNECTED , \NLW_conversion/mult3_1_p<33>_UNCONNECTED , 
\NLW_conversion/mult3_1_p<32>_UNCONNECTED , \NLW_conversion/mult3_1_p<31>_UNCONNECTED , \NLW_conversion/mult3_1_p<30>_UNCONNECTED , 
\NLW_conversion/mult3_1_p<29>_UNCONNECTED , \NLW_conversion/mult3_1_p<28>_UNCONNECTED , \NLW_conversion/mult3_1_p<27>_UNCONNECTED , 
\NLW_conversion/mult3_1_p<26>_UNCONNECTED , \conversion/mul3_1 [25], \conversion/mul3_1 [24], \conversion/mul3_1 [23], \conversion/mul3_1 [22], 
\conversion/mul3_1 [21], \conversion/mul3_1 [20], \conversion/mul3_1 [19], \conversion/mul3_1 [18], \conversion/mul3_1 [17], 
\NLW_conversion/mult3_1_p<16>_UNCONNECTED , \NLW_conversion/mult3_1_p<15>_UNCONNECTED , \NLW_conversion/mult3_1_p<14>_UNCONNECTED , 
\NLW_conversion/mult3_1_p<13>_UNCONNECTED , \NLW_conversion/mult3_1_p<12>_UNCONNECTED , \NLW_conversion/mult3_1_p<11>_UNCONNECTED , 
\NLW_conversion/mult3_1_p<10>_UNCONNECTED , \NLW_conversion/mult3_1_p<9>_UNCONNECTED , \NLW_conversion/mult3_1_p<8>_UNCONNECTED , 
\NLW_conversion/mult3_1_p<7>_UNCONNECTED , \NLW_conversion/mult3_1_p<6>_UNCONNECTED , \NLW_conversion/mult3_1_p<5>_UNCONNECTED , 
\NLW_conversion/mult3_1_p<4>_UNCONNECTED , \NLW_conversion/mult3_1_p<3>_UNCONNECTED , \NLW_conversion/mult3_1_p<2>_UNCONNECTED , 
\NLW_conversion/mult3_1_p<1>_UNCONNECTED , \NLW_conversion/mult3_1_p<0>_UNCONNECTED })
  );
  multiply   \conversion/mult2_1  (
    .clk(clk),
    .a({\dvi_tx/blue [2], \dvi_tx/blue [2], \dvi_tx/blue [2], clk, \dvi_tx/blue [2], clk, \dvi_tx/blue [2], clk, clk, \dvi_tx/blue [2], 
\dvi_tx/blue [2], clk, clk, \dvi_tx/blue [2], \dvi_tx/blue [2], clk, \dvi_tx/blue [2], \dvi_tx/blue [2]}),
    .b({clk, clk, clk, clk, clk, clk, clk, clk, clk, clk, \dvi_rx1/dec_r/dout [7], \dvi_rx1/dec_r/dout [6], \dvi_rx1/dec_r/dout [5], 
\dvi_rx1/dec_r/dout [4], \dvi_rx1/dec_r/dout [3], \dvi_rx1/dec_r/dout [2], \dvi_rx1/dec_r/dout [1], \dvi_rx1/dec_r/dout [0]}),
    .p({\NLW_conversion/mult2_1_p<35>_UNCONNECTED , \NLW_conversion/mult2_1_p<34>_UNCONNECTED , \NLW_conversion/mult2_1_p<33>_UNCONNECTED , 
\NLW_conversion/mult2_1_p<32>_UNCONNECTED , \NLW_conversion/mult2_1_p<31>_UNCONNECTED , \NLW_conversion/mult2_1_p<30>_UNCONNECTED , 
\NLW_conversion/mult2_1_p<29>_UNCONNECTED , \NLW_conversion/mult2_1_p<28>_UNCONNECTED , \NLW_conversion/mult2_1_p<27>_UNCONNECTED , 
\NLW_conversion/mult2_1_p<26>_UNCONNECTED , \conversion/mul2_1 [25], \conversion/mul2_1 [24], \conversion/mul2_1 [23], \conversion/mul2_1 [22], 
\conversion/mul2_1 [21], \conversion/mul2_1 [20], \conversion/mul2_1 [19], \conversion/mul2_1 [18], \conversion/mul2_1 [17], 
\NLW_conversion/mult2_1_p<16>_UNCONNECTED , \NLW_conversion/mult2_1_p<15>_UNCONNECTED , \NLW_conversion/mult2_1_p<14>_UNCONNECTED , 
\NLW_conversion/mult2_1_p<13>_UNCONNECTED , \NLW_conversion/mult2_1_p<12>_UNCONNECTED , \NLW_conversion/mult2_1_p<11>_UNCONNECTED , 
\NLW_conversion/mult2_1_p<10>_UNCONNECTED , \NLW_conversion/mult2_1_p<9>_UNCONNECTED , \NLW_conversion/mult2_1_p<8>_UNCONNECTED , 
\NLW_conversion/mult2_1_p<7>_UNCONNECTED , \NLW_conversion/mult2_1_p<6>_UNCONNECTED , \NLW_conversion/mult2_1_p<5>_UNCONNECTED , 
\NLW_conversion/mult2_1_p<4>_UNCONNECTED , \NLW_conversion/mult2_1_p<3>_UNCONNECTED , \NLW_conversion/mult2_1_p<2>_UNCONNECTED , 
\NLW_conversion/mult2_1_p<1>_UNCONNECTED , \NLW_conversion/mult2_1_p<0>_UNCONNECTED })
  );
  multiply   \conversion/mult1_1  (
    .clk(clk),
    .a({clk, clk, \dvi_tx/blue [2], clk, clk, \dvi_tx/blue [2], \dvi_tx/blue [2], clk, clk, \dvi_tx/blue [2], clk, clk, clk, \dvi_tx/blue [2], clk, 
\dvi_tx/blue [2], \dvi_tx/blue [2], clk}),
    .b({clk, clk, clk, clk, clk, clk, clk, clk, clk, clk, \dvi_rx1/dec_r/dout [7], \dvi_rx1/dec_r/dout [6], \dvi_rx1/dec_r/dout [5], 
\dvi_rx1/dec_r/dout [4], \dvi_rx1/dec_r/dout [3], \dvi_rx1/dec_r/dout [2], \dvi_rx1/dec_r/dout [1], \dvi_rx1/dec_r/dout [0]}),
    .p({\NLW_conversion/mult1_1_p<35>_UNCONNECTED , \NLW_conversion/mult1_1_p<34>_UNCONNECTED , \NLW_conversion/mult1_1_p<33>_UNCONNECTED , 
\NLW_conversion/mult1_1_p<32>_UNCONNECTED , \NLW_conversion/mult1_1_p<31>_UNCONNECTED , \NLW_conversion/mult1_1_p<30>_UNCONNECTED , 
\NLW_conversion/mult1_1_p<29>_UNCONNECTED , \NLW_conversion/mult1_1_p<28>_UNCONNECTED , \NLW_conversion/mult1_1_p<27>_UNCONNECTED , 
\NLW_conversion/mult1_1_p<26>_UNCONNECTED , \conversion/mul1_1 [25], \conversion/mul1_1 [24], \conversion/mul1_1 [23], \conversion/mul1_1 [22], 
\conversion/mul1_1 [21], \conversion/mul1_1 [20], \conversion/mul1_1 [19], \conversion/mul1_1 [18], \conversion/mul1_1 [17], 
\NLW_conversion/mult1_1_p<16>_UNCONNECTED , \NLW_conversion/mult1_1_p<15>_UNCONNECTED , \NLW_conversion/mult1_1_p<14>_UNCONNECTED , 
\NLW_conversion/mult1_1_p<13>_UNCONNECTED , \NLW_conversion/mult1_1_p<12>_UNCONNECTED , \NLW_conversion/mult1_1_p<11>_UNCONNECTED , 
\NLW_conversion/mult1_1_p<10>_UNCONNECTED , \NLW_conversion/mult1_1_p<9>_UNCONNECTED , \NLW_conversion/mult1_1_p<8>_UNCONNECTED , 
\NLW_conversion/mult1_1_p<7>_UNCONNECTED , \NLW_conversion/mult1_1_p<6>_UNCONNECTED , \NLW_conversion/mult1_1_p<5>_UNCONNECTED , 
\NLW_conversion/mult1_1_p<4>_UNCONNECTED , \NLW_conversion/mult1_1_p<3>_UNCONNECTED , \NLW_conversion/mult1_1_p<2>_UNCONNECTED , 
\NLW_conversion/mult1_1_p<1>_UNCONNECTED , \NLW_conversion/mult1_1_p<0>_UNCONNECTED })
  );
  sum   \conversion/summ3_3  (
    .clk(clk),
    .ce(\dvi_tx/blue [2]),
    .a({\conversion/sum3_1 [8], \conversion/sum3_1 [7], \conversion/sum3_1 [6], \conversion/sum3_1 [5], \conversion/sum3_1 [4], \conversion/sum3_1 [3]
, \conversion/sum3_1 [2], \conversion/sum3_1 [1], \conversion/sum3_1 [0]}),
    .b({\conversion/sum3_2 [8], \conversion/sum3_2 [7], \conversion/sum3_2 [6], \conversion/sum3_2 [5], \conversion/sum3_2 [4], \conversion/sum3_2 [3]
, \conversion/sum3_2 [2], \conversion/sum3_2 [1], \conversion/sum3_2 [0]}),
    .s({\NLW_conversion/summ3_3_s<8>_UNCONNECTED , \NLW_conversion/summ3_3_s<7>_UNCONNECTED , \NLW_conversion/summ3_3_s<6>_UNCONNECTED , 
\NLW_conversion/summ3_3_s<5>_UNCONNECTED , \NLW_conversion/summ3_3_s<4>_UNCONNECTED , \NLW_conversion/summ3_3_s<3>_UNCONNECTED , 
\NLW_conversion/summ3_3_s<2>_UNCONNECTED , \NLW_conversion/summ3_3_s<1>_UNCONNECTED , \NLW_conversion/summ3_3_s<0>_UNCONNECTED })
  );
  sum   \conversion/summ2_3  (
    .clk(clk),
    .ce(\dvi_tx/blue [2]),
    .a({\conversion/sum2_1 [8], \conversion/sum2_1 [7], \conversion/sum2_1 [6], \conversion/sum2_1 [5], \conversion/sum2_1 [4], \conversion/sum2_1 [3]
, \conversion/sum2_1 [2], \conversion/sum2_1 [1], \conversion/sum2_1 [0]}),
    .b({\conversion/sum2_2 [8], \conversion/sum2_2 [7], \conversion/sum2_2 [6], \conversion/sum2_2 [5], \conversion/sum2_2 [4], \conversion/sum2_2 [3]
, \conversion/sum2_2 [2], \conversion/sum2_2 [1], \conversion/sum2_2 [0]}),
    .s({\NLW_conversion/summ2_3_s<8>_UNCONNECTED , \NLW_conversion/summ2_3_s<7>_UNCONNECTED , \NLW_conversion/summ2_3_s<6>_UNCONNECTED , 
\NLW_conversion/summ2_3_s<5>_UNCONNECTED , \NLW_conversion/summ2_3_s<4>_UNCONNECTED , \NLW_conversion/summ2_3_s<3>_UNCONNECTED , 
\NLW_conversion/summ2_3_s<2>_UNCONNECTED , \NLW_conversion/summ2_3_s<1>_UNCONNECTED , \NLW_conversion/summ2_3_s<0>_UNCONNECTED })
  );
  sum   \conversion/summ1_3  (
    .clk(clk),
    .ce(\dvi_tx/blue [2]),
    .a({\conversion/sum1_1 [8], \conversion/sum1_1 [7], \conversion/sum1_1 [6], \conversion/sum1_1 [5], \conversion/sum1_1 [4], \conversion/sum1_1 [3]
, \conversion/sum1_1 [2], \conversion/sum1_1 [1], \conversion/sum1_1 [0]}),
    .b({\conversion/sum1_2 [8], \conversion/sum1_2 [7], \conversion/sum1_2 [6], \conversion/sum1_2 [5], \conversion/sum1_2 [4], \conversion/sum1_2 [3]
, \conversion/sum1_2 [2], \conversion/sum1_2 [1], \conversion/sum1_2 [0]}),
    .s({\NLW_conversion/summ1_3_s<8>_UNCONNECTED , \NLW_conversion/summ1_3_s<7>_UNCONNECTED , \NLW_conversion/summ1_3_s<6>_UNCONNECTED , 
\NLW_conversion/summ1_3_s<5>_UNCONNECTED , \NLW_conversion/summ1_3_s<4>_UNCONNECTED , \NLW_conversion/summ1_3_s<3>_UNCONNECTED , 
\NLW_conversion/summ1_3_s<2>_UNCONNECTED , \NLW_conversion/summ1_3_s<1>_UNCONNECTED , \NLW_conversion/summ1_3_s<0>_UNCONNECTED })
  );
  sum   \conversion/summ3_2  (
    .clk(clk),
    .ce(\dvi_tx/blue [2]),
    .a({\conversion/mul3_3 [25], \conversion/mul3_3 [24], \conversion/mul3_3 [23], \conversion/mul3_3 [22], \conversion/mul3_3 [21], 
\conversion/mul3_3 [20], \conversion/mul3_3 [19], \conversion/mul3_3 [18], \conversion/mul3_3 [17]}),
    .b({clk, \dvi_tx/blue [2], clk, clk, clk, clk, clk, clk, clk}),
    .s({\conversion/sum3_2 [8], \conversion/sum3_2 [7], \conversion/sum3_2 [6], \conversion/sum3_2 [5], \conversion/sum3_2 [4], \conversion/sum3_2 [3]
, \conversion/sum3_2 [2], \conversion/sum3_2 [1], \conversion/sum3_2 [0]})
  );
  sum   \conversion/summ2_2  (
    .clk(clk),
    .ce(\dvi_tx/blue [2]),
    .a({\conversion/mul2_3 [25], \conversion/mul2_3 [24], \conversion/mul2_3 [23], \conversion/mul2_3 [22], \conversion/mul2_3 [21], 
\conversion/mul2_3 [20], \conversion/mul2_3 [19], \conversion/mul2_3 [18], \conversion/mul2_3 [17]}),
    .b({clk, \dvi_tx/blue [2], clk, clk, clk, clk, clk, clk, clk}),
    .s({\conversion/sum2_2 [8], \conversion/sum2_2 [7], \conversion/sum2_2 [6], \conversion/sum2_2 [5], \conversion/sum2_2 [4], \conversion/sum2_2 [3]
, \conversion/sum2_2 [2], \conversion/sum2_2 [1], \conversion/sum2_2 [0]})
  );
  sum   \conversion/summ1_2  (
    .clk(clk),
    .ce(\dvi_tx/blue [2]),
    .a({\conversion/mul1_3 [25], \conversion/mul1_3 [24], \conversion/mul1_3 [23], \conversion/mul1_3 [22], \conversion/mul1_3 [21], 
\conversion/mul1_3 [20], \conversion/mul1_3 [19], \conversion/mul1_3 [18], \conversion/mul1_3 [17]}),
    .b({clk, clk, clk, clk, clk, clk, clk, clk, clk}),
    .s({\conversion/sum1_2 [8], \conversion/sum1_2 [7], \conversion/sum1_2 [6], \conversion/sum1_2 [5], \conversion/sum1_2 [4], \conversion/sum1_2 [3]
, \conversion/sum1_2 [2], \conversion/sum1_2 [1], \conversion/sum1_2 [0]})
  );
  sum   \conversion/summ3_1  (
    .clk(clk),
    .ce(\dvi_tx/blue [2]),
    .a({\conversion/mul3_1 [25], \conversion/mul3_1 [24], \conversion/mul3_1 [23], \conversion/mul3_1 [22], \conversion/mul3_1 [21], 
\conversion/mul3_1 [20], \conversion/mul3_1 [19], \conversion/mul3_1 [18], \conversion/mul3_1 [17]}),
    .b({\conversion/mul3_2 [25], \conversion/mul3_2 [24], \conversion/mul3_2 [23], \conversion/mul3_2 [22], \conversion/mul3_2 [21], 
\conversion/mul3_2 [20], \conversion/mul3_2 [19], \conversion/mul3_2 [18], \conversion/mul3_2 [17]}),
    .s({\conversion/sum3_1 [8], \conversion/sum3_1 [7], \conversion/sum3_1 [6], \conversion/sum3_1 [5], \conversion/sum3_1 [4], \conversion/sum3_1 [3]
, \conversion/sum3_1 [2], \conversion/sum3_1 [1], \conversion/sum3_1 [0]})
  );
  sum   \conversion/summ2_1  (
    .clk(clk),
    .ce(\dvi_tx/blue [2]),
    .a({\conversion/mul2_1 [25], \conversion/mul2_1 [24], \conversion/mul2_1 [23], \conversion/mul2_1 [22], \conversion/mul2_1 [21], 
\conversion/mul2_1 [20], \conversion/mul2_1 [19], \conversion/mul2_1 [18], \conversion/mul2_1 [17]}),
    .b({\conversion/mul2_2 [25], \conversion/mul2_2 [24], \conversion/mul2_2 [23], \conversion/mul2_2 [22], \conversion/mul2_2 [21], 
\conversion/mul2_2 [20], \conversion/mul2_2 [19], \conversion/mul2_2 [18], \conversion/mul2_2 [17]}),
    .s({\conversion/sum2_1 [8], \conversion/sum2_1 [7], \conversion/sum2_1 [6], \conversion/sum2_1 [5], \conversion/sum2_1 [4], \conversion/sum2_1 [3]
, \conversion/sum2_1 [2], \conversion/sum2_1 [1], \conversion/sum2_1 [0]})
  );
  sum   \conversion/summ1_1  (
    .clk(clk),
    .ce(\dvi_tx/blue [2]),
    .a({\conversion/mul1_1 [25], \conversion/mul1_1 [24], \conversion/mul1_1 [23], \conversion/mul1_1 [22], \conversion/mul1_1 [21], 
\conversion/mul1_1 [20], \conversion/mul1_1 [19], \conversion/mul1_1 [18], \conversion/mul1_1 [17]}),
    .b({\conversion/mul1_2 [25], \conversion/mul1_2 [24], \conversion/mul1_2 [23], \conversion/mul1_2 [22], \conversion/mul1_2 [21], 
\conversion/mul1_2 [20], \conversion/mul1_2 [19], \conversion/mul1_2 [18], \conversion/mul1_2 [17]}),
    .s({\conversion/sum1_1 [8], \conversion/sum1_1 [7], \conversion/sum1_1 [6], \conversion/sum1_1 [5], \conversion/sum1_1 [4], \conversion/sum1_1 [3]
, \conversion/sum1_1 [2], \conversion/sum1_1 [1], \conversion/sum1_1 [0]})
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
