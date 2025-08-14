// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Aug  4 14:06:47 2025
// Host        : DESKTOP-D7SOPTT running 64-bit major release  (build 9200)
// Command     : write_verilog C:/Corse_K_W/Projects/Project_2/SPI_RAM_netlist.v
// Design      : SPI_RAM
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module dbg_hub_CV
   (clk,
    sl_iport0_o,
    sl_oport0_i);
  input clk;
  output [0:36]sl_iport0_o;
  input [0:16]sl_oport0_i;


endmodule

module u_ila_0_CV
   (clk,
    probe0,
    SL_IPORT_I,
    SL_OPORT_O,
    probe1,
    probe2,
    probe3,
    probe4);
  input clk;
  input [0:0]probe0;
  input [0:36]SL_IPORT_I;
  output [0:16]SL_OPORT_O;
  input [0:0]probe1;
  input [0:0]probe2;
  input [0:0]probe3;
  input [0:0]probe4;


endmodule

module RAM
   (addr_read,
    tx_valid,
    MISO_reg,
    MISO_reg_0,
    clk_IBUF_BUFG,
    rst_n_IBUF,
    rx_valid_reg,
    SR,
    ADDRBWRADDR,
    Q,
    WEA,
    rx_valid,
    \rx_data_reg[8] ,
    \cnt2_reg[1] );
  output addr_read;
  output tx_valid;
  output MISO_reg;
  output MISO_reg_0;
  input clk_IBUF_BUFG;
  input rst_n_IBUF;
  input rx_valid_reg;
  input [0:0]SR;
  input [7:0]ADDRBWRADDR;
  input [9:0]Q;
  input [0:0]WEA;
  input rx_valid;
  input \rx_data_reg[8] ;
  input [1:0]\cnt2_reg[1] ;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]ADDRBWRADDR;
  wire MISO_reg;
  wire MISO_reg_0;
  wire [9:0]Q;
  wire [0:0]SR;
  wire [0:0]WEA;
  wire \__0/i__n_0 ;
  wire addr_read;
  wire [7:0]addr_write;
  wire clk_IBUF_BUFG;
  wire [1:0]\cnt2_reg[1] ;
  wire rst_n_IBUF;
  wire \rx_data_reg[8] ;
  wire rx_valid;
  wire rx_valid_reg;
  wire [7:0]tx_data;
  wire tx_valid;

  LUT4 #(
    .INIT(16'h0800)) 
    \/i_ 
       (.I0(rst_n_IBUF),
        .I1(Q[9]),
        .I2(Q[8]),
        .I3(rx_valid),
        .O(addr_read));
  GND GND
       (.G(\<const0> ));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-16 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "MEM" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    MEM_reg
       (.ADDRARDADDR({\<const1> ,\<const1> ,addr_write,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,\<const1> ,ADDRBWRADDR,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(clk_IBUF_BUFG),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,Q[7:0]}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const0> ,\<const0> }),
        .DOBDO(tx_data),
        .ENARDEN(rst_n_IBUF),
        .ENBWREN(\<const1> ),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(rx_valid_reg),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(SR),
        .WEA({WEA,WEA}),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    MISO_i_3
       (.I0(tx_data[5]),
        .I1(tx_data[7]),
        .I2(tx_data[4]),
        .I3(\cnt2_reg[1] [0]),
        .I4(\cnt2_reg[1] [1]),
        .I5(tx_data[6]),
        .O(MISO_reg));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    MISO_i_4
       (.I0(tx_data[1]),
        .I1(tx_data[3]),
        .I2(tx_data[0]),
        .I3(\cnt2_reg[1] [0]),
        .I4(\cnt2_reg[1] [1]),
        .I5(tx_data[2]),
        .O(MISO_reg_0));
  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'h0200)) 
    \__0/i_ 
       (.I0(rst_n_IBUF),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(rx_valid),
        .O(\__0/i__n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_write_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\__0/i__n_0 ),
        .D(Q[0]),
        .Q(addr_write[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_write_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\__0/i__n_0 ),
        .D(Q[1]),
        .Q(addr_write[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_write_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\__0/i__n_0 ),
        .D(Q[2]),
        .Q(addr_write[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_write_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\__0/i__n_0 ),
        .D(Q[3]),
        .Q(addr_write[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_write_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\__0/i__n_0 ),
        .D(Q[4]),
        .Q(addr_write[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_write_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\__0/i__n_0 ),
        .D(Q[5]),
        .Q(addr_write[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_write_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\__0/i__n_0 ),
        .D(Q[6]),
        .Q(addr_write[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_write_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\__0/i__n_0 ),
        .D(Q[7]),
        .Q(addr_write[7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    tx_valid_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data_reg[8] ),
        .Q(tx_valid),
        .R(SR));
endmodule

(* ADDR_SIZE = "8" *) (* CHK_CMD = "1" *) (* IDLE = "0" *) 
(* MEM_DEPTH = "256" *) (* READ_ADD = "3" *) (* READ_DATA = "4" *) 
(* WRITE = "2" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module SPI_RAM
   (MOSI,
    clk,
    rst_n,
    SS_n,
    MISO);
  input MOSI;
  input clk;
  input rst_n;
  input SS_n;
  output MISO;

  wire \<const0> ;
  wire MEM;
  wire MEM_reg_i_12_n_0;
  wire MEM_reg_i_13_n_0;
  wire MEM_reg_i_14_n_0;
  wire MEM_reg_i_15_n_0;
  wire MEM_reg_i_16_n_0;
  wire MEM_reg_i_17_n_0;
  wire MEM_reg_i_18_n_0;
  wire MEM_reg_i_19_n_0;
  wire MISO;
  wire MISO_OBUF;
  wire MOSI;
  wire MOSI_IBUF;
  wire SS_n;
  wire SS_n_IBUF;
  wire addr_read;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire ram1_n_2;
  wire ram1_n_3;
  wire rst_n;
  wire rst_n_IBUF;
  wire [9:0]rx_data;
  wire rx_valid;
  wire [0:36]sl_iport0_o_0;
  wire [0:16]sl_oport0_i_0;
  wire spi1_n_1;
  wire spi1_n_10;
  wire spi1_n_21;
  wire spi1_n_23;
  wire spi1_n_24;
  wire spi1_n_25;
  wire spi1_n_3;
  wire spi1_n_4;
  wire spi1_n_5;
  wire spi1_n_6;
  wire spi1_n_7;
  wire spi1_n_8;
  wire spi1_n_9;
  wire tx_valid;

  GND GND
       (.G(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    MEM_reg_i_12
       (.C(clk_IBUF_BUFG),
        .CE(addr_read),
        .D(rx_data[7]),
        .Q(MEM_reg_i_12_n_0),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    MEM_reg_i_13
       (.C(clk_IBUF_BUFG),
        .CE(addr_read),
        .D(rx_data[6]),
        .Q(MEM_reg_i_13_n_0),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    MEM_reg_i_14
       (.C(clk_IBUF_BUFG),
        .CE(addr_read),
        .D(rx_data[5]),
        .Q(MEM_reg_i_14_n_0),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    MEM_reg_i_15
       (.C(clk_IBUF_BUFG),
        .CE(addr_read),
        .D(rx_data[4]),
        .Q(MEM_reg_i_15_n_0),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    MEM_reg_i_16
       (.C(clk_IBUF_BUFG),
        .CE(addr_read),
        .D(rx_data[3]),
        .Q(MEM_reg_i_16_n_0),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    MEM_reg_i_17
       (.C(clk_IBUF_BUFG),
        .CE(addr_read),
        .D(rx_data[2]),
        .Q(MEM_reg_i_17_n_0),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    MEM_reg_i_18
       (.C(clk_IBUF_BUFG),
        .CE(addr_read),
        .D(rx_data[1]),
        .Q(MEM_reg_i_18_n_0),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    MEM_reg_i_19
       (.C(clk_IBUF_BUFG),
        .CE(addr_read),
        .D(rx_data[0]),
        .Q(MEM_reg_i_19_n_0),
        .R(\<const0> ));
  OBUF MISO_OBUF_inst
       (.I(MISO_OBUF),
        .O(MISO));
  IBUF MOSI_IBUF_inst
       (.I(MOSI),
        .O(MOSI_IBUF));
  IBUF SS_n_IBUF_inst
       (.I(SS_n),
        .O(SS_n_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  (* CORE_GENERATION_INFO = "dbg_hub,labtools_xsdbm_v3_00_a,{C_BSCAN_MODE=false,C_BSCAN_MODE_WITH_CORE=false,C_CLK_INPUT_FREQ_HZ=300000000,C_ENABLE_CLK_DIVIDER=false,C_EN_BSCANID_VEC=false,C_NUM_BSCAN_MASTER_PORTS=0,C_TWO_PRIM_MODE=false,C_USER_SCAN_CHAIN=1,C_USE_EXT_BSCAN=false,C_XSDB_NUM_SLAVES=1,component_name=dbg_hub_CV}" *) 
  (* DEBUG_PORT_clk = "" *) 
  (* IS_DEBUG_CORE *) 
  dbg_hub_CV dbg_hub
       (.clk(clk_IBUF_BUFG),
        .sl_iport0_o(sl_iport0_o_0),
        .sl_oport0_i(sl_oport0_i_0));
  RAM ram1
       (.ADDRBWRADDR({spi1_n_3,spi1_n_4,spi1_n_5,spi1_n_6,spi1_n_7,spi1_n_8,spi1_n_9,spi1_n_10}),
        .MISO_reg(ram1_n_2),
        .MISO_reg_0(ram1_n_3),
        .Q(rx_data),
        .SR(spi1_n_1),
        .WEA(MEM),
        .addr_read(addr_read),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt2_reg[1] ({spi1_n_23,spi1_n_24}),
        .rst_n_IBUF(rst_n_IBUF),
        .\rx_data_reg[8] (spi1_n_25),
        .rx_valid(rx_valid),
        .rx_valid_reg(spi1_n_21),
        .tx_valid(tx_valid));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  SPI_Slave spi1
       (.ADDRBWRADDR({spi1_n_3,spi1_n_4,spi1_n_5,spi1_n_6,spi1_n_7,spi1_n_8,spi1_n_9,spi1_n_10}),
        .MEM_reg(spi1_n_21),
        .MEM_reg_0(ram1_n_2),
        .MEM_reg_1(ram1_n_3),
        .MEM_reg_i_12(MEM_reg_i_12_n_0),
        .MEM_reg_i_13(MEM_reg_i_13_n_0),
        .MEM_reg_i_14(MEM_reg_i_14_n_0),
        .MEM_reg_i_15(MEM_reg_i_15_n_0),
        .MEM_reg_i_16(MEM_reg_i_16_n_0),
        .MEM_reg_i_17(MEM_reg_i_17_n_0),
        .MEM_reg_i_18(MEM_reg_i_18_n_0),
        .MEM_reg_i_19(MEM_reg_i_19_n_0),
        .MISO_OBUF(MISO_OBUF),
        .MOSI_IBUF(MOSI_IBUF),
        .Q(rx_data),
        .SR(spi1_n_1),
        .SS_n_IBUF(SS_n_IBUF),
        .WEA(MEM),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt2_reg[1]_0 ({spi1_n_23,spi1_n_24}),
        .rst_n_IBUF(rst_n_IBUF),
        .rx_valid(rx_valid),
        .tx_valid(tx_valid),
        .tx_valid_reg(spi1_n_25));
  (* CORE_GENERATION_INFO = "u_ila_0,labtools_ila_v6_00_a,{ALL_PROBE_SAME_MU=true,ALL_PROBE_SAME_MU_CNT=1,C_ADV_TRIGGER=false,C_DATA_DEPTH=1024,C_EN_STRG_QUAL=false,C_INPUT_PIPE_STAGES=0,C_NUM_OF_PROBES=5,C_PROBE0_TYPE=0,C_PROBE0_WIDTH=1,C_PROBE1_TYPE=0,C_PROBE1_WIDTH=1,C_PROBE2_TYPE=0,C_PROBE2_WIDTH=1,C_PROBE3_TYPE=0,C_PROBE3_WIDTH=1,C_PROBE4_TYPE=0,C_PROBE4_WIDTH=1,C_TRIGIN_EN=0,C_TRIGOUT_EN=0,component_name=u_ila_0_CV}" *) 
  (* DEBUG_PORT_clk = "n:clk_IBUF_BUFG" *) 
  (* DEBUG_PORT_probe0 = "n:clk_IBUF" *) 
  (* DEBUG_PORT_probe1 = "n:MISO_OBUF" *) 
  (* DEBUG_PORT_probe2 = "n:MOSI_IBUF" *) 
  (* DEBUG_PORT_probe3 = "n:rst_n_IBUF" *) 
  (* DEBUG_PORT_probe4 = "n:SS_n_IBUF" *) 
  (* IS_DEBUG_CORE *) 
  u_ila_0_CV u_ila_0
       (.SL_IPORT_I(sl_iport0_o_0),
        .SL_OPORT_O(sl_oport0_i_0),
        .clk(clk_IBUF_BUFG),
        .probe0(clk_IBUF),
        .probe1(MISO_OBUF),
        .probe2(MOSI_IBUF),
        .probe3(rst_n_IBUF),
        .probe4(SS_n_IBUF));
endmodule

module SPI_Slave
   (MISO_OBUF,
    SR,
    rx_valid,
    ADDRBWRADDR,
    Q,
    MEM_reg,
    WEA,
    \cnt2_reg[1]_0 ,
    tx_valid_reg,
    clk_IBUF_BUFG,
    rst_n_IBUF,
    MEM_reg_i_19,
    MEM_reg_i_18,
    MEM_reg_i_17,
    MEM_reg_i_16,
    MEM_reg_i_15,
    MEM_reg_i_14,
    MEM_reg_i_13,
    MEM_reg_i_12,
    SS_n_IBUF,
    MOSI_IBUF,
    tx_valid,
    MEM_reg_0,
    MEM_reg_1);
  output MISO_OBUF;
  output [0:0]SR;
  output rx_valid;
  output [7:0]ADDRBWRADDR;
  output [9:0]Q;
  output MEM_reg;
  output [0:0]WEA;
  output [1:0]\cnt2_reg[1]_0 ;
  output tx_valid_reg;
  input clk_IBUF_BUFG;
  input rst_n_IBUF;
  input MEM_reg_i_19;
  input MEM_reg_i_18;
  input MEM_reg_i_17;
  input MEM_reg_i_16;
  input MEM_reg_i_15;
  input MEM_reg_i_14;
  input MEM_reg_i_13;
  input MEM_reg_i_12;
  input SS_n_IBUF;
  input MOSI_IBUF;
  input tx_valid;
  input MEM_reg_0;
  input MEM_reg_1;

  wire \<const1> ;
  wire [7:0]ADDRBWRADDR;
  wire \FSM_sequential_ns_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_ns_reg[1]_i_1_n_0 ;
  wire \FSM_sequential_ns_reg[2]_i_1_n_0 ;
  wire \FSM_sequential_ns_reg[2]_i_2_n_0 ;
  wire GND_1;
  wire MEM_reg;
  wire MEM_reg_0;
  wire MEM_reg_1;
  wire MEM_reg_i_12;
  wire MEM_reg_i_13;
  wire MEM_reg_i_14;
  wire MEM_reg_i_15;
  wire MEM_reg_i_16;
  wire MEM_reg_i_17;
  wire MEM_reg_i_18;
  wire MEM_reg_i_19;
  wire MISO_OBUF;
  wire MISO_i_1_n_0;
  wire MISO_i_2_n_0;
  wire MOSI_IBUF;
  wire [9:0]Q;
  wire [0:0]SR;
  wire SS_n_IBUF;
  wire VCC_2;
  wire [0:0]WEA;
  wire check_read_i_1_n_0;
  wire check_read_reg_n_0;
  wire clk_IBUF_BUFG;
  wire cnt1;
  wire \cnt1[0]_i_1_n_0 ;
  wire \cnt1[1]_i_1_n_0 ;
  wire \cnt1[2]_i_1_n_0 ;
  wire \cnt1[3]_i_2_n_0 ;
  wire \cnt1[3]_i_3_n_0 ;
  wire \cnt1_reg_n_0_[0] ;
  wire \cnt1_reg_n_0_[1] ;
  wire \cnt1_reg_n_0_[2] ;
  wire \cnt1_reg_n_0_[3] ;
  wire cnt2;
  wire \cnt2[0]_i_1_n_0 ;
  wire \cnt2[1]_i_1_n_0 ;
  wire \cnt2[2]_i_1_n_0 ;
  wire \cnt2[3]_i_2_n_0 ;
  wire \cnt2[3]_i_3_n_0 ;
  wire \cnt2[3]_i_4_n_0 ;
  wire [1:0]\cnt2_reg[1]_0 ;
  wire \cnt2_reg_n_0_[2] ;
  wire \cnt2_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire [2:0]cs;
  wire [2:0]ns__0;
  wire rst_n_IBUF;
  wire \rx_data[9]_i_1_n_0 ;
  wire \rx_data[9]_i_2_n_0 ;
  wire [9:9]rx_data_reg1_in;
  wire \rx_data_reg[0]_i_1_n_0 ;
  wire \rx_data_reg[1]_i_1_n_0 ;
  wire \rx_data_reg[2]_i_1_n_0 ;
  wire \rx_data_reg[3]_i_1_n_0 ;
  wire \rx_data_reg[3]_i_2_n_0 ;
  wire \rx_data_reg[4]_i_1_n_0 ;
  wire \rx_data_reg[5]_i_1_n_0 ;
  wire \rx_data_reg[5]_i_2_n_0 ;
  wire \rx_data_reg[6]_i_1_n_0 ;
  wire \rx_data_reg[6]_i_2_n_0 ;
  wire \rx_data_reg[7]_i_1_n_0 ;
  wire \rx_data_reg[7]_i_2_n_0 ;
  wire \rx_data_reg[7]_i_3_n_0 ;
  wire \rx_data_reg[8]_i_1_n_0 ;
  wire \rx_data_reg[8]_i_3_n_0 ;
  wire \rx_data_reg[8]_i_4_n_0 ;
  wire \rx_data_reg[8]_i_5_n_0 ;
  wire \rx_data_reg[9]_i_1_n_0 ;
  wire \rx_data_reg[9]_i_2_n_0 ;
  wire \rx_data_reg_reg_n_0_[0] ;
  wire \rx_data_reg_reg_n_0_[1] ;
  wire \rx_data_reg_reg_n_0_[2] ;
  wire \rx_data_reg_reg_n_0_[3] ;
  wire \rx_data_reg_reg_n_0_[4] ;
  wire \rx_data_reg_reg_n_0_[5] ;
  wire \rx_data_reg_reg_n_0_[6] ;
  wire \rx_data_reg_reg_n_0_[7] ;
  wire \rx_data_reg_reg_n_0_[8] ;
  wire \rx_data_reg_reg_n_0_[9] ;
  wire rx_valid;
  wire rx_valid_i_1_n_0;
  wire rx_valid_i_2_n_0;
  wire tx_valid;
  wire tx_valid_reg;

  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:010,READ_ADD:011,READ_DATA:100,IDLE:000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(ns__0[0]),
        .Q(cs[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:010,READ_ADD:011,READ_DATA:100,IDLE:000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(ns__0[1]),
        .Q(cs[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:010,READ_ADD:011,READ_DATA:100,IDLE:000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(ns__0[2]),
        .Q(cs[2]),
        .R(SR));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_ns_reg[0] 
       (.CLR(GND_1),
        .D(\FSM_sequential_ns_reg[0]_i_1_n_0 ),
        .G(\FSM_sequential_ns_reg[2]_i_2_n_0 ),
        .GE(VCC_2),
        .Q(ns__0[0]));
  LUT6 #(
    .INIT(64'h000000000A0E0505)) 
    \FSM_sequential_ns_reg[0]_i_1 
       (.I0(cs[1]),
        .I1(MOSI_IBUF),
        .I2(SS_n_IBUF),
        .I3(check_read_reg_n_0),
        .I4(cs[0]),
        .I5(cs[2]),
        .O(\FSM_sequential_ns_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_ns_reg[1] 
       (.CLR(GND_1),
        .D(\FSM_sequential_ns_reg[1]_i_1_n_0 ),
        .G(\FSM_sequential_ns_reg[2]_i_2_n_0 ),
        .GE(VCC_2),
        .Q(ns__0[1]));
  LUT6 #(
    .INIT(64'h000000000F0F020A)) 
    \FSM_sequential_ns_reg[1]_i_1 
       (.I0(cs[0]),
        .I1(check_read_reg_n_0),
        .I2(SS_n_IBUF),
        .I3(MOSI_IBUF),
        .I4(cs[1]),
        .I5(cs[2]),
        .O(\FSM_sequential_ns_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_ns_reg[2] 
       (.CLR(GND_1),
        .D(\FSM_sequential_ns_reg[2]_i_1_n_0 ),
        .G(\FSM_sequential_ns_reg[2]_i_2_n_0 ),
        .GE(VCC_2),
        .Q(ns__0[2]));
  LUT6 #(
    .INIT(64'h0A0A0A0A0E0A0A0A)) 
    \FSM_sequential_ns_reg[2]_i_1 
       (.I0(cs[2]),
        .I1(MOSI_IBUF),
        .I2(SS_n_IBUF),
        .I3(check_read_reg_n_0),
        .I4(cs[0]),
        .I5(cs[1]),
        .O(\FSM_sequential_ns_reg[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h57)) 
    \FSM_sequential_ns_reg[2]_i_2 
       (.I0(cs[2]),
        .I1(cs[0]),
        .I2(cs[1]),
        .O(\FSM_sequential_ns_reg[2]_i_2_n_0 ));
  GND GND
       (.G(GND_1));
  LUT3 #(
    .INIT(8'h80)) 
    MEM_reg_i_1
       (.I0(rx_valid),
        .I1(Q[9]),
        .I2(Q[8]),
        .O(MEM_reg));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    MEM_reg_i_10
       (.I0(Q[0]),
        .I1(rst_n_IBUF),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(rx_valid),
        .I5(MEM_reg_i_19),
        .O(ADDRBWRADDR[0]));
  LUT3 #(
    .INIT(8'h20)) 
    MEM_reg_i_11
       (.I0(rx_valid),
        .I1(Q[9]),
        .I2(Q[8]),
        .O(WEA));
  LUT1 #(
    .INIT(2'h1)) 
    MEM_reg_i_2
       (.I0(rst_n_IBUF),
        .O(SR));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    MEM_reg_i_3
       (.I0(Q[7]),
        .I1(rst_n_IBUF),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(rx_valid),
        .I5(MEM_reg_i_12),
        .O(ADDRBWRADDR[7]));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    MEM_reg_i_4
       (.I0(Q[6]),
        .I1(rst_n_IBUF),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(rx_valid),
        .I5(MEM_reg_i_13),
        .O(ADDRBWRADDR[6]));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    MEM_reg_i_5
       (.I0(Q[5]),
        .I1(rst_n_IBUF),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(rx_valid),
        .I5(MEM_reg_i_14),
        .O(ADDRBWRADDR[5]));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    MEM_reg_i_6
       (.I0(Q[4]),
        .I1(rst_n_IBUF),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(rx_valid),
        .I5(MEM_reg_i_15),
        .O(ADDRBWRADDR[4]));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    MEM_reg_i_7
       (.I0(Q[3]),
        .I1(rst_n_IBUF),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(rx_valid),
        .I5(MEM_reg_i_16),
        .O(ADDRBWRADDR[3]));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    MEM_reg_i_8
       (.I0(Q[2]),
        .I1(rst_n_IBUF),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(rx_valid),
        .I5(MEM_reg_i_17),
        .O(ADDRBWRADDR[2]));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    MEM_reg_i_9
       (.I0(Q[1]),
        .I1(rst_n_IBUF),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(rx_valid),
        .I5(MEM_reg_i_18),
        .O(ADDRBWRADDR[1]));
  LUT4 #(
    .INIT(16'h000B)) 
    MISO_i_1
       (.I0(tx_valid),
        .I1(cs[2]),
        .I2(cs[1]),
        .I3(cs[0]),
        .O(MISO_i_1_n_0));
  LUT4 #(
    .INIT(16'hD800)) 
    MISO_i_2
       (.I0(\cnt2_reg_n_0_[2] ),
        .I1(MEM_reg_0),
        .I2(MEM_reg_1),
        .I3(cs[2]),
        .O(MISO_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    MISO_reg
       (.C(clk_IBUF_BUFG),
        .CE(MISO_i_1_n_0),
        .D(MISO_i_2_n_0),
        .Q(MISO_OBUF),
        .R(SR));
  VCC VCC
       (.P(\<const1> ));
  VCC VCC_1
       (.P(VCC_2));
  LUT6 #(
    .INIT(64'hFF00EF10FF00FF00)) 
    check_read_i_1
       (.I0(cs[2]),
        .I1(cs[1]),
        .I2(cs[0]),
        .I3(check_read_reg_n_0),
        .I4(SS_n_IBUF),
        .I5(MOSI_IBUF),
        .O(check_read_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    check_read_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(check_read_i_1_n_0),
        .Q(check_read_reg_n_0),
        .R(SR));
  LUT4 #(
    .INIT(16'h1117)) 
    \cnt1[0]_i_1 
       (.I0(\cnt1_reg_n_0_[0] ),
        .I1(cs[2]),
        .I2(cs[1]),
        .I3(cs[0]),
        .O(\cnt1[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00990900)) 
    \cnt1[1]_i_1 
       (.I0(\cnt1_reg_n_0_[0] ),
        .I1(\cnt1_reg_n_0_[1] ),
        .I2(cs[0]),
        .I3(cs[2]),
        .I4(cs[1]),
        .O(\cnt1[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000E1E100E10000)) 
    \cnt1[2]_i_1 
       (.I0(\cnt1_reg_n_0_[1] ),
        .I1(\cnt1_reg_n_0_[0] ),
        .I2(\cnt1_reg_n_0_[2] ),
        .I3(cs[0]),
        .I4(cs[2]),
        .I5(cs[1]),
        .O(\cnt1[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FE000000FEFEFF)) 
    \cnt1[3]_i_1 
       (.I0(\cnt1[3]_i_3_n_0 ),
        .I1(\cnt1_reg_n_0_[2] ),
        .I2(\cnt1_reg_n_0_[3] ),
        .I3(cs[2]),
        .I4(cs[1]),
        .I5(cs[0]),
        .O(cnt1));
  LUT6 #(
    .INIT(64'hFE01FFFF0000FE01)) 
    \cnt1[3]_i_2 
       (.I0(\cnt1_reg_n_0_[2] ),
        .I1(\cnt1_reg_n_0_[0] ),
        .I2(\cnt1_reg_n_0_[1] ),
        .I3(\cnt1_reg_n_0_[3] ),
        .I4(cs[2]),
        .I5(\cnt2[3]_i_4_n_0 ),
        .O(\cnt1[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \cnt1[3]_i_3 
       (.I0(\cnt1_reg_n_0_[0] ),
        .I1(\cnt1_reg_n_0_[1] ),
        .O(\cnt1[3]_i_3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \cnt1_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt1),
        .D(\cnt1[0]_i_1_n_0 ),
        .Q(\cnt1_reg_n_0_[0] ),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt1_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt1),
        .D(\cnt1[1]_i_1_n_0 ),
        .Q(\cnt1_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt1_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt1),
        .D(\cnt1[2]_i_1_n_0 ),
        .Q(\cnt1_reg_n_0_[2] ),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \cnt1_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt1),
        .D(\cnt1[3]_i_2_n_0 ),
        .Q(\cnt1_reg_n_0_[3] ),
        .S(SR));
  LUT4 #(
    .INIT(16'h0007)) 
    \cnt2[0]_i_1 
       (.I0(\cnt2_reg[1]_0 [0]),
        .I1(cs[2]),
        .I2(cs[1]),
        .I3(cs[0]),
        .O(\cnt2[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000009F)) 
    \cnt2[1]_i_1 
       (.I0(\cnt2_reg[1]_0 [1]),
        .I1(\cnt2_reg[1]_0 [0]),
        .I2(cs[2]),
        .I3(cs[0]),
        .I4(cs[1]),
        .O(\cnt2[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FD57)) 
    \cnt2[2]_i_1 
       (.I0(cs[2]),
        .I1(\cnt2_reg[1]_0 [0]),
        .I2(\cnt2_reg[1]_0 [1]),
        .I3(\cnt2_reg_n_0_[2] ),
        .I4(cs[0]),
        .I5(cs[1]),
        .O(\cnt2[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FFFF00000000)) 
    \cnt2[3]_i_1 
       (.I0(\cnt2_reg_n_0_[3] ),
        .I1(\cnt2_reg_n_0_[2] ),
        .I2(\cnt2[3]_i_3_n_0 ),
        .I3(tx_valid),
        .I4(cs[2]),
        .I5(\cnt2[3]_i_4_n_0 ),
        .O(cnt2));
  LUT5 #(
    .INIT(32'hAAA80002)) 
    \cnt2[3]_i_2 
       (.I0(cs[2]),
        .I1(\cnt2_reg_n_0_[2] ),
        .I2(\cnt2_reg[1]_0 [1]),
        .I3(\cnt2_reg[1]_0 [0]),
        .I4(\cnt2_reg_n_0_[3] ),
        .O(\cnt2[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \cnt2[3]_i_3 
       (.I0(\cnt2_reg[1]_0 [1]),
        .I1(\cnt2_reg[1]_0 [0]),
        .O(\cnt2[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \cnt2[3]_i_4 
       (.I0(cs[1]),
        .I1(cs[0]),
        .O(\cnt2[3]_i_4_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \cnt2_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt2),
        .D(\cnt2[0]_i_1_n_0 ),
        .Q(\cnt2_reg[1]_0 [0]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \cnt2_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt2),
        .D(\cnt2[1]_i_1_n_0 ),
        .Q(\cnt2_reg[1]_0 [1]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \cnt2_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt2),
        .D(\cnt2[2]_i_1_n_0 ),
        .Q(\cnt2_reg_n_0_[2] ),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt2_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt2),
        .D(\cnt2[3]_i_2_n_0 ),
        .Q(\cnt2_reg_n_0_[3] ),
        .R(SR));
  LUT5 #(
    .INIT(32'h00000002)) 
    \rx_data[9]_i_1 
       (.I0(\rx_data[9]_i_2_n_0 ),
        .I1(\cnt1_reg_n_0_[3] ),
        .I2(\cnt1_reg_n_0_[2] ),
        .I3(\cnt1_reg_n_0_[1] ),
        .I4(\cnt1_reg_n_0_[0] ),
        .O(\rx_data[9]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h34)) 
    \rx_data[9]_i_2 
       (.I0(cs[0]),
        .I1(cs[2]),
        .I2(cs[1]),
        .O(\rx_data[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data_reg_reg_n_0_[0] ),
        .Q(Q[0]),
        .R(SR));
  LUT6 #(
    .INIT(64'hAAAAFFEFAAAA0020)) 
    \rx_data_reg[0]_i_1 
       (.I0(rx_data_reg1_in),
        .I1(\cnt1[3]_i_3_n_0 ),
        .I2(\rx_data_reg[8]_i_4_n_0 ),
        .I3(\rx_data_reg[3]_i_2_n_0 ),
        .I4(\rx_data_reg[8]_i_5_n_0 ),
        .I5(\rx_data_reg_reg_n_0_[0] ),
        .O(\rx_data_reg[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data_reg_reg_n_0_[1] ),
        .Q(Q[1]),
        .R(SR));
  LUT6 #(
    .INIT(64'hAAAAFEFFAAAA0200)) 
    \rx_data_reg[1]_i_1 
       (.I0(rx_data_reg1_in),
        .I1(\cnt1_reg_n_0_[2] ),
        .I2(\cnt1_reg_n_0_[3] ),
        .I3(\rx_data_reg[5]_i_2_n_0 ),
        .I4(\rx_data_reg[8]_i_5_n_0 ),
        .I5(\rx_data_reg_reg_n_0_[1] ),
        .O(\rx_data_reg[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data_reg_reg_n_0_[2] ),
        .Q(Q[2]),
        .R(SR));
  LUT6 #(
    .INIT(64'hAAAAFBFFAAAA0800)) 
    \rx_data_reg[2]_i_1 
       (.I0(rx_data_reg1_in),
        .I1(\rx_data_reg[6]_i_2_n_0 ),
        .I2(\rx_data_reg[3]_i_2_n_0 ),
        .I3(\rx_data_reg[8]_i_4_n_0 ),
        .I4(\rx_data_reg[8]_i_5_n_0 ),
        .I5(\rx_data_reg_reg_n_0_[2] ),
        .O(\rx_data_reg[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data_reg_reg_n_0_[3] ),
        .Q(Q[3]),
        .R(SR));
  LUT6 #(
    .INIT(64'hAAAAFBFFAAAA0800)) 
    \rx_data_reg[3]_i_1 
       (.I0(rx_data_reg1_in),
        .I1(\rx_data_reg[7]_i_2_n_0 ),
        .I2(\rx_data_reg[3]_i_2_n_0 ),
        .I3(\rx_data_reg[8]_i_4_n_0 ),
        .I4(\rx_data_reg[8]_i_5_n_0 ),
        .I5(\rx_data_reg_reg_n_0_[3] ),
        .O(\rx_data_reg[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rx_data_reg[3]_i_2 
       (.I0(\cnt1_reg_n_0_[2] ),
        .I1(\cnt1_reg_n_0_[3] ),
        .O(\rx_data_reg[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data_reg_reg_n_0_[4] ),
        .Q(Q[4]),
        .R(SR));
  LUT6 #(
    .INIT(64'hAAAAFFEFAAAA0020)) 
    \rx_data_reg[4]_i_1 
       (.I0(rx_data_reg1_in),
        .I1(\cnt1[3]_i_3_n_0 ),
        .I2(\rx_data_reg[8]_i_4_n_0 ),
        .I3(\rx_data_reg[7]_i_3_n_0 ),
        .I4(\rx_data_reg[8]_i_5_n_0 ),
        .I5(\rx_data_reg_reg_n_0_[4] ),
        .O(\rx_data_reg[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data_reg_reg_n_0_[5] ),
        .Q(Q[5]),
        .R(SR));
  LUT6 #(
    .INIT(64'hAAAAEFFFAAAA2000)) 
    \rx_data_reg[5]_i_1 
       (.I0(rx_data_reg1_in),
        .I1(\cnt1_reg_n_0_[3] ),
        .I2(\cnt1_reg_n_0_[2] ),
        .I3(\rx_data_reg[5]_i_2_n_0 ),
        .I4(\rx_data_reg[8]_i_5_n_0 ),
        .I5(\rx_data_reg_reg_n_0_[5] ),
        .O(\rx_data_reg[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00001D00)) 
    \rx_data_reg[5]_i_2 
       (.I0(cs[0]),
        .I1(cs[1]),
        .I2(cs[2]),
        .I3(\cnt1_reg_n_0_[0] ),
        .I4(\cnt1_reg_n_0_[1] ),
        .O(\rx_data_reg[5]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data_reg_reg_n_0_[6] ),
        .Q(Q[6]),
        .R(SR));
  LUT6 #(
    .INIT(64'hAAAAFBFFAAAA0800)) 
    \rx_data_reg[6]_i_1 
       (.I0(rx_data_reg1_in),
        .I1(\rx_data_reg[6]_i_2_n_0 ),
        .I2(\rx_data_reg[7]_i_3_n_0 ),
        .I3(\rx_data_reg[8]_i_4_n_0 ),
        .I4(\rx_data_reg[8]_i_5_n_0 ),
        .I5(\rx_data_reg_reg_n_0_[6] ),
        .O(\rx_data_reg[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rx_data_reg[6]_i_2 
       (.I0(\cnt1_reg_n_0_[1] ),
        .I1(\cnt1_reg_n_0_[0] ),
        .O(\rx_data_reg[6]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data_reg_reg_n_0_[7] ),
        .Q(Q[7]),
        .R(SR));
  LUT6 #(
    .INIT(64'hAAAAFBFFAAAA0800)) 
    \rx_data_reg[7]_i_1 
       (.I0(rx_data_reg1_in),
        .I1(\rx_data_reg[7]_i_2_n_0 ),
        .I2(\rx_data_reg[7]_i_3_n_0 ),
        .I3(\rx_data_reg[8]_i_4_n_0 ),
        .I4(\rx_data_reg[8]_i_5_n_0 ),
        .I5(\rx_data_reg_reg_n_0_[7] ),
        .O(\rx_data_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_data_reg[7]_i_2 
       (.I0(\cnt1_reg_n_0_[0] ),
        .I1(\cnt1_reg_n_0_[1] ),
        .O(\rx_data_reg[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \rx_data_reg[7]_i_3 
       (.I0(\cnt1_reg_n_0_[3] ),
        .I1(\cnt1_reg_n_0_[2] ),
        .O(\rx_data_reg[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data_reg_reg_n_0_[8] ),
        .Q(Q[8]),
        .R(SR));
  LUT6 #(
    .INIT(64'hAAAAFBFFAAAA0800)) 
    \rx_data_reg[8]_i_1 
       (.I0(rx_data_reg1_in),
        .I1(\rx_data_reg[8]_i_3_n_0 ),
        .I2(\cnt1[3]_i_3_n_0 ),
        .I3(\rx_data_reg[8]_i_4_n_0 ),
        .I4(\rx_data_reg[8]_i_5_n_0 ),
        .I5(\rx_data_reg_reg_n_0_[8] ),
        .O(\rx_data_reg[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2600)) 
    \rx_data_reg[8]_i_2 
       (.I0(cs[1]),
        .I1(cs[2]),
        .I2(cs[0]),
        .I3(MOSI_IBUF),
        .O(rx_data_reg1_in));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_data_reg[8]_i_3 
       (.I0(\cnt1_reg_n_0_[3] ),
        .I1(\cnt1_reg_n_0_[2] ),
        .O(\rx_data_reg[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \rx_data_reg[8]_i_4 
       (.I0(cs[2]),
        .I1(cs[1]),
        .I2(cs[0]),
        .O(\rx_data_reg[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \rx_data_reg[8]_i_5 
       (.I0(cs[0]),
        .I1(cs[1]),
        .I2(cs[2]),
        .O(\rx_data_reg[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data_reg_reg_n_0_[9] ),
        .Q(Q[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFBFFFBB008000880)) 
    \rx_data_reg[9]_i_1 
       (.I0(MOSI_IBUF),
        .I1(\rx_data_reg[9]_i_2_n_0 ),
        .I2(cs[2]),
        .I3(cs[1]),
        .I4(cs[0]),
        .I5(\rx_data_reg_reg_n_0_[9] ),
        .O(\rx_data_reg[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \rx_data_reg[9]_i_2 
       (.I0(\cnt1_reg_n_0_[2] ),
        .I1(\cnt1_reg_n_0_[3] ),
        .I2(\cnt1_reg_n_0_[0] ),
        .I3(\cnt1_reg_n_0_[1] ),
        .O(\rx_data_reg[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data_reg[0]_i_1_n_0 ),
        .Q(\rx_data_reg_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data_reg[1]_i_1_n_0 ),
        .Q(\rx_data_reg_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data_reg[2]_i_1_n_0 ),
        .Q(\rx_data_reg_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data_reg[3]_i_1_n_0 ),
        .Q(\rx_data_reg_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data_reg[4]_i_1_n_0 ),
        .Q(\rx_data_reg_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data_reg[5]_i_1_n_0 ),
        .Q(\rx_data_reg_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data_reg[6]_i_1_n_0 ),
        .Q(\rx_data_reg_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data_reg[7]_i_1_n_0 ),
        .Q(\rx_data_reg_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data_reg[8]_i_1_n_0 ),
        .Q(\rx_data_reg_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data_reg[9]_i_1_n_0 ),
        .Q(\rx_data_reg_reg_n_0_[9] ),
        .R(SR));
  LUT5 #(
    .INIT(32'hFFFC1014)) 
    rx_valid_i_1
       (.I0(rx_valid_i_2_n_0),
        .I1(cs[2]),
        .I2(cs[1]),
        .I3(cs[0]),
        .I4(rx_valid),
        .O(rx_valid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    rx_valid_i_2
       (.I0(\cnt1_reg_n_0_[0] ),
        .I1(\cnt1_reg_n_0_[1] ),
        .I2(\cnt1_reg_n_0_[2] ),
        .I3(\cnt1_reg_n_0_[3] ),
        .O(rx_valid_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_valid_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(rx_valid_i_1_n_0),
        .Q(rx_valid),
        .R(SR));
  LUT4 #(
    .INIT(16'h8F80)) 
    tx_valid_i_1
       (.I0(Q[8]),
        .I1(Q[9]),
        .I2(rx_valid),
        .I3(tx_valid),
        .O(tx_valid_reg));
endmodule
