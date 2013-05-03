//-----------------------------------------------------------------------------
// system_readcop_0_wrapper.v
//-----------------------------------------------------------------------------

module system_readcop_0_wrapper
  (
    system_dcm_locked,
    XIL_NPI_Addr,
    XIL_NPI_AddrReq,
    XIL_NPI_AddrAck,
    XIL_NPI_RNW,
    XIL_NPI_Size,
    XIL_NPI_WrFIFO_Data,
    XIL_NPI_WrFIFO_BE,
    XIL_NPI_WrFIFO_Push,
    XIL_NPI_RdFIFO_Data,
    XIL_NPI_RdFIFO_Pop,
    XIL_NPI_RdFIFO_RdWdAddr,
    XIL_NPI_WrFIFO_Empty,
    XIL_NPI_WrFIFO_AlmostFull,
    XIL_NPI_WrFIFO_Flush,
    XIL_NPI_RdFIFO_Empty,
    XIL_NPI_RdFIFO_Flush,
    XIL_NPI_RdFIFO_Latency,
    XIL_NPI_RdModWr,
    XIL_NPI_InitDone,
    GPIO_COMPSW_1,
    GPIO_COMPSW_2,
    DVI_D,
    DVI_DE,
    DVI_H,
    DVI_RESET_B,
    DVI_V,
    DVI_XCLK_N,
    DVI_XCLK_P,
    FSL_Clk,
    FSL_Rst,
    FSL_S_Clk,
    FSL_S_Read,
    FSL_S_Data,
    FSL_S_Control,
    FSL_S_Exists,
    FSL_M_Clk,
    FSL_M_Write,
    FSL_M_Data,
    FSL_M_Control,
    FSL_M_Full,
    IIC_SCL_VIDEO_I,
    IIC_SCL_VIDEO_O,
    IIC_SCL_VIDEO_T,
    IIC_SDA_VIDEO_I,
    IIC_SDA_VIDEO_O,
    IIC_SDA_VIDEO_T
  );
  input system_dcm_locked;
  output [31:0] XIL_NPI_Addr;
  output XIL_NPI_AddrReq;
  input XIL_NPI_AddrAck;
  output XIL_NPI_RNW;
  output [3:0] XIL_NPI_Size;
  output [63:0] XIL_NPI_WrFIFO_Data;
  output [7:0] XIL_NPI_WrFIFO_BE;
  output XIL_NPI_WrFIFO_Push;
  input [63:0] XIL_NPI_RdFIFO_Data;
  output XIL_NPI_RdFIFO_Pop;
  input [3:0] XIL_NPI_RdFIFO_RdWdAddr;
  input XIL_NPI_WrFIFO_Empty;
  input XIL_NPI_WrFIFO_AlmostFull;
  output XIL_NPI_WrFIFO_Flush;
  input XIL_NPI_RdFIFO_Empty;
  output XIL_NPI_RdFIFO_Flush;
  input [1:0] XIL_NPI_RdFIFO_Latency;
  output XIL_NPI_RdModWr;
  input XIL_NPI_InitDone;
  input GPIO_COMPSW_1;
  input GPIO_COMPSW_2;
  output [11:0] DVI_D;
  output DVI_DE;
  output DVI_H;
  output DVI_RESET_B;
  output DVI_V;
  output DVI_XCLK_N;
  output DVI_XCLK_P;
  input FSL_Clk;
  input FSL_Rst;
  input FSL_S_Clk;
  output FSL_S_Read;
  input [0:31] FSL_S_Data;
  input FSL_S_Control;
  input FSL_S_Exists;
  input FSL_M_Clk;
  output FSL_M_Write;
  output [0:31] FSL_M_Data;
  output FSL_M_Control;
  input FSL_M_Full;
  input IIC_SCL_VIDEO_I;
  output IIC_SCL_VIDEO_O;
  output IIC_SCL_VIDEO_T;
  input IIC_SDA_VIDEO_I;
  output IIC_SDA_VIDEO_O;
  output IIC_SDA_VIDEO_T;

  readcop
    #(
      .C_PI_ADDR_WIDTH ( 'h00000020 ),
      .C_PI_DATA_WIDTH ( 'h00000040 ),
      .C_PI_BE_WIDTH ( 'h00000008 ),
      .C_PI_RDWDADDR_WIDTH ( 'h00000004 )
    )
    readcop_0 (
      .system_dcm_locked ( system_dcm_locked ),
      .XIL_NPI_Addr ( XIL_NPI_Addr ),
      .XIL_NPI_AddrReq ( XIL_NPI_AddrReq ),
      .XIL_NPI_AddrAck ( XIL_NPI_AddrAck ),
      .XIL_NPI_RNW ( XIL_NPI_RNW ),
      .XIL_NPI_Size ( XIL_NPI_Size ),
      .XIL_NPI_WrFIFO_Data ( XIL_NPI_WrFIFO_Data ),
      .XIL_NPI_WrFIFO_BE ( XIL_NPI_WrFIFO_BE ),
      .XIL_NPI_WrFIFO_Push ( XIL_NPI_WrFIFO_Push ),
      .XIL_NPI_RdFIFO_Data ( XIL_NPI_RdFIFO_Data ),
      .XIL_NPI_RdFIFO_Pop ( XIL_NPI_RdFIFO_Pop ),
      .XIL_NPI_RdFIFO_RdWdAddr ( XIL_NPI_RdFIFO_RdWdAddr ),
      .XIL_NPI_WrFIFO_Empty ( XIL_NPI_WrFIFO_Empty ),
      .XIL_NPI_WrFIFO_AlmostFull ( XIL_NPI_WrFIFO_AlmostFull ),
      .XIL_NPI_WrFIFO_Flush ( XIL_NPI_WrFIFO_Flush ),
      .XIL_NPI_RdFIFO_Empty ( XIL_NPI_RdFIFO_Empty ),
      .XIL_NPI_RdFIFO_Flush ( XIL_NPI_RdFIFO_Flush ),
      .XIL_NPI_RdFIFO_Latency ( XIL_NPI_RdFIFO_Latency ),
      .XIL_NPI_RdModWr ( XIL_NPI_RdModWr ),
      .XIL_NPI_InitDone ( XIL_NPI_InitDone ),
      .GPIO_COMPSW_1 ( GPIO_COMPSW_1 ),
      .GPIO_COMPSW_2 ( GPIO_COMPSW_2 ),
      .DVI_D ( DVI_D ),
      .DVI_DE ( DVI_DE ),
      .DVI_H ( DVI_H ),
      .DVI_RESET_B ( DVI_RESET_B ),
      .DVI_V ( DVI_V ),
      .DVI_XCLK_N ( DVI_XCLK_N ),
      .DVI_XCLK_P ( DVI_XCLK_P ),
      .FSL_Clk ( FSL_Clk ),
      .FSL_Rst ( FSL_Rst ),
      .FSL_S_Clk ( FSL_S_Clk ),
      .FSL_S_Read ( FSL_S_Read ),
      .FSL_S_Data ( FSL_S_Data ),
      .FSL_S_Control ( FSL_S_Control ),
      .FSL_S_Exists ( FSL_S_Exists ),
      .FSL_M_Clk ( FSL_M_Clk ),
      .FSL_M_Write ( FSL_M_Write ),
      .FSL_M_Data ( FSL_M_Data ),
      .FSL_M_Control ( FSL_M_Control ),
      .FSL_M_Full ( FSL_M_Full ),
      .IIC_SCL_VIDEO_I ( IIC_SCL_VIDEO_I ),
      .IIC_SCL_VIDEO_O ( IIC_SCL_VIDEO_O ),
      .IIC_SCL_VIDEO_T ( IIC_SCL_VIDEO_T ),
      .IIC_SDA_VIDEO_I ( IIC_SDA_VIDEO_I ),
      .IIC_SDA_VIDEO_O ( IIC_SDA_VIDEO_O ),
      .IIC_SDA_VIDEO_T ( IIC_SDA_VIDEO_T )
    );

endmodule

