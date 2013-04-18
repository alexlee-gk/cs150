//-----------------------------------------------------------------------------
// vga_config_lmb_bram_wrapper.v
//-----------------------------------------------------------------------------

(* x_core_info = "lmb_bram_elaborate_v1_00_a" *)
(* keep_hierarchy = "yes" *)
module vga_config_lmb_bram_wrapper
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
  input BRAM_Rst_A;
  input BRAM_Clk_A;
  input BRAM_EN_A;
  input [0:3] BRAM_WEN_A;
  input [0:31] BRAM_Addr_A;
  output [0:31] BRAM_Din_A;
  input [0:31] BRAM_Dout_A;
  input BRAM_Rst_B;
  input BRAM_Clk_B;
  input BRAM_EN_B;
  input [0:3] BRAM_WEN_B;
  input [0:31] BRAM_Addr_B;
  output [0:31] BRAM_Din_B;
  input [0:31] BRAM_Dout_B;

  lmb_bram_elaborate
    #(
      .C_MEMSIZE ( 'h8000 ),
      .C_PORT_DWIDTH ( 32 ),
      .C_PORT_AWIDTH ( 32 ),
      .C_NUM_WE ( 4 ),
      .C_FAMILY ( "virtex5" )
    )
    lmb_bram (
      .BRAM_Rst_A ( BRAM_Rst_A ),
      .BRAM_Clk_A ( BRAM_Clk_A ),
      .BRAM_EN_A ( BRAM_EN_A ),
      .BRAM_WEN_A ( BRAM_WEN_A ),
      .BRAM_Addr_A ( BRAM_Addr_A ),
      .BRAM_Din_A ( BRAM_Din_A ),
      .BRAM_Dout_A ( BRAM_Dout_A ),
      .BRAM_Rst_B ( BRAM_Rst_B ),
      .BRAM_Clk_B ( BRAM_Clk_B ),
      .BRAM_EN_B ( BRAM_EN_B ),
      .BRAM_WEN_B ( BRAM_WEN_B ),
      .BRAM_Addr_B ( BRAM_Addr_B ),
      .BRAM_Din_B ( BRAM_Din_B ),
      .BRAM_Dout_B ( BRAM_Dout_B )
    );

endmodule

