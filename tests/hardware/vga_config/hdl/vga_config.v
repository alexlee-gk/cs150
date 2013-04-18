//-----------------------------------------------------------------------------
// vga_config.v
//-----------------------------------------------------------------------------

module vga_config
  (
    fpga_0_RS232_Uart_1_RX_pin,
    fpga_0_RS232_Uart_1_TX_pin,
    fpga_0_clk_1_sys_clk_pin,
    fpga_0_rst_1_sys_rst_pin,
    xps_iic_0_Gpo_pin,
    xps_iic_0_Sda_pin,
    xps_iic_0_Scl_pin,
    clock_generator_0_CLKOUT1_pin
  );
  input fpga_0_RS232_Uart_1_RX_pin;
  output fpga_0_RS232_Uart_1_TX_pin;
  input fpga_0_clk_1_sys_clk_pin;
  input fpga_0_rst_1_sys_rst_pin;
  output xps_iic_0_Gpo_pin;
  inout xps_iic_0_Sda_pin;
  inout xps_iic_0_Scl_pin;
  output clock_generator_0_CLKOUT1_pin;

  // Internal signals

  wire CLK_S;
  wire Dcm_all_locked;
  wire Debug_SYS_Rst;
  wire Ext_BRK;
  wire Ext_NM_BRK;
  wire clk_62_5000MHz;
  wire clock_generator_0_CLKOUT1;
  wire [0:31] dlmb_LMB_ABus;
  wire dlmb_LMB_AddrStrobe;
  wire [0:3] dlmb_LMB_BE;
  wire dlmb_LMB_CE;
  wire [0:31] dlmb_LMB_ReadDBus;
  wire dlmb_LMB_ReadStrobe;
  wire dlmb_LMB_Ready;
  wire dlmb_LMB_Rst;
  wire dlmb_LMB_UE;
  wire dlmb_LMB_Wait;
  wire [0:31] dlmb_LMB_WriteDBus;
  wire dlmb_LMB_WriteStrobe;
  wire [0:31] dlmb_M_ABus;
  wire dlmb_M_AddrStrobe;
  wire [0:3] dlmb_M_BE;
  wire [0:31] dlmb_M_DBus;
  wire dlmb_M_ReadStrobe;
  wire dlmb_M_WriteStrobe;
  wire [0:0] dlmb_Sl_CE;
  wire [0:31] dlmb_Sl_DBus;
  wire [0:0] dlmb_Sl_Ready;
  wire [0:0] dlmb_Sl_UE;
  wire [0:0] dlmb_Sl_Wait;
  wire [0:31] dlmb_port_BRAM_Addr;
  wire dlmb_port_BRAM_Clk;
  wire [0:31] dlmb_port_BRAM_Din;
  wire [0:31] dlmb_port_BRAM_Dout;
  wire dlmb_port_BRAM_EN;
  wire dlmb_port_BRAM_Rst;
  wire [0:3] dlmb_port_BRAM_WEN;
  wire [0:31] ilmb_LMB_ABus;
  wire ilmb_LMB_AddrStrobe;
  wire [0:3] ilmb_LMB_BE;
  wire ilmb_LMB_CE;
  wire [0:31] ilmb_LMB_ReadDBus;
  wire ilmb_LMB_ReadStrobe;
  wire ilmb_LMB_Ready;
  wire ilmb_LMB_Rst;
  wire ilmb_LMB_UE;
  wire ilmb_LMB_Wait;
  wire [0:31] ilmb_LMB_WriteDBus;
  wire ilmb_LMB_WriteStrobe;
  wire [0:31] ilmb_M_ABus;
  wire ilmb_M_AddrStrobe;
  wire ilmb_M_ReadStrobe;
  wire [0:0] ilmb_Sl_CE;
  wire [0:31] ilmb_Sl_DBus;
  wire [0:0] ilmb_Sl_Ready;
  wire [0:0] ilmb_Sl_UE;
  wire [0:0] ilmb_Sl_Wait;
  wire [0:31] ilmb_port_BRAM_Addr;
  wire ilmb_port_BRAM_Clk;
  wire [0:31] ilmb_port_BRAM_Din;
  wire [0:31] ilmb_port_BRAM_Dout;
  wire ilmb_port_BRAM_EN;
  wire ilmb_port_BRAM_Rst;
  wire [0:3] ilmb_port_BRAM_WEN;
  wire [0:1] mb_plb_M_ABort;
  wire [0:63] mb_plb_M_ABus;
  wire [0:7] mb_plb_M_BE;
  wire [0:3] mb_plb_M_MSize;
  wire [0:1] mb_plb_M_RNW;
  wire [0:31] mb_plb_M_TAttribute;
  wire [0:63] mb_plb_M_UABus;
  wire [0:1] mb_plb_M_busLock;
  wire [0:1] mb_plb_M_lockErr;
  wire [0:3] mb_plb_M_priority;
  wire [0:1] mb_plb_M_rdBurst;
  wire [0:1] mb_plb_M_request;
  wire [0:7] mb_plb_M_size;
  wire [0:5] mb_plb_M_type;
  wire [0:1] mb_plb_M_wrBurst;
  wire [0:63] mb_plb_M_wrDBus;
  wire [0:31] mb_plb_PLB_ABus;
  wire [0:3] mb_plb_PLB_BE;
  wire [0:1] mb_plb_PLB_MAddrAck;
  wire [0:1] mb_plb_PLB_MBusy;
  wire [0:1] mb_plb_PLB_MIRQ;
  wire [0:1] mb_plb_PLB_MRdBTerm;
  wire [0:1] mb_plb_PLB_MRdDAck;
  wire [0:63] mb_plb_PLB_MRdDBus;
  wire [0:1] mb_plb_PLB_MRdErr;
  wire [0:7] mb_plb_PLB_MRdWdAddr;
  wire [0:1] mb_plb_PLB_MRearbitrate;
  wire [0:3] mb_plb_PLB_MSSize;
  wire [0:1] mb_plb_PLB_MSize;
  wire [0:1] mb_plb_PLB_MTimeout;
  wire [0:1] mb_plb_PLB_MWrBTerm;
  wire [0:1] mb_plb_PLB_MWrDAck;
  wire [0:1] mb_plb_PLB_MWrErr;
  wire mb_plb_PLB_PAValid;
  wire mb_plb_PLB_RNW;
  wire mb_plb_PLB_SAValid;
  wire [0:15] mb_plb_PLB_TAttribute;
  wire [0:31] mb_plb_PLB_UABus;
  wire mb_plb_PLB_abort;
  wire mb_plb_PLB_busLock;
  wire mb_plb_PLB_lockErr;
  wire [0:0] mb_plb_PLB_masterID;
  wire mb_plb_PLB_rdBurst;
  wire [0:1] mb_plb_PLB_rdPendPri;
  wire mb_plb_PLB_rdPendReq;
  wire [0:3] mb_plb_PLB_rdPrim;
  wire [0:1] mb_plb_PLB_reqPri;
  wire [0:3] mb_plb_PLB_size;
  wire [0:2] mb_plb_PLB_type;
  wire mb_plb_PLB_wrBurst;
  wire [0:31] mb_plb_PLB_wrDBus;
  wire [0:1] mb_plb_PLB_wrPendPri;
  wire mb_plb_PLB_wrPendReq;
  wire [0:3] mb_plb_PLB_wrPrim;
  wire [0:3] mb_plb_SPLB_Rst;
  wire [0:7] mb_plb_Sl_MBusy;
  wire [0:7] mb_plb_Sl_MIRQ;
  wire [0:7] mb_plb_Sl_MRdErr;
  wire [0:7] mb_plb_Sl_MWrErr;
  wire [0:7] mb_plb_Sl_SSize;
  wire [0:3] mb_plb_Sl_addrAck;
  wire [0:3] mb_plb_Sl_rdBTerm;
  wire [0:3] mb_plb_Sl_rdComp;
  wire [0:3] mb_plb_Sl_rdDAck;
  wire [0:127] mb_plb_Sl_rdDBus;
  wire [0:15] mb_plb_Sl_rdWdAddr;
  wire [0:3] mb_plb_Sl_rearbitrate;
  wire [0:3] mb_plb_Sl_wait;
  wire [0:3] mb_plb_Sl_wrBTerm;
  wire [0:3] mb_plb_Sl_wrComp;
  wire [0:3] mb_plb_Sl_wrDAck;
  wire mb_reset;
  wire microblaze_0_INTERRUPT;
  wire microblaze_0_mdm_bus_Dbg_Capture;
  wire microblaze_0_mdm_bus_Dbg_Clk;
  wire [0:7] microblaze_0_mdm_bus_Dbg_Reg_En;
  wire microblaze_0_mdm_bus_Dbg_Shift;
  wire microblaze_0_mdm_bus_Dbg_TDI;
  wire microblaze_0_mdm_bus_Dbg_TDO;
  wire microblaze_0_mdm_bus_Dbg_Update;
  wire microblaze_0_mdm_bus_Debug_Rst;
  wire net_gnd0;
  wire [0:0] net_gnd1;
  wire [1:0] net_gnd2;
  wire [0:2] net_gnd3;
  wire [0:3] net_gnd4;
  wire [0:9] net_gnd10;
  wire [0:15] net_gnd16;
  wire [0:31] net_gnd32;
  wire [0:4095] net_gnd4096;
  wire net_vcc0;
  wire [0:0] sys_bus_reset;
  wire sys_rst_s;
  wire [0:0] xps_iic_0_Gpo;
  wire [0:0] xps_iic_0_IIC2INTC_Irpt;
  wire xps_iic_0_Scl_I;
  wire xps_iic_0_Scl_O;
  wire xps_iic_0_Scl_T;
  wire xps_iic_0_Sda_I;
  wire xps_iic_0_Sda_O;
  wire xps_iic_0_Sda_T;

  // Internal assignments

  assign CLK_S = fpga_0_clk_1_sys_clk_pin;
  assign sys_rst_s = fpga_0_rst_1_sys_rst_pin;
  assign xps_iic_0_Gpo_pin = xps_iic_0_Gpo[0];
  assign clock_generator_0_CLKOUT1_pin = clock_generator_0_CLKOUT1;
  assign net_gnd0 = 1'b0;
  assign net_gnd1[0:0] = 1'b0;
  assign net_gnd10[0:9] = 10'b0000000000;
  assign net_gnd16[0:15] = 16'b0000000000000000;
  assign net_gnd2[1:0] = 2'b00;
  assign net_gnd3[0:2] = 3'b000;
  assign net_gnd32[0:31] = 32'b00000000000000000000000000000000;
  assign net_gnd4[0:3] = 4'b0000;
  assign net_gnd4096[0:4095] = 4096'h0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
  assign net_vcc0 = 1'b1;

  (* BOX_TYPE = "user_black_box" *)
  vga_config_microblaze_0_wrapper
    microblaze_0 (
      .CLK ( clk_62_5000MHz ),
      .RESET ( dlmb_LMB_Rst ),
      .MB_RESET ( mb_reset ),
      .INTERRUPT ( microblaze_0_INTERRUPT ),
      .INTERRUPT_ADDRESS ( net_gnd32 ),
      .INTERRUPT_ACK (  ),
      .EXT_BRK ( Ext_BRK ),
      .EXT_NM_BRK ( Ext_NM_BRK ),
      .DBG_STOP ( net_gnd0 ),
      .MB_Halted (  ),
      .MB_Error (  ),
      .LOCKSTEP_MASTER_OUT (  ),
      .LOCKSTEP_SLAVE_IN ( net_gnd4096 ),
      .LOCKSTEP_OUT (  ),
      .INSTR ( ilmb_LMB_ReadDBus ),
      .IREADY ( ilmb_LMB_Ready ),
      .IWAIT ( ilmb_LMB_Wait ),
      .ICE ( ilmb_LMB_CE ),
      .IUE ( ilmb_LMB_UE ),
      .INSTR_ADDR ( ilmb_M_ABus ),
      .IFETCH ( ilmb_M_ReadStrobe ),
      .I_AS ( ilmb_M_AddrStrobe ),
      .IPLB_M_ABort ( mb_plb_M_ABort[1] ),
      .IPLB_M_ABus ( mb_plb_M_ABus[32:63] ),
      .IPLB_M_UABus ( mb_plb_M_UABus[32:63] ),
      .IPLB_M_BE ( mb_plb_M_BE[4:7] ),
      .IPLB_M_busLock ( mb_plb_M_busLock[1] ),
      .IPLB_M_lockErr ( mb_plb_M_lockErr[1] ),
      .IPLB_M_MSize ( mb_plb_M_MSize[2:3] ),
      .IPLB_M_priority ( mb_plb_M_priority[2:3] ),
      .IPLB_M_rdBurst ( mb_plb_M_rdBurst[1] ),
      .IPLB_M_request ( mb_plb_M_request[1] ),
      .IPLB_M_RNW ( mb_plb_M_RNW[1] ),
      .IPLB_M_size ( mb_plb_M_size[4:7] ),
      .IPLB_M_TAttribute ( mb_plb_M_TAttribute[16:31] ),
      .IPLB_M_type ( mb_plb_M_type[3:5] ),
      .IPLB_M_wrBurst ( mb_plb_M_wrBurst[1] ),
      .IPLB_M_wrDBus ( mb_plb_M_wrDBus[32:63] ),
      .IPLB_MBusy ( mb_plb_PLB_MBusy[1] ),
      .IPLB_MRdErr ( mb_plb_PLB_MRdErr[1] ),
      .IPLB_MWrErr ( mb_plb_PLB_MWrErr[1] ),
      .IPLB_MIRQ ( mb_plb_PLB_MIRQ[1] ),
      .IPLB_MWrBTerm ( mb_plb_PLB_MWrBTerm[1] ),
      .IPLB_MWrDAck ( mb_plb_PLB_MWrDAck[1] ),
      .IPLB_MAddrAck ( mb_plb_PLB_MAddrAck[1] ),
      .IPLB_MRdBTerm ( mb_plb_PLB_MRdBTerm[1] ),
      .IPLB_MRdDAck ( mb_plb_PLB_MRdDAck[1] ),
      .IPLB_MRdDBus ( mb_plb_PLB_MRdDBus[32:63] ),
      .IPLB_MRdWdAddr ( mb_plb_PLB_MRdWdAddr[4:7] ),
      .IPLB_MRearbitrate ( mb_plb_PLB_MRearbitrate[1] ),
      .IPLB_MSSize ( mb_plb_PLB_MSSize[2:3] ),
      .IPLB_MTimeout ( mb_plb_PLB_MTimeout[1] ),
      .DATA_READ ( dlmb_LMB_ReadDBus ),
      .DREADY ( dlmb_LMB_Ready ),
      .DWAIT ( dlmb_LMB_Wait ),
      .DCE ( dlmb_LMB_CE ),
      .DUE ( dlmb_LMB_UE ),
      .DATA_WRITE ( dlmb_M_DBus ),
      .DATA_ADDR ( dlmb_M_ABus ),
      .D_AS ( dlmb_M_AddrStrobe ),
      .READ_STROBE ( dlmb_M_ReadStrobe ),
      .WRITE_STROBE ( dlmb_M_WriteStrobe ),
      .BYTE_ENABLE ( dlmb_M_BE ),
      .DPLB_M_ABort ( mb_plb_M_ABort[0] ),
      .DPLB_M_ABus ( mb_plb_M_ABus[0:31] ),
      .DPLB_M_UABus ( mb_plb_M_UABus[0:31] ),
      .DPLB_M_BE ( mb_plb_M_BE[0:3] ),
      .DPLB_M_busLock ( mb_plb_M_busLock[0] ),
      .DPLB_M_lockErr ( mb_plb_M_lockErr[0] ),
      .DPLB_M_MSize ( mb_plb_M_MSize[0:1] ),
      .DPLB_M_priority ( mb_plb_M_priority[0:1] ),
      .DPLB_M_rdBurst ( mb_plb_M_rdBurst[0] ),
      .DPLB_M_request ( mb_plb_M_request[0] ),
      .DPLB_M_RNW ( mb_plb_M_RNW[0] ),
      .DPLB_M_size ( mb_plb_M_size[0:3] ),
      .DPLB_M_TAttribute ( mb_plb_M_TAttribute[0:15] ),
      .DPLB_M_type ( mb_plb_M_type[0:2] ),
      .DPLB_M_wrBurst ( mb_plb_M_wrBurst[0] ),
      .DPLB_M_wrDBus ( mb_plb_M_wrDBus[0:31] ),
      .DPLB_MBusy ( mb_plb_PLB_MBusy[0] ),
      .DPLB_MRdErr ( mb_plb_PLB_MRdErr[0] ),
      .DPLB_MWrErr ( mb_plb_PLB_MWrErr[0] ),
      .DPLB_MIRQ ( mb_plb_PLB_MIRQ[0] ),
      .DPLB_MWrBTerm ( mb_plb_PLB_MWrBTerm[0] ),
      .DPLB_MWrDAck ( mb_plb_PLB_MWrDAck[0] ),
      .DPLB_MAddrAck ( mb_plb_PLB_MAddrAck[0] ),
      .DPLB_MRdBTerm ( mb_plb_PLB_MRdBTerm[0] ),
      .DPLB_MRdDAck ( mb_plb_PLB_MRdDAck[0] ),
      .DPLB_MRdDBus ( mb_plb_PLB_MRdDBus[0:31] ),
      .DPLB_MRdWdAddr ( mb_plb_PLB_MRdWdAddr[0:3] ),
      .DPLB_MRearbitrate ( mb_plb_PLB_MRearbitrate[0] ),
      .DPLB_MSSize ( mb_plb_PLB_MSSize[0:1] ),
      .DPLB_MTimeout ( mb_plb_PLB_MTimeout[0] ),
      .M_AXI_IP_AWID (  ),
      .M_AXI_IP_AWADDR (  ),
      .M_AXI_IP_AWLEN (  ),
      .M_AXI_IP_AWSIZE (  ),
      .M_AXI_IP_AWBURST (  ),
      .M_AXI_IP_AWLOCK (  ),
      .M_AXI_IP_AWCACHE (  ),
      .M_AXI_IP_AWPROT (  ),
      .M_AXI_IP_AWQOS (  ),
      .M_AXI_IP_AWVALID (  ),
      .M_AXI_IP_AWREADY ( net_gnd0 ),
      .M_AXI_IP_WDATA (  ),
      .M_AXI_IP_WSTRB (  ),
      .M_AXI_IP_WLAST (  ),
      .M_AXI_IP_WVALID (  ),
      .M_AXI_IP_WREADY ( net_gnd0 ),
      .M_AXI_IP_BID ( net_gnd1[0:0] ),
      .M_AXI_IP_BRESP ( net_gnd2 ),
      .M_AXI_IP_BVALID ( net_gnd0 ),
      .M_AXI_IP_BREADY (  ),
      .M_AXI_IP_ARID (  ),
      .M_AXI_IP_ARADDR (  ),
      .M_AXI_IP_ARLEN (  ),
      .M_AXI_IP_ARSIZE (  ),
      .M_AXI_IP_ARBURST (  ),
      .M_AXI_IP_ARLOCK (  ),
      .M_AXI_IP_ARCACHE (  ),
      .M_AXI_IP_ARPROT (  ),
      .M_AXI_IP_ARQOS (  ),
      .M_AXI_IP_ARVALID (  ),
      .M_AXI_IP_ARREADY ( net_gnd0 ),
      .M_AXI_IP_RID ( net_gnd1[0:0] ),
      .M_AXI_IP_RDATA ( net_gnd32[0:31] ),
      .M_AXI_IP_RRESP ( net_gnd2 ),
      .M_AXI_IP_RLAST ( net_gnd0 ),
      .M_AXI_IP_RVALID ( net_gnd0 ),
      .M_AXI_IP_RREADY (  ),
      .M_AXI_DP_AWID (  ),
      .M_AXI_DP_AWADDR (  ),
      .M_AXI_DP_AWLEN (  ),
      .M_AXI_DP_AWSIZE (  ),
      .M_AXI_DP_AWBURST (  ),
      .M_AXI_DP_AWLOCK (  ),
      .M_AXI_DP_AWCACHE (  ),
      .M_AXI_DP_AWPROT (  ),
      .M_AXI_DP_AWQOS (  ),
      .M_AXI_DP_AWVALID (  ),
      .M_AXI_DP_AWREADY ( net_gnd0 ),
      .M_AXI_DP_WDATA (  ),
      .M_AXI_DP_WSTRB (  ),
      .M_AXI_DP_WLAST (  ),
      .M_AXI_DP_WVALID (  ),
      .M_AXI_DP_WREADY ( net_gnd0 ),
      .M_AXI_DP_BID ( net_gnd1[0:0] ),
      .M_AXI_DP_BRESP ( net_gnd2 ),
      .M_AXI_DP_BVALID ( net_gnd0 ),
      .M_AXI_DP_BREADY (  ),
      .M_AXI_DP_ARID (  ),
      .M_AXI_DP_ARADDR (  ),
      .M_AXI_DP_ARLEN (  ),
      .M_AXI_DP_ARSIZE (  ),
      .M_AXI_DP_ARBURST (  ),
      .M_AXI_DP_ARLOCK (  ),
      .M_AXI_DP_ARCACHE (  ),
      .M_AXI_DP_ARPROT (  ),
      .M_AXI_DP_ARQOS (  ),
      .M_AXI_DP_ARVALID (  ),
      .M_AXI_DP_ARREADY ( net_gnd0 ),
      .M_AXI_DP_RID ( net_gnd1[0:0] ),
      .M_AXI_DP_RDATA ( net_gnd32[0:31] ),
      .M_AXI_DP_RRESP ( net_gnd2 ),
      .M_AXI_DP_RLAST ( net_gnd0 ),
      .M_AXI_DP_RVALID ( net_gnd0 ),
      .M_AXI_DP_RREADY (  ),
      .M_AXI_IC_AWID (  ),
      .M_AXI_IC_AWADDR (  ),
      .M_AXI_IC_AWLEN (  ),
      .M_AXI_IC_AWSIZE (  ),
      .M_AXI_IC_AWBURST (  ),
      .M_AXI_IC_AWLOCK (  ),
      .M_AXI_IC_AWCACHE (  ),
      .M_AXI_IC_AWPROT (  ),
      .M_AXI_IC_AWQOS (  ),
      .M_AXI_IC_AWVALID (  ),
      .M_AXI_IC_AWREADY ( net_gnd0 ),
      .M_AXI_IC_AWUSER (  ),
      .M_AXI_IC_WDATA (  ),
      .M_AXI_IC_WSTRB (  ),
      .M_AXI_IC_WLAST (  ),
      .M_AXI_IC_WVALID (  ),
      .M_AXI_IC_WREADY ( net_gnd0 ),
      .M_AXI_IC_WUSER (  ),
      .M_AXI_IC_BID ( net_gnd1[0:0] ),
      .M_AXI_IC_BRESP ( net_gnd2 ),
      .M_AXI_IC_BVALID ( net_gnd0 ),
      .M_AXI_IC_BREADY (  ),
      .M_AXI_IC_BUSER ( net_gnd1[0:0] ),
      .M_AXI_IC_ARID (  ),
      .M_AXI_IC_ARADDR (  ),
      .M_AXI_IC_ARLEN (  ),
      .M_AXI_IC_ARSIZE (  ),
      .M_AXI_IC_ARBURST (  ),
      .M_AXI_IC_ARLOCK (  ),
      .M_AXI_IC_ARCACHE (  ),
      .M_AXI_IC_ARPROT (  ),
      .M_AXI_IC_ARQOS (  ),
      .M_AXI_IC_ARVALID (  ),
      .M_AXI_IC_ARREADY ( net_gnd0 ),
      .M_AXI_IC_ARUSER (  ),
      .M_AXI_IC_RID ( net_gnd1[0:0] ),
      .M_AXI_IC_RDATA ( net_gnd32[0:31] ),
      .M_AXI_IC_RRESP ( net_gnd2 ),
      .M_AXI_IC_RLAST ( net_gnd0 ),
      .M_AXI_IC_RVALID ( net_gnd0 ),
      .M_AXI_IC_RREADY (  ),
      .M_AXI_IC_RUSER ( net_gnd1[0:0] ),
      .M_AXI_DC_AWID (  ),
      .M_AXI_DC_AWADDR (  ),
      .M_AXI_DC_AWLEN (  ),
      .M_AXI_DC_AWSIZE (  ),
      .M_AXI_DC_AWBURST (  ),
      .M_AXI_DC_AWLOCK (  ),
      .M_AXI_DC_AWCACHE (  ),
      .M_AXI_DC_AWPROT (  ),
      .M_AXI_DC_AWQOS (  ),
      .M_AXI_DC_AWVALID (  ),
      .M_AXI_DC_AWREADY ( net_gnd0 ),
      .M_AXI_DC_AWUSER (  ),
      .M_AXI_DC_WDATA (  ),
      .M_AXI_DC_WSTRB (  ),
      .M_AXI_DC_WLAST (  ),
      .M_AXI_DC_WVALID (  ),
      .M_AXI_DC_WREADY ( net_gnd0 ),
      .M_AXI_DC_WUSER (  ),
      .M_AXI_DC_BID ( net_gnd1[0:0] ),
      .M_AXI_DC_BRESP ( net_gnd2 ),
      .M_AXI_DC_BVALID ( net_gnd0 ),
      .M_AXI_DC_BREADY (  ),
      .M_AXI_DC_BUSER ( net_gnd1[0:0] ),
      .M_AXI_DC_ARID (  ),
      .M_AXI_DC_ARADDR (  ),
      .M_AXI_DC_ARLEN (  ),
      .M_AXI_DC_ARSIZE (  ),
      .M_AXI_DC_ARBURST (  ),
      .M_AXI_DC_ARLOCK (  ),
      .M_AXI_DC_ARCACHE (  ),
      .M_AXI_DC_ARPROT (  ),
      .M_AXI_DC_ARQOS (  ),
      .M_AXI_DC_ARVALID (  ),
      .M_AXI_DC_ARREADY ( net_gnd0 ),
      .M_AXI_DC_ARUSER (  ),
      .M_AXI_DC_RID ( net_gnd1[0:0] ),
      .M_AXI_DC_RDATA ( net_gnd32[0:31] ),
      .M_AXI_DC_RRESP ( net_gnd2 ),
      .M_AXI_DC_RLAST ( net_gnd0 ),
      .M_AXI_DC_RVALID ( net_gnd0 ),
      .M_AXI_DC_RREADY (  ),
      .M_AXI_DC_RUSER ( net_gnd1[0:0] ),
      .DBG_CLK ( microblaze_0_mdm_bus_Dbg_Clk ),
      .DBG_TDI ( microblaze_0_mdm_bus_Dbg_TDI ),
      .DBG_TDO ( microblaze_0_mdm_bus_Dbg_TDO ),
      .DBG_REG_EN ( microblaze_0_mdm_bus_Dbg_Reg_En ),
      .DBG_SHIFT ( microblaze_0_mdm_bus_Dbg_Shift ),
      .DBG_CAPTURE ( microblaze_0_mdm_bus_Dbg_Capture ),
      .DBG_UPDATE ( microblaze_0_mdm_bus_Dbg_Update ),
      .DEBUG_RST ( microblaze_0_mdm_bus_Debug_Rst ),
      .Trace_Instruction (  ),
      .Trace_Valid_Instr (  ),
      .Trace_PC (  ),
      .Trace_Reg_Write (  ),
      .Trace_Reg_Addr (  ),
      .Trace_MSR_Reg (  ),
      .Trace_PID_Reg (  ),
      .Trace_New_Reg_Value (  ),
      .Trace_Exception_Taken (  ),
      .Trace_Exception_Kind (  ),
      .Trace_Jump_Taken (  ),
      .Trace_Delay_Slot (  ),
      .Trace_Data_Address (  ),
      .Trace_Data_Access (  ),
      .Trace_Data_Read (  ),
      .Trace_Data_Write (  ),
      .Trace_Data_Write_Value (  ),
      .Trace_Data_Byte_Enable (  ),
      .Trace_DCache_Req (  ),
      .Trace_DCache_Hit (  ),
      .Trace_DCache_Rdy (  ),
      .Trace_DCache_Read (  ),
      .Trace_ICache_Req (  ),
      .Trace_ICache_Hit (  ),
      .Trace_ICache_Rdy (  ),
      .Trace_OF_PipeRun (  ),
      .Trace_EX_PipeRun (  ),
      .Trace_MEM_PipeRun (  ),
      .Trace_MB_Halted (  ),
      .Trace_Jump_Hit (  ),
      .FSL0_S_CLK (  ),
      .FSL0_S_READ (  ),
      .FSL0_S_DATA ( net_gnd32 ),
      .FSL0_S_CONTROL ( net_gnd0 ),
      .FSL0_S_EXISTS ( net_gnd0 ),
      .FSL0_M_CLK (  ),
      .FSL0_M_WRITE (  ),
      .FSL0_M_DATA (  ),
      .FSL0_M_CONTROL (  ),
      .FSL0_M_FULL ( net_gnd0 ),
      .FSL1_S_CLK (  ),
      .FSL1_S_READ (  ),
      .FSL1_S_DATA ( net_gnd32 ),
      .FSL1_S_CONTROL ( net_gnd0 ),
      .FSL1_S_EXISTS ( net_gnd0 ),
      .FSL1_M_CLK (  ),
      .FSL1_M_WRITE (  ),
      .FSL1_M_DATA (  ),
      .FSL1_M_CONTROL (  ),
      .FSL1_M_FULL ( net_gnd0 ),
      .FSL2_S_CLK (  ),
      .FSL2_S_READ (  ),
      .FSL2_S_DATA ( net_gnd32 ),
      .FSL2_S_CONTROL ( net_gnd0 ),
      .FSL2_S_EXISTS ( net_gnd0 ),
      .FSL2_M_CLK (  ),
      .FSL2_M_WRITE (  ),
      .FSL2_M_DATA (  ),
      .FSL2_M_CONTROL (  ),
      .FSL2_M_FULL ( net_gnd0 ),
      .FSL3_S_CLK (  ),
      .FSL3_S_READ (  ),
      .FSL3_S_DATA ( net_gnd32 ),
      .FSL3_S_CONTROL ( net_gnd0 ),
      .FSL3_S_EXISTS ( net_gnd0 ),
      .FSL3_M_CLK (  ),
      .FSL3_M_WRITE (  ),
      .FSL3_M_DATA (  ),
      .FSL3_M_CONTROL (  ),
      .FSL3_M_FULL ( net_gnd0 ),
      .FSL4_S_CLK (  ),
      .FSL4_S_READ (  ),
      .FSL4_S_DATA ( net_gnd32 ),
      .FSL4_S_CONTROL ( net_gnd0 ),
      .FSL4_S_EXISTS ( net_gnd0 ),
      .FSL4_M_CLK (  ),
      .FSL4_M_WRITE (  ),
      .FSL4_M_DATA (  ),
      .FSL4_M_CONTROL (  ),
      .FSL4_M_FULL ( net_gnd0 ),
      .FSL5_S_CLK (  ),
      .FSL5_S_READ (  ),
      .FSL5_S_DATA ( net_gnd32 ),
      .FSL5_S_CONTROL ( net_gnd0 ),
      .FSL5_S_EXISTS ( net_gnd0 ),
      .FSL5_M_CLK (  ),
      .FSL5_M_WRITE (  ),
      .FSL5_M_DATA (  ),
      .FSL5_M_CONTROL (  ),
      .FSL5_M_FULL ( net_gnd0 ),
      .FSL6_S_CLK (  ),
      .FSL6_S_READ (  ),
      .FSL6_S_DATA ( net_gnd32 ),
      .FSL6_S_CONTROL ( net_gnd0 ),
      .FSL6_S_EXISTS ( net_gnd0 ),
      .FSL6_M_CLK (  ),
      .FSL6_M_WRITE (  ),
      .FSL6_M_DATA (  ),
      .FSL6_M_CONTROL (  ),
      .FSL6_M_FULL ( net_gnd0 ),
      .FSL7_S_CLK (  ),
      .FSL7_S_READ (  ),
      .FSL7_S_DATA ( net_gnd32 ),
      .FSL7_S_CONTROL ( net_gnd0 ),
      .FSL7_S_EXISTS ( net_gnd0 ),
      .FSL7_M_CLK (  ),
      .FSL7_M_WRITE (  ),
      .FSL7_M_DATA (  ),
      .FSL7_M_CONTROL (  ),
      .FSL7_M_FULL ( net_gnd0 ),
      .FSL8_S_CLK (  ),
      .FSL8_S_READ (  ),
      .FSL8_S_DATA ( net_gnd32 ),
      .FSL8_S_CONTROL ( net_gnd0 ),
      .FSL8_S_EXISTS ( net_gnd0 ),
      .FSL8_M_CLK (  ),
      .FSL8_M_WRITE (  ),
      .FSL8_M_DATA (  ),
      .FSL8_M_CONTROL (  ),
      .FSL8_M_FULL ( net_gnd0 ),
      .FSL9_S_CLK (  ),
      .FSL9_S_READ (  ),
      .FSL9_S_DATA ( net_gnd32 ),
      .FSL9_S_CONTROL ( net_gnd0 ),
      .FSL9_S_EXISTS ( net_gnd0 ),
      .FSL9_M_CLK (  ),
      .FSL9_M_WRITE (  ),
      .FSL9_M_DATA (  ),
      .FSL9_M_CONTROL (  ),
      .FSL9_M_FULL ( net_gnd0 ),
      .FSL10_S_CLK (  ),
      .FSL10_S_READ (  ),
      .FSL10_S_DATA ( net_gnd32 ),
      .FSL10_S_CONTROL ( net_gnd0 ),
      .FSL10_S_EXISTS ( net_gnd0 ),
      .FSL10_M_CLK (  ),
      .FSL10_M_WRITE (  ),
      .FSL10_M_DATA (  ),
      .FSL10_M_CONTROL (  ),
      .FSL10_M_FULL ( net_gnd0 ),
      .FSL11_S_CLK (  ),
      .FSL11_S_READ (  ),
      .FSL11_S_DATA ( net_gnd32 ),
      .FSL11_S_CONTROL ( net_gnd0 ),
      .FSL11_S_EXISTS ( net_gnd0 ),
      .FSL11_M_CLK (  ),
      .FSL11_M_WRITE (  ),
      .FSL11_M_DATA (  ),
      .FSL11_M_CONTROL (  ),
      .FSL11_M_FULL ( net_gnd0 ),
      .FSL12_S_CLK (  ),
      .FSL12_S_READ (  ),
      .FSL12_S_DATA ( net_gnd32 ),
      .FSL12_S_CONTROL ( net_gnd0 ),
      .FSL12_S_EXISTS ( net_gnd0 ),
      .FSL12_M_CLK (  ),
      .FSL12_M_WRITE (  ),
      .FSL12_M_DATA (  ),
      .FSL12_M_CONTROL (  ),
      .FSL12_M_FULL ( net_gnd0 ),
      .FSL13_S_CLK (  ),
      .FSL13_S_READ (  ),
      .FSL13_S_DATA ( net_gnd32 ),
      .FSL13_S_CONTROL ( net_gnd0 ),
      .FSL13_S_EXISTS ( net_gnd0 ),
      .FSL13_M_CLK (  ),
      .FSL13_M_WRITE (  ),
      .FSL13_M_DATA (  ),
      .FSL13_M_CONTROL (  ),
      .FSL13_M_FULL ( net_gnd0 ),
      .FSL14_S_CLK (  ),
      .FSL14_S_READ (  ),
      .FSL14_S_DATA ( net_gnd32 ),
      .FSL14_S_CONTROL ( net_gnd0 ),
      .FSL14_S_EXISTS ( net_gnd0 ),
      .FSL14_M_CLK (  ),
      .FSL14_M_WRITE (  ),
      .FSL14_M_DATA (  ),
      .FSL14_M_CONTROL (  ),
      .FSL14_M_FULL ( net_gnd0 ),
      .FSL15_S_CLK (  ),
      .FSL15_S_READ (  ),
      .FSL15_S_DATA ( net_gnd32 ),
      .FSL15_S_CONTROL ( net_gnd0 ),
      .FSL15_S_EXISTS ( net_gnd0 ),
      .FSL15_M_CLK (  ),
      .FSL15_M_WRITE (  ),
      .FSL15_M_DATA (  ),
      .FSL15_M_CONTROL (  ),
      .FSL15_M_FULL ( net_gnd0 ),
      .M0_AXIS_TLAST (  ),
      .M0_AXIS_TDATA (  ),
      .M0_AXIS_TVALID (  ),
      .M0_AXIS_TREADY ( net_gnd0 ),
      .S0_AXIS_TLAST ( net_gnd0 ),
      .S0_AXIS_TDATA ( net_gnd32[0:31] ),
      .S0_AXIS_TVALID ( net_gnd0 ),
      .S0_AXIS_TREADY (  ),
      .M1_AXIS_TLAST (  ),
      .M1_AXIS_TDATA (  ),
      .M1_AXIS_TVALID (  ),
      .M1_AXIS_TREADY ( net_gnd0 ),
      .S1_AXIS_TLAST ( net_gnd0 ),
      .S1_AXIS_TDATA ( net_gnd32[0:31] ),
      .S1_AXIS_TVALID ( net_gnd0 ),
      .S1_AXIS_TREADY (  ),
      .M2_AXIS_TLAST (  ),
      .M2_AXIS_TDATA (  ),
      .M2_AXIS_TVALID (  ),
      .M2_AXIS_TREADY ( net_gnd0 ),
      .S2_AXIS_TLAST ( net_gnd0 ),
      .S2_AXIS_TDATA ( net_gnd32[0:31] ),
      .S2_AXIS_TVALID ( net_gnd0 ),
      .S2_AXIS_TREADY (  ),
      .M3_AXIS_TLAST (  ),
      .M3_AXIS_TDATA (  ),
      .M3_AXIS_TVALID (  ),
      .M3_AXIS_TREADY ( net_gnd0 ),
      .S3_AXIS_TLAST ( net_gnd0 ),
      .S3_AXIS_TDATA ( net_gnd32[0:31] ),
      .S3_AXIS_TVALID ( net_gnd0 ),
      .S3_AXIS_TREADY (  ),
      .M4_AXIS_TLAST (  ),
      .M4_AXIS_TDATA (  ),
      .M4_AXIS_TVALID (  ),
      .M4_AXIS_TREADY ( net_gnd0 ),
      .S4_AXIS_TLAST ( net_gnd0 ),
      .S4_AXIS_TDATA ( net_gnd32[0:31] ),
      .S4_AXIS_TVALID ( net_gnd0 ),
      .S4_AXIS_TREADY (  ),
      .M5_AXIS_TLAST (  ),
      .M5_AXIS_TDATA (  ),
      .M5_AXIS_TVALID (  ),
      .M5_AXIS_TREADY ( net_gnd0 ),
      .S5_AXIS_TLAST ( net_gnd0 ),
      .S5_AXIS_TDATA ( net_gnd32[0:31] ),
      .S5_AXIS_TVALID ( net_gnd0 ),
      .S5_AXIS_TREADY (  ),
      .M6_AXIS_TLAST (  ),
      .M6_AXIS_TDATA (  ),
      .M6_AXIS_TVALID (  ),
      .M6_AXIS_TREADY ( net_gnd0 ),
      .S6_AXIS_TLAST ( net_gnd0 ),
      .S6_AXIS_TDATA ( net_gnd32[0:31] ),
      .S6_AXIS_TVALID ( net_gnd0 ),
      .S6_AXIS_TREADY (  ),
      .M7_AXIS_TLAST (  ),
      .M7_AXIS_TDATA (  ),
      .M7_AXIS_TVALID (  ),
      .M7_AXIS_TREADY ( net_gnd0 ),
      .S7_AXIS_TLAST ( net_gnd0 ),
      .S7_AXIS_TDATA ( net_gnd32[0:31] ),
      .S7_AXIS_TVALID ( net_gnd0 ),
      .S7_AXIS_TREADY (  ),
      .M8_AXIS_TLAST (  ),
      .M8_AXIS_TDATA (  ),
      .M8_AXIS_TVALID (  ),
      .M8_AXIS_TREADY ( net_gnd0 ),
      .S8_AXIS_TLAST ( net_gnd0 ),
      .S8_AXIS_TDATA ( net_gnd32[0:31] ),
      .S8_AXIS_TVALID ( net_gnd0 ),
      .S8_AXIS_TREADY (  ),
      .M9_AXIS_TLAST (  ),
      .M9_AXIS_TDATA (  ),
      .M9_AXIS_TVALID (  ),
      .M9_AXIS_TREADY ( net_gnd0 ),
      .S9_AXIS_TLAST ( net_gnd0 ),
      .S9_AXIS_TDATA ( net_gnd32[0:31] ),
      .S9_AXIS_TVALID ( net_gnd0 ),
      .S9_AXIS_TREADY (  ),
      .M10_AXIS_TLAST (  ),
      .M10_AXIS_TDATA (  ),
      .M10_AXIS_TVALID (  ),
      .M10_AXIS_TREADY ( net_gnd0 ),
      .S10_AXIS_TLAST ( net_gnd0 ),
      .S10_AXIS_TDATA ( net_gnd32[0:31] ),
      .S10_AXIS_TVALID ( net_gnd0 ),
      .S10_AXIS_TREADY (  ),
      .M11_AXIS_TLAST (  ),
      .M11_AXIS_TDATA (  ),
      .M11_AXIS_TVALID (  ),
      .M11_AXIS_TREADY ( net_gnd0 ),
      .S11_AXIS_TLAST ( net_gnd0 ),
      .S11_AXIS_TDATA ( net_gnd32[0:31] ),
      .S11_AXIS_TVALID ( net_gnd0 ),
      .S11_AXIS_TREADY (  ),
      .M12_AXIS_TLAST (  ),
      .M12_AXIS_TDATA (  ),
      .M12_AXIS_TVALID (  ),
      .M12_AXIS_TREADY ( net_gnd0 ),
      .S12_AXIS_TLAST ( net_gnd0 ),
      .S12_AXIS_TDATA ( net_gnd32[0:31] ),
      .S12_AXIS_TVALID ( net_gnd0 ),
      .S12_AXIS_TREADY (  ),
      .M13_AXIS_TLAST (  ),
      .M13_AXIS_TDATA (  ),
      .M13_AXIS_TVALID (  ),
      .M13_AXIS_TREADY ( net_gnd0 ),
      .S13_AXIS_TLAST ( net_gnd0 ),
      .S13_AXIS_TDATA ( net_gnd32[0:31] ),
      .S13_AXIS_TVALID ( net_gnd0 ),
      .S13_AXIS_TREADY (  ),
      .M14_AXIS_TLAST (  ),
      .M14_AXIS_TDATA (  ),
      .M14_AXIS_TVALID (  ),
      .M14_AXIS_TREADY ( net_gnd0 ),
      .S14_AXIS_TLAST ( net_gnd0 ),
      .S14_AXIS_TDATA ( net_gnd32[0:31] ),
      .S14_AXIS_TVALID ( net_gnd0 ),
      .S14_AXIS_TREADY (  ),
      .M15_AXIS_TLAST (  ),
      .M15_AXIS_TDATA (  ),
      .M15_AXIS_TVALID (  ),
      .M15_AXIS_TREADY ( net_gnd0 ),
      .S15_AXIS_TLAST ( net_gnd0 ),
      .S15_AXIS_TDATA ( net_gnd32[0:31] ),
      .S15_AXIS_TVALID ( net_gnd0 ),
      .S15_AXIS_TREADY (  ),
      .ICACHE_FSL_IN_CLK (  ),
      .ICACHE_FSL_IN_READ (  ),
      .ICACHE_FSL_IN_DATA ( net_gnd32 ),
      .ICACHE_FSL_IN_CONTROL ( net_gnd0 ),
      .ICACHE_FSL_IN_EXISTS ( net_gnd0 ),
      .ICACHE_FSL_OUT_CLK (  ),
      .ICACHE_FSL_OUT_WRITE (  ),
      .ICACHE_FSL_OUT_DATA (  ),
      .ICACHE_FSL_OUT_CONTROL (  ),
      .ICACHE_FSL_OUT_FULL ( net_gnd0 ),
      .DCACHE_FSL_IN_CLK (  ),
      .DCACHE_FSL_IN_READ (  ),
      .DCACHE_FSL_IN_DATA ( net_gnd32 ),
      .DCACHE_FSL_IN_CONTROL ( net_gnd0 ),
      .DCACHE_FSL_IN_EXISTS ( net_gnd0 ),
      .DCACHE_FSL_OUT_CLK (  ),
      .DCACHE_FSL_OUT_WRITE (  ),
      .DCACHE_FSL_OUT_DATA (  ),
      .DCACHE_FSL_OUT_CONTROL (  ),
      .DCACHE_FSL_OUT_FULL ( net_gnd0 )
    );

  (* BOX_TYPE = "user_black_box" *)
  vga_config_mb_plb_wrapper
    mb_plb (
      .PLB_Clk ( clk_62_5000MHz ),
      .SYS_Rst ( sys_bus_reset[0] ),
      .PLB_Rst (  ),
      .SPLB_Rst ( mb_plb_SPLB_Rst ),
      .MPLB_Rst (  ),
      .PLB_dcrAck (  ),
      .PLB_dcrDBus (  ),
      .DCR_ABus ( net_gnd10 ),
      .DCR_DBus ( net_gnd32 ),
      .DCR_Read ( net_gnd0 ),
      .DCR_Write ( net_gnd0 ),
      .M_ABus ( mb_plb_M_ABus ),
      .M_UABus ( mb_plb_M_UABus ),
      .M_BE ( mb_plb_M_BE ),
      .M_RNW ( mb_plb_M_RNW ),
      .M_abort ( mb_plb_M_ABort ),
      .M_busLock ( mb_plb_M_busLock ),
      .M_TAttribute ( mb_plb_M_TAttribute ),
      .M_lockErr ( mb_plb_M_lockErr ),
      .M_MSize ( mb_plb_M_MSize ),
      .M_priority ( mb_plb_M_priority ),
      .M_rdBurst ( mb_plb_M_rdBurst ),
      .M_request ( mb_plb_M_request ),
      .M_size ( mb_plb_M_size ),
      .M_type ( mb_plb_M_type ),
      .M_wrBurst ( mb_plb_M_wrBurst ),
      .M_wrDBus ( mb_plb_M_wrDBus ),
      .Sl_addrAck ( mb_plb_Sl_addrAck ),
      .Sl_MRdErr ( mb_plb_Sl_MRdErr ),
      .Sl_MWrErr ( mb_plb_Sl_MWrErr ),
      .Sl_MBusy ( mb_plb_Sl_MBusy ),
      .Sl_rdBTerm ( mb_plb_Sl_rdBTerm ),
      .Sl_rdComp ( mb_plb_Sl_rdComp ),
      .Sl_rdDAck ( mb_plb_Sl_rdDAck ),
      .Sl_rdDBus ( mb_plb_Sl_rdDBus ),
      .Sl_rdWdAddr ( mb_plb_Sl_rdWdAddr ),
      .Sl_rearbitrate ( mb_plb_Sl_rearbitrate ),
      .Sl_SSize ( mb_plb_Sl_SSize ),
      .Sl_wait ( mb_plb_Sl_wait ),
      .Sl_wrBTerm ( mb_plb_Sl_wrBTerm ),
      .Sl_wrComp ( mb_plb_Sl_wrComp ),
      .Sl_wrDAck ( mb_plb_Sl_wrDAck ),
      .Sl_MIRQ ( mb_plb_Sl_MIRQ ),
      .PLB_MIRQ ( mb_plb_PLB_MIRQ ),
      .PLB_ABus ( mb_plb_PLB_ABus ),
      .PLB_UABus ( mb_plb_PLB_UABus ),
      .PLB_BE ( mb_plb_PLB_BE ),
      .PLB_MAddrAck ( mb_plb_PLB_MAddrAck ),
      .PLB_MTimeout ( mb_plb_PLB_MTimeout ),
      .PLB_MBusy ( mb_plb_PLB_MBusy ),
      .PLB_MRdErr ( mb_plb_PLB_MRdErr ),
      .PLB_MWrErr ( mb_plb_PLB_MWrErr ),
      .PLB_MRdBTerm ( mb_plb_PLB_MRdBTerm ),
      .PLB_MRdDAck ( mb_plb_PLB_MRdDAck ),
      .PLB_MRdDBus ( mb_plb_PLB_MRdDBus ),
      .PLB_MRdWdAddr ( mb_plb_PLB_MRdWdAddr ),
      .PLB_MRearbitrate ( mb_plb_PLB_MRearbitrate ),
      .PLB_MWrBTerm ( mb_plb_PLB_MWrBTerm ),
      .PLB_MWrDAck ( mb_plb_PLB_MWrDAck ),
      .PLB_MSSize ( mb_plb_PLB_MSSize ),
      .PLB_PAValid ( mb_plb_PLB_PAValid ),
      .PLB_RNW ( mb_plb_PLB_RNW ),
      .PLB_SAValid ( mb_plb_PLB_SAValid ),
      .PLB_abort ( mb_plb_PLB_abort ),
      .PLB_busLock ( mb_plb_PLB_busLock ),
      .PLB_TAttribute ( mb_plb_PLB_TAttribute ),
      .PLB_lockErr ( mb_plb_PLB_lockErr ),
      .PLB_masterID ( mb_plb_PLB_masterID[0:0] ),
      .PLB_MSize ( mb_plb_PLB_MSize ),
      .PLB_rdPendPri ( mb_plb_PLB_rdPendPri ),
      .PLB_wrPendPri ( mb_plb_PLB_wrPendPri ),
      .PLB_rdPendReq ( mb_plb_PLB_rdPendReq ),
      .PLB_wrPendReq ( mb_plb_PLB_wrPendReq ),
      .PLB_rdBurst ( mb_plb_PLB_rdBurst ),
      .PLB_rdPrim ( mb_plb_PLB_rdPrim ),
      .PLB_reqPri ( mb_plb_PLB_reqPri ),
      .PLB_size ( mb_plb_PLB_size ),
      .PLB_type ( mb_plb_PLB_type ),
      .PLB_wrBurst ( mb_plb_PLB_wrBurst ),
      .PLB_wrDBus ( mb_plb_PLB_wrDBus ),
      .PLB_wrPrim ( mb_plb_PLB_wrPrim ),
      .PLB_SaddrAck (  ),
      .PLB_SMRdErr (  ),
      .PLB_SMWrErr (  ),
      .PLB_SMBusy (  ),
      .PLB_SrdBTerm (  ),
      .PLB_SrdComp (  ),
      .PLB_SrdDAck (  ),
      .PLB_SrdDBus (  ),
      .PLB_SrdWdAddr (  ),
      .PLB_Srearbitrate (  ),
      .PLB_Sssize (  ),
      .PLB_Swait (  ),
      .PLB_SwrBTerm (  ),
      .PLB_SwrComp (  ),
      .PLB_SwrDAck (  ),
      .Bus_Error_Det (  )
    );

  (* BOX_TYPE = "user_black_box" *)
  vga_config_ilmb_wrapper
    ilmb (
      .LMB_Clk ( clk_62_5000MHz ),
      .SYS_Rst ( sys_bus_reset[0] ),
      .LMB_Rst ( ilmb_LMB_Rst ),
      .M_ABus ( ilmb_M_ABus ),
      .M_ReadStrobe ( ilmb_M_ReadStrobe ),
      .M_WriteStrobe ( net_gnd0 ),
      .M_AddrStrobe ( ilmb_M_AddrStrobe ),
      .M_DBus ( net_gnd32 ),
      .M_BE ( net_gnd4 ),
      .Sl_DBus ( ilmb_Sl_DBus ),
      .Sl_Ready ( ilmb_Sl_Ready[0:0] ),
      .Sl_Wait ( ilmb_Sl_Wait[0:0] ),
      .Sl_UE ( ilmb_Sl_UE[0:0] ),
      .Sl_CE ( ilmb_Sl_CE[0:0] ),
      .LMB_ABus ( ilmb_LMB_ABus ),
      .LMB_ReadStrobe ( ilmb_LMB_ReadStrobe ),
      .LMB_WriteStrobe ( ilmb_LMB_WriteStrobe ),
      .LMB_AddrStrobe ( ilmb_LMB_AddrStrobe ),
      .LMB_ReadDBus ( ilmb_LMB_ReadDBus ),
      .LMB_WriteDBus ( ilmb_LMB_WriteDBus ),
      .LMB_Ready ( ilmb_LMB_Ready ),
      .LMB_Wait ( ilmb_LMB_Wait ),
      .LMB_UE ( ilmb_LMB_UE ),
      .LMB_CE ( ilmb_LMB_CE ),
      .LMB_BE ( ilmb_LMB_BE )
    );

  (* BOX_TYPE = "user_black_box" *)
  vga_config_dlmb_wrapper
    dlmb (
      .LMB_Clk ( clk_62_5000MHz ),
      .SYS_Rst ( sys_bus_reset[0] ),
      .LMB_Rst ( dlmb_LMB_Rst ),
      .M_ABus ( dlmb_M_ABus ),
      .M_ReadStrobe ( dlmb_M_ReadStrobe ),
      .M_WriteStrobe ( dlmb_M_WriteStrobe ),
      .M_AddrStrobe ( dlmb_M_AddrStrobe ),
      .M_DBus ( dlmb_M_DBus ),
      .M_BE ( dlmb_M_BE ),
      .Sl_DBus ( dlmb_Sl_DBus ),
      .Sl_Ready ( dlmb_Sl_Ready[0:0] ),
      .Sl_Wait ( dlmb_Sl_Wait[0:0] ),
      .Sl_UE ( dlmb_Sl_UE[0:0] ),
      .Sl_CE ( dlmb_Sl_CE[0:0] ),
      .LMB_ABus ( dlmb_LMB_ABus ),
      .LMB_ReadStrobe ( dlmb_LMB_ReadStrobe ),
      .LMB_WriteStrobe ( dlmb_LMB_WriteStrobe ),
      .LMB_AddrStrobe ( dlmb_LMB_AddrStrobe ),
      .LMB_ReadDBus ( dlmb_LMB_ReadDBus ),
      .LMB_WriteDBus ( dlmb_LMB_WriteDBus ),
      .LMB_Ready ( dlmb_LMB_Ready ),
      .LMB_Wait ( dlmb_LMB_Wait ),
      .LMB_UE ( dlmb_LMB_UE ),
      .LMB_CE ( dlmb_LMB_CE ),
      .LMB_BE ( dlmb_LMB_BE )
    );

  (* BOX_TYPE = "user_black_box" *)
  vga_config_dlmb_cntlr_wrapper
    dlmb_cntlr (
      .LMB_Clk ( clk_62_5000MHz ),
      .LMB_Rst ( dlmb_LMB_Rst ),
      .LMB_ABus ( dlmb_LMB_ABus ),
      .LMB_WriteDBus ( dlmb_LMB_WriteDBus ),
      .LMB_AddrStrobe ( dlmb_LMB_AddrStrobe ),
      .LMB_ReadStrobe ( dlmb_LMB_ReadStrobe ),
      .LMB_WriteStrobe ( dlmb_LMB_WriteStrobe ),
      .LMB_BE ( dlmb_LMB_BE ),
      .Sl_DBus ( dlmb_Sl_DBus ),
      .Sl_Ready ( dlmb_Sl_Ready[0] ),
      .Sl_Wait ( dlmb_Sl_Wait[0] ),
      .Sl_UE ( dlmb_Sl_UE[0] ),
      .Sl_CE ( dlmb_Sl_CE[0] ),
      .BRAM_Rst_A ( dlmb_port_BRAM_Rst ),
      .BRAM_Clk_A ( dlmb_port_BRAM_Clk ),
      .BRAM_EN_A ( dlmb_port_BRAM_EN ),
      .BRAM_WEN_A ( dlmb_port_BRAM_WEN ),
      .BRAM_Addr_A ( dlmb_port_BRAM_Addr ),
      .BRAM_Din_A ( dlmb_port_BRAM_Din ),
      .BRAM_Dout_A ( dlmb_port_BRAM_Dout ),
      .Interrupt (  ),
      .SPLB_CTRL_PLB_ABus ( net_gnd32 ),
      .SPLB_CTRL_PLB_PAValid ( net_gnd0 ),
      .SPLB_CTRL_PLB_masterID ( net_gnd1[0:0] ),
      .SPLB_CTRL_PLB_RNW ( net_gnd0 ),
      .SPLB_CTRL_PLB_BE ( net_gnd4 ),
      .SPLB_CTRL_PLB_size ( net_gnd4 ),
      .SPLB_CTRL_PLB_type ( net_gnd3 ),
      .SPLB_CTRL_PLB_wrDBus ( net_gnd32 ),
      .SPLB_CTRL_Sl_addrAck (  ),
      .SPLB_CTRL_Sl_SSize (  ),
      .SPLB_CTRL_Sl_wait (  ),
      .SPLB_CTRL_Sl_rearbitrate (  ),
      .SPLB_CTRL_Sl_wrDAck (  ),
      .SPLB_CTRL_Sl_wrComp (  ),
      .SPLB_CTRL_Sl_rdDBus (  ),
      .SPLB_CTRL_Sl_rdDAck (  ),
      .SPLB_CTRL_Sl_rdComp (  ),
      .SPLB_CTRL_Sl_MBusy (  ),
      .SPLB_CTRL_Sl_MWrErr (  ),
      .SPLB_CTRL_Sl_MRdErr (  ),
      .SPLB_CTRL_PLB_UABus ( net_gnd32 ),
      .SPLB_CTRL_PLB_SAValid ( net_gnd0 ),
      .SPLB_CTRL_PLB_rdPrim ( net_gnd0 ),
      .SPLB_CTRL_PLB_wrPrim ( net_gnd0 ),
      .SPLB_CTRL_PLB_abort ( net_gnd0 ),
      .SPLB_CTRL_PLB_busLock ( net_gnd0 ),
      .SPLB_CTRL_PLB_MSize ( net_gnd2[1:0] ),
      .SPLB_CTRL_PLB_lockErr ( net_gnd0 ),
      .SPLB_CTRL_PLB_wrBurst ( net_gnd0 ),
      .SPLB_CTRL_PLB_rdBurst ( net_gnd0 ),
      .SPLB_CTRL_PLB_wrPendReq ( net_gnd0 ),
      .SPLB_CTRL_PLB_rdPendReq ( net_gnd0 ),
      .SPLB_CTRL_PLB_wrPendPri ( net_gnd2[1:0] ),
      .SPLB_CTRL_PLB_rdPendPri ( net_gnd2[1:0] ),
      .SPLB_CTRL_PLB_reqPri ( net_gnd2[1:0] ),
      .SPLB_CTRL_PLB_TAttribute ( net_gnd16 ),
      .SPLB_CTRL_Sl_wrBTerm (  ),
      .SPLB_CTRL_Sl_rdWdAddr (  ),
      .SPLB_CTRL_Sl_rdBTerm (  ),
      .SPLB_CTRL_Sl_MIRQ (  ),
      .S_AXI_CTRL_ACLK ( net_vcc0 ),
      .S_AXI_CTRL_ARESETN ( net_gnd0 ),
      .S_AXI_CTRL_AWADDR ( net_gnd32[0:31] ),
      .S_AXI_CTRL_AWVALID ( net_gnd0 ),
      .S_AXI_CTRL_AWREADY (  ),
      .S_AXI_CTRL_WDATA ( net_gnd32[0:31] ),
      .S_AXI_CTRL_WSTRB ( net_gnd4[0:3] ),
      .S_AXI_CTRL_WVALID ( net_gnd0 ),
      .S_AXI_CTRL_WREADY (  ),
      .S_AXI_CTRL_BRESP (  ),
      .S_AXI_CTRL_BVALID (  ),
      .S_AXI_CTRL_BREADY ( net_gnd0 ),
      .S_AXI_CTRL_ARADDR ( net_gnd32[0:31] ),
      .S_AXI_CTRL_ARVALID ( net_gnd0 ),
      .S_AXI_CTRL_ARREADY (  ),
      .S_AXI_CTRL_RDATA (  ),
      .S_AXI_CTRL_RRESP (  ),
      .S_AXI_CTRL_RVALID (  ),
      .S_AXI_CTRL_RREADY ( net_gnd0 )
    );

  (* BOX_TYPE = "user_black_box" *)
  vga_config_ilmb_cntlr_wrapper
    ilmb_cntlr (
      .LMB_Clk ( clk_62_5000MHz ),
      .LMB_Rst ( ilmb_LMB_Rst ),
      .LMB_ABus ( ilmb_LMB_ABus ),
      .LMB_WriteDBus ( ilmb_LMB_WriteDBus ),
      .LMB_AddrStrobe ( ilmb_LMB_AddrStrobe ),
      .LMB_ReadStrobe ( ilmb_LMB_ReadStrobe ),
      .LMB_WriteStrobe ( ilmb_LMB_WriteStrobe ),
      .LMB_BE ( ilmb_LMB_BE ),
      .Sl_DBus ( ilmb_Sl_DBus ),
      .Sl_Ready ( ilmb_Sl_Ready[0] ),
      .Sl_Wait ( ilmb_Sl_Wait[0] ),
      .Sl_UE ( ilmb_Sl_UE[0] ),
      .Sl_CE ( ilmb_Sl_CE[0] ),
      .BRAM_Rst_A ( ilmb_port_BRAM_Rst ),
      .BRAM_Clk_A ( ilmb_port_BRAM_Clk ),
      .BRAM_EN_A ( ilmb_port_BRAM_EN ),
      .BRAM_WEN_A ( ilmb_port_BRAM_WEN ),
      .BRAM_Addr_A ( ilmb_port_BRAM_Addr ),
      .BRAM_Din_A ( ilmb_port_BRAM_Din ),
      .BRAM_Dout_A ( ilmb_port_BRAM_Dout ),
      .Interrupt (  ),
      .SPLB_CTRL_PLB_ABus ( net_gnd32 ),
      .SPLB_CTRL_PLB_PAValid ( net_gnd0 ),
      .SPLB_CTRL_PLB_masterID ( net_gnd1[0:0] ),
      .SPLB_CTRL_PLB_RNW ( net_gnd0 ),
      .SPLB_CTRL_PLB_BE ( net_gnd4 ),
      .SPLB_CTRL_PLB_size ( net_gnd4 ),
      .SPLB_CTRL_PLB_type ( net_gnd3 ),
      .SPLB_CTRL_PLB_wrDBus ( net_gnd32 ),
      .SPLB_CTRL_Sl_addrAck (  ),
      .SPLB_CTRL_Sl_SSize (  ),
      .SPLB_CTRL_Sl_wait (  ),
      .SPLB_CTRL_Sl_rearbitrate (  ),
      .SPLB_CTRL_Sl_wrDAck (  ),
      .SPLB_CTRL_Sl_wrComp (  ),
      .SPLB_CTRL_Sl_rdDBus (  ),
      .SPLB_CTRL_Sl_rdDAck (  ),
      .SPLB_CTRL_Sl_rdComp (  ),
      .SPLB_CTRL_Sl_MBusy (  ),
      .SPLB_CTRL_Sl_MWrErr (  ),
      .SPLB_CTRL_Sl_MRdErr (  ),
      .SPLB_CTRL_PLB_UABus ( net_gnd32 ),
      .SPLB_CTRL_PLB_SAValid ( net_gnd0 ),
      .SPLB_CTRL_PLB_rdPrim ( net_gnd0 ),
      .SPLB_CTRL_PLB_wrPrim ( net_gnd0 ),
      .SPLB_CTRL_PLB_abort ( net_gnd0 ),
      .SPLB_CTRL_PLB_busLock ( net_gnd0 ),
      .SPLB_CTRL_PLB_MSize ( net_gnd2[1:0] ),
      .SPLB_CTRL_PLB_lockErr ( net_gnd0 ),
      .SPLB_CTRL_PLB_wrBurst ( net_gnd0 ),
      .SPLB_CTRL_PLB_rdBurst ( net_gnd0 ),
      .SPLB_CTRL_PLB_wrPendReq ( net_gnd0 ),
      .SPLB_CTRL_PLB_rdPendReq ( net_gnd0 ),
      .SPLB_CTRL_PLB_wrPendPri ( net_gnd2[1:0] ),
      .SPLB_CTRL_PLB_rdPendPri ( net_gnd2[1:0] ),
      .SPLB_CTRL_PLB_reqPri ( net_gnd2[1:0] ),
      .SPLB_CTRL_PLB_TAttribute ( net_gnd16 ),
      .SPLB_CTRL_Sl_wrBTerm (  ),
      .SPLB_CTRL_Sl_rdWdAddr (  ),
      .SPLB_CTRL_Sl_rdBTerm (  ),
      .SPLB_CTRL_Sl_MIRQ (  ),
      .S_AXI_CTRL_ACLK ( net_vcc0 ),
      .S_AXI_CTRL_ARESETN ( net_gnd0 ),
      .S_AXI_CTRL_AWADDR ( net_gnd32[0:31] ),
      .S_AXI_CTRL_AWVALID ( net_gnd0 ),
      .S_AXI_CTRL_AWREADY (  ),
      .S_AXI_CTRL_WDATA ( net_gnd32[0:31] ),
      .S_AXI_CTRL_WSTRB ( net_gnd4[0:3] ),
      .S_AXI_CTRL_WVALID ( net_gnd0 ),
      .S_AXI_CTRL_WREADY (  ),
      .S_AXI_CTRL_BRESP (  ),
      .S_AXI_CTRL_BVALID (  ),
      .S_AXI_CTRL_BREADY ( net_gnd0 ),
      .S_AXI_CTRL_ARADDR ( net_gnd32[0:31] ),
      .S_AXI_CTRL_ARVALID ( net_gnd0 ),
      .S_AXI_CTRL_ARREADY (  ),
      .S_AXI_CTRL_RDATA (  ),
      .S_AXI_CTRL_RRESP (  ),
      .S_AXI_CTRL_RVALID (  ),
      .S_AXI_CTRL_RREADY ( net_gnd0 )
    );

  (* BOX_TYPE = "user_black_box" *)
  vga_config_lmb_bram_wrapper
    lmb_bram (
      .BRAM_Rst_A ( ilmb_port_BRAM_Rst ),
      .BRAM_Clk_A ( ilmb_port_BRAM_Clk ),
      .BRAM_EN_A ( ilmb_port_BRAM_EN ),
      .BRAM_WEN_A ( ilmb_port_BRAM_WEN ),
      .BRAM_Addr_A ( ilmb_port_BRAM_Addr ),
      .BRAM_Din_A ( ilmb_port_BRAM_Din ),
      .BRAM_Dout_A ( ilmb_port_BRAM_Dout ),
      .BRAM_Rst_B ( dlmb_port_BRAM_Rst ),
      .BRAM_Clk_B ( dlmb_port_BRAM_Clk ),
      .BRAM_EN_B ( dlmb_port_BRAM_EN ),
      .BRAM_WEN_B ( dlmb_port_BRAM_WEN ),
      .BRAM_Addr_B ( dlmb_port_BRAM_Addr ),
      .BRAM_Din_B ( dlmb_port_BRAM_Din ),
      .BRAM_Dout_B ( dlmb_port_BRAM_Dout )
    );

  (* BOX_TYPE = "user_black_box" *)
  vga_config_rs232_uart_1_wrapper
    RS232_Uart_1 (
      .SPLB_Clk ( clk_62_5000MHz ),
      .SPLB_Rst ( mb_plb_SPLB_Rst[0] ),
      .PLB_ABus ( mb_plb_PLB_ABus ),
      .PLB_PAValid ( mb_plb_PLB_PAValid ),
      .PLB_masterID ( mb_plb_PLB_masterID[0:0] ),
      .PLB_RNW ( mb_plb_PLB_RNW ),
      .PLB_BE ( mb_plb_PLB_BE ),
      .PLB_size ( mb_plb_PLB_size ),
      .PLB_type ( mb_plb_PLB_type ),
      .PLB_wrDBus ( mb_plb_PLB_wrDBus ),
      .PLB_UABus ( mb_plb_PLB_UABus ),
      .PLB_SAValid ( mb_plb_PLB_SAValid ),
      .PLB_rdPrim ( mb_plb_PLB_rdPrim[0] ),
      .PLB_wrPrim ( mb_plb_PLB_wrPrim[0] ),
      .PLB_abort ( mb_plb_PLB_abort ),
      .PLB_busLock ( mb_plb_PLB_busLock ),
      .PLB_MSize ( mb_plb_PLB_MSize ),
      .PLB_lockErr ( mb_plb_PLB_lockErr ),
      .PLB_wrBurst ( mb_plb_PLB_wrBurst ),
      .PLB_rdBurst ( mb_plb_PLB_rdBurst ),
      .PLB_wrPendReq ( mb_plb_PLB_wrPendReq ),
      .PLB_rdPendReq ( mb_plb_PLB_rdPendReq ),
      .PLB_wrPendPri ( mb_plb_PLB_wrPendPri ),
      .PLB_rdPendPri ( mb_plb_PLB_rdPendPri ),
      .PLB_reqPri ( mb_plb_PLB_reqPri ),
      .PLB_TAttribute ( mb_plb_PLB_TAttribute ),
      .Sl_addrAck ( mb_plb_Sl_addrAck[0] ),
      .Sl_SSize ( mb_plb_Sl_SSize[0:1] ),
      .Sl_wait ( mb_plb_Sl_wait[0] ),
      .Sl_rearbitrate ( mb_plb_Sl_rearbitrate[0] ),
      .Sl_wrDAck ( mb_plb_Sl_wrDAck[0] ),
      .Sl_wrComp ( mb_plb_Sl_wrComp[0] ),
      .Sl_rdDBus ( mb_plb_Sl_rdDBus[0:31] ),
      .Sl_rdDAck ( mb_plb_Sl_rdDAck[0] ),
      .Sl_rdComp ( mb_plb_Sl_rdComp[0] ),
      .Sl_MBusy ( mb_plb_Sl_MBusy[0:1] ),
      .Sl_MWrErr ( mb_plb_Sl_MWrErr[0:1] ),
      .Sl_MRdErr ( mb_plb_Sl_MRdErr[0:1] ),
      .Sl_wrBTerm ( mb_plb_Sl_wrBTerm[0] ),
      .Sl_rdWdAddr ( mb_plb_Sl_rdWdAddr[0:3] ),
      .Sl_rdBTerm ( mb_plb_Sl_rdBTerm[0] ),
      .Sl_MIRQ ( mb_plb_Sl_MIRQ[0:1] ),
      .RX ( fpga_0_RS232_Uart_1_RX_pin ),
      .TX ( fpga_0_RS232_Uart_1_TX_pin ),
      .Interrupt (  )
    );

  (* BOX_TYPE = "user_black_box" *)
  vga_config_clock_generator_0_wrapper
    clock_generator_0 (
      .CLKIN ( CLK_S ),
      .CLKOUT0 ( clk_62_5000MHz ),
      .CLKOUT1 ( clock_generator_0_CLKOUT1 ),
      .CLKOUT2 (  ),
      .CLKOUT3 (  ),
      .CLKOUT4 (  ),
      .CLKOUT5 (  ),
      .CLKOUT6 (  ),
      .CLKOUT7 (  ),
      .CLKOUT8 (  ),
      .CLKOUT9 (  ),
      .CLKOUT10 (  ),
      .CLKOUT11 (  ),
      .CLKOUT12 (  ),
      .CLKOUT13 (  ),
      .CLKOUT14 (  ),
      .CLKOUT15 (  ),
      .CLKFBIN ( net_gnd0 ),
      .CLKFBOUT (  ),
      .PSCLK ( net_gnd0 ),
      .PSEN ( net_gnd0 ),
      .PSINCDEC ( net_gnd0 ),
      .PSDONE (  ),
      .RST ( sys_rst_s ),
      .LOCKED ( Dcm_all_locked )
    );

  (* BOX_TYPE = "user_black_box" *)
  vga_config_mdm_0_wrapper
    mdm_0 (
      .Interrupt (  ),
      .Debug_SYS_Rst ( Debug_SYS_Rst ),
      .Ext_BRK ( Ext_BRK ),
      .Ext_NM_BRK ( Ext_NM_BRK ),
      .S_AXI_ACLK ( net_gnd0 ),
      .S_AXI_ARESETN ( net_gnd0 ),
      .S_AXI_AWADDR ( net_gnd32[0:31] ),
      .S_AXI_AWVALID ( net_gnd0 ),
      .S_AXI_AWREADY (  ),
      .S_AXI_WDATA ( net_gnd32[0:31] ),
      .S_AXI_WSTRB ( net_gnd4[0:3] ),
      .S_AXI_WVALID ( net_gnd0 ),
      .S_AXI_WREADY (  ),
      .S_AXI_BRESP (  ),
      .S_AXI_BVALID (  ),
      .S_AXI_BREADY ( net_gnd0 ),
      .S_AXI_ARADDR ( net_gnd32[0:31] ),
      .S_AXI_ARVALID ( net_gnd0 ),
      .S_AXI_ARREADY (  ),
      .S_AXI_RDATA (  ),
      .S_AXI_RRESP (  ),
      .S_AXI_RVALID (  ),
      .S_AXI_RREADY ( net_gnd0 ),
      .SPLB_Clk ( clk_62_5000MHz ),
      .SPLB_Rst ( mb_plb_SPLB_Rst[1] ),
      .PLB_ABus ( mb_plb_PLB_ABus ),
      .PLB_UABus ( mb_plb_PLB_UABus ),
      .PLB_PAValid ( mb_plb_PLB_PAValid ),
      .PLB_SAValid ( mb_plb_PLB_SAValid ),
      .PLB_rdPrim ( mb_plb_PLB_rdPrim[1] ),
      .PLB_wrPrim ( mb_plb_PLB_wrPrim[1] ),
      .PLB_masterID ( mb_plb_PLB_masterID[0:0] ),
      .PLB_abort ( mb_plb_PLB_abort ),
      .PLB_busLock ( mb_plb_PLB_busLock ),
      .PLB_RNW ( mb_plb_PLB_RNW ),
      .PLB_BE ( mb_plb_PLB_BE ),
      .PLB_MSize ( mb_plb_PLB_MSize ),
      .PLB_size ( mb_plb_PLB_size ),
      .PLB_type ( mb_plb_PLB_type ),
      .PLB_lockErr ( mb_plb_PLB_lockErr ),
      .PLB_wrDBus ( mb_plb_PLB_wrDBus ),
      .PLB_wrBurst ( mb_plb_PLB_wrBurst ),
      .PLB_rdBurst ( mb_plb_PLB_rdBurst ),
      .PLB_wrPendReq ( mb_plb_PLB_wrPendReq ),
      .PLB_rdPendReq ( mb_plb_PLB_rdPendReq ),
      .PLB_wrPendPri ( mb_plb_PLB_wrPendPri ),
      .PLB_rdPendPri ( mb_plb_PLB_rdPendPri ),
      .PLB_reqPri ( mb_plb_PLB_reqPri ),
      .PLB_TAttribute ( mb_plb_PLB_TAttribute ),
      .Sl_addrAck ( mb_plb_Sl_addrAck[1] ),
      .Sl_SSize ( mb_plb_Sl_SSize[2:3] ),
      .Sl_wait ( mb_plb_Sl_wait[1] ),
      .Sl_rearbitrate ( mb_plb_Sl_rearbitrate[1] ),
      .Sl_wrDAck ( mb_plb_Sl_wrDAck[1] ),
      .Sl_wrComp ( mb_plb_Sl_wrComp[1] ),
      .Sl_wrBTerm ( mb_plb_Sl_wrBTerm[1] ),
      .Sl_rdDBus ( mb_plb_Sl_rdDBus[32:63] ),
      .Sl_rdWdAddr ( mb_plb_Sl_rdWdAddr[4:7] ),
      .Sl_rdDAck ( mb_plb_Sl_rdDAck[1] ),
      .Sl_rdComp ( mb_plb_Sl_rdComp[1] ),
      .Sl_rdBTerm ( mb_plb_Sl_rdBTerm[1] ),
      .Sl_MBusy ( mb_plb_Sl_MBusy[2:3] ),
      .Sl_MWrErr ( mb_plb_Sl_MWrErr[2:3] ),
      .Sl_MRdErr ( mb_plb_Sl_MRdErr[2:3] ),
      .Sl_MIRQ ( mb_plb_Sl_MIRQ[2:3] ),
      .Dbg_Clk_0 ( microblaze_0_mdm_bus_Dbg_Clk ),
      .Dbg_TDI_0 ( microblaze_0_mdm_bus_Dbg_TDI ),
      .Dbg_TDO_0 ( microblaze_0_mdm_bus_Dbg_TDO ),
      .Dbg_Reg_En_0 ( microblaze_0_mdm_bus_Dbg_Reg_En ),
      .Dbg_Capture_0 ( microblaze_0_mdm_bus_Dbg_Capture ),
      .Dbg_Shift_0 ( microblaze_0_mdm_bus_Dbg_Shift ),
      .Dbg_Update_0 ( microblaze_0_mdm_bus_Dbg_Update ),
      .Dbg_Rst_0 ( microblaze_0_mdm_bus_Debug_Rst ),
      .Dbg_Clk_1 (  ),
      .Dbg_TDI_1 (  ),
      .Dbg_TDO_1 ( net_gnd0 ),
      .Dbg_Reg_En_1 (  ),
      .Dbg_Capture_1 (  ),
      .Dbg_Shift_1 (  ),
      .Dbg_Update_1 (  ),
      .Dbg_Rst_1 (  ),
      .Dbg_Clk_2 (  ),
      .Dbg_TDI_2 (  ),
      .Dbg_TDO_2 ( net_gnd0 ),
      .Dbg_Reg_En_2 (  ),
      .Dbg_Capture_2 (  ),
      .Dbg_Shift_2 (  ),
      .Dbg_Update_2 (  ),
      .Dbg_Rst_2 (  ),
      .Dbg_Clk_3 (  ),
      .Dbg_TDI_3 (  ),
      .Dbg_TDO_3 ( net_gnd0 ),
      .Dbg_Reg_En_3 (  ),
      .Dbg_Capture_3 (  ),
      .Dbg_Shift_3 (  ),
      .Dbg_Update_3 (  ),
      .Dbg_Rst_3 (  ),
      .Dbg_Clk_4 (  ),
      .Dbg_TDI_4 (  ),
      .Dbg_TDO_4 ( net_gnd0 ),
      .Dbg_Reg_En_4 (  ),
      .Dbg_Capture_4 (  ),
      .Dbg_Shift_4 (  ),
      .Dbg_Update_4 (  ),
      .Dbg_Rst_4 (  ),
      .Dbg_Clk_5 (  ),
      .Dbg_TDI_5 (  ),
      .Dbg_TDO_5 ( net_gnd0 ),
      .Dbg_Reg_En_5 (  ),
      .Dbg_Capture_5 (  ),
      .Dbg_Shift_5 (  ),
      .Dbg_Update_5 (  ),
      .Dbg_Rst_5 (  ),
      .Dbg_Clk_6 (  ),
      .Dbg_TDI_6 (  ),
      .Dbg_TDO_6 ( net_gnd0 ),
      .Dbg_Reg_En_6 (  ),
      .Dbg_Capture_6 (  ),
      .Dbg_Shift_6 (  ),
      .Dbg_Update_6 (  ),
      .Dbg_Rst_6 (  ),
      .Dbg_Clk_7 (  ),
      .Dbg_TDI_7 (  ),
      .Dbg_TDO_7 ( net_gnd0 ),
      .Dbg_Reg_En_7 (  ),
      .Dbg_Capture_7 (  ),
      .Dbg_Shift_7 (  ),
      .Dbg_Update_7 (  ),
      .Dbg_Rst_7 (  ),
      .bscan_tdi (  ),
      .bscan_reset (  ),
      .bscan_shift (  ),
      .bscan_update (  ),
      .bscan_capture (  ),
      .bscan_sel1 (  ),
      .bscan_drck1 (  ),
      .bscan_tdo1 ( net_gnd0 ),
      .Ext_JTAG_DRCK (  ),
      .Ext_JTAG_RESET (  ),
      .Ext_JTAG_SEL (  ),
      .Ext_JTAG_CAPTURE (  ),
      .Ext_JTAG_SHIFT (  ),
      .Ext_JTAG_UPDATE (  ),
      .Ext_JTAG_TDI (  ),
      .Ext_JTAG_TDO ( net_gnd0 )
    );

  (* BOX_TYPE = "user_black_box" *)
  vga_config_proc_sys_reset_0_wrapper
    proc_sys_reset_0 (
      .Slowest_sync_clk ( clk_62_5000MHz ),
      .Ext_Reset_In ( sys_rst_s ),
      .Aux_Reset_In ( net_gnd0 ),
      .MB_Debug_Sys_Rst ( Debug_SYS_Rst ),
      .Core_Reset_Req_0 ( net_gnd0 ),
      .Chip_Reset_Req_0 ( net_gnd0 ),
      .System_Reset_Req_0 ( net_gnd0 ),
      .Core_Reset_Req_1 ( net_gnd0 ),
      .Chip_Reset_Req_1 ( net_gnd0 ),
      .System_Reset_Req_1 ( net_gnd0 ),
      .Dcm_locked ( Dcm_all_locked ),
      .RstcPPCresetcore_0 (  ),
      .RstcPPCresetchip_0 (  ),
      .RstcPPCresetsys_0 (  ),
      .RstcPPCresetcore_1 (  ),
      .RstcPPCresetchip_1 (  ),
      .RstcPPCresetsys_1 (  ),
      .MB_Reset ( mb_reset ),
      .Bus_Struct_Reset ( sys_bus_reset[0:0] ),
      .Peripheral_Reset (  ),
      .Interconnect_aresetn (  ),
      .Peripheral_aresetn (  )
    );

  (* BOX_TYPE = "user_black_box" *)
  vga_config_xps_iic_0_wrapper
    xps_iic_0 (
      .Sda_I ( xps_iic_0_Sda_I ),
      .Sda_O ( xps_iic_0_Sda_O ),
      .Sda_T ( xps_iic_0_Sda_T ),
      .Scl_I ( xps_iic_0_Scl_I ),
      .Scl_O ( xps_iic_0_Scl_O ),
      .Scl_T ( xps_iic_0_Scl_T ),
      .Gpo ( xps_iic_0_Gpo[0:0] ),
      .IIC2INTC_Irpt ( xps_iic_0_IIC2INTC_Irpt[0] ),
      .SPLB_Clk ( clk_62_5000MHz ),
      .SPLB_Rst ( mb_plb_SPLB_Rst[2] ),
      .PLB_ABus ( mb_plb_PLB_ABus ),
      .PLB_UABus ( mb_plb_PLB_UABus ),
      .PLB_PAValid ( mb_plb_PLB_PAValid ),
      .PLB_SAValid ( mb_plb_PLB_SAValid ),
      .PLB_rdPrim ( mb_plb_PLB_rdPrim[2] ),
      .PLB_wrPrim ( mb_plb_PLB_wrPrim[2] ),
      .PLB_masterID ( mb_plb_PLB_masterID[0:0] ),
      .PLB_abort ( mb_plb_PLB_abort ),
      .PLB_busLock ( mb_plb_PLB_busLock ),
      .PLB_RNW ( mb_plb_PLB_RNW ),
      .PLB_BE ( mb_plb_PLB_BE ),
      .PLB_MSize ( mb_plb_PLB_MSize ),
      .PLB_size ( mb_plb_PLB_size ),
      .PLB_type ( mb_plb_PLB_type ),
      .PLB_lockErr ( mb_plb_PLB_lockErr ),
      .PLB_wrDBus ( mb_plb_PLB_wrDBus ),
      .PLB_wrBurst ( mb_plb_PLB_wrBurst ),
      .PLB_rdBurst ( mb_plb_PLB_rdBurst ),
      .PLB_wrPendReq ( mb_plb_PLB_wrPendReq ),
      .PLB_rdPendReq ( mb_plb_PLB_rdPendReq ),
      .PLB_wrPendPri ( mb_plb_PLB_wrPendPri ),
      .PLB_rdPendPri ( mb_plb_PLB_rdPendPri ),
      .PLB_reqPri ( mb_plb_PLB_reqPri ),
      .PLB_TAttribute ( mb_plb_PLB_TAttribute ),
      .Sl_addrAck ( mb_plb_Sl_addrAck[2] ),
      .Sl_SSize ( mb_plb_Sl_SSize[4:5] ),
      .Sl_wait ( mb_plb_Sl_wait[2] ),
      .Sl_rearbitrate ( mb_plb_Sl_rearbitrate[2] ),
      .Sl_wrDAck ( mb_plb_Sl_wrDAck[2] ),
      .Sl_wrComp ( mb_plb_Sl_wrComp[2] ),
      .Sl_wrBTerm ( mb_plb_Sl_wrBTerm[2] ),
      .Sl_rdDBus ( mb_plb_Sl_rdDBus[64:95] ),
      .Sl_rdWdAddr ( mb_plb_Sl_rdWdAddr[8:11] ),
      .Sl_rdDAck ( mb_plb_Sl_rdDAck[2] ),
      .Sl_rdComp ( mb_plb_Sl_rdComp[2] ),
      .Sl_rdBTerm ( mb_plb_Sl_rdBTerm[2] ),
      .Sl_MBusy ( mb_plb_Sl_MBusy[4:5] ),
      .Sl_MWrErr ( mb_plb_Sl_MWrErr[4:5] ),
      .Sl_MRdErr ( mb_plb_Sl_MRdErr[4:5] ),
      .Sl_MIRQ ( mb_plb_Sl_MIRQ[4:5] )
    );

  (* BOX_TYPE = "user_black_box" *)
  vga_config_xps_intc_0_wrapper
    xps_intc_0 (
      .SPLB_Clk ( clk_62_5000MHz ),
      .SPLB_Rst ( mb_plb_SPLB_Rst[3] ),
      .PLB_ABus ( mb_plb_PLB_ABus ),
      .PLB_PAValid ( mb_plb_PLB_PAValid ),
      .PLB_masterID ( mb_plb_PLB_masterID[0:0] ),
      .PLB_RNW ( mb_plb_PLB_RNW ),
      .PLB_BE ( mb_plb_PLB_BE ),
      .PLB_size ( mb_plb_PLB_size ),
      .PLB_type ( mb_plb_PLB_type ),
      .PLB_wrDBus ( mb_plb_PLB_wrDBus ),
      .PLB_UABus ( mb_plb_PLB_UABus ),
      .PLB_SAValid ( mb_plb_PLB_SAValid ),
      .PLB_rdPrim ( mb_plb_PLB_rdPrim[3] ),
      .PLB_wrPrim ( mb_plb_PLB_wrPrim[3] ),
      .PLB_abort ( mb_plb_PLB_abort ),
      .PLB_busLock ( mb_plb_PLB_busLock ),
      .PLB_MSize ( mb_plb_PLB_MSize ),
      .PLB_lockErr ( mb_plb_PLB_lockErr ),
      .PLB_wrBurst ( mb_plb_PLB_wrBurst ),
      .PLB_rdBurst ( mb_plb_PLB_rdBurst ),
      .PLB_wrPendReq ( mb_plb_PLB_wrPendReq ),
      .PLB_rdPendReq ( mb_plb_PLB_rdPendReq ),
      .PLB_wrPendPri ( mb_plb_PLB_wrPendPri ),
      .PLB_rdPendPri ( mb_plb_PLB_rdPendPri ),
      .PLB_reqPri ( mb_plb_PLB_reqPri ),
      .PLB_TAttribute ( mb_plb_PLB_TAttribute ),
      .Sl_addrAck ( mb_plb_Sl_addrAck[3] ),
      .Sl_SSize ( mb_plb_Sl_SSize[6:7] ),
      .Sl_wait ( mb_plb_Sl_wait[3] ),
      .Sl_rearbitrate ( mb_plb_Sl_rearbitrate[3] ),
      .Sl_wrDAck ( mb_plb_Sl_wrDAck[3] ),
      .Sl_wrComp ( mb_plb_Sl_wrComp[3] ),
      .Sl_rdDBus ( mb_plb_Sl_rdDBus[96:127] ),
      .Sl_rdDAck ( mb_plb_Sl_rdDAck[3] ),
      .Sl_rdComp ( mb_plb_Sl_rdComp[3] ),
      .Sl_MBusy ( mb_plb_Sl_MBusy[6:7] ),
      .Sl_MWrErr ( mb_plb_Sl_MWrErr[6:7] ),
      .Sl_MRdErr ( mb_plb_Sl_MRdErr[6:7] ),
      .Sl_wrBTerm ( mb_plb_Sl_wrBTerm[3] ),
      .Sl_rdWdAddr ( mb_plb_Sl_rdWdAddr[12:15] ),
      .Sl_rdBTerm ( mb_plb_Sl_rdBTerm[3] ),
      .Sl_MIRQ ( mb_plb_Sl_MIRQ[6:7] ),
      .Intr ( xps_iic_0_IIC2INTC_Irpt[0:0] ),
      .Irq ( microblaze_0_INTERRUPT )
    );

  IOBUF
    iobuf_0 (
      .I ( xps_iic_0_Sda_O ),
      .IO ( xps_iic_0_Sda_pin ),
      .O ( xps_iic_0_Sda_I ),
      .T ( xps_iic_0_Sda_T )
    );

  IOBUF
    iobuf_1 (
      .I ( xps_iic_0_Scl_O ),
      .IO ( xps_iic_0_Scl_pin ),
      .O ( xps_iic_0_Scl_I ),
      .T ( xps_iic_0_Scl_T )
    );

