////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.15xf
//  \   \         Application: netgen
//  /   /         Filename: lutram_512x9.v
// /___/   /\     Timestamp: Fri Apr 26 17:50:50 2013
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog /home/cc/cs150/sp13/class/cs150-bh/cs150/tests/hardware/blob_analysis/src/lutram_512x9/tmp/_cg/lutram_512x9.ngc /home/cc/cs150/sp13/class/cs150-bh/cs150/tests/hardware/blob_analysis/src/lutram_512x9/tmp/_cg/lutram_512x9.v 
// Device	: 5vfx100tff1136-1
// Input file	: /home/cc/cs150/sp13/class/cs150-bh/cs150/tests/hardware/blob_analysis/src/lutram_512x9/tmp/_cg/lutram_512x9.ngc
// Output file	: /home/cc/cs150/sp13/class/cs150-bh/cs150/tests/hardware/blob_analysis/src/lutram_512x9/tmp/_cg/lutram_512x9.v
// # of Modules	: 1
// Design Name	: lutram_512x9
// Xilinx        : /opt/Xilinx/14.1/ISE_DS/ISE/
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

module lutram_512x9 (
  clk, we, dpo, a, d, dpra
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input we;
  output [8 : 0] dpo;
  input [8 : 0] a;
  input [8 : 0] d;
  input [8 : 0] dpra;
  
  // synthesis translate_off
  
  wire N0;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N103 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N104 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N105 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N109 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N110 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N111 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N115 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N116 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N117 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N121 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N122 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N123 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N127 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N128 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N129 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N13 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N133 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N134 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N135 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N139 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N14 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N140 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N141 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N145 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N146 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N147 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N15 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N151 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N152 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N153 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N19 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N20 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N21 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N25 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N26 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N27 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N31 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N32 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N33 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N37 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N38 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N39 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N43 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N44 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N45 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N49 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N50 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N51 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N55 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N56 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N57 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N61 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N62 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N63 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N67 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N68 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N69 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N73 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N74 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N75 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N79 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N80 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N81 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N85 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N86 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N87 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N91 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N92 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N93 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N97 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N98 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N99 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX1_3_73 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX1_4_74 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX2_3_75 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX2_4_76 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX3_3_77 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX3_4_78 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX4_3_79 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX4_4_80 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX5_3_81 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX5_4_82 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX6_3_83 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX6_4_84 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX7_3_85 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX7_4_86 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX8_3_87 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX8_4_88 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX_3_89 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX_4_90 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/write_ctrl_100 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/write_ctrl1_101 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/write_ctrl2_102 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/write_ctrl3_103 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/write_ctrl4_104 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/write_ctrl5_105 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/write_ctrl6_106 ;
  wire \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/write_ctrl7_107 ;
  wire \NLW_U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram24_DOD_UNCONNECTED ;
  wire \NLW_U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram23_DOD_UNCONNECTED ;
  wire \NLW_U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram22_DOD_UNCONNECTED ;
  wire \NLW_U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram21_DOD_UNCONNECTED ;
  wire \NLW_U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram20_DOD_UNCONNECTED ;
  wire \NLW_U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram18_DOD_UNCONNECTED ;
  wire \NLW_U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram17_DOD_UNCONNECTED ;
  wire \NLW_U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram19_DOD_UNCONNECTED ;
  wire \NLW_U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram16_DOD_UNCONNECTED ;
  wire \NLW_U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram15_DOD_UNCONNECTED ;
  wire \NLW_U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram14_DOD_UNCONNECTED ;
  wire \NLW_U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram13_DOD_UNCONNECTED ;
  wire \NLW_U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram12_DOD_UNCONNECTED ;
  wire \NLW_U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram11_DOD_UNCONNECTED ;
  wire \NLW_U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram10_DOD_UNCONNECTED ;
  wire \NLW_U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram9_DOD_UNCONNECTED ;
  wire \NLW_U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram8_DOD_UNCONNECTED ;
  wire \NLW_U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram7_DOD_UNCONNECTED ;
  wire \NLW_U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram6_DOD_UNCONNECTED ;
  wire \NLW_U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram5_DOD_UNCONNECTED ;
  wire \NLW_U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram4_DOD_UNCONNECTED ;
  wire \NLW_U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram3_DOD_UNCONNECTED ;
  wire \NLW_U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram1_DOD_UNCONNECTED ;
  wire \NLW_U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram2_DOD_UNCONNECTED ;
  wire [8 : 0] \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/qsdpo_int ;
  wire [8 : 0] NlwRenamedSig_OI_dpo;
  assign
    dpo[8] = NlwRenamedSig_OI_dpo[8],
    dpo[7] = NlwRenamedSig_OI_dpo[7],
    dpo[6] = NlwRenamedSig_OI_dpo[6],
    dpo[5] = NlwRenamedSig_OI_dpo[5],
    dpo[4] = NlwRenamedSig_OI_dpo[4],
    dpo[3] = NlwRenamedSig_OI_dpo[3],
    dpo[2] = NlwRenamedSig_OI_dpo[2],
    dpo[1] = NlwRenamedSig_OI_dpo[1],
    dpo[0] = NlwRenamedSig_OI_dpo[0];
  GND   XST_GND (
    .G(N0)
  );
  LUT6 #(
    .INIT ( 64'hF7E6B3A2D5C49180 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX8_3  (
    .I0(dpra[7]),
    .I1(dpra[6]),
    .I2(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N153 ),
    .I3(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N135 ),
    .I4(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N141 ),
    .I5(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N147 ),
    .O(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX8_3_87 )
  );
  LUT6 #(
    .INIT ( 64'hF7E6B3A2D5C49180 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX8_4  (
    .I0(dpra[7]),
    .I1(dpra[6]),
    .I2(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N129 ),
    .I3(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N111 ),
    .I4(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N117 ),
    .I5(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N123 ),
    .O(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX8_4_88 )
  );
  MUXF7   \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX8_2_f7  (
    .I0(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX8_4_88 ),
    .I1(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX8_3_87 ),
    .S(dpra[8]),
    .O(NlwRenamedSig_OI_dpo[8])
  );
  LUT6 #(
    .INIT ( 64'hF7E6B3A2D5C49180 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX7_3  (
    .I0(dpra[7]),
    .I1(dpra[6]),
    .I2(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N152 ),
    .I3(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N134 ),
    .I4(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N140 ),
    .I5(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N146 ),
    .O(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX7_3_85 )
  );
  LUT6 #(
    .INIT ( 64'hF7E6B3A2D5C49180 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX7_4  (
    .I0(dpra[7]),
    .I1(dpra[6]),
    .I2(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N128 ),
    .I3(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N110 ),
    .I4(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N116 ),
    .I5(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N122 ),
    .O(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX7_4_86 )
  );
  MUXF7   \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX7_2_f7  (
    .I0(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX7_4_86 ),
    .I1(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX7_3_85 ),
    .S(dpra[8]),
    .O(NlwRenamedSig_OI_dpo[7])
  );
  LUT6 #(
    .INIT ( 64'hF7E6B3A2D5C49180 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX5_3  (
    .I0(dpra[7]),
    .I1(dpra[6]),
    .I2(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N105 ),
    .I3(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N87 ),
    .I4(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N93 ),
    .I5(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N99 ),
    .O(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX5_3_81 )
  );
  LUT6 #(
    .INIT ( 64'hF7E6B3A2D5C49180 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX5_4  (
    .I0(dpra[7]),
    .I1(dpra[6]),
    .I2(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N81 ),
    .I3(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N63 ),
    .I4(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N69 ),
    .I5(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N75 ),
    .O(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX5_4_82 )
  );
  MUXF7   \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX5_2_f7  (
    .I0(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX5_4_82 ),
    .I1(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX5_3_81 ),
    .S(dpra[8]),
    .O(NlwRenamedSig_OI_dpo[5])
  );
  LUT6 #(
    .INIT ( 64'hF7E6B3A2D5C49180 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX4_3  (
    .I0(dpra[7]),
    .I1(dpra[6]),
    .I2(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N104 ),
    .I3(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N86 ),
    .I4(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N92 ),
    .I5(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N98 ),
    .O(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX4_3_79 )
  );
  LUT6 #(
    .INIT ( 64'hF7E6B3A2D5C49180 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX4_4  (
    .I0(dpra[7]),
    .I1(dpra[6]),
    .I2(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N80 ),
    .I3(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N62 ),
    .I4(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N68 ),
    .I5(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N74 ),
    .O(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX4_4_80 )
  );
  MUXF7   \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX4_2_f7  (
    .I0(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX4_4_80 ),
    .I1(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX4_3_79 ),
    .S(dpra[8]),
    .O(NlwRenamedSig_OI_dpo[4])
  );
  LUT6 #(
    .INIT ( 64'hF7E6B3A2D5C49180 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX6_3  (
    .I0(dpra[7]),
    .I1(dpra[6]),
    .I2(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N151 ),
    .I3(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N133 ),
    .I4(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N139 ),
    .I5(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N145 ),
    .O(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX6_3_83 )
  );
  LUT6 #(
    .INIT ( 64'hF7E6B3A2D5C49180 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX6_4  (
    .I0(dpra[7]),
    .I1(dpra[6]),
    .I2(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N127 ),
    .I3(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N109 ),
    .I4(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N115 ),
    .I5(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N121 ),
    .O(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX6_4_84 )
  );
  MUXF7   \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX6_2_f7  (
    .I0(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX6_4_84 ),
    .I1(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX6_3_83 ),
    .S(dpra[8]),
    .O(NlwRenamedSig_OI_dpo[6])
  );
  LUT6 #(
    .INIT ( 64'hF7E6B3A2D5C49180 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX3_3  (
    .I0(dpra[7]),
    .I1(dpra[6]),
    .I2(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N103 ),
    .I3(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N85 ),
    .I4(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N91 ),
    .I5(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N97 ),
    .O(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX3_3_77 )
  );
  LUT6 #(
    .INIT ( 64'hF7E6B3A2D5C49180 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX3_4  (
    .I0(dpra[7]),
    .I1(dpra[6]),
    .I2(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N79 ),
    .I3(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N61 ),
    .I4(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N67 ),
    .I5(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N73 ),
    .O(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX3_4_78 )
  );
  MUXF7   \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX3_2_f7  (
    .I0(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX3_4_78 ),
    .I1(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX3_3_77 ),
    .S(dpra[8]),
    .O(NlwRenamedSig_OI_dpo[3])
  );
  LUT6 #(
    .INIT ( 64'hF7E6B3A2D5C49180 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX2_3  (
    .I0(dpra[7]),
    .I1(dpra[6]),
    .I2(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N57 ),
    .I3(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N39 ),
    .I4(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N45 ),
    .I5(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N51 ),
    .O(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX2_3_75 )
  );
  LUT6 #(
    .INIT ( 64'hF7E6B3A2D5C49180 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX2_4  (
    .I0(dpra[7]),
    .I1(dpra[6]),
    .I2(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N33 ),
    .I3(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N15 ),
    .I4(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N21 ),
    .I5(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N27 ),
    .O(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX2_4_76 )
  );
  MUXF7   \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX2_2_f7  (
    .I0(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX2_4_76 ),
    .I1(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX2_3_75 ),
    .S(dpra[8]),
    .O(NlwRenamedSig_OI_dpo[2])
  );
  LUT6 #(
    .INIT ( 64'hF7E6B3A2D5C49180 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX_3  (
    .I0(dpra[7]),
    .I1(dpra[6]),
    .I2(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N55 ),
    .I3(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N37 ),
    .I4(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N43 ),
    .I5(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N49 ),
    .O(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX_3_89 )
  );
  LUT6 #(
    .INIT ( 64'hF7E6B3A2D5C49180 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX_4  (
    .I0(dpra[7]),
    .I1(dpra[6]),
    .I2(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N31 ),
    .I3(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N13 ),
    .I4(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N19 ),
    .I5(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N25 ),
    .O(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX_4_90 )
  );
  MUXF7   \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX_2_f7  (
    .I0(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX_4_90 ),
    .I1(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX_3_89 ),
    .S(dpra[8]),
    .O(NlwRenamedSig_OI_dpo[0])
  );
  LUT6 #(
    .INIT ( 64'hF7E6B3A2D5C49180 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX1_3  (
    .I0(dpra[7]),
    .I1(dpra[6]),
    .I2(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N56 ),
    .I3(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N38 ),
    .I4(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N44 ),
    .I5(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N50 ),
    .O(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX1_3_73 )
  );
  LUT6 #(
    .INIT ( 64'hF7E6B3A2D5C49180 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX1_4  (
    .I0(dpra[7]),
    .I1(dpra[6]),
    .I2(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N32 ),
    .I3(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N14 ),
    .I4(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N20 ),
    .I5(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N26 ),
    .O(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX1_4_74 )
  );
  MUXF7   \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX1_2_f7  (
    .I0(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX1_4_74 ),
    .I1(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/inst_LPM_MUX1_3_73 ),
    .S(dpra[8]),
    .O(NlwRenamedSig_OI_dpo[1])
  );
  RAM64M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram24  (
    .WCLK(clk),
    .WE(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/write_ctrl7_107 ),
    .DIA(d[6]),
    .DIB(d[7]),
    .DIC(d[8]),
    .DID(N0),
    .DOA(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N151 ),
    .DOB(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N152 ),
    .DOC(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N153 ),
    .DOD(\NLW_U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram24_DOD_UNCONNECTED ),
    .ADDRA({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRB({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRC({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRD({a[5], a[4], a[3], a[2], a[1], a[0]})
  );
  RAM64M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram23  (
    .WCLK(clk),
    .WE(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/write_ctrl6_106 ),
    .DIA(d[6]),
    .DIB(d[7]),
    .DIC(d[8]),
    .DID(N0),
    .DOA(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N145 ),
    .DOB(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N146 ),
    .DOC(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N147 ),
    .DOD(\NLW_U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram23_DOD_UNCONNECTED ),
    .ADDRA({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRB({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRC({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRD({a[5], a[4], a[3], a[2], a[1], a[0]})
  );
  RAM64M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram22  (
    .WCLK(clk),
    .WE(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/write_ctrl5_105 ),
    .DIA(d[6]),
    .DIB(d[7]),
    .DIC(d[8]),
    .DID(N0),
    .DOA(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N139 ),
    .DOB(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N140 ),
    .DOC(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N141 ),
    .DOD(\NLW_U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram22_DOD_UNCONNECTED ),
    .ADDRA({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRB({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRC({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRD({a[5], a[4], a[3], a[2], a[1], a[0]})
  );
  RAM64M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram21  (
    .WCLK(clk),
    .WE(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/write_ctrl4_104 ),
    .DIA(d[6]),
    .DIB(d[7]),
    .DIC(d[8]),
    .DID(N0),
    .DOA(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N133 ),
    .DOB(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N134 ),
    .DOC(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N135 ),
    .DOD(\NLW_U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram21_DOD_UNCONNECTED ),
    .ADDRA({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRB({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRC({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRD({a[5], a[4], a[3], a[2], a[1], a[0]})
  );
  RAM64M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram20  (
    .WCLK(clk),
    .WE(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/write_ctrl3_103 ),
    .DIA(d[6]),
    .DIB(d[7]),
    .DIC(d[8]),
    .DID(N0),
    .DOA(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N127 ),
    .DOB(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N128 ),
    .DOC(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N129 ),
    .DOD(\NLW_U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram20_DOD_UNCONNECTED ),
    .ADDRA({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRB({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRC({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRD({a[5], a[4], a[3], a[2], a[1], a[0]})
  );
  RAM64M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram18  (
    .WCLK(clk),
    .WE(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/write_ctrl1_101 ),
    .DIA(d[6]),
    .DIB(d[7]),
    .DIC(d[8]),
    .DID(N0),
    .DOA(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N115 ),
    .DOB(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N116 ),
    .DOC(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N117 ),
    .DOD(\NLW_U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram18_DOD_UNCONNECTED ),
    .ADDRA({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRB({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRC({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRD({a[5], a[4], a[3], a[2], a[1], a[0]})
  );
  RAM64M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram17  (
    .WCLK(clk),
    .WE(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/write_ctrl_100 ),
    .DIA(d[6]),
    .DIB(d[7]),
    .DIC(d[8]),
    .DID(N0),
    .DOA(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N109 ),
    .DOB(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N110 ),
    .DOC(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N111 ),
    .DOD(\NLW_U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram17_DOD_UNCONNECTED ),
    .ADDRA({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRB({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRC({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRD({a[5], a[4], a[3], a[2], a[1], a[0]})
  );
  RAM64M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram19  (
    .WCLK(clk),
    .WE(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/write_ctrl2_102 ),
    .DIA(d[6]),
    .DIB(d[7]),
    .DIC(d[8]),
    .DID(N0),
    .DOA(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N121 ),
    .DOB(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N122 ),
    .DOC(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N123 ),
    .DOD(\NLW_U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram19_DOD_UNCONNECTED ),
    .ADDRA({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRB({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRC({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRD({a[5], a[4], a[3], a[2], a[1], a[0]})
  );
  RAM64M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram16  (
    .WCLK(clk),
    .WE(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/write_ctrl7_107 ),
    .DIA(d[3]),
    .DIB(d[4]),
    .DIC(d[5]),
    .DID(N0),
    .DOA(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N103 ),
    .DOB(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N104 ),
    .DOC(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N105 ),
    .DOD(\NLW_U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram16_DOD_UNCONNECTED ),
    .ADDRA({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRB({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRC({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRD({a[5], a[4], a[3], a[2], a[1], a[0]})
  );
  RAM64M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram15  (
    .WCLK(clk),
    .WE(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/write_ctrl6_106 ),
    .DIA(d[3]),
    .DIB(d[4]),
    .DIC(d[5]),
    .DID(N0),
    .DOA(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N97 ),
    .DOB(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N98 ),
    .DOC(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N99 ),
    .DOD(\NLW_U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram15_DOD_UNCONNECTED ),
    .ADDRA({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRB({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRC({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRD({a[5], a[4], a[3], a[2], a[1], a[0]})
  );
  RAM64M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram14  (
    .WCLK(clk),
    .WE(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/write_ctrl5_105 ),
    .DIA(d[3]),
    .DIB(d[4]),
    .DIC(d[5]),
    .DID(N0),
    .DOA(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N91 ),
    .DOB(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N92 ),
    .DOC(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N93 ),
    .DOD(\NLW_U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram14_DOD_UNCONNECTED ),
    .ADDRA({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRB({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRC({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRD({a[5], a[4], a[3], a[2], a[1], a[0]})
  );
  RAM64M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram13  (
    .WCLK(clk),
    .WE(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/write_ctrl4_104 ),
    .DIA(d[3]),
    .DIB(d[4]),
    .DIC(d[5]),
    .DID(N0),
    .DOA(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N85 ),
    .DOB(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N86 ),
    .DOC(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N87 ),
    .DOD(\NLW_U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram13_DOD_UNCONNECTED ),
    .ADDRA({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRB({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRC({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRD({a[5], a[4], a[3], a[2], a[1], a[0]})
  );
  RAM64M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram12  (
    .WCLK(clk),
    .WE(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/write_ctrl3_103 ),
    .DIA(d[3]),
    .DIB(d[4]),
    .DIC(d[5]),
    .DID(N0),
    .DOA(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N79 ),
    .DOB(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N80 ),
    .DOC(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N81 ),
    .DOD(\NLW_U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram12_DOD_UNCONNECTED ),
    .ADDRA({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRB({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRC({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRD({a[5], a[4], a[3], a[2], a[1], a[0]})
  );
  RAM64M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram11  (
    .WCLK(clk),
    .WE(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/write_ctrl2_102 ),
    .DIA(d[3]),
    .DIB(d[4]),
    .DIC(d[5]),
    .DID(N0),
    .DOA(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N73 ),
    .DOB(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N74 ),
    .DOC(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N75 ),
    .DOD(\NLW_U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram11_DOD_UNCONNECTED ),
    .ADDRA({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRB({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRC({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRD({a[5], a[4], a[3], a[2], a[1], a[0]})
  );
  RAM64M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram10  (
    .WCLK(clk),
    .WE(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/write_ctrl1_101 ),
    .DIA(d[3]),
    .DIB(d[4]),
    .DIC(d[5]),
    .DID(N0),
    .DOA(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N67 ),
    .DOB(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N68 ),
    .DOC(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N69 ),
    .DOD(\NLW_U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram10_DOD_UNCONNECTED ),
    .ADDRA({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRB({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRC({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRD({a[5], a[4], a[3], a[2], a[1], a[0]})
  );
  RAM64M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram9  (
    .WCLK(clk),
    .WE(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/write_ctrl_100 ),
    .DIA(d[3]),
    .DIB(d[4]),
    .DIC(d[5]),
    .DID(N0),
    .DOA(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N61 ),
    .DOB(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N62 ),
    .DOC(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N63 ),
    .DOD(\NLW_U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram9_DOD_UNCONNECTED ),
    .ADDRA({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRB({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRC({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRD({a[5], a[4], a[3], a[2], a[1], a[0]})
  );
  RAM64M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram8  (
    .WCLK(clk),
    .WE(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/write_ctrl7_107 ),
    .DIA(d[0]),
    .DIB(d[1]),
    .DIC(d[2]),
    .DID(N0),
    .DOA(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N55 ),
    .DOB(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N56 ),
    .DOC(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N57 ),
    .DOD(\NLW_U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram8_DOD_UNCONNECTED ),
    .ADDRA({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRB({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRC({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRD({a[5], a[4], a[3], a[2], a[1], a[0]})
  );
  RAM64M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram7  (
    .WCLK(clk),
    .WE(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/write_ctrl6_106 ),
    .DIA(d[0]),
    .DIB(d[1]),
    .DIC(d[2]),
    .DID(N0),
    .DOA(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N49 ),
    .DOB(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N50 ),
    .DOC(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N51 ),
    .DOD(\NLW_U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram7_DOD_UNCONNECTED ),
    .ADDRA({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRB({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRC({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRD({a[5], a[4], a[3], a[2], a[1], a[0]})
  );
  RAM64M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram6  (
    .WCLK(clk),
    .WE(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/write_ctrl5_105 ),
    .DIA(d[0]),
    .DIB(d[1]),
    .DIC(d[2]),
    .DID(N0),
    .DOA(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N43 ),
    .DOB(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N44 ),
    .DOC(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N45 ),
    .DOD(\NLW_U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram6_DOD_UNCONNECTED ),
    .ADDRA({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRB({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRC({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRD({a[5], a[4], a[3], a[2], a[1], a[0]})
  );
  RAM64M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram5  (
    .WCLK(clk),
    .WE(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/write_ctrl4_104 ),
    .DIA(d[0]),
    .DIB(d[1]),
    .DIC(d[2]),
    .DID(N0),
    .DOA(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N37 ),
    .DOB(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N38 ),
    .DOC(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N39 ),
    .DOD(\NLW_U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram5_DOD_UNCONNECTED ),
    .ADDRA({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRB({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRC({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRD({a[5], a[4], a[3], a[2], a[1], a[0]})
  );
  RAM64M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram4  (
    .WCLK(clk),
    .WE(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/write_ctrl3_103 ),
    .DIA(d[0]),
    .DIB(d[1]),
    .DIC(d[2]),
    .DID(N0),
    .DOA(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N31 ),
    .DOB(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N32 ),
    .DOC(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N33 ),
    .DOD(\NLW_U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram4_DOD_UNCONNECTED ),
    .ADDRA({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRB({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRC({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRD({a[5], a[4], a[3], a[2], a[1], a[0]})
  );
  RAM64M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram3  (
    .WCLK(clk),
    .WE(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/write_ctrl2_102 ),
    .DIA(d[0]),
    .DIB(d[1]),
    .DIC(d[2]),
    .DID(N0),
    .DOA(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N25 ),
    .DOB(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N26 ),
    .DOC(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N27 ),
    .DOD(\NLW_U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram3_DOD_UNCONNECTED ),
    .ADDRA({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRB({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRC({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRD({a[5], a[4], a[3], a[2], a[1], a[0]})
  );
  RAM64M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram1  (
    .WCLK(clk),
    .WE(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/write_ctrl_100 ),
    .DIA(d[0]),
    .DIB(d[1]),
    .DIC(d[2]),
    .DID(N0),
    .DOA(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N13 ),
    .DOB(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N14 ),
    .DOC(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N15 ),
    .DOD(\NLW_U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram1_DOD_UNCONNECTED ),
    .ADDRA({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRB({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRC({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRD({a[5], a[4], a[3], a[2], a[1], a[0]})
  );
  RAM64M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram2  (
    .WCLK(clk),
    .WE(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/write_ctrl1_101 ),
    .DIA(d[0]),
    .DIB(d[1]),
    .DIC(d[2]),
    .DID(N0),
    .DOA(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N19 ),
    .DOB(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N20 ),
    .DOC(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/N21 ),
    .DOD(\NLW_U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/Mram_ram2_DOD_UNCONNECTED ),
    .ADDRA({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRB({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRC({dpra[5], dpra[4], dpra[3], dpra[2], dpra[1], dpra[0]}),
    .ADDRD({a[5], a[4], a[3], a[2], a[1], a[0]})
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/qsdpo_int_8  (
    .C(clk),
    .D(NlwRenamedSig_OI_dpo[8]),
    .Q(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/qsdpo_int [8])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/qsdpo_int_7  (
    .C(clk),
    .D(NlwRenamedSig_OI_dpo[7]),
    .Q(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/qsdpo_int [7])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/qsdpo_int_6  (
    .C(clk),
    .D(NlwRenamedSig_OI_dpo[6]),
    .Q(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/qsdpo_int [6])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/qsdpo_int_5  (
    .C(clk),
    .D(NlwRenamedSig_OI_dpo[5]),
    .Q(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/qsdpo_int [5])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/qsdpo_int_4  (
    .C(clk),
    .D(NlwRenamedSig_OI_dpo[4]),
    .Q(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/qsdpo_int [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/qsdpo_int_3  (
    .C(clk),
    .D(NlwRenamedSig_OI_dpo[3]),
    .Q(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/qsdpo_int [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/qsdpo_int_2  (
    .C(clk),
    .D(NlwRenamedSig_OI_dpo[2]),
    .Q(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/qsdpo_int [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/qsdpo_int_1  (
    .C(clk),
    .D(NlwRenamedSig_OI_dpo[1]),
    .Q(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/qsdpo_int [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/qsdpo_int_0  (
    .C(clk),
    .D(NlwRenamedSig_OI_dpo[0]),
    .Q(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/qsdpo_int [0])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/write_ctrl7  (
    .I0(a[6]),
    .I1(a[7]),
    .I2(a[8]),
    .I3(we),
    .O(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/write_ctrl7_107 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/write_ctrl6  (
    .I0(a[6]),
    .I1(a[7]),
    .I2(a[8]),
    .I3(we),
    .O(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/write_ctrl6_106 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/write_ctrl5  (
    .I0(a[7]),
    .I1(a[6]),
    .I2(a[8]),
    .I3(we),
    .O(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/write_ctrl5_105 )
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/write_ctrl4  (
    .I0(a[6]),
    .I1(a[7]),
    .I2(a[8]),
    .I3(we),
    .O(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/write_ctrl4_104 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/write_ctrl3  (
    .I0(a[8]),
    .I1(a[7]),
    .I2(a[6]),
    .I3(we),
    .O(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/write_ctrl3_103 )
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/write_ctrl2  (
    .I0(a[6]),
    .I1(a[8]),
    .I2(a[7]),
    .I3(we),
    .O(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/write_ctrl2_102 )
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/write_ctrl1  (
    .I0(a[7]),
    .I1(a[8]),
    .I2(a[6]),
    .I3(we),
    .O(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/write_ctrl1_101 )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/write_ctrl  (
    .I0(a[6]),
    .I1(a[7]),
    .I2(a[8]),
    .I3(we),
    .O(\U0/xst_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/write_ctrl_100 )
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
