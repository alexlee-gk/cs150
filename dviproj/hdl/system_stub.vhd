-------------------------------------------------------------------------------
-- system_stub.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity system_stub is
  port (
    fpga_0_RS232_Uart_1_RX_pin : in std_logic;
    fpga_0_RS232_Uart_1_TX_pin : out std_logic;
    fpga_0_DDR2_SDRAM_DDR2_Clk_pin : out std_logic_vector(1 downto 0);
    fpga_0_DDR2_SDRAM_DDR2_Clk_n_pin : out std_logic_vector(1 downto 0);
    fpga_0_DDR2_SDRAM_DDR2_CE_pin : out std_logic_vector(1 downto 0);
    fpga_0_DDR2_SDRAM_DDR2_CS_n_pin : out std_logic_vector(1 downto 0);
    fpga_0_DDR2_SDRAM_DDR2_ODT_pin : out std_logic_vector(1 downto 0);
    fpga_0_DDR2_SDRAM_DDR2_RAS_n_pin : out std_logic;
    fpga_0_DDR2_SDRAM_DDR2_CAS_n_pin : out std_logic;
    fpga_0_DDR2_SDRAM_DDR2_WE_n_pin : out std_logic;
    fpga_0_DDR2_SDRAM_DDR2_BankAddr_pin : out std_logic_vector(1 downto 0);
    fpga_0_DDR2_SDRAM_DDR2_Addr_pin : out std_logic_vector(12 downto 0);
    fpga_0_DDR2_SDRAM_DDR2_DQ_pin : inout std_logic_vector(63 downto 0);
    fpga_0_DDR2_SDRAM_DDR2_DM_pin : out std_logic_vector(7 downto 0);
    fpga_0_DDR2_SDRAM_DDR2_DQS_pin : inout std_logic_vector(7 downto 0);
    fpga_0_DDR2_SDRAM_DDR2_DQS_n_pin : inout std_logic_vector(7 downto 0);
    fpga_0_clk_1_sys_clk_pin : in std_logic;
    fpga_0_rst_1_sys_rst_pin : in std_logic;
    VGA_IN_RED : in std_logic_vector(7 downto 0);
    VGA_IN_GREEN : in std_logic_vector(7 downto 0);
    VGA_IN_BLUE : in std_logic_vector(7 downto 0);
    VGA_IN_VSOUT : in std_logic;
    VGA_IN_HSOUT : in std_logic;
    VGA_IN_SOGOUT : in std_logic;
    VGA_IN_ODDEVEN : in std_logic;
    VGA_IN_DATA_CLK : in std_logic;
    DVI_V : out std_logic;
    DVI_DE : out std_logic;
    DVI_H : out std_logic;
    DVI_RESET_B : out std_logic;
    DVI_XCLK_N : out std_logic;
    DVI_XCLK_P : out std_logic;
    IIC_SCL_VIDEO : inout std_logic;
    IIC_SDA_VIDEO : inout std_logic;
    GPIO_COMPSW_1 : in std_logic;
    GPIO_COMPSW_2 : in std_logic;
    DVI_D : out std_logic_vector(11 downto 0)
  );
end system_stub;

architecture STRUCTURE of system_stub is

  component system is
    port (
      fpga_0_RS232_Uart_1_RX_pin : in std_logic;
      fpga_0_RS232_Uart_1_TX_pin : out std_logic;
      fpga_0_DDR2_SDRAM_DDR2_Clk_pin : out std_logic_vector(1 downto 0);
      fpga_0_DDR2_SDRAM_DDR2_Clk_n_pin : out std_logic_vector(1 downto 0);
      fpga_0_DDR2_SDRAM_DDR2_CE_pin : out std_logic_vector(1 downto 0);
      fpga_0_DDR2_SDRAM_DDR2_CS_n_pin : out std_logic_vector(1 downto 0);
      fpga_0_DDR2_SDRAM_DDR2_ODT_pin : out std_logic_vector(1 downto 0);
      fpga_0_DDR2_SDRAM_DDR2_RAS_n_pin : out std_logic;
      fpga_0_DDR2_SDRAM_DDR2_CAS_n_pin : out std_logic;
      fpga_0_DDR2_SDRAM_DDR2_WE_n_pin : out std_logic;
      fpga_0_DDR2_SDRAM_DDR2_BankAddr_pin : out std_logic_vector(1 downto 0);
      fpga_0_DDR2_SDRAM_DDR2_Addr_pin : out std_logic_vector(12 downto 0);
      fpga_0_DDR2_SDRAM_DDR2_DQ_pin : inout std_logic_vector(63 downto 0);
      fpga_0_DDR2_SDRAM_DDR2_DM_pin : out std_logic_vector(7 downto 0);
      fpga_0_DDR2_SDRAM_DDR2_DQS_pin : inout std_logic_vector(7 downto 0);
      fpga_0_DDR2_SDRAM_DDR2_DQS_n_pin : inout std_logic_vector(7 downto 0);
      fpga_0_clk_1_sys_clk_pin : in std_logic;
      fpga_0_rst_1_sys_rst_pin : in std_logic;
      VGA_IN_RED : in std_logic_vector(7 downto 0);
      VGA_IN_GREEN : in std_logic_vector(7 downto 0);
      VGA_IN_BLUE : in std_logic_vector(7 downto 0);
      VGA_IN_VSOUT : in std_logic;
      VGA_IN_HSOUT : in std_logic;
      VGA_IN_SOGOUT : in std_logic;
      VGA_IN_ODDEVEN : in std_logic;
      VGA_IN_DATA_CLK : in std_logic;
      DVI_V : out std_logic;
      DVI_DE : out std_logic;
      DVI_H : out std_logic;
      DVI_RESET_B : out std_logic;
      DVI_XCLK_N : out std_logic;
      DVI_XCLK_P : out std_logic;
      IIC_SCL_VIDEO : inout std_logic;
      IIC_SDA_VIDEO : inout std_logic;
      GPIO_COMPSW_1 : in std_logic;
      GPIO_COMPSW_2 : in std_logic;
      DVI_D : out std_logic_vector(11 downto 0)
    );
  end component;

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of system : component is "user_black_box";