endmodule

module vga_config_microblaze_0_wrapper
  (
    CLK,
    RESET,
    MB_RESET,
    INTERRUPT,
    INTERRUPT_ADDRESS,
    INTERRUPT_ACK,
    EXT_BRK,
    EXT_NM_BRK,
    DBG_STOP,
    MB_Halted,
    MB_Error,
    LOCKSTEP_MASTER_OUT,
    LOCKSTEP_SLAVE_IN,
    LOCKSTEP_OUT,
    INSTR,
    IREADY,
    IWAIT,
    ICE,
    IUE,
    INSTR_ADDR,
    IFETCH,
    I_AS,
    IPLB_M_ABort,
    IPLB_M_ABus,
    IPLB_M_UABus,
    IPLB_M_BE,
    IPLB_M_busLock,
    IPLB_M_lockErr,
    IPLB_M_MSize,
    IPLB_M_priority,
    IPLB_M_rdBurst,
    IPLB_M_request,
    IPLB_M_RNW,
    IPLB_M_size,
    IPLB_M_TAttribute,
    IPLB_M_type,
    IPLB_M_wrBurst,
    IPLB_M_wrDBus,
    IPLB_MBusy,
    IPLB_MRdErr,
    IPLB_MWrErr,
    IPLB_MIRQ,
    IPLB_MWrBTerm,
    IPLB_MWrDAck,
    IPLB_MAddrAck,
    IPLB_MRdBTerm,
    IPLB_MRdDAck,
    IPLB_MRdDBus,
    IPLB_MRdWdAddr,
    IPLB_MRearbitrate,
    IPLB_MSSize,
    IPLB_MTimeout,
    DATA_READ,
    DREADY,
    DWAIT,
    DCE,
    DUE,
    DATA_WRITE,
    DATA_ADDR,
    D_AS,
    READ_STROBE,
    WRITE_STROBE,
    BYTE_ENABLE,
    DPLB_M_ABort,
    DPLB_M_ABus,
    DPLB_M_UABus,
    DPLB_M_BE,
    DPLB_M_busLock,
    DPLB_M_lockErr,
    DPLB_M_MSize,
    DPLB_M_priority,
    DPLB_M_rdBurst,
    DPLB_M_request,
    DPLB_M_RNW,
    DPLB_M_size,
    DPLB_M_TAttribute,
    DPLB_M_type,
    DPLB_M_wrBurst,
    DPLB_M_wrDBus,
    DPLB_MBusy,
    DPLB_MRdErr,
    DPLB_MWrErr,
    DPLB_MIRQ,
    DPLB_MWrBTerm,
    DPLB_MWrDAck,
    DPLB_MAddrAck,
    DPLB_MRdBTerm,
    DPLB_MRdDAck,
    DPLB_MRdDBus,
    DPLB_MRdWdAddr,
    DPLB_MRearbitrate,
    DPLB_MSSize,
    DPLB_MTimeout,
    M_AXI_IP_AWID,
    M_AXI_IP_AWADDR,
    M_AXI_IP_AWLEN,
    M_AXI_IP_AWSIZE,
    M_AXI_IP_AWBURST,
    M_AXI_IP_AWLOCK,
    M_AXI_IP_AWCACHE,
    M_AXI_IP_AWPROT,
    M_AXI_IP_AWQOS,
    M_AXI_IP_AWVALID,
    M_AXI_IP_AWREADY,
    M_AXI_IP_WDATA,
    M_AXI_IP_WSTRB,
    M_AXI_IP_WLAST,
    M_AXI_IP_WVALID,
    M_AXI_IP_WREADY,
    M_AXI_IP_BID,
    M_AXI_IP_BRESP,
    M_AXI_IP_BVALID,
    M_AXI_IP_BREADY,
    M_AXI_IP_ARID,
    M_AXI_IP_ARADDR,
    M_AXI_IP_ARLEN,
    M_AXI_IP_ARSIZE,
    M_AXI_IP_ARBURST,
    M_AXI_IP_ARLOCK,
    M_AXI_IP_ARCACHE,
    M_AXI_IP_ARPROT,
    M_AXI_IP_ARQOS,
    M_AXI_IP_ARVALID,
    M_AXI_IP_ARREADY,
    M_AXI_IP_RID,
    M_AXI_IP_RDATA,
    M_AXI_IP_RRESP,
    M_AXI_IP_RLAST,
    M_AXI_IP_RVALID,
    M_AXI_IP_RREADY,
    M_AXI_DP_AWID,
    M_AXI_DP_AWADDR,
    M_AXI_DP_AWLEN,
    M_AXI_DP_AWSIZE,
    M_AXI_DP_AWBURST,
    M_AXI_DP_AWLOCK,
    M_AXI_DP_AWCACHE,
    M_AXI_DP_AWPROT,
    M_AXI_DP_AWQOS,
    M_AXI_DP_AWVALID,
    M_AXI_DP_AWREADY,
    M_AXI_DP_WDATA,
    M_AXI_DP_WSTRB,
    M_AXI_DP_WLAST,
    M_AXI_DP_WVALID,
    M_AXI_DP_WREADY,
    M_AXI_DP_BID,
    M_AXI_DP_BRESP,
    M_AXI_DP_BVALID,
    M_AXI_DP_BREADY,
    M_AXI_DP_ARID,
    M_AXI_DP_ARADDR,
    M_AXI_DP_ARLEN,
    M_AXI_DP_ARSIZE,
    M_AXI_DP_ARBURST,
    M_AXI_DP_ARLOCK,
    M_AXI_DP_ARCACHE,
    M_AXI_DP_ARPROT,
    M_AXI_DP_ARQOS,
    M_AXI_DP_ARVALID,
    M_AXI_DP_ARREADY,
    M_AXI_DP_RID,
    M_AXI_DP_RDATA,
    M_AXI_DP_RRESP,
    M_AXI_DP_RLAST,
    M_AXI_DP_RVALID,
    M_AXI_DP_RREADY,
    M_AXI_IC_AWID,
    M_AXI_IC_AWADDR,
    M_AXI_IC_AWLEN,
    M_AXI_IC_AWSIZE,
    M_AXI_IC_AWBURST,
    M_AXI_IC_AWLOCK,
    M_AXI_IC_AWCACHE,
    M_AXI_IC_AWPROT,
    M_AXI_IC_AWQOS,
    M_AXI_IC_AWVALID,
    M_AXI_IC_AWREADY,
    M_AXI_IC_AWUSER,
    M_AXI_IC_WDATA,
    M_AXI_IC_WSTRB,
    M_AXI_IC_WLAST,
    M_AXI_IC_WVALID,
    M_AXI_IC_WREADY,
    M_AXI_IC_WUSER,
    M_AXI_IC_BID,
    M_AXI_IC_BRESP,
    M_AXI_IC_BVALID,
    M_AXI_IC_BREADY,
    M_AXI_IC_BUSER,
    M_AXI_IC_ARID,
    M_AXI_IC_ARADDR,
    M_AXI_IC_ARLEN,
    M_AXI_IC_ARSIZE,
    M_AXI_IC_ARBURST,
    M_AXI_IC_ARLOCK,
    M_AXI_IC_ARCACHE,
    M_AXI_IC_ARPROT,
    M_AXI_IC_ARQOS,
    M_AXI_IC_ARVALID,
    M_AXI_IC_ARREADY,
    M_AXI_IC_ARUSER,
    M_AXI_IC_RID,
    M_AXI_IC_RDATA,
    M_AXI_IC_RRESP,
    M_AXI_IC_RLAST,
    M_AXI_IC_RVALID,
    M_AXI_IC_RREADY,
    M_AXI_IC_RUSER,
    M_AXI_DC_AWID,
    M_AXI_DC_AWADDR,
    M_AXI_DC_AWLEN,
    M_AXI_DC_AWSIZE,
    M_AXI_DC_AWBURST,
    M_AXI_DC_AWLOCK,
    M_AXI_DC_AWCACHE,
    M_AXI_DC_AWPROT,
    M_AXI_DC_AWQOS,
    M_AXI_DC_AWVALID,
    M_AXI_DC_AWREADY,
    M_AXI_DC_AWUSER,
    M_AXI_DC_WDATA,
    M_AXI_DC_WSTRB,
    M_AXI_DC_WLAST,
    M_AXI_DC_WVALID,
    M_AXI_DC_WREADY,
    M_AXI_DC_WUSER,
    M_AXI_DC_BID,
    M_AXI_DC_BRESP,
    M_AXI_DC_BVALID,
    M_AXI_DC_BREADY,
    M_AXI_DC_BUSER,
    M_AXI_DC_ARID,
    M_AXI_DC_ARADDR,
    M_AXI_DC_ARLEN,
    M_AXI_DC_ARSIZE,
    M_AXI_DC_ARBURST,
    M_AXI_DC_ARLOCK,
    M_AXI_DC_ARCACHE,
    M_AXI_DC_ARPROT,
    M_AXI_DC_ARQOS,
    M_AXI_DC_ARVALID,
    M_AXI_DC_ARREADY,
    M_AXI_DC_ARUSER,
    M_AXI_DC_RID,
    M_AXI_DC_RDATA,
    M_AXI_DC_RRESP,
    M_AXI_DC_RLAST,
    M_AXI_DC_RVALID,
    M_AXI_DC_RREADY,
    M_AXI_DC_RUSER,
    DBG_CLK,
    DBG_TDI,
    DBG_TDO,
    DBG_REG_EN,
    DBG_SHIFT,
    DBG_CAPTURE,
    DBG_UPDATE,
    DEBUG_RST,
    Trace_Instruction,
    Trace_Valid_Instr,
    Trace_PC,
    Trace_Reg_Write,
    Trace_Reg_Addr,
    Trace_MSR_Reg,
    Trace_PID_Reg,
    Trace_New_Reg_Value,
    Trace_Exception_Taken,
    Trace_Exception_Kind,
    Trace_Jump_Taken,
    Trace_Delay_Slot,
    Trace_Data_Address,
    Trace_Data_Access,
    Trace_Data_Read,
    Trace_Data_Write,
    Trace_Data_Write_Value,
    Trace_Data_Byte_Enable,
    Trace_DCache_Req,
    Trace_DCache_Hit,
    Trace_DCache_Rdy,
    Trace_DCache_Read,
    Trace_ICache_Req,
    Trace_ICache_Hit,
    Trace_ICache_Rdy,
    Trace_OF_PipeRun,
    Trace_EX_PipeRun,
    Trace_MEM_PipeRun,
    Trace_MB_Halted,
    Trace_Jump_Hit,
    FSL0_S_CLK,
    FSL0_S_READ,
    FSL0_S_DATA,
    FSL0_S_CONTROL,
    FSL0_S_EXISTS,
    FSL0_M_CLK,
    FSL0_M_WRITE,
    FSL0_M_DATA,
    FSL0_M_CONTROL,
    FSL0_M_FULL,
    FSL1_S_CLK,
    FSL1_S_READ,
    FSL1_S_DATA,
    FSL1_S_CONTROL,
    FSL1_S_EXISTS,
    FSL1_M_CLK,
    FSL1_M_WRITE,
    FSL1_M_DATA,
    FSL1_M_CONTROL,
    FSL1_M_FULL,
    FSL2_S_CLK,
    FSL2_S_READ,
    FSL2_S_DATA,
    FSL2_S_CONTROL,
    FSL2_S_EXISTS,
    FSL2_M_CLK,
    FSL2_M_WRITE,
    FSL2_M_DATA,
    FSL2_M_CONTROL,
    FSL2_M_FULL,
    FSL3_S_CLK,
    FSL3_S_READ,
    FSL3_S_DATA,
    FSL3_S_CONTROL,
    FSL3_S_EXISTS,
    FSL3_M_CLK,
    FSL3_M_WRITE,
    FSL3_M_DATA,
    FSL3_M_CONTROL,
    FSL3_M_FULL,
    FSL4_S_CLK,
    FSL4_S_READ,
    FSL4_S_DATA,
    FSL4_S_CONTROL,
    FSL4_S_EXISTS,
    FSL4_M_CLK,
    FSL4_M_WRITE,
    FSL4_M_DATA,
    FSL4_M_CONTROL,
    FSL4_M_FULL,
    FSL5_S_CLK,
    FSL5_S_READ,
    FSL5_S_DATA,
    FSL5_S_CONTROL,
    FSL5_S_EXISTS,
    FSL5_M_CLK,
    FSL5_M_WRITE,
    FSL5_M_DATA,
    FSL5_M_CONTROL,
    FSL5_M_FULL,
    FSL6_S_CLK,
    FSL6_S_READ,
    FSL6_S_DATA,
    FSL6_S_CONTROL,
    FSL6_S_EXISTS,
    FSL6_M_CLK,
    FSL6_M_WRITE,
    FSL6_M_DATA,
    FSL6_M_CONTROL,
    FSL6_M_FULL,
    FSL7_S_CLK,
    FSL7_S_READ,
    FSL7_S_DATA,
    FSL7_S_CONTROL,
    FSL7_S_EXISTS,
    FSL7_M_CLK,
    FSL7_M_WRITE,
    FSL7_M_DATA,
    FSL7_M_CONTROL,
    FSL7_M_FULL,
    FSL8_S_CLK,
    FSL8_S_READ,
    FSL8_S_DATA,
    FSL8_S_CONTROL,
    FSL8_S_EXISTS,
    FSL8_M_CLK,
    FSL8_M_WRITE,
    FSL8_M_DATA,
    FSL8_M_CONTROL,
    FSL8_M_FULL,
    FSL9_S_CLK,
    FSL9_S_READ,
    FSL9_S_DATA,
    FSL9_S_CONTROL,
    FSL9_S_EXISTS,
    FSL9_M_CLK,
    FSL9_M_WRITE,
    FSL9_M_DATA,
    FSL9_M_CONTROL,
    FSL9_M_FULL,
    FSL10_S_CLK,
    FSL10_S_READ,
    FSL10_S_DATA,
    FSL10_S_CONTROL,
    FSL10_S_EXISTS,
    FSL10_M_CLK,
    FSL10_M_WRITE,
    FSL10_M_DATA,
    FSL10_M_CONTROL,
    FSL10_M_FULL,
    FSL11_S_CLK,
    FSL11_S_READ,
    FSL11_S_DATA,
    FSL11_S_CONTROL,
    FSL11_S_EXISTS,
    FSL11_M_CLK,
    FSL11_M_WRITE,
    FSL11_M_DATA,
    FSL11_M_CONTROL,
    FSL11_M_FULL,
    FSL12_S_CLK,
    FSL12_S_READ,
    FSL12_S_DATA,
    FSL12_S_CONTROL,
    FSL12_S_EXISTS,
    FSL12_M_CLK,
    FSL12_M_WRITE,
    FSL12_M_DATA,
    FSL12_M_CONTROL,
    FSL12_M_FULL,
    FSL13_S_CLK,
    FSL13_S_READ,
    FSL13_S_DATA,
    FSL13_S_CONTROL,
    FSL13_S_EXISTS,
    FSL13_M_CLK,
    FSL13_M_WRITE,
    FSL13_M_DATA,
    FSL13_M_CONTROL,
    FSL13_M_FULL,
    FSL14_S_CLK,
    FSL14_S_READ,
    FSL14_S_DATA,
    FSL14_S_CONTROL,
    FSL14_S_EXISTS,
    FSL14_M_CLK,
    FSL14_M_WRITE,
    FSL14_M_DATA,
    FSL14_M_CONTROL,
    FSL14_M_FULL,
    FSL15_S_CLK,
    FSL15_S_READ,
    FSL15_S_DATA,
    FSL15_S_CONTROL,
    FSL15_S_EXISTS,
    FSL15_M_CLK,
    FSL15_M_WRITE,
    FSL15_M_DATA,
    FSL15_M_CONTROL,
    FSL15_M_FULL,
    M0_AXIS_TLAST,
    M0_AXIS_TDATA,
    M0_AXIS_TVALID,
    M0_AXIS_TREADY,
    S0_AXIS_TLAST,
    S0_AXIS_TDATA,
    S0_AXIS_TVALID,
    S0_AXIS_TREADY,
    M1_AXIS_TLAST,
    M1_AXIS_TDATA,
    M1_AXIS_TVALID,
    M1_AXIS_TREADY,
    S1_AXIS_TLAST,
    S1_AXIS_TDATA,
    S1_AXIS_TVALID,
    S1_AXIS_TREADY,
    M2_AXIS_TLAST,
    M2_AXIS_TDATA,
    M2_AXIS_TVALID,
    M2_AXIS_TREADY,
    S2_AXIS_TLAST,
    S2_AXIS_TDATA,
    S2_AXIS_TVALID,
    S2_AXIS_TREADY,
    M3_AXIS_TLAST,
    M3_AXIS_TDATA,
    M3_AXIS_TVALID,
    M3_AXIS_TREADY,
    S3_AXIS_TLAST,
    S3_AXIS_TDATA,
    S3_AXIS_TVALID,
    S3_AXIS_TREADY,
    M4_AXIS_TLAST,
    M4_AXIS_TDATA,
    M4_AXIS_TVALID,
    M4_AXIS_TREADY,
    S4_AXIS_TLAST,
    S4_AXIS_TDATA,
    S4_AXIS_TVALID,
    S4_AXIS_TREADY,
    M5_AXIS_TLAST,
    M5_AXIS_TDATA,
    M5_AXIS_TVALID,
    M5_AXIS_TREADY,
    S5_AXIS_TLAST,
    S5_AXIS_TDATA,
    S5_AXIS_TVALID,
    S5_AXIS_TREADY,
    M6_AXIS_TLAST,
    M6_AXIS_TDATA,
    M6_AXIS_TVALID,
    M6_AXIS_TREADY,
    S6_AXIS_TLAST,
    S6_AXIS_TDATA,
    S6_AXIS_TVALID,
    S6_AXIS_TREADY,
    M7_AXIS_TLAST,
    M7_AXIS_TDATA,
    M7_AXIS_TVALID,
    M7_AXIS_TREADY,
    S7_AXIS_TLAST,
    S7_AXIS_TDATA,
    S7_AXIS_TVALID,
    S7_AXIS_TREADY,
    M8_AXIS_TLAST,
    M8_AXIS_TDATA,
    M8_AXIS_TVALID,
    M8_AXIS_TREADY,
    S8_AXIS_TLAST,
    S8_AXIS_TDATA,
    S8_AXIS_TVALID,
    S8_AXIS_TREADY,
    M9_AXIS_TLAST,
    M9_AXIS_TDATA,
    M9_AXIS_TVALID,
    M9_AXIS_TREADY,
    S9_AXIS_TLAST,
    S9_AXIS_TDATA,
    S9_AXIS_TVALID,
    S9_AXIS_TREADY,
    M10_AXIS_TLAST,
    M10_AXIS_TDATA,
    M10_AXIS_TVALID,
    M10_AXIS_TREADY,
    S10_AXIS_TLAST,
    S10_AXIS_TDATA,
    S10_AXIS_TVALID,
    S10_AXIS_TREADY,
    M11_AXIS_TLAST,
    M11_AXIS_TDATA,
    M11_AXIS_TVALID,
    M11_AXIS_TREADY,
    S11_AXIS_TLAST,
    S11_AXIS_TDATA,
    S11_AXIS_TVALID,
    S11_AXIS_TREADY,
    M12_AXIS_TLAST,
    M12_AXIS_TDATA,
    M12_AXIS_TVALID,
    M12_AXIS_TREADY,
    S12_AXIS_TLAST,
    S12_AXIS_TDATA,
    S12_AXIS_TVALID,
    S12_AXIS_TREADY,
    M13_AXIS_TLAST,
    M13_AXIS_TDATA,
    M13_AXIS_TVALID,
    M13_AXIS_TREADY,
    S13_AXIS_TLAST,
    S13_AXIS_TDATA,
    S13_AXIS_TVALID,
    S13_AXIS_TREADY,
    M14_AXIS_TLAST,
    M14_AXIS_TDATA,
    M14_AXIS_TVALID,
    M14_AXIS_TREADY,
    S14_AXIS_TLAST,
    S14_AXIS_TDATA,
    S14_AXIS_TVALID,
    S14_AXIS_TREADY,
    M15_AXIS_TLAST,
    M15_AXIS_TDATA,
    M15_AXIS_TVALID,
    M15_AXIS_TREADY,
    S15_AXIS_TLAST,
    S15_AXIS_TDATA,
    S15_AXIS_TVALID,
    S15_AXIS_TREADY,
    ICACHE_FSL_IN_CLK,
    ICACHE_FSL_IN_READ,
    ICACHE_FSL_IN_DATA,
    ICACHE_FSL_IN_CONTROL,
    ICACHE_FSL_IN_EXISTS,
    ICACHE_FSL_OUT_CLK,
    ICACHE_FSL_OUT_WRITE,
    ICACHE_FSL_OUT_DATA,
    ICACHE_FSL_OUT_CONTROL,
    ICACHE_FSL_OUT_FULL,
    DCACHE_FSL_IN_CLK,
    DCACHE_FSL_IN_READ,
    DCACHE_FSL_IN_DATA,
    DCACHE_FSL_IN_CONTROL,
    DCACHE_FSL_IN_EXISTS,
    DCACHE_FSL_OUT_CLK,
    DCACHE_FSL_OUT_WRITE,
    DCACHE_FSL_OUT_DATA,
    DCACHE_FSL_OUT_CONTROL,
    DCACHE_FSL_OUT_FULL
  );
  input CLK;
  input RESET;
  input MB_RESET;
  input INTERRUPT;
  input [0:31] INTERRUPT_ADDRESS;
  output [0:1] INTERRUPT_ACK;
  input EXT_BRK;
  input EXT_NM_BRK;
  input DBG_STOP;
  output MB_Halted;
  output MB_Error;
  output [0:4095] LOCKSTEP_MASTER_OUT;
  input [0:4095] LOCKSTEP_SLAVE_IN;
  output [0:4095] LOCKSTEP_OUT;
  input [0:31] INSTR;
  input IREADY;
  input IWAIT;
  input ICE;
  input IUE;
  output [0:31] INSTR_ADDR;
  output IFETCH;
  output I_AS;
  output IPLB_M_ABort;
  output [0:31] IPLB_M_ABus;
  output [0:31] IPLB_M_UABus;
  output [0:3] IPLB_M_BE;
  output IPLB_M_busLock;
  output IPLB_M_lockErr;
  output [0:1] IPLB_M_MSize;
  output [0:1] IPLB_M_priority;
  output IPLB_M_rdBurst;
  output IPLB_M_request;
  output IPLB_M_RNW;
  output [0:3] IPLB_M_size;
  output [0:15] IPLB_M_TAttribute;
  output [0:2] IPLB_M_type;
  output IPLB_M_wrBurst;
  output [0:31] IPLB_M_wrDBus;
  input IPLB_MBusy;
  input IPLB_MRdErr;
  input IPLB_MWrErr;
  input IPLB_MIRQ;
  input IPLB_MWrBTerm;
  input IPLB_MWrDAck;
  input IPLB_MAddrAck;
  input IPLB_MRdBTerm;
  input IPLB_MRdDAck;
  input [0:31] IPLB_MRdDBus;
  input [0:3] IPLB_MRdWdAddr;
  input IPLB_MRearbitrate;
  input [0:1] IPLB_MSSize;
  input IPLB_MTimeout;
  input [0:31] DATA_READ;
  input DREADY;
  input DWAIT;
  input DCE;
  input DUE;
  output [0:31] DATA_WRITE;
  output [0:31] DATA_ADDR;
  output D_AS;
  output READ_STROBE;
  output WRITE_STROBE;
  output [0:3] BYTE_ENABLE;
  output DPLB_M_ABort;
  output [0:31] DPLB_M_ABus;
  output [0:31] DPLB_M_UABus;
  output [0:3] DPLB_M_BE;
  output DPLB_M_busLock;
  output DPLB_M_lockErr;
  output [0:1] DPLB_M_MSize;
  output [0:1] DPLB_M_priority;
  output DPLB_M_rdBurst;
  output DPLB_M_request;
  output DPLB_M_RNW;
  output [0:3] DPLB_M_size;
  output [0:15] DPLB_M_TAttribute;
  output [0:2] DPLB_M_type;
  output DPLB_M_wrBurst;
  output [0:31] DPLB_M_wrDBus;
  input DPLB_MBusy;
  input DPLB_MRdErr;
  input DPLB_MWrErr;
  input DPLB_MIRQ;
  input DPLB_MWrBTerm;
  input DPLB_MWrDAck;
  input DPLB_MAddrAck;
  input DPLB_MRdBTerm;
  input DPLB_MRdDAck;
  input [0:31] DPLB_MRdDBus;
  input [0:3] DPLB_MRdWdAddr;
  input DPLB_MRearbitrate;
  input [0:1] DPLB_MSSize;
  input DPLB_MTimeout;
  output [0:0] M_AXI_IP_AWID;
  output [31:0] M_AXI_IP_AWADDR;
  output [7:0] M_AXI_IP_AWLEN;
  output [2:0] M_AXI_IP_AWSIZE;
  output [1:0] M_AXI_IP_AWBURST;
  output M_AXI_IP_AWLOCK;
  output [3:0] M_AXI_IP_AWCACHE;
  output [2:0] M_AXI_IP_AWPROT;
  output [3:0] M_AXI_IP_AWQOS;
  output M_AXI_IP_AWVALID;
  input M_AXI_IP_AWREADY;
  output [31:0] M_AXI_IP_WDATA;
  output [3:0] M_AXI_IP_WSTRB;
  output M_AXI_IP_WLAST;
  output M_AXI_IP_WVALID;
  input M_AXI_IP_WREADY;
  input [0:0] M_AXI_IP_BID;
  input [1:0] M_AXI_IP_BRESP;
  input M_AXI_IP_BVALID;
  output M_AXI_IP_BREADY;
  output [0:0] M_AXI_IP_ARID;
  output [31:0] M_AXI_IP_ARADDR;
  output [7:0] M_AXI_IP_ARLEN;
  output [2:0] M_AXI_IP_ARSIZE;
  output [1:0] M_AXI_IP_ARBURST;
  output M_AXI_IP_ARLOCK;
  output [3:0] M_AXI_IP_ARCACHE;
  output [2:0] M_AXI_IP_ARPROT;
  output [3:0] M_AXI_IP_ARQOS;
  output M_AXI_IP_ARVALID;
  input M_AXI_IP_ARREADY;
  input [0:0] M_AXI_IP_RID;
  input [31:0] M_AXI_IP_RDATA;
  input [1:0] M_AXI_IP_RRESP;
  input M_AXI_IP_RLAST;
  input M_AXI_IP_RVALID;
  output M_AXI_IP_RREADY;
  output [0:0] M_AXI_DP_AWID;
  output [31:0] M_AXI_DP_AWADDR;
  output [7:0] M_AXI_DP_AWLEN;
  output [2:0] M_AXI_DP_AWSIZE;
  output [1:0] M_AXI_DP_AWBURST;
  output M_AXI_DP_AWLOCK;
  output [3:0] M_AXI_DP_AWCACHE;
  output [2:0] M_AXI_DP_AWPROT;
  output [3:0] M_AXI_DP_AWQOS;
  output M_AXI_DP_AWVALID;
  input M_AXI_DP_AWREADY;
  output [31:0] M_AXI_DP_WDATA;
  output [3:0] M_AXI_DP_WSTRB;
  output M_AXI_DP_WLAST;
  output M_AXI_DP_WVALID;
  input M_AXI_DP_WREADY;
  input [0:0] M_AXI_DP_BID;
  input [1:0] M_AXI_DP_BRESP;
  input M_AXI_DP_BVALID;
  output M_AXI_DP_BREADY;
  output [0:0] M_AXI_DP_ARID;
  output [31:0] M_AXI_DP_ARADDR;
  output [7:0] M_AXI_DP_ARLEN;
  output [2:0] M_AXI_DP_ARSIZE;
  output [1:0] M_AXI_DP_ARBURST;
  output M_AXI_DP_ARLOCK;
  output [3:0] M_AXI_DP_ARCACHE;
  output [2:0] M_AXI_DP_ARPROT;
  output [3:0] M_AXI_DP_ARQOS;
  output M_AXI_DP_ARVALID;
  input M_AXI_DP_ARREADY;
  input [0:0] M_AXI_DP_RID;
  input [31:0] M_AXI_DP_RDATA;
  input [1:0] M_AXI_DP_RRESP;
  input M_AXI_DP_RLAST;
  input M_AXI_DP_RVALID;
  output M_AXI_DP_RREADY;
  output [0:0] M_AXI_IC_AWID;
  output [31:0] M_AXI_IC_AWADDR;
  output [7:0] M_AXI_IC_AWLEN;
  output [2:0] M_AXI_IC_AWSIZE;
  output [1:0] M_AXI_IC_AWBURST;
  output M_AXI_IC_AWLOCK;
  output [3:0] M_AXI_IC_AWCACHE;
  output [2:0] M_AXI_IC_AWPROT;
  output [3:0] M_AXI_IC_AWQOS;
  output M_AXI_IC_AWVALID;
  input M_AXI_IC_AWREADY;
  output [4:0] M_AXI_IC_AWUSER;
  output [31:0] M_AXI_IC_WDATA;
  output [3:0] M_AXI_IC_WSTRB;
  output M_AXI_IC_WLAST;
  output M_AXI_IC_WVALID;
  input M_AXI_IC_WREADY;
  output [0:0] M_AXI_IC_WUSER;
  input [0:0] M_AXI_IC_BID;
  input [1:0] M_AXI_IC_BRESP;
  input M_AXI_IC_BVALID;
  output M_AXI_IC_BREADY;
  input [0:0] M_AXI_IC_BUSER;
  output [0:0] M_AXI_IC_ARID;
  output [31:0] M_AXI_IC_ARADDR;
  output [7:0] M_AXI_IC_ARLEN;
  output [2:0] M_AXI_IC_ARSIZE;
  output [1:0] M_AXI_IC_ARBURST;
  output M_AXI_IC_ARLOCK;
  output [3:0] M_AXI_IC_ARCACHE;
  output [2:0] M_AXI_IC_ARPROT;
  output [3:0] M_AXI_IC_ARQOS;
  output M_AXI_IC_ARVALID;
  input M_AXI_IC_ARREADY;
  output [4:0] M_AXI_IC_ARUSER;
  input [0:0] M_AXI_IC_RID;
  input [31:0] M_AXI_IC_RDATA;
  input [1:0] M_AXI_IC_RRESP;
  input M_AXI_IC_RLAST;
  input M_AXI_IC_RVALID;
  output M_AXI_IC_RREADY;
  input [0:0] M_AXI_IC_RUSER;
  output [0:0] M_AXI_DC_AWID;
  output [31:0] M_AXI_DC_AWADDR;
  output [7:0] M_AXI_DC_AWLEN;
  output [2:0] M_AXI_DC_AWSIZE;
  output [1:0] M_AXI_DC_AWBURST;
  output M_AXI_DC_AWLOCK;
  output [3:0] M_AXI_DC_AWCACHE;
  output [2:0] M_AXI_DC_AWPROT;
  output [3:0] M_AXI_DC_AWQOS;
  output M_AXI_DC_AWVALID;
  input M_AXI_DC_AWREADY;
  output [4:0] M_AXI_DC_AWUSER;
  output [31:0] M_AXI_DC_WDATA;
  output [3:0] M_AXI_DC_WSTRB;
  output M_AXI_DC_WLAST;
  output M_AXI_DC_WVALID;
  input M_AXI_DC_WREADY;
  output [0:0] M_AXI_DC_WUSER;
  input [0:0] M_AXI_DC_BID;
  input [1:0] M_AXI_DC_BRESP;
  input M_AXI_DC_BVALID;
  output M_AXI_DC_BREADY;
  input [0:0] M_AXI_DC_BUSER;
  output [0:0] M_AXI_DC_ARID;
  output [31:0] M_AXI_DC_ARADDR;
  output [7:0] M_AXI_DC_ARLEN;
  output [2:0] M_AXI_DC_ARSIZE;
  output [1:0] M_AXI_DC_ARBURST;
  output M_AXI_DC_ARLOCK;
  output [3:0] M_AXI_DC_ARCACHE;
  output [2:0] M_AXI_DC_ARPROT;
  output [3:0] M_AXI_DC_ARQOS;
  output M_AXI_DC_ARVALID;
  input M_AXI_DC_ARREADY;
  output [4:0] M_AXI_DC_ARUSER;
  input [0:0] M_AXI_DC_RID;
  input [31:0] M_AXI_DC_RDATA;
  input [1:0] M_AXI_DC_RRESP;
  input M_AXI_DC_RLAST;
  input M_AXI_DC_RVALID;
  output M_AXI_DC_RREADY;
  input [0:0] M_AXI_DC_RUSER;
  input DBG_CLK;
  input DBG_TDI;
  output DBG_TDO;
  input [0:7] DBG_REG_EN;
  input DBG_SHIFT;
  input DBG_CAPTURE;
  input DBG_UPDATE;
  input DEBUG_RST;
  output [0:31] Trace_Instruction;
  output Trace_Valid_Instr;
  output [0:31] Trace_PC;
  output Trace_Reg_Write;
  output [0:4] Trace_Reg_Addr;
  output [0:14] Trace_MSR_Reg;
  output [0:7] Trace_PID_Reg;
  output [0:31] Trace_New_Reg_Value;
  output Trace_Exception_Taken;
  output [0:4] Trace_Exception_Kind;
  output Trace_Jump_Taken;
  output Trace_Delay_Slot;
  output [0:31] Trace_Data_Address;
  output Trace_Data_Access;
  output Trace_Data_Read;
  output Trace_Data_Write;
  output [0:31] Trace_Data_Write_Value;
  output [0:3] Trace_Data_Byte_Enable;
  output Trace_DCache_Req;
  output Trace_DCache_Hit;
  output Trace_DCache_Rdy;
  output Trace_DCache_Read;
  output Trace_ICache_Req;
  output Trace_ICache_Hit;
  output Trace_ICache_Rdy;
  output Trace_OF_PipeRun;
  output Trace_EX_PipeRun;
  output Trace_MEM_PipeRun;
  output Trace_MB_Halted;
  output Trace_Jump_Hit;
  output FSL0_S_CLK;
  output FSL0_S_READ;
  input [0:31] FSL0_S_DATA;
  input FSL0_S_CONTROL;
  input FSL0_S_EXISTS;
  output FSL0_M_CLK;
  output FSL0_M_WRITE;
  output [0:31] FSL0_M_DATA;
  output FSL0_M_CONTROL;
  input FSL0_M_FULL;
  output FSL1_S_CLK;
  output FSL1_S_READ;
  input [0:31] FSL1_S_DATA;
  input FSL1_S_CONTROL;
  input FSL1_S_EXISTS;
  output FSL1_M_CLK;
  output FSL1_M_WRITE;
  output [0:31] FSL1_M_DATA;
  output FSL1_M_CONTROL;
  input FSL1_M_FULL;
  output FSL2_S_CLK;
  output FSL2_S_READ;
  input [0:31] FSL2_S_DATA;
  input FSL2_S_CONTROL;
  input FSL2_S_EXISTS;
  output FSL2_M_CLK;
  output FSL2_M_WRITE;
  output [0:31] FSL2_M_DATA;
  output FSL2_M_CONTROL;
  input FSL2_M_FULL;
  output FSL3_S_CLK;
  output FSL3_S_READ;
  input [0:31] FSL3_S_DATA;
  input FSL3_S_CONTROL;
  input FSL3_S_EXISTS;
  output FSL3_M_CLK;
  output FSL3_M_WRITE;
  output [0:31] FSL3_M_DATA;
  output FSL3_M_CONTROL;
  input FSL3_M_FULL;
  output FSL4_S_CLK;
  output FSL4_S_READ;
  input [0:31] FSL4_S_DATA;
  input FSL4_S_CONTROL;
  input FSL4_S_EXISTS;
  output FSL4_M_CLK;
  output FSL4_M_WRITE;
  output [0:31] FSL4_M_DATA;
  output FSL4_M_CONTROL;
  input FSL4_M_FULL;
  output FSL5_S_CLK;
  output FSL5_S_READ;
  input [0:31] FSL5_S_DATA;
  input FSL5_S_CONTROL;
  input FSL5_S_EXISTS;
  output FSL5_M_CLK;
  output FSL5_M_WRITE;
  output [0:31] FSL5_M_DATA;
  output FSL5_M_CONTROL;
  input FSL5_M_FULL;
  output FSL6_S_CLK;
  output FSL6_S_READ;
  input [0:31] FSL6_S_DATA;
  input FSL6_S_CONTROL;
  input FSL6_S_EXISTS;
  output FSL6_M_CLK;
  output FSL6_M_WRITE;
  output [0:31] FSL6_M_DATA;
  output FSL6_M_CONTROL;
  input FSL6_M_FULL;
  output FSL7_S_CLK;
  output FSL7_S_READ;
  input [0:31] FSL7_S_DATA;
  input FSL7_S_CONTROL;
  input FSL7_S_EXISTS;
  output FSL7_M_CLK;
  output FSL7_M_WRITE;
  output [0:31] FSL7_M_DATA;
  output FSL7_M_CONTROL;
  input FSL7_M_FULL;
  output FSL8_S_CLK;
  output FSL8_S_READ;
  input [0:31] FSL8_S_DATA;
  input FSL8_S_CONTROL;
  input FSL8_S_EXISTS;
  output FSL8_M_CLK;
  output FSL8_M_WRITE;
  output [0:31] FSL8_M_DATA;
  output FSL8_M_CONTROL;
  input FSL8_M_FULL;
  output FSL9_S_CLK;
  output FSL9_S_READ;
  input [0:31] FSL9_S_DATA;
  input FSL9_S_CONTROL;
  input FSL9_S_EXISTS;
  output FSL9_M_CLK;
  output FSL9_M_WRITE;
  output [0:31] FSL9_M_DATA;
  output FSL9_M_CONTROL;
  input FSL9_M_FULL;
  output FSL10_S_CLK;
  output FSL10_S_READ;
  input [0:31] FSL10_S_DATA;
  input FSL10_S_CONTROL;
  input FSL10_S_EXISTS;
  output FSL10_M_CLK;
  output FSL10_M_WRITE;
  output [0:31] FSL10_M_DATA;
  output FSL10_M_CONTROL;
  input FSL10_M_FULL;
  output FSL11_S_CLK;
  output FSL11_S_READ;
  input [0:31] FSL11_S_DATA;
  input FSL11_S_CONTROL;
  input FSL11_S_EXISTS;
  output FSL11_M_CLK;
  output FSL11_M_WRITE;
  output [0:31] FSL11_M_DATA;
  output FSL11_M_CONTROL;
  input FSL11_M_FULL;
  output FSL12_S_CLK;
  output FSL12_S_READ;
  input [0:31] FSL12_S_DATA;
  input FSL12_S_CONTROL;
  input FSL12_S_EXISTS;
  output FSL12_M_CLK;
  output FSL12_M_WRITE;
  output [0:31] FSL12_M_DATA;
  output FSL12_M_CONTROL;
  input FSL12_M_FULL;
  output FSL13_S_CLK;
  output FSL13_S_READ;
  input [0:31] FSL13_S_DATA;
  input FSL13_S_CONTROL;
  input FSL13_S_EXISTS;
  output FSL13_M_CLK;
  output FSL13_M_WRITE;
  output [0:31] FSL13_M_DATA;
  output FSL13_M_CONTROL;
  input FSL13_M_FULL;
  output FSL14_S_CLK;
  output FSL14_S_READ;
  input [0:31] FSL14_S_DATA;
  input FSL14_S_CONTROL;
  input FSL14_S_EXISTS;
  output FSL14_M_CLK;
  output FSL14_M_WRITE;
  output [0:31] FSL14_M_DATA;
  output FSL14_M_CONTROL;
  input FSL14_M_FULL;
  output FSL15_S_CLK;
  output FSL15_S_READ;
  input [0:31] FSL15_S_DATA;
  input FSL15_S_CONTROL;
  input FSL15_S_EXISTS;
  output FSL15_M_CLK;
  output FSL15_M_WRITE;
  output [0:31] FSL15_M_DATA;
  output FSL15_M_CONTROL;
  input FSL15_M_FULL;
  output M0_AXIS_TLAST;
  output [31:0] M0_AXIS_TDATA;
  output M0_AXIS_TVALID;
  input M0_AXIS_TREADY;
  input S0_AXIS_TLAST;
  input [31:0] S0_AXIS_TDATA;
  input S0_AXIS_TVALID;
  output S0_AXIS_TREADY;
  output M1_AXIS_TLAST;
  output [31:0] M1_AXIS_TDATA;
  output M1_AXIS_TVALID;
  input M1_AXIS_TREADY;
  input S1_AXIS_TLAST;
  input [31:0] S1_AXIS_TDATA;
  input S1_AXIS_TVALID;
  output S1_AXIS_TREADY;
  output M2_AXIS_TLAST;
  output [31:0] M2_AXIS_TDATA;
  output M2_AXIS_TVALID;
  input M2_AXIS_TREADY;
  input S2_AXIS_TLAST;
  input [31:0] S2_AXIS_TDATA;
  input S2_AXIS_TVALID;
  output S2_AXIS_TREADY;
  output M3_AXIS_TLAST;
  output [31:0] M3_AXIS_TDATA;
  output M3_AXIS_TVALID;
  input M3_AXIS_TREADY;
  input S3_AXIS_TLAST;
  input [31:0] S3_AXIS_TDATA;
  input S3_AXIS_TVALID;
  output S3_AXIS_TREADY;
  output M4_AXIS_TLAST;
  output [31:0] M4_AXIS_TDATA;
  output M4_AXIS_TVALID;
  input M4_AXIS_TREADY;
  input S4_AXIS_TLAST;
  input [31:0] S4_AXIS_TDATA;
  input S4_AXIS_TVALID;
  output S4_AXIS_TREADY;
  output M5_AXIS_TLAST;
  output [31:0] M5_AXIS_TDATA;
  output M5_AXIS_TVALID;
  input M5_AXIS_TREADY;
  input S5_AXIS_TLAST;
  input [31:0] S5_AXIS_TDATA;
  input S5_AXIS_TVALID;
  output S5_AXIS_TREADY;
  output M6_AXIS_TLAST;
  output [31:0] M6_AXIS_TDATA;
  output M6_AXIS_TVALID;
  input M6_AXIS_TREADY;
  input S6_AXIS_TLAST;
  input [31:0] S6_AXIS_TDATA;
  input S6_AXIS_TVALID;
  output S6_AXIS_TREADY;
  output M7_AXIS_TLAST;
  output [31:0] M7_AXIS_TDATA;
  output M7_AXIS_TVALID;
  input M7_AXIS_TREADY;
  input S7_AXIS_TLAST;
  input [31:0] S7_AXIS_TDATA;
  input S7_AXIS_TVALID;
  output S7_AXIS_TREADY;
  output M8_AXIS_TLAST;
  output [31:0] M8_AXIS_TDATA;
  output M8_AXIS_TVALID;
  input M8_AXIS_TREADY;
  input S8_AXIS_TLAST;
  input [31:0] S8_AXIS_TDATA;
  input S8_AXIS_TVALID;
  output S8_AXIS_TREADY;
  output M9_AXIS_TLAST;
  output [31:0] M9_AXIS_TDATA;
  output M9_AXIS_TVALID;
  input M9_AXIS_TREADY;
  input S9_AXIS_TLAST;
  input [31:0] S9_AXIS_TDATA;
  input S9_AXIS_TVALID;
  output S9_AXIS_TREADY;
  output M10_AXIS_TLAST;
  output [31:0] M10_AXIS_TDATA;
  output M10_AXIS_TVALID;
  input M10_AXIS_TREADY;
  input S10_AXIS_TLAST;
  input [31:0] S10_AXIS_TDATA;
  input S10_AXIS_TVALID;
  output S10_AXIS_TREADY;
  output M11_AXIS_TLAST;
  output [31:0] M11_AXIS_TDATA;
  output M11_AXIS_TVALID;
  input M11_AXIS_TREADY;
  input S11_AXIS_TLAST;
  input [31:0] S11_AXIS_TDATA;
  input S11_AXIS_TVALID;
  output S11_AXIS_TREADY;
  output M12_AXIS_TLAST;
  output [31:0] M12_AXIS_TDATA;
  output M12_AXIS_TVALID;
  input M12_AXIS_TREADY;
  input S12_AXIS_TLAST;
  input [31:0] S12_AXIS_TDATA;
  input S12_AXIS_TVALID;
  output S12_AXIS_TREADY;
  output M13_AXIS_TLAST;
  output [31:0] M13_AXIS_TDATA;
  output M13_AXIS_TVALID;
  input M13_AXIS_TREADY;
  input S13_AXIS_TLAST;
  input [31:0] S13_AXIS_TDATA;
  input S13_AXIS_TVALID;
  output S13_AXIS_TREADY;
  output M14_AXIS_TLAST;
  output [31:0] M14_AXIS_TDATA;
  output M14_AXIS_TVALID;
  input M14_AXIS_TREADY;
  input S14_AXIS_TLAST;
  input [31:0] S14_AXIS_TDATA;
  input S14_AXIS_TVALID;
  output S14_AXIS_TREADY;
  output M15_AXIS_TLAST;
  output [31:0] M15_AXIS_TDATA;
  output M15_AXIS_TVALID;
  input M15_AXIS_TREADY;
  input S15_AXIS_TLAST;
  input [31:0] S15_AXIS_TDATA;
  input S15_AXIS_TVALID;
  output S15_AXIS_TREADY;
  output ICACHE_FSL_IN_CLK;
  output ICACHE_FSL_IN_READ;
  input [0:31] ICACHE_FSL_IN_DATA;
  input ICACHE_FSL_IN_CONTROL;
  input ICACHE_FSL_IN_EXISTS;
  output ICACHE_FSL_OUT_CLK;
  output ICACHE_FSL_OUT_WRITE;
  output [0:31] ICACHE_FSL_OUT_DATA;
  output ICACHE_FSL_OUT_CONTROL;
  input ICACHE_FSL_OUT_FULL;
  output DCACHE_FSL_IN_CLK;
  output DCACHE_FSL_IN_READ;
  input [0:31] DCACHE_FSL_IN_DATA;
  input DCACHE_FSL_IN_CONTROL;
  input DCACHE_FSL_IN_EXISTS;
  output DCACHE_FSL_OUT_CLK;
  output DCACHE_FSL_OUT_WRITE;
  output [0:31] DCACHE_FSL_OUT_DATA;
  output DCACHE_FSL_OUT_CONTROL;
  input DCACHE_FSL_OUT_FULL;
