////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.15xf
//  \   \         Application: netgen
//  /   /         Filename: bram_1040x11.v
// /___/   /\     Timestamp: Sun Apr 28 17:19:17 2013
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog /home/cc/cs150/sp13/class/cs150-bh/cs150/tests/hardware/blob_analysis_lutram2/src/bram_1040x11/tmp/_cg/bram_1040x11.ngc /home/cc/cs150/sp13/class/cs150-bh/cs150/tests/hardware/blob_analysis_lutram2/src/bram_1040x11/tmp/_cg/bram_1040x11.v 
// Device	: 5vfx100tff1136-1
// Input file	: /home/cc/cs150/sp13/class/cs150-bh/cs150/tests/hardware/blob_analysis_lutram2/src/bram_1040x11/tmp/_cg/bram_1040x11.ngc
// Output file	: /home/cc/cs150/sp13/class/cs150-bh/cs150/tests/hardware/blob_analysis_lutram2/src/bram_1040x11/tmp/_cg/bram_1040x11.v
// # of Modules	: 1
// Design Name	: bram_1040x11
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

module bram_1040x11 (
  clka, clkb, wea, addra, dina, web, addrb, dinb, douta, doutb
)/* synthesis syn_black_box syn_noprune=1 */;
  input clka;
  input clkb;
  input [0 : 0] wea;
  input [10 : 0] addra;
  input [10 : 0] dina;
  input [0 : 0] web;
  input [10 : 0] addrb;
  input [10 : 0] dinb;
  output [10 : 0] douta;
  output [10 : 0] doutb;
  
  // synthesis translate_off
  
  wire N0;
  wire N1;
  wire \U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_CASCADEOUTLATA_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_CASCADEOUTLATB_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_CASCADEOUTREGA_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_CASCADEOUTREGB_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<31>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<30>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<29>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<28>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<27>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<26>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<25>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<24>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<23>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<22>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<21>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<20>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<19>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<18>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<17>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<16>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<15>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<14>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<13>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<7>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<6>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOPA<3>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOPA<2>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOPA<1>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOPA<0>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<31>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<30>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<29>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<28>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<27>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<26>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<25>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<24>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<23>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<22>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<21>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<20>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<19>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<18>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<17>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<16>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<15>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<14>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<13>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<7>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<6>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOPB<3>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOPB<2>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOPB<1>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOPB<0>_UNCONNECTED ;
  VCC   XST_VCC (
    .P(N0)
  );
  GND   XST_GND (
    .G(N1)
  );
  RAMB36_EXP #(
    .DOA_REG ( 0 ),
    .DOB_REG ( 0 ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_40 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_41 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_42 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_43 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_44 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_45 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_46 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_47 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_48 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_49 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_50 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_51 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_52 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_53 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_54 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_55 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_56 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_57 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_58 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_59 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_60 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_61 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_62 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_63 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_64 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_65 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_66 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_67 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_68 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_69 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_70 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_71 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_72 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_73 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_74 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_75 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_76 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_77 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_78 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_79 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_A ( 36'h000000000 ),
    .INIT_B ( 36'h000000000 ),
    .INIT_FILE ( "NONE" ),
    .RAM_EXTENSION_A ( "NONE" ),
    .RAM_EXTENSION_B ( "NONE" ),
    .READ_WIDTH_A ( 18 ),
    .READ_WIDTH_B ( 18 ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .SIM_MODE ( "SAFE" ),
    .SRVAL_A ( 36'h000000000 ),
    .SRVAL_B ( 36'h000000000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .WRITE_WIDTH_A ( 18 ),
    .WRITE_WIDTH_B ( 18 ))
  \U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP  (
    .ENAU(N0),
    .ENAL(N0),
    .ENBU(N0),
    .ENBL(N0),
    .SSRAU(N1),
    .SSRAL(N1),
    .SSRBU(N1),
    .SSRBL(N1),
    .CLKAU(clka),
    .CLKAL(clka),
    .CLKBU(clkb),
    .CLKBL(clkb),
    .REGCLKAU(clka),
    .REGCLKAL(clka),
    .REGCLKBU(clkb),
    .REGCLKBL(clkb),
    .REGCEAU(\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR ),
    .REGCEAL(\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR ),
    .REGCEBU(\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR ),
    .REGCEBL(\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR ),
    .CASCADEINLATA(\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR ),
    .CASCADEINLATB(\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR ),
    .CASCADEINREGA(\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR ),
    .CASCADEINREGB(\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR ),
    .CASCADEOUTLATA
(\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_CASCADEOUTLATA_UNCONNECTED )
,
    .CASCADEOUTLATB
(\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_CASCADEOUTLATB_UNCONNECTED )
,
    .CASCADEOUTREGA
(\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_CASCADEOUTREGA_UNCONNECTED )
,
    .CASCADEOUTREGB
(\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_CASCADEOUTREGB_UNCONNECTED )
,
    .DIA({\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , dina[10], dina[9], dina[8], dina[7], dina[6], 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , dina[5], dina[4], dina[3], dina[2], dina[1], dina[0]}),
    .DIPA({\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR }),
    .DIB({\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , dinb[10], dinb[9], dinb[8], dinb[7], dinb[6], 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , dinb[5], dinb[4], dinb[3], dinb[2], dinb[1], dinb[0]}),
    .DIPB({\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR }),
    .ADDRAL({\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , addra[10], addra[9], addra[8], addra[7], addra[6], addra[5]
, addra[4], addra[3], addra[2], addra[1], addra[0], \U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR }),
    .ADDRAU({addra[10], addra[9], addra[8], addra[7], addra[6], addra[5], addra[4], addra[3], addra[2], addra[1], addra[0], 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR }),
    .ADDRBL({\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , addrb[10], addrb[9], addrb[8], addrb[7], addrb[6], addrb[5]
, addrb[4], addrb[3], addrb[2], addrb[1], addrb[0], \U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR }),
    .ADDRBU({addrb[10], addrb[9], addrb[8], addrb[7], addrb[6], addrb[5], addrb[4], addrb[3], addrb[2], addrb[1], addrb[0], 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR }),
    .WEAU({wea[0], wea[0], wea[0], wea[0]}),
    .WEAL({wea[0], wea[0], wea[0], wea[0]}),
    .WEBU({\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , web[0], web[0], web[0], web[0]}),
    .WEBL({\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , web[0], web[0], web[0], web[0]}),
    .DOA({
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<31>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<30>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<29>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<28>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<27>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<26>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<25>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<24>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<23>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<22>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<21>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<20>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<19>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<18>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<17>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<16>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<15>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<14>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<13>_UNCONNECTED , 
douta[10], douta[9], douta[8], douta[7], douta[6], 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<7>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<6>_UNCONNECTED , 
douta[5], douta[4], douta[3], douta[2], douta[1], douta[0]}),
    .DOPA({
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOPA<3>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOPA<2>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOPA<1>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOPA<0>_UNCONNECTED })
,
    .DOB({
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<31>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<30>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<29>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<28>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<27>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<26>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<25>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<24>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<23>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<22>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<21>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<20>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<19>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<18>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<17>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<16>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<15>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<14>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<13>_UNCONNECTED , 
doutb[10], doutb[9], doutb[8], doutb[7], doutb[6], 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<7>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<6>_UNCONNECTED , 
doutb[5], doutb[4], doutb[3], doutb[2], doutb[1], doutb[0]}),
    .DOPB({
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOPB<3>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOPB<2>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOPB<1>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOPB<0>_UNCONNECTED })
  );
  GND   \U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/XST_GND  (
    .G(\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR )
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