begin

  system_i : system
    port map (
      fpga_0_RS232_Uart_1_RX_pin => fpga_0_RS232_Uart_1_RX_pin,
      fpga_0_RS232_Uart_1_TX_pin => fpga_0_RS232_Uart_1_TX_pin,
      fpga_0_DDR2_SDRAM_DDR2_Clk_pin => fpga_0_DDR2_SDRAM_DDR2_Clk_pin,
      fpga_0_DDR2_SDRAM_DDR2_Clk_n_pin => fpga_0_DDR2_SDRAM_DDR2_Clk_n_pin,
      fpga_0_DDR2_SDRAM_DDR2_CE_pin => fpga_0_DDR2_SDRAM_DDR2_CE_pin,
      fpga_0_DDR2_SDRAM_DDR2_CS_n_pin => fpga_0_DDR2_SDRAM_DDR2_CS_n_pin,
      fpga_0_DDR2_SDRAM_DDR2_ODT_pin => fpga_0_DDR2_SDRAM_DDR2_ODT_pin,
      fpga_0_DDR2_SDRAM_DDR2_RAS_n_pin => fpga_0_DDR2_SDRAM_DDR2_RAS_n_pin,
      fpga_0_DDR2_SDRAM_DDR2_CAS_n_pin => fpga_0_DDR2_SDRAM_DDR2_CAS_n_pin,
      fpga_0_DDR2_SDRAM_DDR2_WE_n_pin => fpga_0_DDR2_SDRAM_DDR2_WE_n_pin,
      fpga_0_DDR2_SDRAM_DDR2_BankAddr_pin => fpga_0_DDR2_SDRAM_DDR2_BankAddr_pin,
      fpga_0_DDR2_SDRAM_DDR2_Addr_pin => fpga_0_DDR2_SDRAM_DDR2_Addr_pin,
      fpga_0_DDR2_SDRAM_DDR2_DQ_pin => fpga_0_DDR2_SDRAM_DDR2_DQ_pin,
      fpga_0_DDR2_SDRAM_DDR2_DM_pin => fpga_0_DDR2_SDRAM_DDR2_DM_pin,
      fpga_0_DDR2_SDRAM_DDR2_DQS_pin => fpga_0_DDR2_SDRAM_DDR2_DQS_pin,
      fpga_0_DDR2_SDRAM_DDR2_DQS_n_pin => fpga_0_DDR2_SDRAM_DDR2_DQS_n_pin,
      fpga_0_clk_1_sys_clk_pin => fpga_0_clk_1_sys_clk_pin,
      fpga_0_rst_1_sys_rst_pin => fpga_0_rst_1_sys_rst_pin,
      VGA_IN_RED => VGA_IN_RED,
      VGA_IN_GREEN => VGA_IN_GREEN,
      VGA_IN_BLUE => VGA_IN_BLUE,
      VGA_IN_VSOUT => VGA_IN_VSOUT,
      VGA_IN_HSOUT => VGA_IN_HSOUT,
      VGA_IN_SOGOUT => VGA_IN_SOGOUT,
      VGA_IN_ODDEVEN => VGA_IN_ODDEVEN,
      VGA_IN_DATA_CLK => VGA_IN_DATA_CLK,
      DVI_V => DVI_V,
      DVI_DE => DVI_DE,
      DVI_H => DVI_H,
      DVI_RESET_B => DVI_RESET_B,
      DVI_XCLK_N => DVI_XCLK_N,
      DVI_XCLK_P => DVI_XCLK_P,
      IIC_SCL_VIDEO => IIC_SCL_VIDEO,
      IIC_SDA_VIDEO => IIC_SDA_VIDEO,
      GPIO_COMPSW_1 => GPIO_COMPSW_1,
      GPIO_COMPSW_2 => GPIO_COMPSW_2,
      DVI_D => DVI_D
    );

end architecture STRUCTURE;