endmodule

module vga_config_mb_plb_wrapper
  (
    PLB_Clk,
    SYS_Rst,
    PLB_Rst,
    SPLB_Rst,
    MPLB_Rst,
    PLB_dcrAck,
    PLB_dcrDBus,
    DCR_ABus,
    DCR_DBus,
    DCR_Read,
    DCR_Write,
    M_ABus,
    M_UABus,
    M_BE,
    M_RNW,
    M_abort,
    M_busLock,
    M_TAttribute,
    M_lockErr,
    M_MSize,
    M_priority,
    M_rdBurst,
    M_request,
    M_size,
    M_type,
    M_wrBurst,
    M_wrDBus,
    Sl_addrAck,
    Sl_MRdErr,
    Sl_MWrErr,
    Sl_MBusy,
    Sl_rdBTerm,
    Sl_rdComp,
    Sl_rdDAck,
    Sl_rdDBus,
    Sl_rdWdAddr,
    Sl_rearbitrate,
    Sl_SSize,
    Sl_wait,
    Sl_wrBTerm,
    Sl_wrComp,
    Sl_wrDAck,
    Sl_MIRQ,
    PLB_MIRQ,
    PLB_ABus,
    PLB_UABus,
    PLB_BE,
    PLB_MAddrAck,
    PLB_MTimeout,
    PLB_MBusy,
    PLB_MRdErr,
    PLB_MWrErr,
    PLB_MRdBTerm,
    PLB_MRdDAck,
    PLB_MRdDBus,
    PLB_MRdWdAddr,
    PLB_MRearbitrate,
    PLB_MWrBTerm,
    PLB_MWrDAck,
    PLB_MSSize,
    PLB_PAValid,
    PLB_RNW,
    PLB_SAValid,
    PLB_abort,
    PLB_busLock,
    PLB_TAttribute,
    PLB_lockErr,
    PLB_masterID,
    PLB_MSize,
    PLB_rdPendPri,
    PLB_wrPendPri,
    PLB_rdPendReq,
    PLB_wrPendReq,
    PLB_rdBurst,
    PLB_rdPrim,
    PLB_reqPri,
    PLB_size,
    PLB_type,
    PLB_wrBurst,
    PLB_wrDBus,
    PLB_wrPrim,
    PLB_SaddrAck,
    PLB_SMRdErr,
    PLB_SMWrErr,
    PLB_SMBusy,
    PLB_SrdBTerm,
    PLB_SrdComp,
    PLB_SrdDAck,
    PLB_SrdDBus,
    PLB_SrdWdAddr,
    PLB_Srearbitrate,
    PLB_Sssize,
    PLB_Swait,
    PLB_SwrBTerm,
    PLB_SwrComp,
    PLB_SwrDAck,
    Bus_Error_Det
  );
  input PLB_Clk;
  input SYS_Rst;
  output PLB_Rst;
  output [0:3] SPLB_Rst;
  output [0:1] MPLB_Rst;
  output PLB_dcrAck;
  output [0:31] PLB_dcrDBus;
  input [0:9] DCR_ABus;
  input [0:31] DCR_DBus;
  input DCR_Read;
  input DCR_Write;
  input [0:63] M_ABus;
  input [0:63] M_UABus;
  input [0:7] M_BE;
  input [0:1] M_RNW;
  input [0:1] M_abort;
  input [0:1] M_busLock;
  input [0:31] M_TAttribute;
  input [0:1] M_lockErr;
  input [0:3] M_MSize;
  input [0:3] M_priority;
  input [0:1] M_rdBurst;
  input [0:1] M_request;
  input [0:7] M_size;
  input [0:5] M_type;
  input [0:1] M_wrBurst;
  input [0:63] M_wrDBus;
  input [0:3] Sl_addrAck;
  input [0:7] Sl_MRdErr;
  input [0:7] Sl_MWrErr;
  input [0:7] Sl_MBusy;
  input [0:3] Sl_rdBTerm;
  input [0:3] Sl_rdComp;
  input [0:3] Sl_rdDAck;
  input [0:127] Sl_rdDBus;
  input [0:15] Sl_rdWdAddr;
  input [0:3] Sl_rearbitrate;
  input [0:7] Sl_SSize;
  input [0:3] Sl_wait;
  input [0:3] Sl_wrBTerm;
  input [0:3] Sl_wrComp;
  input [0:3] Sl_wrDAck;
  input [0:7] Sl_MIRQ;
  output [0:1] PLB_MIRQ;
  output [0:31] PLB_ABus;
  output [0:31] PLB_UABus;
  output [0:3] PLB_BE;
  output [0:1] PLB_MAddrAck;
  output [0:1] PLB_MTimeout;
  output [0:1] PLB_MBusy;
  output [0:1] PLB_MRdErr;
  output [0:1] PLB_MWrErr;
  output [0:1] PLB_MRdBTerm;
  output [0:1] PLB_MRdDAck;
  output [0:63] PLB_MRdDBus;
  output [0:7] PLB_MRdWdAddr;
  output [0:1] PLB_MRearbitrate;
  output [0:1] PLB_MWrBTerm;
  output [0:1] PLB_MWrDAck;
  output [0:3] PLB_MSSize;
  output PLB_PAValid;
  output PLB_RNW;
  output PLB_SAValid;
  output PLB_abort;
  output PLB_busLock;
  output [0:15] PLB_TAttribute;
  output PLB_lockErr;
  output [0:0] PLB_masterID;
  output [0:1] PLB_MSize;
  output [0:1] PLB_rdPendPri;
  output [0:1] PLB_wrPendPri;
  output PLB_rdPendReq;
  output PLB_wrPendReq;
  output PLB_rdBurst;
  output [0:3] PLB_rdPrim;
  output [0:1] PLB_reqPri;
  output [0:3] PLB_size;
  output [0:2] PLB_type;
  output PLB_wrBurst;
  output [0:31] PLB_wrDBus;
  output [0:3] PLB_wrPrim;
  output PLB_SaddrAck;
  output [0:1] PLB_SMRdErr;
  output [0:1] PLB_SMWrErr;
  output [0:1] PLB_SMBusy;
  output PLB_SrdBTerm;
  output PLB_SrdComp;
  output PLB_SrdDAck;
  output [0:31] PLB_SrdDBus;
  output [0:3] PLB_SrdWdAddr;
  output PLB_Srearbitrate;
  output [0:1] PLB_Sssize;
  output PLB_Swait;
  output PLB_SwrBTerm;
  output PLB_SwrComp;
  output PLB_SwrDAck;
  output Bus_Error_Det;
