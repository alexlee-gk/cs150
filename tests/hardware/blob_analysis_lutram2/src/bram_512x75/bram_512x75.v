////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.15xf
//  \   \         Application: netgen
//  /   /         Filename: bram_512x75.v
// /___/   /\     Timestamp: Thu May  2 19:01:41 2013
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog /home/cc/cs150/sp13/class/cs150-bh/cs150/tests/hardware/blob_analysis_lutram2/src/bram_512x75/tmp/_cg/bram_512x75.ngc /home/cc/cs150/sp13/class/cs150-bh/cs150/tests/hardware/blob_analysis_lutram2/src/bram_512x75/tmp/_cg/bram_512x75.v 
// Device	: 5vfx100tff1136-1
// Input file	: /home/cc/cs150/sp13/class/cs150-bh/cs150/tests/hardware/blob_analysis_lutram2/src/bram_512x75/tmp/_cg/bram_512x75.ngc
// Output file	: /home/cc/cs150/sp13/class/cs150-bh/cs150/tests/hardware/blob_analysis_lutram2/src/bram_512x75/tmp/_cg/bram_512x75.v
// # of Modules	: 1
// Design Name	: bram_512x75
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

module bram_512x75 (
  clka, clkb, wea, addra, dina, web, addrb, dinb, douta, doutb
)/* synthesis syn_black_box syn_noprune=1 */;
  input clka;
  input clkb;
  input [0 : 0] wea;
  input [8 : 0] addra;
  input [74 : 0] dina;
  input [0 : 0] web;
  input [8 : 0] addrb;
  input [74 : 0] dinb;
  output [74 : 0] douta;
  output [74 : 0] doutb;
  
  // synthesis translate_off
  
  wire N0;
  wire N1;
  wire \U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_CASCADEOUTLATA_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_CASCADEOUTLATB_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_CASCADEOUTREGA_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_CASCADEOUTREGB_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<31>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<30>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<29>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<23>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<22>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<21>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<15>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<14>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<13>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<7>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<6>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOPA<3>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOPA<2>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOPA<1>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOPA<0>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<31>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<30>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<29>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<23>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<22>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<21>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<15>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<14>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<13>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<7>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<6>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOPB<3>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOPB<2>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOPB<1>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOPB<0>_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_CASCADEOUTLATA_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_CASCADEOUTLATB_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_CASCADEOUTREGA_UNCONNECTED ;
  wire \NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_CASCADEOUTREGB_UNCONNECTED ;
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
    .READ_WIDTH_A ( 36 ),
    .READ_WIDTH_B ( 36 ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .SIM_MODE ( "SAFE" ),
    .SRVAL_A ( 36'h000000000 ),
    .SRVAL_B ( 36'h000000000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .WRITE_WIDTH_A ( 36 ),
    .WRITE_WIDTH_B ( 36 ))
  \U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP  (
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
(\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_CASCADEOUTLATA_UNCONNECTED )
,
    .CASCADEOUTLATB
(\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_CASCADEOUTLATB_UNCONNECTED )
,
    .CASCADEOUTREGA
(\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_CASCADEOUTREGA_UNCONNECTED )
,
    .CASCADEOUTREGB
(\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_CASCADEOUTREGB_UNCONNECTED )
,
    .DIA({\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , dina[74], dina[73], dina[72], dina[71], dina[70], 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , dina[69], dina[68], dina[67], dina[66], dina[65], 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , dina[64], dina[63], dina[62], dina[61], dina[60], 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , dina[59], dina[58], dina[57], dina[56], dina[55], dina[54]}),
    .DIPA({\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR }),
    .DIB({\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , dinb[74], dinb[73], dinb[72], dinb[71], dinb[70], 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , dinb[69], dinb[68], dinb[67], dinb[66], dinb[65], 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , dinb[64], dinb[63], dinb[62], dinb[61], dinb[60], 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , dinb[59], dinb[58], dinb[57], dinb[56], dinb[55], dinb[54]}),
    .DIPB({\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR }),
    .ADDRAL({\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , addra[8], addra[7], addra[6], addra[5], addra[4], addra[3], addra[2], 
addra[1], addra[0], \U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR }),
    .ADDRAU({\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , addra[8], addra[7], addra[6], addra[5], addra[4], addra[3], 
addra[2], addra[1], addra[0], \U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR }),
    .ADDRBL({\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , addrb[8], addrb[7], addrb[6], addrb[5], addrb[4], addrb[3], addrb[2], 
addrb[1], addrb[0], \U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR }),
    .ADDRBU({\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , addrb[8], addrb[7], addrb[6], addrb[5], addrb[4], addrb[3], 
addrb[2], addrb[1], addrb[0], \U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
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
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<31>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<30>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<29>_UNCONNECTED , 
douta[74], douta[73], douta[72], douta[71], douta[70], 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<23>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<22>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<21>_UNCONNECTED , 
douta[69], douta[68], douta[67], douta[66], douta[65], 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<15>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<14>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<13>_UNCONNECTED , 
douta[64], douta[63], douta[62], douta[61], douta[60], 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<7>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOA<6>_UNCONNECTED , 
douta[59], douta[58], douta[57], douta[56], douta[55], douta[54]}),
    .DOPA({
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOPA<3>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOPA<2>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOPA<1>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOPA<0>_UNCONNECTED })
,
    .DOB({
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<31>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<30>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<29>_UNCONNECTED , 
doutb[74], doutb[73], doutb[72], doutb[71], doutb[70], 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<23>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<22>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<21>_UNCONNECTED , 
doutb[69], doutb[68], doutb[67], doutb[66], doutb[65], 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<15>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<14>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<13>_UNCONNECTED , 
doutb[64], doutb[63], doutb[62], doutb[61], doutb[60], 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<7>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOB<6>_UNCONNECTED , 
doutb[59], doutb[58], doutb[57], doutb[56], doutb[55], doutb[54]}),
    .DOPB({
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOPB<3>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOPB<2>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOPB<1>_UNCONNECTED , 
\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_DOPB<0>_UNCONNECTED })
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
    .READ_WIDTH_A ( 36 ),
    .READ_WIDTH_B ( 36 ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .SIM_MODE ( "SAFE" ),
    .SRVAL_A ( 36'h000000000 ),
    .SRVAL_B ( 36'h000000000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .WRITE_WIDTH_A ( 36 ),
    .WRITE_WIDTH_B ( 36 ))
  \U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP  (
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
(\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_CASCADEOUTLATA_UNCONNECTED )
,
    .CASCADEOUTLATB
(\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_CASCADEOUTLATB_UNCONNECTED )
,
    .CASCADEOUTREGA
(\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_CASCADEOUTREGA_UNCONNECTED )
,
    .CASCADEOUTREGB
(\NLW_U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM36.TDP_CASCADEOUTREGB_UNCONNECTED )
,
    .DIA({dina[52], dina[51], dina[50], dina[49], dina[48], dina[47], dina[46], dina[45], dina[43], dina[42], dina[41], dina[40], dina[39], dina[38], 
dina[37], dina[36], dina[34], dina[33], dina[32], dina[31], dina[30], dina[29], dina[28], dina[27], dina[25], dina[24], dina[23], dina[22], dina[21], 
dina[20], dina[19], dina[18]}),
    .DIPA({dina[53], dina[44], dina[35], dina[26]}),
    .DIB({dinb[52], dinb[51], dinb[50], dinb[49], dinb[48], dinb[47], dinb[46], dinb[45], dinb[43], dinb[42], dinb[41], dinb[40], dinb[39], dinb[38], 
dinb[37], dinb[36], dinb[34], dinb[33], dinb[32], dinb[31], dinb[30], dinb[29], dinb[28], dinb[27], dinb[25], dinb[24], dinb[23], dinb[22], dinb[21], 
dinb[20], dinb[19], dinb[18]}),
    .DIPB({dinb[53], dinb[44], dinb[35], dinb[26]}),
    .ADDRAL({\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , addra[8], addra[7], addra[6], addra[5], addra[4], addra[3], addra[2], 
addra[1], addra[0], \U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR }),
    .ADDRAU({\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , addra[8], addra[7], addra[6], addra[5], addra[4], addra[3], 
addra[2], addra[1], addra[0], \U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR }),
    .ADDRBL({\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , addrb[8], addrb[7], addrb[6], addrb[5], addrb[4], addrb[3], addrb[2], 
addrb[1], addrb[0], \U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR }),
    .ADDRBU({\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , addrb[8], addrb[7], addrb[6], addrb[5], addrb[4], addrb[3], 
addrb[2], addrb[1], addrb[0], \U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
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
    .DOA({douta[52], douta[51], douta[50], douta[49], douta[48], douta[47], douta[46], douta[45], douta[43], douta[42], douta[41], douta[40], 
douta[39], douta[38], douta[37], douta[36], douta[34], douta[33], douta[32], douta[31], douta[30], douta[29], douta[28], douta[27], douta[25], 
douta[24], douta[23], douta[22], douta[21], douta[20], douta[19], douta[18]}),
    .DOPA({douta[53], douta[44], douta[35], douta[26]}),
    .DOB({doutb[52], doutb[51], doutb[50], doutb[49], doutb[48], doutb[47], doutb[46], doutb[45], doutb[43], doutb[42], doutb[41], doutb[40], 
doutb[39], doutb[38], doutb[37], doutb[36], doutb[34], doutb[33], doutb[32], doutb[31], doutb[30], doutb[29], doutb[28], doutb[27], doutb[25], 
doutb[24], doutb[23], doutb[22], doutb[21], doutb[20], doutb[19], doutb[18]}),
    .DOPB({doutb[53], doutb[44], doutb[35], doutb[26]})
  );
  RAMB18 #(
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
    .INIT_A ( 18'h00000 ),
    .INIT_B ( 18'h00000 ),
    .INIT_FILE ( "NONE" ),
    .READ_WIDTH_A ( 18 ),
    .READ_WIDTH_B ( 18 ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .SIM_MODE ( "SAFE" ),
    .SRVAL_A ( 18'h00000 ),
    .SRVAL_B ( 18'h00000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .WRITE_WIDTH_A ( 18 ),
    .WRITE_WIDTH_B ( 18 ))
  \U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/TRUE_DP.SINGLE_PRIM18.TDP  (
    .CLKA(clka),
    .CLKB(clkb),
    .ENA(N0),
    .ENB(N0),
    .REGCEA(\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR ),
    .REGCEB(\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR ),
    .SSRA(N1),
    .SSRB(N1),
    .ADDRA({\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , addra[8], addra[7], addra[6], addra[5], addra[4], addra[3], 
addra[2], addra[1], addra[0], \U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR }),
    .ADDRB({\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , addrb[8], addrb[7], addrb[6], addrb[5], addrb[4], addrb[3], 
addrb[2], addrb[1], addrb[0], \U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR , 
\U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/DBITERR }),
    .DIA({dina[16], dina[15], dina[14], dina[13], dina[12], dina[11], dina[10], dina[9], dina[7], dina[6], dina[5], dina[4], dina[3], dina[2], dina[1]
, dina[0]}),
    .DIB({dinb[16], dinb[15], dinb[14], dinb[13], dinb[12], dinb[11], dinb[10], dinb[9], dinb[7], dinb[6], dinb[5], dinb[4], dinb[3], dinb[2], dinb[1]
, dinb[0]}),
    .DIPA({dina[17], dina[8]}),
    .DIPB({dinb[17], dinb[8]}),
    .DOA({douta[16], douta[15], douta[14], douta[13], douta[12], douta[11], douta[10], douta[9], douta[7], douta[6], douta[5], douta[4], douta[3], 
douta[2], douta[1], douta[0]}),
    .DOB({doutb[16], doutb[15], doutb[14], doutb[13], doutb[12], doutb[11], doutb[10], doutb[9], doutb[7], doutb[6], doutb[5], doutb[4], doutb[3], 
doutb[2], doutb[1], doutb[0]}),
    .DOPA({douta[17], douta[8]}),
    .DOPB({doutb[17], doutb[8]}),
    .WEA({wea[0], wea[0]}),
    .WEB({web[0], web[0]})
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
