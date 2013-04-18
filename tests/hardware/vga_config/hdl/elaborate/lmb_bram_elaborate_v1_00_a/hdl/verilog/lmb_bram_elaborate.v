//-----------------------------------------------------------------------------
// lmb_bram_elaborate.v
//-----------------------------------------------------------------------------

(* keep_hierarchy = "yes" *)
module lmb_bram_elaborate
  (
    BRAM_Rst_A,
    BRAM_Clk_A,
    BRAM_EN_A,
    BRAM_WEN_A,
    BRAM_Addr_A,
    BRAM_Din_A,
    BRAM_Dout_A,
    BRAM_Rst_B,
    BRAM_Clk_B,
    BRAM_EN_B,
    BRAM_WEN_B,
    BRAM_Addr_B,
    BRAM_Din_B,
    BRAM_Dout_B
  );
  parameter
    C_MEMSIZE = 'h8000,
    C_PORT_DWIDTH = 32,
    C_PORT_AWIDTH = 32,
    C_NUM_WE = 4,
    C_FAMILY = "virtex5";
  input BRAM_Rst_A;
  input BRAM_Clk_A;
  input BRAM_EN_A;
  input [0:C_NUM_WE-1] BRAM_WEN_A;
  input [0:C_PORT_AWIDTH-1] BRAM_Addr_A;
  output [0:C_PORT_DWIDTH-1] BRAM_Din_A;
  input [0:C_PORT_DWIDTH-1] BRAM_Dout_A;
  input BRAM_Rst_B;
  input BRAM_Clk_B;
  input BRAM_EN_B;
  input [0:C_NUM_WE-1] BRAM_WEN_B;
  input [0:C_PORT_AWIDTH-1] BRAM_Addr_B;
  output [0:C_PORT_DWIDTH-1] BRAM_Din_B;
  input [0:C_PORT_DWIDTH-1] BRAM_Dout_B;

  // Internal signals

  wire net_gnd0;
  wire [3:0] net_gnd4;
  wire [0:0] pgassign1;
  wire [0:1] pgassign2;
  wire [0:27] pgassign3;
  wire [15:0] pgassign4;
  wire [31:0] pgassign5;
  wire [31:0] pgassign6;
  wire [3:0] pgassign7;
  wire [15:0] pgassign8;
  wire [31:0] pgassign9;
  wire [31:0] pgassign10;
  wire [3:0] pgassign11;
  wire [15:0] pgassign12;
  wire [31:0] pgassign13;
  wire [31:0] pgassign14;
  wire [3:0] pgassign15;
  wire [15:0] pgassign16;
  wire [31:0] pgassign17;
  wire [31:0] pgassign18;
  wire [3:0] pgassign19;
  wire [15:0] pgassign20;
  wire [31:0] pgassign21;
  wire [31:0] pgassign22;
  wire [3:0] pgassign23;
  wire [15:0] pgassign24;
  wire [31:0] pgassign25;
  wire [31:0] pgassign26;
  wire [3:0] pgassign27;
  wire [15:0] pgassign28;
  wire [31:0] pgassign29;
  wire [31:0] pgassign30;
  wire [3:0] pgassign31;
  wire [15:0] pgassign32;
  wire [31:0] pgassign33;
  wire [31:0] pgassign34;
  wire [3:0] pgassign35;
  wire [15:0] pgassign36;
  wire [31:0] pgassign37;
  wire [31:0] pgassign38;
  wire [3:0] pgassign39;
  wire [15:0] pgassign40;
  wire [31:0] pgassign41;
  wire [31:0] pgassign42;
  wire [3:0] pgassign43;
  wire [15:0] pgassign44;
  wire [31:0] pgassign45;
  wire [31:0] pgassign46;
  wire [3:0] pgassign47;
  wire [15:0] pgassign48;
  wire [31:0] pgassign49;
  wire [31:0] pgassign50;
  wire [3:0] pgassign51;
  wire [15:0] pgassign52;
  wire [31:0] pgassign53;
  wire [31:0] pgassign54;
  wire [3:0] pgassign55;
  wire [15:0] pgassign56;
  wire [31:0] pgassign57;
  wire [31:0] pgassign58;
  wire [3:0] pgassign59;
  wire [15:0] pgassign60;
  wire [31:0] pgassign61;
  wire [31:0] pgassign62;
  wire [3:0] pgassign63;
  wire [15:0] pgassign64;
  wire [31:0] pgassign65;
  wire [31:0] pgassign66;
  wire [3:0] pgassign67;

  // Internal assignments

  assign pgassign1[0:0] = 1'b1;
  assign pgassign2[0:1] = 2'b00;
  assign pgassign3[0:27] = 28'b0000000000000000000000000000;
  assign pgassign4[15:15] = 1'b1;
  assign pgassign4[14:2] = BRAM_Addr_A[17:29];
  assign pgassign4[1:0] = 2'b00;
  assign pgassign5[31:4] = 28'b0000000000000000000000000000;
  assign pgassign5[3:0] = BRAM_Dout_A[0:3];
  assign BRAM_Din_A[0:3] = pgassign6[3:0];
  assign pgassign7[3:3] = BRAM_WEN_A[0:0];
  assign pgassign7[2:2] = BRAM_WEN_A[0:0];
  assign pgassign7[1:1] = BRAM_WEN_A[0:0];
  assign pgassign7[0:0] = BRAM_WEN_A[0:0];
  assign pgassign8[15:15] = 1'b1;
  assign pgassign8[14:2] = BRAM_Addr_B[17:29];
  assign pgassign8[1:0] = 2'b00;
  assign pgassign9[31:4] = 28'b0000000000000000000000000000;
  assign pgassign9[3:0] = BRAM_Dout_B[0:3];
  assign BRAM_Din_B[0:3] = pgassign10[3:0];
  assign pgassign11[3:3] = BRAM_WEN_B[0:0];
  assign pgassign11[2:2] = BRAM_WEN_B[0:0];
  assign pgassign11[1:1] = BRAM_WEN_B[0:0];
  assign pgassign11[0:0] = BRAM_WEN_B[0:0];
  assign pgassign12[15:15] = 1'b1;
  assign pgassign12[14:2] = BRAM_Addr_A[17:29];
  assign pgassign12[1:0] = 2'b00;
  assign pgassign13[31:4] = 28'b0000000000000000000000000000;
  assign pgassign13[3:0] = BRAM_Dout_A[4:7];
  assign BRAM_Din_A[4:7] = pgassign14[3:0];
  assign pgassign15[3:3] = BRAM_WEN_A[0:0];
  assign pgassign15[2:2] = BRAM_WEN_A[0:0];
  assign pgassign15[1:1] = BRAM_WEN_A[0:0];
  assign pgassign15[0:0] = BRAM_WEN_A[0:0];
  assign pgassign16[15:15] = 1'b1;
  assign pgassign16[14:2] = BRAM_Addr_B[17:29];
  assign pgassign16[1:0] = 2'b00;
  assign pgassign17[31:4] = 28'b0000000000000000000000000000;
  assign pgassign17[3:0] = BRAM_Dout_B[4:7];
  assign BRAM_Din_B[4:7] = pgassign18[3:0];
  assign pgassign19[3:3] = BRAM_WEN_B[0:0];
  assign pgassign19[2:2] = BRAM_WEN_B[0:0];
  assign pgassign19[1:1] = BRAM_WEN_B[0:0];
  assign pgassign19[0:0] = BRAM_WEN_B[0:0];
  assign pgassign20[15:15] = 1'b1;
  assign pgassign20[14:2] = BRAM_Addr_A[17:29];
  assign pgassign20[1:0] = 2'b00;
  assign pgassign21[31:4] = 28'b0000000000000000000000000000;
  assign pgassign21[3:0] = BRAM_Dout_A[8:11];
  assign BRAM_Din_A[8:11] = pgassign22[3:0];
  assign pgassign23[3:3] = BRAM_WEN_A[1:1];
  assign pgassign23[2:2] = BRAM_WEN_A[1:1];
  assign pgassign23[1:1] = BRAM_WEN_A[1:1];
  assign pgassign23[0:0] = BRAM_WEN_A[1:1];
  assign pgassign24[15:15] = 1'b1;
  assign pgassign24[14:2] = BRAM_Addr_B[17:29];
  assign pgassign24[1:0] = 2'b00;
  assign pgassign25[31:4] = 28'b0000000000000000000000000000;
  assign pgassign25[3:0] = BRAM_Dout_B[8:11];
  assign BRAM_Din_B[8:11] = pgassign26[3:0];
  assign pgassign27[3:3] = BRAM_WEN_B[1:1];
  assign pgassign27[2:2] = BRAM_WEN_B[1:1];
  assign pgassign27[1:1] = BRAM_WEN_B[1:1];
  assign pgassign27[0:0] = BRAM_WEN_B[1:1];
  assign pgassign28[15:15] = 1'b1;
  assign pgassign28[14:2] = BRAM_Addr_A[17:29];
  assign pgassign28[1:0] = 2'b00;
  assign pgassign29[31:4] = 28'b0000000000000000000000000000;
  assign pgassign29[3:0] = BRAM_Dout_A[12:15];
  assign BRAM_Din_A[12:15] = pgassign30[3:0];
  assign pgassign31[3:3] = BRAM_WEN_A[1:1];
  assign pgassign31[2:2] = BRAM_WEN_A[1:1];
  assign pgassign31[1:1] = BRAM_WEN_A[1:1];
  assign pgassign31[0:0] = BRAM_WEN_A[1:1];
  assign pgassign32[15:15] = 1'b1;
  assign pgassign32[14:2] = BRAM_Addr_B[17:29];
  assign pgassign32[1:0] = 2'b00;
  assign pgassign33[31:4] = 28'b0000000000000000000000000000;
  assign pgassign33[3:0] = BRAM_Dout_B[12:15];
  assign BRAM_Din_B[12:15] = pgassign34[3:0];
  assign pgassign35[3:3] = BRAM_WEN_B[1:1];
  assign pgassign35[2:2] = BRAM_WEN_B[1:1];
  assign pgassign35[1:1] = BRAM_WEN_B[1:1];
  assign pgassign35[0:0] = BRAM_WEN_B[1:1];
  assign pgassign36[15:15] = 1'b1;
  assign pgassign36[14:2] = BRAM_Addr_A[17:29];
  assign pgassign36[1:0] = 2'b00;
  assign pgassign37[31:4] = 28'b0000000000000000000000000000;
  assign pgassign37[3:0] = BRAM_Dout_A[16:19];
  assign BRAM_Din_A[16:19] = pgassign38[3:0];
  assign pgassign39[3:3] = BRAM_WEN_A[2:2];
  assign pgassign39[2:2] = BRAM_WEN_A[2:2];
  assign pgassign39[1:1] = BRAM_WEN_A[2:2];
  assign pgassign39[0:0] = BRAM_WEN_A[2:2];
  assign pgassign40[15:15] = 1'b1;
  assign pgassign40[14:2] = BRAM_Addr_B[17:29];
  assign pgassign40[1:0] = 2'b00;
  assign pgassign41[31:4] = 28'b0000000000000000000000000000;
  assign pgassign41[3:0] = BRAM_Dout_B[16:19];
  assign BRAM_Din_B[16:19] = pgassign42[3:0];
  assign pgassign43[3:3] = BRAM_WEN_B[2:2];
  assign pgassign43[2:2] = BRAM_WEN_B[2:2];
  assign pgassign43[1:1] = BRAM_WEN_B[2:2];
  assign pgassign43[0:0] = BRAM_WEN_B[2:2];
  assign pgassign44[15:15] = 1'b1;
  assign pgassign44[14:2] = BRAM_Addr_A[17:29];
  assign pgassign44[1:0] = 2'b00;
  assign pgassign45[31:4] = 28'b0000000000000000000000000000;
  assign pgassign45[3:0] = BRAM_Dout_A[20:23];
  assign BRAM_Din_A[20:23] = pgassign46[3:0];
  assign pgassign47[3:3] = BRAM_WEN_A[2:2];
  assign pgassign47[2:2] = BRAM_WEN_A[2:2];
  assign pgassign47[1:1] = BRAM_WEN_A[2:2];
  assign pgassign47[0:0] = BRAM_WEN_A[2:2];
  assign pgassign48[15:15] = 1'b1;
  assign pgassign48[14:2] = BRAM_Addr_B[17:29];
  assign pgassign48[1:0] = 2'b00;
  assign pgassign49[31:4] = 28'b0000000000000000000000000000;
  assign pgassign49[3:0] = BRAM_Dout_B[20:23];
  assign BRAM_Din_B[20:23] = pgassign50[3:0];
  assign pgassign51[3:3] = BRAM_WEN_B[2:2];
  assign pgassign51[2:2] = BRAM_WEN_B[2:2];
  assign pgassign51[1:1] = BRAM_WEN_B[2:2];
  assign pgassign51[0:0] = BRAM_WEN_B[2:2];
  assign pgassign52[15:15] = 1'b1;
  assign pgassign52[14:2] = BRAM_Addr_A[17:29];
  assign pgassign52[1:0] = 2'b00;
  assign pgassign53[31:4] = 28'b0000000000000000000000000000;
  assign pgassign53[3:0] = BRAM_Dout_A[24:27];
  assign BRAM_Din_A[24:27] = pgassign54[3:0];
  assign pgassign55[3:3] = BRAM_WEN_A[3:3];
  assign pgassign55[2:2] = BRAM_WEN_A[3:3];
  assign pgassign55[1:1] = BRAM_WEN_A[3:3];
  assign pgassign55[0:0] = BRAM_WEN_A[3:3];
  assign pgassign56[15:15] = 1'b1;
  assign pgassign56[14:2] = BRAM_Addr_B[17:29];
  assign pgassign56[1:0] = 2'b00;
  assign pgassign57[31:4] = 28'b0000000000000000000000000000;
  assign pgassign57[3:0] = BRAM_Dout_B[24:27];
  assign BRAM_Din_B[24:27] = pgassign58[3:0];
  assign pgassign59[3:3] = BRAM_WEN_B[3:3];
  assign pgassign59[2:2] = BRAM_WEN_B[3:3];
  assign pgassign59[1:1] = BRAM_WEN_B[3:3];
  assign pgassign59[0:0] = BRAM_WEN_B[3:3];
  assign pgassign60[15:15] = 1'b1;
  assign pgassign60[14:2] = BRAM_Addr_A[17:29];
  assign pgassign60[1:0] = 2'b00;
  assign pgassign61[31:4] = 28'b0000000000000000000000000000;
  assign pgassign61[3:0] = BRAM_Dout_A[28:31];
  assign BRAM_Din_A[28:31] = pgassign62[3:0];
  assign pgassign63[3:3] = BRAM_WEN_A[3:3];
  assign pgassign63[2:2] = BRAM_WEN_A[3:3];
  assign pgassign63[1:1] = BRAM_WEN_A[3:3];
  assign pgassign63[0:0] = BRAM_WEN_A[3:3];
  assign pgassign64[15:15] = 1'b1;
  assign pgassign64[14:2] = BRAM_Addr_B[17:29];
  assign pgassign64[1:0] = 2'b00;
  assign pgassign65[31:4] = 28'b0000000000000000000000000000;
  assign pgassign65[3:0] = BRAM_Dout_B[28:31];
  assign BRAM_Din_B[28:31] = pgassign66[3:0];
  assign pgassign67[3:3] = BRAM_WEN_B[3:3];
  assign pgassign67[2:2] = BRAM_WEN_B[3:3];
  assign pgassign67[1:1] = BRAM_WEN_B[3:3];
  assign pgassign67[0:0] = BRAM_WEN_B[3:3];
  assign net_gnd0 = 1'b0;
  assign net_gnd4[3:0] = 4'b0000;

  (* BMM_INFO = " " *)

  RAMB36
    #(
      .WRITE_MODE_A ( "WRITE_FIRST" ),
      .WRITE_MODE_B ( "WRITE_FIRST" ),
      .INIT_FILE ( "lmb_bram_combined_0.mem" ),
      .READ_WIDTH_A ( 4 ),
      .READ_WIDTH_B ( 4 ),
      .WRITE_WIDTH_A ( 4 ),
      .WRITE_WIDTH_B ( 4 ),
      .RAM_EXTENSION_A ( "NONE" ),
      .RAM_EXTENSION_B ( "NONE" )
    )
    ramb36_0 (
      .ADDRA ( pgassign4 ),
      .CASCADEINLATA ( net_gnd0 ),
      .CASCADEINREGA ( net_gnd0 ),
      .CASCADEOUTLATA (  ),
      .CASCADEOUTREGA (  ),
      .CLKA ( BRAM_Clk_A ),
      .DIA ( pgassign5 ),
      .DIPA ( net_gnd4 ),
      .DOA ( pgassign6 ),
      .DOPA (  ),
      .ENA ( BRAM_EN_A ),
      .REGCEA ( net_gnd0 ),
      .SSRA ( BRAM_Rst_A ),
      .WEA ( pgassign7 ),
      .ADDRB ( pgassign8 ),
      .CASCADEINLATB ( net_gnd0 ),
      .CASCADEINREGB ( net_gnd0 ),
      .CASCADEOUTLATB (  ),
      .CASCADEOUTREGB (  ),
      .CLKB ( BRAM_Clk_B ),
      .DIB ( pgassign9 ),
      .DIPB ( net_gnd4 ),
      .DOB ( pgassign10 ),
      .DOPB (  ),
      .ENB ( BRAM_EN_B ),
      .REGCEB ( net_gnd0 ),
      .SSRB ( BRAM_Rst_B ),
      .WEB ( pgassign11 )
    );

  (* BMM_INFO = " " *)

  RAMB36
    #(
      .WRITE_MODE_A ( "WRITE_FIRST" ),
      .WRITE_MODE_B ( "WRITE_FIRST" ),
      .INIT_FILE ( "lmb_bram_combined_1.mem" ),
      .READ_WIDTH_A ( 4 ),
      .READ_WIDTH_B ( 4 ),
      .WRITE_WIDTH_A ( 4 ),
      .WRITE_WIDTH_B ( 4 ),
      .RAM_EXTENSION_A ( "NONE" ),
      .RAM_EXTENSION_B ( "NONE" )
    )
    ramb36_1 (
      .ADDRA ( pgassign12 ),
      .CASCADEINLATA ( net_gnd0 ),
      .CASCADEINREGA ( net_gnd0 ),
      .CASCADEOUTLATA (  ),
      .CASCADEOUTREGA (  ),
      .CLKA ( BRAM_Clk_A ),
      .DIA ( pgassign13 ),
      .DIPA ( net_gnd4 ),
      .DOA ( pgassign14 ),
      .DOPA (  ),
      .ENA ( BRAM_EN_A ),
      .REGCEA ( net_gnd0 ),
      .SSRA ( BRAM_Rst_A ),
      .WEA ( pgassign15 ),
      .ADDRB ( pgassign16 ),
      .CASCADEINLATB ( net_gnd0 ),
      .CASCADEINREGB ( net_gnd0 ),
      .CASCADEOUTLATB (  ),
      .CASCADEOUTREGB (  ),
      .CLKB ( BRAM_Clk_B ),
      .DIB ( pgassign17 ),
      .DIPB ( net_gnd4 ),
      .DOB ( pgassign18 ),
      .DOPB (  ),
      .ENB ( BRAM_EN_B ),
      .REGCEB ( net_gnd0 ),
      .SSRB ( BRAM_Rst_B ),
      .WEB ( pgassign19 )
    );

  (* BMM_INFO = " " *)

  RAMB36
    #(
      .WRITE_MODE_A ( "WRITE_FIRST" ),
      .WRITE_MODE_B ( "WRITE_FIRST" ),
      .INIT_FILE ( "lmb_bram_combined_2.mem" ),
      .READ_WIDTH_A ( 4 ),
      .READ_WIDTH_B ( 4 ),
      .WRITE_WIDTH_A ( 4 ),
      .WRITE_WIDTH_B ( 4 ),
      .RAM_EXTENSION_A ( "NONE" ),
      .RAM_EXTENSION_B ( "NONE" )
    )
    ramb36_2 (
      .ADDRA ( pgassign20 ),
      .CASCADEINLATA ( net_gnd0 ),
      .CASCADEINREGA ( net_gnd0 ),
      .CASCADEOUTLATA (  ),
      .CASCADEOUTREGA (  ),
      .CLKA ( BRAM_Clk_A ),
      .DIA ( pgassign21 ),
      .DIPA ( net_gnd4 ),
      .DOA ( pgassign22 ),
      .DOPA (  ),
      .ENA ( BRAM_EN_A ),
      .REGCEA ( net_gnd0 ),
      .SSRA ( BRAM_Rst_A ),
      .WEA ( pgassign23 ),
      .ADDRB ( pgassign24 ),
      .CASCADEINLATB ( net_gnd0 ),
      .CASCADEINREGB ( net_gnd0 ),
      .CASCADEOUTLATB (  ),
      .CASCADEOUTREGB (  ),
      .CLKB ( BRAM_Clk_B ),
      .DIB ( pgassign25 ),
      .DIPB ( net_gnd4 ),
      .DOB ( pgassign26 ),
      .DOPB (  ),
      .ENB ( BRAM_EN_B ),
      .REGCEB ( net_gnd0 ),
      .SSRB ( BRAM_Rst_B ),
      .WEB ( pgassign27 )
    );

  (* BMM_INFO = " " *)

  RAMB36
    #(
      .WRITE_MODE_A ( "WRITE_FIRST" ),
      .WRITE_MODE_B ( "WRITE_FIRST" ),
      .INIT_FILE ( "lmb_bram_combined_3.mem" ),
      .READ_WIDTH_A ( 4 ),
      .READ_WIDTH_B ( 4 ),
      .WRITE_WIDTH_A ( 4 ),
      .WRITE_WIDTH_B ( 4 ),
      .RAM_EXTENSION_A ( "NONE" ),
      .RAM_EXTENSION_B ( "NONE" )
    )
    ramb36_3 (
      .ADDRA ( pgassign28 ),
      .CASCADEINLATA ( net_gnd0 ),
      .CASCADEINREGA ( net_gnd0 ),
      .CASCADEOUTLATA (  ),
      .CASCADEOUTREGA (  ),
      .CLKA ( BRAM_Clk_A ),
      .DIA ( pgassign29 ),
      .DIPA ( net_gnd4 ),
      .DOA ( pgassign30 ),
      .DOPA (  ),
      .ENA ( BRAM_EN_A ),
      .REGCEA ( net_gnd0 ),
      .SSRA ( BRAM_Rst_A ),
      .WEA ( pgassign31 ),
      .ADDRB ( pgassign32 ),
      .CASCADEINLATB ( net_gnd0 ),
      .CASCADEINREGB ( net_gnd0 ),
      .CASCADEOUTLATB (  ),
      .CASCADEOUTREGB (  ),
      .CLKB ( BRAM_Clk_B ),
      .DIB ( pgassign33 ),
      .DIPB ( net_gnd4 ),
      .DOB ( pgassign34 ),
      .DOPB (  ),
      .ENB ( BRAM_EN_B ),
      .REGCEB ( net_gnd0 ),
      .SSRB ( BRAM_Rst_B ),
      .WEB ( pgassign35 )
    );

  (* BMM_INFO = " " *)

  RAMB36
    #(
      .WRITE_MODE_A ( "WRITE_FIRST" ),
      .WRITE_MODE_B ( "WRITE_FIRST" ),
      .INIT_FILE ( "lmb_bram_combined_4.mem" ),
      .READ_WIDTH_A ( 4 ),
      .READ_WIDTH_B ( 4 ),
      .WRITE_WIDTH_A ( 4 ),
      .WRITE_WIDTH_B ( 4 ),
      .RAM_EXTENSION_A ( "NONE" ),
      .RAM_EXTENSION_B ( "NONE" )
    )
    ramb36_4 (
      .ADDRA ( pgassign36 ),
      .CASCADEINLATA ( net_gnd0 ),
      .CASCADEINREGA ( net_gnd0 ),
      .CASCADEOUTLATA (  ),
      .CASCADEOUTREGA (  ),
      .CLKA ( BRAM_Clk_A ),
      .DIA ( pgassign37 ),
      .DIPA ( net_gnd4 ),
      .DOA ( pgassign38 ),
      .DOPA (  ),
      .ENA ( BRAM_EN_A ),
      .REGCEA ( net_gnd0 ),
      .SSRA ( BRAM_Rst_A ),
      .WEA ( pgassign39 ),
      .ADDRB ( pgassign40 ),
      .CASCADEINLATB ( net_gnd0 ),
      .CASCADEINREGB ( net_gnd0 ),
      .CASCADEOUTLATB (  ),
      .CASCADEOUTREGB (  ),
      .CLKB ( BRAM_Clk_B ),
      .DIB ( pgassign41 ),
      .DIPB ( net_gnd4 ),
      .DOB ( pgassign42 ),
      .DOPB (  ),
      .ENB ( BRAM_EN_B ),
      .REGCEB ( net_gnd0 ),
      .SSRB ( BRAM_Rst_B ),
      .WEB ( pgassign43 )
    );

  (* BMM_INFO = " " *)

  RAMB36
    #(
      .WRITE_MODE_A ( "WRITE_FIRST" ),
      .WRITE_MODE_B ( "WRITE_FIRST" ),
      .INIT_FILE ( "lmb_bram_combined_5.mem" ),
      .READ_WIDTH_A ( 4 ),
      .READ_WIDTH_B ( 4 ),
      .WRITE_WIDTH_A ( 4 ),
      .WRITE_WIDTH_B ( 4 ),
      .RAM_EXTENSION_A ( "NONE" ),
      .RAM_EXTENSION_B ( "NONE" )
    )
    ramb36_5 (
      .ADDRA ( pgassign44 ),
      .CASCADEINLATA ( net_gnd0 ),
      .CASCADEINREGA ( net_gnd0 ),
      .CASCADEOUTLATA (  ),
      .CASCADEOUTREGA (  ),
      .CLKA ( BRAM_Clk_A ),
      .DIA ( pgassign45 ),
      .DIPA ( net_gnd4 ),
      .DOA ( pgassign46 ),
      .DOPA (  ),
      .ENA ( BRAM_EN_A ),
      .REGCEA ( net_gnd0 ),
      .SSRA ( BRAM_Rst_A ),
      .WEA ( pgassign47 ),
      .ADDRB ( pgassign48 ),
      .CASCADEINLATB ( net_gnd0 ),
      .CASCADEINREGB ( net_gnd0 ),
      .CASCADEOUTLATB (  ),
      .CASCADEOUTREGB (  ),
      .CLKB ( BRAM_Clk_B ),
      .DIB ( pgassign49 ),
      .DIPB ( net_gnd4 ),
      .DOB ( pgassign50 ),
      .DOPB (  ),
      .ENB ( BRAM_EN_B ),
      .REGCEB ( net_gnd0 ),
      .SSRB ( BRAM_Rst_B ),
      .WEB ( pgassign51 )
    );

  (* BMM_INFO = " " *)

  RAMB36
    #(
      .WRITE_MODE_A ( "WRITE_FIRST" ),
      .WRITE_MODE_B ( "WRITE_FIRST" ),
      .INIT_FILE ( "lmb_bram_combined_6.mem" ),
      .READ_WIDTH_A ( 4 ),
      .READ_WIDTH_B ( 4 ),
      .WRITE_WIDTH_A ( 4 ),
      .WRITE_WIDTH_B ( 4 ),
      .RAM_EXTENSION_A ( "NONE" ),
      .RAM_EXTENSION_B ( "NONE" )
    )
    ramb36_6 (
      .ADDRA ( pgassign52 ),
      .CASCADEINLATA ( net_gnd0 ),
      .CASCADEINREGA ( net_gnd0 ),
      .CASCADEOUTLATA (  ),
      .CASCADEOUTREGA (  ),
      .CLKA ( BRAM_Clk_A ),
      .DIA ( pgassign53 ),
      .DIPA ( net_gnd4 ),
      .DOA ( pgassign54 ),
      .DOPA (  ),
      .ENA ( BRAM_EN_A ),
      .REGCEA ( net_gnd0 ),
      .SSRA ( BRAM_Rst_A ),
      .WEA ( pgassign55 ),
      .ADDRB ( pgassign56 ),
      .CASCADEINLATB ( net_gnd0 ),
      .CASCADEINREGB ( net_gnd0 ),
      .CASCADEOUTLATB (  ),
      .CASCADEOUTREGB (  ),
      .CLKB ( BRAM_Clk_B ),
      .DIB ( pgassign57 ),
      .DIPB ( net_gnd4 ),
      .DOB ( pgassign58 ),
      .DOPB (  ),
      .ENB ( BRAM_EN_B ),
      .REGCEB ( net_gnd0 ),
      .SSRB ( BRAM_Rst_B ),
      .WEB ( pgassign59 )
    );

  (* BMM_INFO = " " *)

  RAMB36
    #(
      .WRITE_MODE_A ( "WRITE_FIRST" ),
      .WRITE_MODE_B ( "WRITE_FIRST" ),
      .INIT_FILE ( "lmb_bram_combined_7.mem" ),
      .READ_WIDTH_A ( 4 ),
      .READ_WIDTH_B ( 4 ),
      .WRITE_WIDTH_A ( 4 ),
      .WRITE_WIDTH_B ( 4 ),
      .RAM_EXTENSION_A ( "NONE" ),
      .RAM_EXTENSION_B ( "NONE" )
    )
    ramb36_7 (
      .ADDRA ( pgassign60 ),
      .CASCADEINLATA ( net_gnd0 ),
      .CASCADEINREGA ( net_gnd0 ),
      .CASCADEOUTLATA (  ),
      .CASCADEOUTREGA (  ),
      .CLKA ( BRAM_Clk_A ),
      .DIA ( pgassign61 ),
      .DIPA ( net_gnd4 ),
      .DOA ( pgassign62 ),
      .DOPA (  ),
      .ENA ( BRAM_EN_A ),
      .REGCEA ( net_gnd0 ),
      .SSRA ( BRAM_Rst_A ),
      .WEA ( pgassign63 ),
      .ADDRB ( pgassign64 ),
      .CASCADEINLATB ( net_gnd0 ),
      .CASCADEINREGB ( net_gnd0 ),
      .CASCADEOUTLATB (  ),
      .CASCADEOUTREGB (  ),
      .CLKB ( BRAM_Clk_B ),
      .DIB ( pgassign65 ),
      .DIPB ( net_gnd4 ),
      .DOB ( pgassign66 ),
      .DOPB (  ),
      .ENB ( BRAM_EN_B ),
      .REGCEB ( net_gnd0 ),
      .SSRB ( BRAM_Rst_B ),
      .WEB ( pgassign67 )
    );

endmodule