endmodule

module vga_config_ilmb_wrapper
  (
    LMB_Clk,
    SYS_Rst,
    LMB_Rst,
    M_ABus,
    M_ReadStrobe,
    M_WriteStrobe,
    M_AddrStrobe,
    M_DBus,
    M_BE,
    Sl_DBus,
    Sl_Ready,
    Sl_Wait,
    Sl_UE,
    Sl_CE,
    LMB_ABus,
    LMB_ReadStrobe,
    LMB_WriteStrobe,
    LMB_AddrStrobe,
    LMB_ReadDBus,
    LMB_WriteDBus,
    LMB_Ready,
    LMB_Wait,
    LMB_UE,
    LMB_CE,
    LMB_BE
  );
  input LMB_Clk;
  input SYS_Rst;
  output LMB_Rst;
  input [0:31] M_ABus;
  input M_ReadStrobe;
  input M_WriteStrobe;
  input M_AddrStrobe;
  input [0:31] M_DBus;
  input [0:3] M_BE;
  input [0:31] Sl_DBus;
  input [0:0] Sl_Ready;
  input [0:0] Sl_Wait;
  input [0:0] Sl_UE;
  input [0:0] Sl_CE;
  output [0:31] LMB_ABus;
  output LMB_ReadStrobe;
  output LMB_WriteStrobe;
  output LMB_AddrStrobe;
  output [0:31] LMB_ReadDBus;
  output [0:31] LMB_WriteDBus;
  output LMB_Ready;
  output LMB_Wait;
  output LMB_UE;
  output LMB_CE;
  output [0:3] LMB_BE;
