////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.15xf
//  \   \         Application: netgen
//  /   /         Filename: fifo_generator_v9_1.v
// /___/   /\     Timestamp: Tue Apr 16 17:41:23 2013
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog /home/cc/cs150/sp13/class/cs150-bh/cs150/tests/hardware/fifo/src/fifo_gen/tmp/_cg/fifo_generator_v9_1.ngc /home/cc/cs150/sp13/class/cs150-bh/cs150/tests/hardware/fifo/src/fifo_gen/tmp/_cg/fifo_generator_v9_1.v 
// Device	: 5vfx100tff1136-1
// Input file	: /home/cc/cs150/sp13/class/cs150-bh/cs150/tests/hardware/fifo/src/fifo_gen/tmp/_cg/fifo_generator_v9_1.ngc
// Output file	: /home/cc/cs150/sp13/class/cs150-bh/cs150/tests/hardware/fifo/src/fifo_gen/tmp/_cg/fifo_generator_v9_1.v
// # of Modules	: 1
// Design Name	: fifo_generator_v9_1
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

module fifo_generator_v9_1 (
  clk, rd_en, rst, empty, wr_en, full, dout, din
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input rd_en;
  input rst;
  output empty;
  input wr_en;
  output full;
  output [17 : 0] dout;
  input [17 : 0] din;
  
  // synthesis translate_off
  
  wire N0;
  wire N1;
  wire \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/comp0 ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/comp1 ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_22 ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or0000 ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_i_24 ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<1>_rt_27 ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<2>_rt_29 ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<3>_rt_31 ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<4>_rt_33 ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<5>_rt_35 ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<6>_rt_37 ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<7>_rt_39 ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<8>_rt_41 ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<9>_rt_43 ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/comp0 ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/comp1 ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i_95 ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_96 ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<1>_rt_99 ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<2>_rt_101 ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<3>_rt_103 ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<4>_rt_105 ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<5>_rt_107 ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<6>_rt_109 ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<7>_rt_111 ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<8>_rt_113 ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<9>_rt_115 ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN_149 ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_150 ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d1_151 ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2_152 ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_comb ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[0] ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d1_156 ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2_157 ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3_158 ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_159 ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d1_160 ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2_161 ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_comb ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA<15>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA<14>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA<13>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA<12>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA<11>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA<10>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA<9>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA<8>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA<7>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA<6>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA<5>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA<4>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA<3>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA<2>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA<1>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA<0>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOPA<1>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOPA<0>_UNCONNECTED ;
  wire [3 : 0] \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/carrynet ;
  wire [4 : 0] \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/v1 ;
  wire [3 : 0] \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/carrynet ;
  wire [4 : 0] \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/v1 ;
  wire [8 : 0] \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy ;
  wire [0 : 0] \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_lut ;
  wire [9 : 0] \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Result ;
  wire [9 : 0] \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count ;
  wire [9 : 0] \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 ;
  wire [3 : 0] \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/carrynet ;
  wire [4 : 0] \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/v1 ;
  wire [3 : 0] \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/carrynet ;
  wire [4 : 0] \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/v1 ;
  wire [8 : 0] \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy ;
  wire [0 : 0] \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_lut ;
  wire [9 : 0] \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Result ;
  wire [9 : 0] \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count ;
  wire [9 : 0] \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 ;
  wire [1 : 1] \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg ;
  assign
    empty = \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_i_24 ,
    full = \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_96 ;
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  FDP #(
    .INIT ( 1'b1 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_i  (
    .C(clk),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or0000 ),
    .PRE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_i_24 )
  );
  FDP #(
    .INIT ( 1'b1 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i  (
    .C(clk),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or0000 ),
    .PRE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_22 )
  );
  FDP #(
    .INIT ( 1'b1 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i  (
    .C(clk),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb ),
    .PRE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2_157 ),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i_95 )
  );
  FDP #(
    .INIT ( 1'b1 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i  (
    .C(clk),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb ),
    .PRE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2_157 ),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_96 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN  (
    .C(clk),
    .CLR(rst),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3_158 ),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN_149 )
  );
  FDP #(
    .INIT ( 1'b1 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3  (
    .C(clk),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2_157 ),
    .PRE(rst),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3_158 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2  (
    .C(clk),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d1_151 ),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2_152 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2  (
    .C(clk),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d1_160 ),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2_161 )
  );
  FDP #(
    .INIT ( 1'b1 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2  (
    .C(clk),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d1_156 ),
    .PRE(rst),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2_157 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d1  (
    .C(clk),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_150 ),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d1_151 )
  );
  FDPE   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg  (
    .C(clk),
    .CE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d1_160 ),
    .D(N0),
    .PRE(rst),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_159 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d1  (
    .C(clk),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_159 ),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d1_160 )
  );
  FDPE   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg  (
    .C(clk),
    .CE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d1_151 ),
    .D(N0),
    .PRE(rst),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_150 )
  );
  FDP #(
    .INIT ( 1'b1 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d1  (
    .C(clk),
    .D(N0),
    .PRE(rst),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d1_156 )
  );
  FDP #(
    .INIT ( 1'b1 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg_2  (
    .C(clk),
    .D(N0),
    .PRE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_comb ),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] )
  );
  FDP #(
    .INIT ( 1'b1 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg_0  (
    .C(clk),
    .D(N0),
    .PRE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_comb ),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[0] )
  );
  FDP #(
    .INIT ( 1'b1 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg_1  (
    .C(clk),
    .D(N0),
    .PRE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_comb ),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1])
  );
  XORCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<9>  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy [8]),
    .LI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<9>_rt_43 ),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Result [9])
  );
  XORCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<8>  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy [7]),
    .LI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<8>_rt_41 ),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Result [8])
  );
  MUXCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<8>  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy [7]),
    .DI(N0),
    .S(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<8>_rt_41 ),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy [8])
  );
  XORCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<7>  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy [6]),
    .LI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<7>_rt_39 ),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Result [7])
  );
  MUXCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<7>  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy [6]),
    .DI(N0),
    .S(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<7>_rt_39 ),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy [7])
  );
  XORCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<6>  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy [5]),
    .LI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<6>_rt_37 ),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Result [6])
  );
  MUXCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<6>  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy [5]),
    .DI(N0),
    .S(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<6>_rt_37 ),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy [6])
  );
  XORCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<5>  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy [4]),
    .LI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<5>_rt_35 ),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Result [5])
  );
  MUXCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<5>  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy [4]),
    .DI(N0),
    .S(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<5>_rt_35 ),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy [5])
  );
  XORCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<4>  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy [3]),
    .LI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<4>_rt_33 ),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Result [4])
  );
  MUXCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<4>  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy [3]),
    .DI(N0),
    .S(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<4>_rt_33 ),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy [4])
  );
  XORCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<3>  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy [2]),
    .LI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<3>_rt_31 ),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Result [3])
  );
  MUXCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<3>  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy [2]),
    .DI(N0),
    .S(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<3>_rt_31 ),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy [3])
  );
  XORCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<2>  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy [1]),
    .LI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<2>_rt_29 ),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Result [2])
  );
  MUXCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<2>  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy [1]),
    .DI(N0),
    .S(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<2>_rt_29 ),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy [2])
  );
  XORCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<1>  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy [0]),
    .LI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<1>_rt_27 ),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Result [1])
  );
  MUXCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<1>  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy [0]),
    .DI(N0),
    .S(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<1>_rt_27 ),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy [1])
  );
  XORCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<0>  (
    .CI(N0),
    .LI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_lut [0]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Result [0])
  );
  MUXCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_lut [0]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy [0])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_9  (
    .C(clk),
    .CE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .CLR(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Result [9]),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [9])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_8  (
    .C(clk),
    .CE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .CLR(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Result [8]),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [8])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_6  (
    .C(clk),
    .CE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .CLR(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Result [6]),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [6])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_5  (
    .C(clk),
    .CE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .CLR(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Result [5]),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [5])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_7  (
    .C(clk),
    .CE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .CLR(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Result [7]),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [7])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_3  (
    .C(clk),
    .CE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .CLR(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Result [3]),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [3])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_2  (
    .C(clk),
    .CE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .CLR(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Result [2]),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [2])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_4  (
    .C(clk),
    .CE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .CLR(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Result [4]),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [4])
  );
  FDPE #(
    .INIT ( 1'b1 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_0  (
    .C(clk),
    .CE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Result [0]),
    .PRE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_1  (
    .C(clk),
    .CE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .CLR(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Result [1]),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_9  (
    .C(clk),
    .CE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .CLR(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [9]),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [9])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_8  (
    .C(clk),
    .CE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .CLR(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [8]),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [8])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_7  (
    .C(clk),
    .CE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .CLR(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [7]),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [7])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_6  (
    .C(clk),
    .CE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .CLR(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [6]),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [6])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_5  (
    .C(clk),
    .CE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .CLR(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [5]),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [5])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_4  (
    .C(clk),
    .CE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .CLR(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [4]),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [4])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_3  (
    .C(clk),
    .CE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .CLR(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [3]),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [3])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_2  (
    .C(clk),
    .CE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .CLR(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [2]),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [2])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_1  (
    .C(clk),
    .CE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .CLR(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [1]),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_0  (
    .C(clk),
    .CE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .CLR(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0]),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [0])
  );
  XORCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<9>  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy [8]),
    .LI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<9>_rt_115 ),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Result [9])
  );
  XORCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<8>  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy [7]),
    .LI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<8>_rt_113 ),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Result [8])
  );
  MUXCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<8>  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy [7]),
    .DI(N0),
    .S(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<8>_rt_113 ),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy [8])
  );
  XORCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<7>  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy [6]),
    .LI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<7>_rt_111 ),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Result [7])
  );
  MUXCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<7>  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy [6]),
    .DI(N0),
    .S(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<7>_rt_111 ),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy [7])
  );
  XORCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<6>  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy [5]),
    .LI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<6>_rt_109 ),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Result [6])
  );
  MUXCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<6>  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy [5]),
    .DI(N0),
    .S(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<6>_rt_109 ),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy [6])
  );
  XORCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<5>  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy [4]),
    .LI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<5>_rt_107 ),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Result [5])
  );
  MUXCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<5>  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy [4]),
    .DI(N0),
    .S(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<5>_rt_107 ),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy [5])
  );
  XORCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<4>  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy [3]),
    .LI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<4>_rt_105 ),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Result [4])
  );
  MUXCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<4>  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy [3]),
    .DI(N0),
    .S(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<4>_rt_105 ),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy [4])
  );
  XORCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<3>  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy [2]),
    .LI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<3>_rt_103 ),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Result [3])
  );
  MUXCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<3>  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy [2]),
    .DI(N0),
    .S(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<3>_rt_103 ),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy [3])
  );
  XORCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<2>  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy [1]),
    .LI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<2>_rt_101 ),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Result [2])
  );
  MUXCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<2>  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy [1]),
    .DI(N0),
    .S(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<2>_rt_101 ),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy [2])
  );
  XORCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<1>  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy [0]),
    .LI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<1>_rt_99 ),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Result [1])
  );
  MUXCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<1>  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy [0]),
    .DI(N0),
    .S(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<1>_rt_99 ),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy [1])
  );
  XORCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<0>  (
    .CI(N0),
    .LI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_lut [0]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Result [0])
  );
  MUXCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_lut [0]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy [0])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_9  (
    .C(clk),
    .CE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en ),
    .CLR(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Result [9]),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [9])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_8  (
    .C(clk),
    .CE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en ),
    .CLR(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Result [8]),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [8])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_6  (
    .C(clk),
    .CE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en ),
    .CLR(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Result [6]),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [6])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_5  (
    .C(clk),
    .CE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en ),
    .CLR(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Result [5]),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [5])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_7  (
    .C(clk),
    .CE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en ),
    .CLR(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Result [7]),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [7])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_3  (
    .C(clk),
    .CE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en ),
    .CLR(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Result [3]),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [3])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_2  (
    .C(clk),
    .CE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en ),
    .CLR(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Result [2]),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [2])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_4  (
    .C(clk),
    .CE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en ),
    .CLR(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Result [4]),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [4])
  );
  FDPE #(
    .INIT ( 1'b1 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_0  (
    .C(clk),
    .CE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en ),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Result [0]),
    .PRE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1]),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [0])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_1  (
    .C(clk),
    .CE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en ),
    .CLR(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Result [1]),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_9  (
    .C(clk),
    .CE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en ),
    .CLR(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [9]),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [9])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_8  (
    .C(clk),
    .CE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en ),
    .CLR(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [8]),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [8])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_7  (
    .C(clk),
    .CE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en ),
    .CLR(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [7]),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [7])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_6  (
    .C(clk),
    .CE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en ),
    .CLR(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [6]),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [6])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_5  (
    .C(clk),
    .CE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en ),
    .CLR(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [5]),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [5])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_4  (
    .C(clk),
    .CE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en ),
    .CLR(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [4]),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [4])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_3  (
    .C(clk),
    .CE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en ),
    .CLR(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [3]),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [3])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_2  (
    .C(clk),
    .CE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en ),
    .CLR(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [2]),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [2])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_1  (
    .C(clk),
    .CE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en ),
    .CLR(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [1]),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_0  (
    .C(clk),
    .CE(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en ),
    .CLR(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [0]),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [0])
  );
  MUXCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[4].gms.ms  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/carrynet [3]),
    .DI(N0),
    .S(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/v1 [4]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/comp0 )
  );
  MUXCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[3].gms.ms  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/carrynet [2]),
    .DI(N0),
    .S(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/v1 [3]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/carrynet [3])
  );
  MUXCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[2].gms.ms  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/carrynet [1]),
    .DI(N0),
    .S(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/v1 [2]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/carrynet [2])
  );
  MUXCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[1].gms.ms  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/carrynet [0]),
    .DI(N0),
    .S(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/v1 [1]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/carrynet [1])
  );
  MUXCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[0].gm1.m1  (
    .CI(N1),
    .DI(N0),
    .S(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/v1 [0]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/carrynet [0])
  );
  MUXCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[4].gms.ms  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/carrynet [3]),
    .DI(N0),
    .S(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/v1 [4]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/comp1 )
  );
  MUXCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[3].gms.ms  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/carrynet [2]),
    .DI(N0),
    .S(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/v1 [3]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/carrynet [3])
  );
  MUXCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[2].gms.ms  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/carrynet [1]),
    .DI(N0),
    .S(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/v1 [2]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/carrynet [2])
  );
  MUXCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[1].gms.ms  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/carrynet [0]),
    .DI(N0),
    .S(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/v1 [1]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/carrynet [1])
  );
  MUXCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[0].gm1.m1  (
    .CI(N1),
    .DI(N0),
    .S(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/v1 [0]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/carrynet [0])
  );
  MUXCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[4].gms.ms  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/carrynet [3]),
    .DI(N0),
    .S(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/v1 [4]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/comp0 )
  );
  MUXCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[3].gms.ms  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/carrynet [2]),
    .DI(N0),
    .S(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/v1 [3]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/carrynet [3])
  );
  MUXCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[2].gms.ms  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/carrynet [1]),
    .DI(N0),
    .S(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/v1 [2]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/carrynet [2])
  );
  MUXCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[1].gms.ms  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/carrynet [0]),
    .DI(N0),
    .S(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/v1 [1]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/carrynet [1])
  );
  MUXCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[0].gm1.m1  (
    .CI(N1),
    .DI(N0),
    .S(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/v1 [0]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/carrynet [0])
  );
  MUXCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[4].gms.ms  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/carrynet [3]),
    .DI(N0),
    .S(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/v1 [4]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/comp1 )
  );
  MUXCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[3].gms.ms  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/carrynet [2]),
    .DI(N0),
    .S(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/v1 [3]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/carrynet [3])
  );
  MUXCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[2].gms.ms  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/carrynet [1]),
    .DI(N0),
    .S(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/v1 [2]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/carrynet [2])
  );
  MUXCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[1].gms.ms  (
    .CI(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/carrynet [0]),
    .DI(N0),
    .S(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/v1 [1]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/carrynet [1])
  );
  MUXCY   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[0].gm1.m1  (
    .CI(N1),
    .DI(N0),
    .S(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/v1 [0]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/carrynet [0])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_comb1  (
    .I0(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_159 ),
    .I1(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2_161 ),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_comb )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_comb1  (
    .I0(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_150 ),
    .I1(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2_152 ),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_comb )
  );
  LUT3 #(
    .INIT ( 8'hCE ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en1  (
    .I0(rd_en),
    .I1(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[0] ),
    .I2(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_22 ),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/ram_rd_en_i1  (
    .I0(rd_en),
    .I1(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_22 ),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/ram_wr_en_i1  (
    .I0(wr_en),
    .I1(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i_95 ),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/v1_4_and00001  (
    .I0(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [9]),
    .I1(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [9]),
    .I2(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [8]),
    .I3(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [8]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/v1 [4])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/v1_4_and00001  (
    .I0(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [9]),
    .I1(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [9]),
    .I2(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [8]),
    .I3(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [8]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/v1 [4])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/v1_4_and00001  (
    .I0(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [9]),
    .I1(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [9]),
    .I2(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [8]),
    .I3(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [8]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/v1 [4])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/v1_4_and00001  (
    .I0(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [9]),
    .I1(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [9]),
    .I2(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [8]),
    .I3(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [8]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/v1 [4])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/v1_3_and00001  (
    .I0(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [7]),
    .I1(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [7]),
    .I2(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [6]),
    .I3(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [6]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/v1 [3])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/v1_3_and00001  (
    .I0(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [7]),
    .I1(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [7]),
    .I2(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [6]),
    .I3(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [6]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/v1 [3])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/v1_3_and00001  (
    .I0(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [7]),
    .I1(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [7]),
    .I2(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [6]),
    .I3(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [6]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/v1 [3])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/v1_3_and00001  (
    .I0(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [7]),
    .I1(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [7]),
    .I2(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [6]),
    .I3(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [6]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/v1 [3])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/v1_2_and00001  (
    .I0(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [5]),
    .I1(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [5]),
    .I2(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [4]),
    .I3(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [4]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/v1 [2])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/v1_2_and00001  (
    .I0(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [5]),
    .I1(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [5]),
    .I2(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [4]),
    .I3(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [4]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/v1 [2])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/v1_2_and00001  (
    .I0(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [5]),
    .I1(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [5]),
    .I2(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [4]),
    .I3(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [4]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/v1 [2])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/v1_2_and00001  (
    .I0(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [5]),
    .I1(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [5]),
    .I2(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [4]),
    .I3(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [4]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/v1 [2])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/v1_1_and00001  (
    .I0(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [3]),
    .I1(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [3]),
    .I2(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [2]),
    .I3(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [2]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/v1 [1])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/v1_1_and00001  (
    .I0(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [3]),
    .I1(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [3]),
    .I2(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [2]),
    .I3(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [2]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/v1 [1])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/v1_1_and00001  (
    .I0(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [3]),
    .I1(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [3]),
    .I2(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [2]),
    .I3(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [2]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/v1 [1])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/v1_1_and00001  (
    .I0(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [3]),
    .I1(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [3]),
    .I2(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [2]),
    .I3(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [2]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/v1 [1])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/v1_0_and00001  (
    .I0(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [1]),
    .I1(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [1]),
    .I2(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [0]),
    .I3(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [0]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/v1 [0])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/v1_0_and00001  (
    .I0(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [1]),
    .I1(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [1]),
    .I2(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [0]),
    .I3(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [0]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/v1 [0])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/v1_0_and00001  (
    .I0(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [1]),
    .I1(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [1]),
    .I2(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0]),
    .I3(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [0]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/v1 [0])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/v1_0_and00001  (
    .I0(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [1]),
    .I1(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [1]),
    .I2(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [0]),
    .I3(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [0]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/v1 [0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<8>_rt  (
    .I0(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [8]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<8>_rt_41 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<7>_rt  (
    .I0(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [7]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<7>_rt_39 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<6>_rt  (
    .I0(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [6]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<6>_rt_37 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<5>_rt  (
    .I0(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [5]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<5>_rt_35 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<4>_rt  (
    .I0(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [4]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<4>_rt_33 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<3>_rt  (
    .I0(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [3]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<3>_rt_31 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<2>_rt  (
    .I0(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [2]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<2>_rt_29 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<1>_rt  (
    .I0(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [1]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<1>_rt_27 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<8>_rt  (
    .I0(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [8]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<8>_rt_113 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<7>_rt  (
    .I0(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [7]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<7>_rt_111 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<6>_rt  (
    .I0(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [6]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<6>_rt_109 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<5>_rt  (
    .I0(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [5]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<5>_rt_107 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<4>_rt  (
    .I0(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [4]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<4>_rt_105 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<3>_rt  (
    .I0(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [3]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<3>_rt_103 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<2>_rt  (
    .I0(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [2]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<2>_rt_101 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<1>_rt  (
    .I0(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [1]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<1>_rt_99 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<9>_rt  (
    .I0(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [9]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<9>_rt_43 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<9>_rt  (
    .I0(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [9]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<9>_rt_115 )
  );
  LUT6 #(
    .INIT ( 64'h0702020227222222 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb1  (
    .I0(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i_95 ),
    .I1(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN_149 ),
    .I2(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .I3(wr_en),
    .I4(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/comp1 ),
    .I5(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/comp0 ),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb )
  );
  LUT6 #(
    .INIT ( 64'hF3A2F300FFA2FF00 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or00001  (
    .I0(rd_en),
    .I1(wr_en),
    .I2(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i_95 ),
    .I3(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_22 ),
    .I4(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/comp1 ),
    .I5(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/comp0 ),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or0000 )
  );
  INV   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_lut<0>_INV_0  (
    .I(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_lut [0])
  );
  INV   \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_lut<0>_INV_0  (
    .I(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [0]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_lut [0])
  );
  RAMB18 #(
    .DOA_REG ( 0 ),
    .DOB_REG ( 0 ),
    .INIT_A ( 18'h00000 ),
    .INIT_B ( 18'h00000 ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SRVAL_A ( 18'h00000 ),
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
    .INIT_FILE ( "NONE" ),
    .READ_WIDTH_A ( 18 ),
    .READ_WIDTH_B ( 18 ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .SIM_MODE ( "SAFE" ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .WRITE_MODE_A ( "READ_FIRST" ),
    .WRITE_MODE_B ( "READ_FIRST" ),
    .WRITE_WIDTH_A ( 18 ),
    .WRITE_WIDTH_B ( 18 ),
    .SRVAL_B ( 18'h00000 ))
  \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP  (
    .CLKA(clk),
    .CLKB(clk),
    .ENA(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en ),
    .ENB(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en ),
    .REGCEA(N0),
    .REGCEB(N0),
    .SSRA(N0),
    .SSRB(\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[0] ),
    .ADDRA({\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [9], 
\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [8], 
\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [7], 
\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [6], 
\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [5], 
\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [4], 
\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [3], 
\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [2], 
\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [1], 
\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [0], N0, N0, N0, N0}),
    .ADDRB({\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [9], 
\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [8], 
\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [7], 
\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [6], 
\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [5], 
\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [4], 
\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [3], 
\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [2], 
\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [1], 
\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [0], N0, N0, N0, N0}),
    .DIA({din[16], din[15], din[14], din[13], din[12], din[11], din[10], din[9], din[7], din[6], din[5], din[4], din[3], din[2], din[1], din[0]}),
    .DIB({N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0}),
    .DIPA({din[17], din[8]}),
    .DIPB({N0, N0}),
    .DOA({
\NLW_U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA<15>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA<14>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA<13>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA<12>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA<11>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA<10>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA<9>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA<8>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA<7>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA<6>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA<5>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA<4>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA<3>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA<2>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA<1>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA<0>_UNCONNECTED 
}),
    .DOB({dout[16], dout[15], dout[14], dout[13], dout[12], dout[11], dout[10], dout[9], dout[7], dout[6], dout[5], dout[4], dout[3], dout[2], dout[1]
, dout[0]}),
    .DOPA({
\NLW_U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOPA<1>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOPA<0>_UNCONNECTED 
}),
    .DOPB({dout[17], dout[8]}),
    .WEA({\U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en , \U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en }),
    .WEB({N0, N0})
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