endmodule

module vga_config_dlmb_wrapper
  (
    LMB_Clk,
    SYS_Rst,
    LMB_Rst,
    M_ABus,
    M_ReadStrobe,
    M_WriteStrobe,
    M_AddrStrobe,
    M_DBus,
    M_BE,
    Sl_DBus,
    Sl_Ready,
    Sl_Wait,
    Sl_UE,
    Sl_CE,
    LMB_ABus,
    LMB_ReadStrobe,
    LMB_WriteStrobe,
    LMB_AddrStrobe,
    LMB_ReadDBus,
    LMB_WriteDBus,
    LMB_Ready,
    LMB_Wait,
    LMB_UE,
    LMB_CE,
    LMB_BE
  );
  input LMB_Clk;
  input SYS_Rst;
  output LMB_Rst;
  input [0:31] M_ABus;
  input M_ReadStrobe;
  input M_WriteStrobe;
  input M_AddrStrobe;
  input [0:31] M_DBus;
  input [0:3] M_BE;
  input [0:31] Sl_DBus;
  input [0:0] Sl_Ready;
  input [0:0] Sl_Wait;
  input [0:0] Sl_UE;
  input [0:0] Sl_CE;
  output [0:31] LMB_ABus;
  output LMB_ReadStrobe;
  output LMB_WriteStrobe;
  output LMB_AddrStrobe;
  output [0:31] LMB_ReadDBus;
  output [0:31] LMB_WriteDBus;
  output LMB_Ready;
  output LMB_Wait;
  output LMB_UE;
  output LMB_CE;
  output [0:3] LMB_BE;
endmodule

module vga_config_dlmb_cntlr_wrapper
  (
    LMB_Clk,
    LMB_Rst,
    LMB_ABus,
    LMB_WriteDBus,
    LMB_AddrStrobe,
    LMB_ReadStrobe,
    LMB_WriteStrobe,
    LMB_BE,
    Sl_DBus,
    Sl_Ready,
    Sl_Wait,
    Sl_UE,
    Sl_CE,
    BRAM_Rst_A,
    BRAM_Clk_A,
    BRAM_EN_A,
    BRAM_WEN_A,
    BRAM_Addr_A,
    BRAM_Din_A,
    BRAM_Dout_A,
    Interrupt,
    SPLB_CTRL_PLB_ABus,
    SPLB_CTRL_PLB_PAValid,
    SPLB_CTRL_PLB_masterID,
    SPLB_CTRL_PLB_RNW,
    SPLB_CTRL_PLB_BE,
    SPLB_CTRL_PLB_size,
    SPLB_CTRL_PLB_type,
    SPLB_CTRL_PLB_wrDBus,
    SPLB_CTRL_Sl_addrAck,
    SPLB_CTRL_Sl_SSize,
    SPLB_CTRL_Sl_wait,
    SPLB_CTRL_Sl_rearbitrate,
    SPLB_CTRL_Sl_wrDAck,
    SPLB_CTRL_Sl_wrComp,
    SPLB_CTRL_Sl_rdDBus,
    SPLB_CTRL_Sl_rdDAck,
    SPLB_CTRL_Sl_rdComp,
    SPLB_CTRL_Sl_MBusy,
    SPLB_CTRL_Sl_MWrErr,
    SPLB_CTRL_Sl_MRdErr,
    SPLB_CTRL_PLB_UABus,
    SPLB_CTRL_PLB_SAValid,
    SPLB_CTRL_PLB_rdPrim,
    SPLB_CTRL_PLB_wrPrim,
    SPLB_CTRL_PLB_abort,
    SPLB_CTRL_PLB_busLock,
    SPLB_CTRL_PLB_MSize,
    SPLB_CTRL_PLB_lockErr,
    SPLB_CTRL_PLB_wrBurst,
    SPLB_CTRL_PLB_rdBurst,
    SPLB_CTRL_PLB_wrPendReq,
    SPLB_CTRL_PLB_rdPendReq,
    SPLB_CTRL_PLB_wrPendPri,
    SPLB_CTRL_PLB_rdPendPri,
    SPLB_CTRL_PLB_reqPri,
    SPLB_CTRL_PLB_TAttribute,
    SPLB_CTRL_Sl_wrBTerm,
    SPLB_CTRL_Sl_rdWdAddr,
    SPLB_CTRL_Sl_rdBTerm,
    SPLB_CTRL_Sl_MIRQ,
    S_AXI_CTRL_ACLK,
    S_AXI_CTRL_ARESETN,
    S_AXI_CTRL_AWADDR,
    S_AXI_CTRL_AWVALID,
    S_AXI_CTRL_AWREADY,
    S_AXI_CTRL_WDATA,
    S_AXI_CTRL_WSTRB,
    S_AXI_CTRL_WVALID,
    S_AXI_CTRL_WREADY,
    S_AXI_CTRL_BRESP,
    S_AXI_CTRL_BVALID,
    S_AXI_CTRL_BREADY,
    S_AXI_CTRL_ARADDR,
    S_AXI_CTRL_ARVALID,
    S_AXI_CTRL_ARREADY,
    S_AXI_CTRL_RDATA,
    S_AXI_CTRL_RRESP,
    S_AXI_CTRL_RVALID,
    S_AXI_CTRL_RREADY
  );
  input LMB_Clk;
  input LMB_Rst;
  input [0:31] LMB_ABus;
  input [0:31] LMB_WriteDBus;
  input LMB_AddrStrobe;
  input LMB_ReadStrobe;
  input LMB_WriteStrobe;
  input [0:3] LMB_BE;
  output [0:31] Sl_DBus;
  output Sl_Ready;
  output Sl_Wait;
  output Sl_UE;
  output Sl_CE;
  output BRAM_Rst_A;
  output BRAM_Clk_A;
  output BRAM_EN_A;
  output [0:3] BRAM_WEN_A;
  output [0:31] BRAM_Addr_A;
  input [0:31] BRAM_Din_A;
  output [0:31] BRAM_Dout_A;
  output Interrupt;
  input [0:31] SPLB_CTRL_PLB_ABus;
  input SPLB_CTRL_PLB_PAValid;
  input [0:0] SPLB_CTRL_PLB_masterID;
  input SPLB_CTRL_PLB_RNW;
  input [0:3] SPLB_CTRL_PLB_BE;
  input [0:3] SPLB_CTRL_PLB_size;
  input [0:2] SPLB_CTRL_PLB_type;
  input [0:31] SPLB_CTRL_PLB_wrDBus;
  output SPLB_CTRL_Sl_addrAck;
  output [0:1] SPLB_CTRL_Sl_SSize;
  output SPLB_CTRL_Sl_wait;
  output SPLB_CTRL_Sl_rearbitrate;
  output SPLB_CTRL_Sl_wrDAck;
  output SPLB_CTRL_Sl_wrComp;
  output [0:31] SPLB_CTRL_Sl_rdDBus;
  output SPLB_CTRL_Sl_rdDAck;
  output SPLB_CTRL_Sl_rdComp;
  output [0:0] SPLB_CTRL_Sl_MBusy;
  output [0:0] SPLB_CTRL_Sl_MWrErr;
  output [0:0] SPLB_CTRL_Sl_MRdErr;
  input [0:31] SPLB_CTRL_PLB_UABus;
  input SPLB_CTRL_PLB_SAValid;
  input SPLB_CTRL_PLB_rdPrim;
  input SPLB_CTRL_PLB_wrPrim;
  input SPLB_CTRL_PLB_abort;
  input SPLB_CTRL_PLB_busLock;
  input [0:1] SPLB_CTRL_PLB_MSize;
  input SPLB_CTRL_PLB_lockErr;
  input SPLB_CTRL_PLB_wrBurst;
  input SPLB_CTRL_PLB_rdBurst;
  input SPLB_CTRL_PLB_wrPendReq;
  input SPLB_CTRL_PLB_rdPendReq;
  input [0:1] SPLB_CTRL_PLB_wrPendPri;
  input [0:1] SPLB_CTRL_PLB_rdPendPri;
  input [0:1] SPLB_CTRL_PLB_reqPri;
  input [0:15] SPLB_CTRL_PLB_TAttribute;
  output SPLB_CTRL_Sl_wrBTerm;
  output [0:3] SPLB_CTRL_Sl_rdWdAddr;
  output SPLB_CTRL_Sl_rdBTerm;
  output [0:0] SPLB_CTRL_Sl_MIRQ;
  input S_AXI_CTRL_ACLK;
  input S_AXI_CTRL_ARESETN;
  input [31:0] S_AXI_CTRL_AWADDR;
  input S_AXI_CTRL_AWVALID;
  output S_AXI_CTRL_AWREADY;
  input [31:0] S_AXI_CTRL_WDATA;
  input [3:0] S_AXI_CTRL_WSTRB;
  input S_AXI_CTRL_WVALID;
  output S_AXI_CTRL_WREADY;
  output [1:0] S_AXI_CTRL_BRESP;
  output S_AXI_CTRL_BVALID;
  input S_AXI_CTRL_BREADY;
  input [31:0] S_AXI_CTRL_ARADDR;
  input S_AXI_CTRL_ARVALID;
  output S_AXI_CTRL_ARREADY;
  output [31:0] S_AXI_CTRL_RDATA;
  output [1:0] S_AXI_CTRL_RRESP;
  output S_AXI_CTRL_RVALID;
  input S_AXI_CTRL_RREADY;
endmodule

module vga_config_ilmb_cntlr_wrapper
  (
    LMB_Clk,
    LMB_Rst,
    LMB_ABus,
    LMB_WriteDBus,
    LMB_AddrStrobe,
    LMB_ReadStrobe,
    LMB_WriteStrobe,
    LMB_BE,
    Sl_DBus,
    Sl_Ready,
    Sl_Wait,
    Sl_UE,
    Sl_CE,
    BRAM_Rst_A,
    BRAM_Clk_A,
    BRAM_EN_A,
    BRAM_WEN_A,
    BRAM_Addr_A,
    BRAM_Din_A,
    BRAM_Dout_A,
    Interrupt,
    SPLB_CTRL_PLB_ABus,
    SPLB_CTRL_PLB_PAValid,
    SPLB_CTRL_PLB_masterID,
    SPLB_CTRL_PLB_RNW,
    SPLB_CTRL_PLB_BE,
    SPLB_CTRL_PLB_size,
    SPLB_CTRL_PLB_type,
    SPLB_CTRL_PLB_wrDBus,
    SPLB_CTRL_Sl_addrAck,
    SPLB_CTRL_Sl_SSize,
    SPLB_CTRL_Sl_wait,
    SPLB_CTRL_Sl_rearbitrate,
    SPLB_CTRL_Sl_wrDAck,
    SPLB_CTRL_Sl_wrComp,
    SPLB_CTRL_Sl_rdDBus,
    SPLB_CTRL_Sl_rdDAck,
    SPLB_CTRL_Sl_rdComp,
    SPLB_CTRL_Sl_MBusy,
    SPLB_CTRL_Sl_MWrErr,
    SPLB_CTRL_Sl_MRdErr,
    SPLB_CTRL_PLB_UABus,
    SPLB_CTRL_PLB_SAValid,
    SPLB_CTRL_PLB_rdPrim,
    SPLB_CTRL_PLB_wrPrim,
    SPLB_CTRL_PLB_abort,
    SPLB_CTRL_PLB_busLock,
    SPLB_CTRL_PLB_MSize,
    SPLB_CTRL_PLB_lockErr,
    SPLB_CTRL_PLB_wrBurst,
    SPLB_CTRL_PLB_rdBurst,
    SPLB_CTRL_PLB_wrPendReq,
    SPLB_CTRL_PLB_rdPendReq,
    SPLB_CTRL_PLB_wrPendPri,
    SPLB_CTRL_PLB_rdPendPri,
    SPLB_CTRL_PLB_reqPri,
    SPLB_CTRL_PLB_TAttribute,
    SPLB_CTRL_Sl_wrBTerm,
    SPLB_CTRL_Sl_rdWdAddr,
    SPLB_CTRL_Sl_rdBTerm,
    SPLB_CTRL_Sl_MIRQ,
    S_AXI_CTRL_ACLK,
    S_AXI_CTRL_ARESETN,
    S_AXI_CTRL_AWADDR,
    S_AXI_CTRL_AWVALID,
    S_AXI_CTRL_AWREADY,
    S_AXI_CTRL_WDATA,
    S_AXI_CTRL_WSTRB,
    S_AXI_CTRL_WVALID,
    S_AXI_CTRL_WREADY,
    S_AXI_CTRL_BRESP,
    S_AXI_CTRL_BVALID,
    S_AXI_CTRL_BREADY,
    S_AXI_CTRL_ARADDR,
    S_AXI_CTRL_ARVALID,
    S_AXI_CTRL_ARREADY,
    S_AXI_CTRL_RDATA,
    S_AXI_CTRL_RRESP,
    S_AXI_CTRL_RVALID,
    S_AXI_CTRL_RREADY
  );
  input LMB_Clk;
  input LMB_Rst;
  input [0:31] LMB_ABus;
  input [0:31] LMB_WriteDBus;
  input LMB_AddrStrobe;
  input LMB_ReadStrobe;
  input LMB_WriteStrobe;
  input [0:3] LMB_BE;
  output [0:31] Sl_DBus;
  output Sl_Ready;
  output Sl_Wait;
  output Sl_UE;
  output Sl_CE;
  output BRAM_Rst_A;
  output BRAM_Clk_A;
  output BRAM_EN_A;
  output [0:3] BRAM_WEN_A;
  output [0:31] BRAM_Addr_A;
  input [0:31] BRAM_Din_A;
  output [0:31] BRAM_Dout_A;
  output Interrupt;
  input [0:31] SPLB_CTRL_PLB_ABus;
  input SPLB_CTRL_PLB_PAValid;
  input [0:0] SPLB_CTRL_PLB_masterID;
  input SPLB_CTRL_PLB_RNW;
  input [0:3] SPLB_CTRL_PLB_BE;
  input [0:3] SPLB_CTRL_PLB_size;
  input [0:2] SPLB_CTRL_PLB_type;
  input [0:31] SPLB_CTRL_PLB_wrDBus;
  output SPLB_CTRL_Sl_addrAck;
  output [0:1] SPLB_CTRL_Sl_SSize;
  output SPLB_CTRL_Sl_wait;
  output SPLB_CTRL_Sl_rearbitrate;
  output SPLB_CTRL_Sl_wrDAck;
  output SPLB_CTRL_Sl_wrComp;
  output [0:31] SPLB_CTRL_Sl_rdDBus;
  output SPLB_CTRL_Sl_rdDAck;
  output SPLB_CTRL_Sl_rdComp;
  output [0:0] SPLB_CTRL_Sl_MBusy;
  output [0:0] SPLB_CTRL_Sl_MWrErr;
  output [0:0] SPLB_CTRL_Sl_MRdErr;
  input [0:31] SPLB_CTRL_PLB_UABus;
  input SPLB_CTRL_PLB_SAValid;
  input SPLB_CTRL_PLB_rdPrim;
  input SPLB_CTRL_PLB_wrPrim;
  input SPLB_CTRL_PLB_abort;
  input SPLB_CTRL_PLB_busLock;
  input [0:1] SPLB_CTRL_PLB_MSize;
  input SPLB_CTRL_PLB_lockErr;
  input SPLB_CTRL_PLB_wrBurst;
  input SPLB_CTRL_PLB_rdBurst;
  input SPLB_CTRL_PLB_wrPendReq;
  input SPLB_CTRL_PLB_rdPendReq;
  input [0:1] SPLB_CTRL_PLB_wrPendPri;
  input [0:1] SPLB_CTRL_PLB_rdPendPri;
  input [0:1] SPLB_CTRL_PLB_reqPri;
  input [0:15] SPLB_CTRL_PLB_TAttribute;
  output SPLB_CTRL_Sl_wrBTerm;
  output [0:3] SPLB_CTRL_Sl_rdWdAddr;
  output SPLB_CTRL_Sl_rdBTerm;
  output [0:0] SPLB_CTRL_Sl_MIRQ;
  input S_AXI_CTRL_ACLK;
  input S_AXI_CTRL_ARESETN;
  input [31:0] S_AXI_CTRL_AWADDR;
  input S_AXI_CTRL_AWVALID;
  output S_AXI_CTRL_AWREADY;
  input [31:0] S_AXI_CTRL_WDATA;
  input [3:0] S_AXI_CTRL_WSTRB;
  input S_AXI_CTRL_WVALID;
  output S_AXI_CTRL_WREADY;
  output [1:0] S_AXI_CTRL_BRESP;
  output S_AXI_CTRL_BVALID;
  input S_AXI_CTRL_BREADY;
  input [31:0] S_AXI_CTRL_ARADDR;
  input S_AXI_CTRL_ARVALID;
  output S_AXI_CTRL_ARREADY;
  output [31:0] S_AXI_CTRL_RDATA;
  output [1:0] S_AXI_CTRL_RRESP;
  output S_AXI_CTRL_RVALID;
  input S_AXI_CTRL_RREADY;
endmodule

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
endmodule

module vga_config_rs232_uart_1_wrapper
  (
    SPLB_Clk,
    SPLB_Rst,
    PLB_ABus,
    PLB_PAValid,
    PLB_masterID,
    PLB_RNW,
    PLB_BE,
    PLB_size,
    PLB_type,
    PLB_wrDBus,
    PLB_UABus,
    PLB_SAValid,
    PLB_rdPrim,
    PLB_wrPrim,
    PLB_abort,
    PLB_busLock,
    PLB_MSize,
    PLB_lockErr,
    PLB_wrBurst,
    PLB_rdBurst,
    PLB_wrPendReq,
    PLB_rdPendReq,
    PLB_wrPendPri,
    PLB_rdPendPri,
    PLB_reqPri,
    PLB_TAttribute,
    Sl_addrAck,
    Sl_SSize,
    Sl_wait,
    Sl_rearbitrate,
    Sl_wrDAck,
    Sl_wrComp,
    Sl_rdDBus,
    Sl_rdDAck,
    Sl_rdComp,
    Sl_MBusy,
    Sl_MWrErr,
    Sl_MRdErr,
    Sl_wrBTerm,
    Sl_rdWdAddr,
    Sl_rdBTerm,
    Sl_MIRQ,
    RX,
    TX,
    Interrupt
  );
  input SPLB_Clk;
  input SPLB_Rst;
  input [0:31] PLB_ABus;
  input PLB_PAValid;
  input [0:0] PLB_masterID;
  input PLB_RNW;
  input [0:3] PLB_BE;
  input [0:3] PLB_size;
  input [0:2] PLB_type;
  input [0:31] PLB_wrDBus;
  input [0:31] PLB_UABus;
  input PLB_SAValid;
  input PLB_rdPrim;
  input PLB_wrPrim;
  input PLB_abort;
  input PLB_busLock;
  input [0:1] PLB_MSize;
  input PLB_lockErr;
  input PLB_wrBurst;
  input PLB_rdBurst;
  input PLB_wrPendReq;
  input PLB_rdPendReq;
  input [0:1] PLB_wrPendPri;
  input [0:1] PLB_rdPendPri;
  input [0:1] PLB_reqPri;
  input [0:15] PLB_TAttribute;
  output Sl_addrAck;
  output [0:1] Sl_SSize;
  output Sl_wait;
  output Sl_rearbitrate;
  output Sl_wrDAck;
  output Sl_wrComp;
  output [0:31] Sl_rdDBus;
  output Sl_rdDAck;
  output Sl_rdComp;
  output [0:1] Sl_MBusy;
  output [0:1] Sl_MWrErr;
  output [0:1] Sl_MRdErr;
  output Sl_wrBTerm;
  output [0:3] Sl_rdWdAddr;
  output Sl_rdBTerm;
  output [0:1] Sl_MIRQ;
  input RX;
  output TX;
  output Interrupt;
endmodule

module vga_config_clock_generator_0_wrapper
  (
    CLKIN,
    CLKOUT0,
    CLKOUT1,
    CLKOUT2,
    CLKOUT3,
    CLKOUT4,
    CLKOUT5,
    CLKOUT6,
    CLKOUT7,
    CLKOUT8,
    CLKOUT9,
    CLKOUT10,
    CLKOUT11,
    CLKOUT12,
    CLKOUT13,
    CLKOUT14,
    CLKOUT15,
    CLKFBIN,
    CLKFBOUT,
    PSCLK,
    PSEN,
    PSINCDEC,
    PSDONE,
    RST,
    LOCKED
  );
  input CLKIN;
  output CLKOUT0;
  output CLKOUT1;
  output CLKOUT2;
  output CLKOUT3;
  output CLKOUT4;
  output CLKOUT5;
  output CLKOUT6;
  output CLKOUT7;
  output CLKOUT8;
  output CLKOUT9;
  output CLKOUT10;
  output CLKOUT11;
  output CLKOUT12;
  output CLKOUT13;
  output CLKOUT14;
  output CLKOUT15;
  input CLKFBIN;
  output CLKFBOUT;
  input PSCLK;
  input PSEN;
  input PSINCDEC;
  output PSDONE;
  input RST;
  output LOCKED;
endmodule

module vga_config_mdm_0_wrapper
  (
    Interrupt,
    Debug_SYS_Rst,
    Ext_BRK,
    Ext_NM_BRK,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWADDR,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY,
    SPLB_Clk,
    SPLB_Rst,
    PLB_ABus,
    PLB_UABus,
    PLB_PAValid,
    PLB_SAValid,
    PLB_rdPrim,
    PLB_wrPrim,
    PLB_masterID,
    PLB_abort,
    PLB_busLock,
    PLB_RNW,
    PLB_BE,
    PLB_MSize,
    PLB_size,
    PLB_type,
    PLB_lockErr,
    PLB_wrDBus,
    PLB_wrBurst,
    PLB_rdBurst,
    PLB_wrPendReq,
    PLB_rdPendReq,
    PLB_wrPendPri,
    PLB_rdPendPri,
    PLB_reqPri,
    PLB_TAttribute,
    Sl_addrAck,
    Sl_SSize,
    Sl_wait,
    Sl_rearbitrate,
    Sl_wrDAck,
    Sl_wrComp,
    Sl_wrBTerm,
    Sl_rdDBus,
    Sl_rdWdAddr,
    Sl_rdDAck,
    Sl_rdComp,
    Sl_rdBTerm,
    Sl_MBusy,
    Sl_MWrErr,
    Sl_MRdErr,
    Sl_MIRQ,
    Dbg_Clk_0,
    Dbg_TDI_0,
    Dbg_TDO_0,
    Dbg_Reg_En_0,
    Dbg_Capture_0,
    Dbg_Shift_0,
    Dbg_Update_0,
    Dbg_Rst_0,
    Dbg_Clk_1,
    Dbg_TDI_1,
    Dbg_TDO_1,
    Dbg_Reg_En_1,
    Dbg_Capture_1,
    Dbg_Shift_1,
    Dbg_Update_1,
    Dbg_Rst_1,
    Dbg_Clk_2,
    Dbg_TDI_2,
    Dbg_TDO_2,
    Dbg_Reg_En_2,
    Dbg_Capture_2,
    Dbg_Shift_2,
    Dbg_Update_2,
    Dbg_Rst_2,
    Dbg_Clk_3,
    Dbg_TDI_3,
    Dbg_TDO_3,
    Dbg_Reg_En_3,
    Dbg_Capture_3,
    Dbg_Shift_3,
    Dbg_Update_3,
    Dbg_Rst_3,
    Dbg_Clk_4,
    Dbg_TDI_4,
    Dbg_TDO_4,
    Dbg_Reg_En_4,
    Dbg_Capture_4,
    Dbg_Shift_4,
    Dbg_Update_4,
    Dbg_Rst_4,
    Dbg_Clk_5,
    Dbg_TDI_5,
    Dbg_TDO_5,
    Dbg_Reg_En_5,
    Dbg_Capture_5,
    Dbg_Shift_5,
    Dbg_Update_5,
    Dbg_Rst_5,
    Dbg_Clk_6,
    Dbg_TDI_6,
    Dbg_TDO_6,
    Dbg_Reg_En_6,
    Dbg_Capture_6,
    Dbg_Shift_6,
    Dbg_Update_6,
    Dbg_Rst_6,
    Dbg_Clk_7,
    Dbg_TDI_7,
    Dbg_TDO_7,
    Dbg_Reg_En_7,
    Dbg_Capture_7,
    Dbg_Shift_7,
    Dbg_Update_7,
    Dbg_Rst_7,
    bscan_tdi,
    bscan_reset,
    bscan_shift,
    bscan_update,
    bscan_capture,
    bscan_sel1,
    bscan_drck1,
    bscan_tdo1,
    Ext_JTAG_DRCK,
    Ext_JTAG_RESET,
    Ext_JTAG_SEL,
    Ext_JTAG_CAPTURE,
    Ext_JTAG_SHIFT,
    Ext_JTAG_UPDATE,
    Ext_JTAG_TDI,
    Ext_JTAG_TDO
  );
  output Interrupt;
  output Debug_SYS_Rst;
  output Ext_BRK;
  output Ext_NM_BRK;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input [31:0] S_AXI_AWADDR;
  input S_AXI_AWVALID;
  output S_AXI_AWREADY;
  input [31:0] S_AXI_WDATA;
  input [3:0] S_AXI_WSTRB;
  input S_AXI_WVALID;
  output S_AXI_WREADY;
  output [1:0] S_AXI_BRESP;
  output S_AXI_BVALID;
  input S_AXI_BREADY;
  input [31:0] S_AXI_ARADDR;
  input S_AXI_ARVALID;
  output S_AXI_ARREADY;
  output [31:0] S_AXI_RDATA;
  output [1:0] S_AXI_RRESP;
  output S_AXI_RVALID;
  input S_AXI_RREADY;
  input SPLB_Clk;
  input SPLB_Rst;
  input [0:31] PLB_ABus;
  input [0:31] PLB_UABus;
  input PLB_PAValid;
  input PLB_SAValid;
  input PLB_rdPrim;
  input PLB_wrPrim;
  input [0:0] PLB_masterID;
  input PLB_abort;
  input PLB_busLock;
  input PLB_RNW;
  input [0:3] PLB_BE;
  input [0:1] PLB_MSize;
  input [0:3] PLB_size;
  input [0:2] PLB_type;
  input PLB_lockErr;
  input [0:31] PLB_wrDBus;
  input PLB_wrBurst;
  input PLB_rdBurst;
  input PLB_wrPendReq;
  input PLB_rdPendReq;
  input [0:1] PLB_wrPendPri;
  input [0:1] PLB_rdPendPri;
  input [0:1] PLB_reqPri;
  input [0:15] PLB_TAttribute;
  output Sl_addrAck;
  output [0:1] Sl_SSize;
  output Sl_wait;
  output Sl_rearbitrate;
  output Sl_wrDAck;
  output Sl_wrComp;
  output Sl_wrBTerm;
  output [0:31] Sl_rdDBus;
  output [0:3] Sl_rdWdAddr;
  output Sl_rdDAck;
  output Sl_rdComp;
  output Sl_rdBTerm;
  output [0:1] Sl_MBusy;
  output [0:1] Sl_MWrErr;
  output [0:1] Sl_MRdErr;
  output [0:1] Sl_MIRQ;
  output Dbg_Clk_0;
  output Dbg_TDI_0;
  input Dbg_TDO_0;
  output [0:7] Dbg_Reg_En_0;
  output Dbg_Capture_0;
  output Dbg_Shift_0;
  output Dbg_Update_0;
  output Dbg_Rst_0;
  output Dbg_Clk_1;
  output Dbg_TDI_1;
  input Dbg_TDO_1;
  output [0:7] Dbg_Reg_En_1;
  output Dbg_Capture_1;
  output Dbg_Shift_1;
  output Dbg_Update_1;
  output Dbg_Rst_1;
  output Dbg_Clk_2;
  output Dbg_TDI_2;
  input Dbg_TDO_2;
  output [0:7] Dbg_Reg_En_2;
  output Dbg_Capture_2;
  output Dbg_Shift_2;
  output Dbg_Update_2;
  output Dbg_Rst_2;
  output Dbg_Clk_3;
  output Dbg_TDI_3;
  input Dbg_TDO_3;
  output [0:7] Dbg_Reg_En_3;
  output Dbg_Capture_3;
  output Dbg_Shift_3;
  output Dbg_Update_3;
  output Dbg_Rst_3;
  output Dbg_Clk_4;
  output Dbg_TDI_4;
  input Dbg_TDO_4;
  output [0:7] Dbg_Reg_En_4;
  output Dbg_Capture_4;
  output Dbg_Shift_4;
  output Dbg_Update_4;
  output Dbg_Rst_4;
  output Dbg_Clk_5;
  output Dbg_TDI_5;
  input Dbg_TDO_5;
  output [0:7] Dbg_Reg_En_5;
  output Dbg_Capture_5;
  output Dbg_Shift_5;
  output Dbg_Update_5;
  output Dbg_Rst_5;
  output Dbg_Clk_6;
  output Dbg_TDI_6;
  input Dbg_TDO_6;
  output [0:7] Dbg_Reg_En_6;
  output Dbg_Capture_6;
  output Dbg_Shift_6;
  output Dbg_Update_6;
  output Dbg_Rst_6;
  output Dbg_Clk_7;
  output Dbg_TDI_7;
  input Dbg_TDO_7;
  output [0:7] Dbg_Reg_En_7;
  output Dbg_Capture_7;
  output Dbg_Shift_7;
  output Dbg_Update_7;
  output Dbg_Rst_7;
  output bscan_tdi;
  output bscan_reset;
  output bscan_shift;
  output bscan_update;
  output bscan_capture;
  output bscan_sel1;
  output bscan_drck1;
  input bscan_tdo1;
  output Ext_JTAG_DRCK;
  output Ext_JTAG_RESET;
  output Ext_JTAG_SEL;
  output Ext_JTAG_CAPTURE;
  output Ext_JTAG_SHIFT;
  output Ext_JTAG_UPDATE;
  output Ext_JTAG_TDI;
  input Ext_JTAG_TDO;
endmodule

module vga_config_proc_sys_reset_0_wrapper
  (
    Slowest_sync_clk,
    Ext_Reset_In,
    Aux_Reset_In,
    MB_Debug_Sys_Rst,
    Core_Reset_Req_0,
    Chip_Reset_Req_0,
    System_Reset_Req_0,
    Core_Reset_Req_1,
    Chip_Reset_Req_1,
    System_Reset_Req_1,
    Dcm_locked,
    RstcPPCresetcore_0,
    RstcPPCresetchip_0,
    RstcPPCresetsys_0,
    RstcPPCresetcore_1,
    RstcPPCresetchip_1,
    RstcPPCresetsys_1,
    MB_Reset,
    Bus_Struct_Reset,
    Peripheral_Reset,
    Interconnect_aresetn,
    Peripheral_aresetn
  );
  input Slowest_sync_clk;
  input Ext_Reset_In;
  input Aux_Reset_In;
  input MB_Debug_Sys_Rst;
  input Core_Reset_Req_0;
  input Chip_Reset_Req_0;
  input System_Reset_Req_0;
  input Core_Reset_Req_1;
  input Chip_Reset_Req_1;
  input System_Reset_Req_1;
  input Dcm_locked;
  output RstcPPCresetcore_0;
  output RstcPPCresetchip_0;
  output RstcPPCresetsys_0;
  output RstcPPCresetcore_1;
  output RstcPPCresetchip_1;
  output RstcPPCresetsys_1;
  output MB_Reset;
  output [0:0] Bus_Struct_Reset;
  output [0:0] Peripheral_Reset;
  output [0:0] Interconnect_aresetn;
  output [0:0] Peripheral_aresetn;
endmodule

module vga_config_xps_iic_0_wrapper
  (
    Sda_I,
    Sda_O,
    Sda_T,
    Scl_I,
    Scl_O,
    Scl_T,
    Gpo,
    IIC2INTC_Irpt,
    SPLB_Clk,
    SPLB_Rst,
    PLB_ABus,
    PLB_UABus,
    PLB_PAValid,
    PLB_SAValid,
    PLB_rdPrim,
    PLB_wrPrim,
    PLB_masterID,
    PLB_abort,
    PLB_busLock,
    PLB_RNW,
    PLB_BE,
    PLB_MSize,
    PLB_size,
    PLB_type,
    PLB_lockErr,
    PLB_wrDBus,
    PLB_wrBurst,
    PLB_rdBurst,
    PLB_wrPendReq,
    PLB_rdPendReq,
    PLB_wrPendPri,
    PLB_rdPendPri,
    PLB_reqPri,
    PLB_TAttribute,
    Sl_addrAck,
    Sl_SSize,
    Sl_wait,
    Sl_rearbitrate,
    Sl_wrDAck,
    Sl_wrComp,
    Sl_wrBTerm,
    Sl_rdDBus,
    Sl_rdWdAddr,
    Sl_rdDAck,
    Sl_rdComp,
    Sl_rdBTerm,
    Sl_MBusy,
    Sl_MWrErr,
    Sl_MRdErr,
    Sl_MIRQ
  );
  input Sda_I;
  output Sda_O;
  output Sda_T;
  input Scl_I;
  output Scl_O;
  output Scl_T;
  output [31:31] Gpo;
  output IIC2INTC_Irpt;
  input SPLB_Clk;
  input SPLB_Rst;
  input [0:31] PLB_ABus;
  input [0:31] PLB_UABus;
  input PLB_PAValid;
  input PLB_SAValid;
  input PLB_rdPrim;
  input PLB_wrPrim;
  input [0:0] PLB_masterID;
  input PLB_abort;
  input PLB_busLock;
  input PLB_RNW;
  input [0:3] PLB_BE;
  input [0:1] PLB_MSize;
  input [0:3] PLB_size;
  input [0:2] PLB_type;
  input PLB_lockErr;
  input [0:31] PLB_wrDBus;
  input PLB_wrBurst;
  input PLB_rdBurst;
  input PLB_wrPendReq;
  input PLB_rdPendReq;
  input [0:1] PLB_wrPendPri;
  input [0:1] PLB_rdPendPri;
  input [0:1] PLB_reqPri;
  input [0:15] PLB_TAttribute;
  output Sl_addrAck;
  output [0:1] Sl_SSize;
  output Sl_wait;
  output Sl_rearbitrate;
  output Sl_wrDAck;
  output Sl_wrComp;
  output Sl_wrBTerm;
  output [0:31] Sl_rdDBus;
  output [0:3] Sl_rdWdAddr;
  output Sl_rdDAck;
  output Sl_rdComp;
  output Sl_rdBTerm;
  output [0:1] Sl_MBusy;
  output [0:1] Sl_MWrErr;
  output [0:1] Sl_MRdErr;
  output [0:1] Sl_MIRQ;
endmodule

module vga_config_xps_intc_0_wrapper
  (
    SPLB_Clk,
    SPLB_Rst,
    PLB_ABus,
    PLB_PAValid,
    PLB_masterID,
    PLB_RNW,
    PLB_BE,
    PLB_size,
    PLB_type,
    PLB_wrDBus,
    PLB_UABus,
    PLB_SAValid,
    PLB_rdPrim,
    PLB_wrPrim,
    PLB_abort,
    PLB_busLock,
    PLB_MSize,
    PLB_lockErr,
    PLB_wrBurst,
    PLB_rdBurst,
    PLB_wrPendReq,
    PLB_rdPendReq,
    PLB_wrPendPri,
    PLB_rdPendPri,
    PLB_reqPri,
    PLB_TAttribute,
    Sl_addrAck,
    Sl_SSize,
    Sl_wait,
    Sl_rearbitrate,
    Sl_wrDAck,
    Sl_wrComp,
    Sl_rdDBus,
    Sl_rdDAck,
    Sl_rdComp,
    Sl_MBusy,
    Sl_MWrErr,
    Sl_MRdErr,
    Sl_wrBTerm,
    Sl_rdWdAddr,
    Sl_rdBTerm,
    Sl_MIRQ,
    Intr,
    Irq
  );
  input SPLB_Clk;
  input SPLB_Rst;
  input [0:31] PLB_ABus;
  input PLB_PAValid;
  input [0:0] PLB_masterID;
  input PLB_RNW;
  input [0:3] PLB_BE;
  input [0:3] PLB_size;
  input [0:2] PLB_type;
  input [0:31] PLB_wrDBus;
  input [0:31] PLB_UABus;
  input PLB_SAValid;
  input PLB_rdPrim;
  input PLB_wrPrim;
  input PLB_abort;
  input PLB_busLock;
  input [0:1] PLB_MSize;
  input PLB_lockErr;
  input PLB_wrBurst;
  input PLB_rdBurst;
  input PLB_wrPendReq;
  input PLB_rdPendReq;
  input [0:1] PLB_wrPendPri;
  input [0:1] PLB_rdPendPri;
  input [0:1] PLB_reqPri;
  input [0:15] PLB_TAttribute;
  output Sl_addrAck;
  output [0:1] Sl_SSize;
  output Sl_wait;
  output Sl_rearbitrate;
  output Sl_wrDAck;
  output Sl_wrComp;
  output [0:31] Sl_rdDBus;
  output Sl_rdDAck;
  output Sl_rdComp;
  output [0:1] Sl_MBusy;
  output [0:1] Sl_MWrErr;
  output [0:1] Sl_MRdErr;
  output Sl_wrBTerm;
  output [0:3] Sl_rdWdAddr;
  output Sl_rdBTerm;
  output [0:1] Sl_MIRQ;
  input [0:0] Intr;
  output Irq;
endmodule

