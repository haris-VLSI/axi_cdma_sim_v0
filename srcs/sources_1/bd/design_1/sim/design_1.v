//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
//Date        : Fri Jul 18 19:53:51 2025
//Host        : raiton running 64-bit unknown
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (M_AXI_0_araddr,
    M_AXI_0_arburst,
    M_AXI_0_arcache,
    M_AXI_0_arlen,
    M_AXI_0_arprot,
    M_AXI_0_arready,
    M_AXI_0_arsize,
    M_AXI_0_arvalid,
    M_AXI_0_awaddr,
    M_AXI_0_awburst,
    M_AXI_0_awcache,
    M_AXI_0_awlen,
    M_AXI_0_awprot,
    M_AXI_0_awready,
    M_AXI_0_awsize,
    M_AXI_0_awvalid,
    M_AXI_0_bready,
    M_AXI_0_bresp,
    M_AXI_0_bvalid,
    M_AXI_0_rdata,
    M_AXI_0_rlast,
    M_AXI_0_rready,
    M_AXI_0_rresp,
    M_AXI_0_rvalid,
    M_AXI_0_wdata,
    M_AXI_0_wlast,
    M_AXI_0_wready,
    M_AXI_0_wstrb,
    M_AXI_0_wvalid,
    M_AXI_SG_0_araddr,
    M_AXI_SG_0_arburst,
    M_AXI_SG_0_arcache,
    M_AXI_SG_0_arlen,
    M_AXI_SG_0_arprot,
    M_AXI_SG_0_arready,
    M_AXI_SG_0_arsize,
    M_AXI_SG_0_arvalid,
    M_AXI_SG_0_awaddr,
    M_AXI_SG_0_awburst,
    M_AXI_SG_0_awcache,
    M_AXI_SG_0_awlen,
    M_AXI_SG_0_awprot,
    M_AXI_SG_0_awready,
    M_AXI_SG_0_awsize,
    M_AXI_SG_0_awvalid,
    M_AXI_SG_0_bready,
    M_AXI_SG_0_bresp,
    M_AXI_SG_0_bvalid,
    M_AXI_SG_0_rdata,
    M_AXI_SG_0_rlast,
    M_AXI_SG_0_rready,
    M_AXI_SG_0_rresp,
    M_AXI_SG_0_rvalid,
    M_AXI_SG_0_wdata,
    M_AXI_SG_0_wlast,
    M_AXI_SG_0_wready,
    M_AXI_SG_0_wstrb,
    M_AXI_SG_0_wvalid,
    S_AXI_LITE_0_araddr,
    S_AXI_LITE_0_arready,
    S_AXI_LITE_0_arvalid,
    S_AXI_LITE_0_awaddr,
    S_AXI_LITE_0_awready,
    S_AXI_LITE_0_awvalid,
    S_AXI_LITE_0_bready,
    S_AXI_LITE_0_bresp,
    S_AXI_LITE_0_bvalid,
    S_AXI_LITE_0_rdata,
    S_AXI_LITE_0_rready,
    S_AXI_LITE_0_rresp,
    S_AXI_LITE_0_rvalid,
    S_AXI_LITE_0_wdata,
    S_AXI_LITE_0_wready,
    S_AXI_LITE_0_wvalid,
    cdma_introut_0,
    m_axi_aclk_0,
    s_axi_lite_aclk_0,
    s_axi_lite_aresetn_0);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 ARADDR" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_0, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN design_1_m_axi_aclk_0, DATA_WIDTH 128, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]M_AXI_0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 ARBURST" *) output [1:0]M_AXI_0_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 ARCACHE" *) output [3:0]M_AXI_0_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 ARLEN" *) output [7:0]M_AXI_0_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 ARPROT" *) output [2:0]M_AXI_0_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 ARREADY" *) input M_AXI_0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 ARSIZE" *) output [2:0]M_AXI_0_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 ARVALID" *) output M_AXI_0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 AWADDR" *) output [63:0]M_AXI_0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 AWBURST" *) output [1:0]M_AXI_0_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 AWCACHE" *) output [3:0]M_AXI_0_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 AWLEN" *) output [7:0]M_AXI_0_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 AWPROT" *) output [2:0]M_AXI_0_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 AWREADY" *) input M_AXI_0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 AWSIZE" *) output [2:0]M_AXI_0_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 AWVALID" *) output M_AXI_0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 BREADY" *) output M_AXI_0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 BRESP" *) input [1:0]M_AXI_0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 BVALID" *) input M_AXI_0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 RDATA" *) input [127:0]M_AXI_0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 RLAST" *) input M_AXI_0_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 RREADY" *) output M_AXI_0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 RRESP" *) input [1:0]M_AXI_0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 RVALID" *) input M_AXI_0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 WDATA" *) output [127:0]M_AXI_0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 WLAST" *) output M_AXI_0_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 WREADY" *) input M_AXI_0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 WSTRB" *) output [15:0]M_AXI_0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 WVALID" *) output M_AXI_0_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_SG_0 ARADDR" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_SG_0, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN design_1_m_axi_aclk_0, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 16, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]M_AXI_SG_0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_SG_0 ARBURST" *) output [1:0]M_AXI_SG_0_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_SG_0 ARCACHE" *) output [3:0]M_AXI_SG_0_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_SG_0 ARLEN" *) output [7:0]M_AXI_SG_0_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_SG_0 ARPROT" *) output [2:0]M_AXI_SG_0_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_SG_0 ARREADY" *) input M_AXI_SG_0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_SG_0 ARSIZE" *) output [2:0]M_AXI_SG_0_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_SG_0 ARVALID" *) output M_AXI_SG_0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_SG_0 AWADDR" *) output [63:0]M_AXI_SG_0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_SG_0 AWBURST" *) output [1:0]M_AXI_SG_0_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_SG_0 AWCACHE" *) output [3:0]M_AXI_SG_0_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_SG_0 AWLEN" *) output [7:0]M_AXI_SG_0_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_SG_0 AWPROT" *) output [2:0]M_AXI_SG_0_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_SG_0 AWREADY" *) input M_AXI_SG_0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_SG_0 AWSIZE" *) output [2:0]M_AXI_SG_0_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_SG_0 AWVALID" *) output M_AXI_SG_0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_SG_0 BREADY" *) output M_AXI_SG_0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_SG_0 BRESP" *) input [1:0]M_AXI_SG_0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_SG_0 BVALID" *) input M_AXI_SG_0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_SG_0 RDATA" *) input [31:0]M_AXI_SG_0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_SG_0 RLAST" *) input M_AXI_SG_0_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_SG_0 RREADY" *) output M_AXI_SG_0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_SG_0 RRESP" *) input [1:0]M_AXI_SG_0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_SG_0 RVALID" *) input M_AXI_SG_0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_SG_0 WDATA" *) output [31:0]M_AXI_SG_0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_SG_0 WLAST" *) output M_AXI_SG_0_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_SG_0 WREADY" *) input M_AXI_SG_0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_SG_0 WSTRB" *) output [3:0]M_AXI_SG_0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_SG_0 WVALID" *) output M_AXI_SG_0_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_0 ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_LITE_0, ADDR_WIDTH 16, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN design_1_s_axi_lite_aclk_0, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 0, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [5:0]S_AXI_LITE_0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_0 ARREADY" *) output S_AXI_LITE_0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_0 ARVALID" *) input S_AXI_LITE_0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_0 AWADDR" *) input [5:0]S_AXI_LITE_0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_0 AWREADY" *) output S_AXI_LITE_0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_0 AWVALID" *) input S_AXI_LITE_0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_0 BREADY" *) input S_AXI_LITE_0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_0 BRESP" *) output [1:0]S_AXI_LITE_0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_0 BVALID" *) output S_AXI_LITE_0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_0 RDATA" *) output [31:0]S_AXI_LITE_0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_0 RREADY" *) input S_AXI_LITE_0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_0 RRESP" *) output [1:0]S_AXI_LITE_0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_0 RVALID" *) output S_AXI_LITE_0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_0 WDATA" *) input [31:0]S_AXI_LITE_0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_0 WREADY" *) output S_AXI_LITE_0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_0 WVALID" *) input S_AXI_LITE_0_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.CDMA_INTROUT_0 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.CDMA_INTROUT_0, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output cdma_introut_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.M_AXI_ACLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.M_AXI_ACLK_0, ASSOCIATED_BUSIF M_AXI_0:M_AXI_SG_0, CLK_DOMAIN design_1_m_axi_aclk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input m_axi_aclk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.S_AXI_LITE_ACLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.S_AXI_LITE_ACLK_0, ASSOCIATED_BUSIF S_AXI_LITE_0, ASSOCIATED_RESET s_axi_lite_aresetn_0, CLK_DOMAIN design_1_s_axi_lite_aclk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input s_axi_lite_aclk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.S_AXI_LITE_ARESETN_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.S_AXI_LITE_ARESETN_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input s_axi_lite_aresetn_0;

  wire [63:0]M_AXI_0_araddr;
  wire [1:0]M_AXI_0_arburst;
  wire [3:0]M_AXI_0_arcache;
  wire [7:0]M_AXI_0_arlen;
  wire [2:0]M_AXI_0_arprot;
  wire M_AXI_0_arready;
  wire [2:0]M_AXI_0_arsize;
  wire M_AXI_0_arvalid;
  wire [63:0]M_AXI_0_awaddr;
  wire [1:0]M_AXI_0_awburst;
  wire [3:0]M_AXI_0_awcache;
  wire [7:0]M_AXI_0_awlen;
  wire [2:0]M_AXI_0_awprot;
  wire M_AXI_0_awready;
  wire [2:0]M_AXI_0_awsize;
  wire M_AXI_0_awvalid;
  wire M_AXI_0_bready;
  wire [1:0]M_AXI_0_bresp;
  wire M_AXI_0_bvalid;
  wire [127:0]M_AXI_0_rdata;
  wire M_AXI_0_rlast;
  wire M_AXI_0_rready;
  wire [1:0]M_AXI_0_rresp;
  wire M_AXI_0_rvalid;
  wire [127:0]M_AXI_0_wdata;
  wire M_AXI_0_wlast;
  wire M_AXI_0_wready;
  wire [15:0]M_AXI_0_wstrb;
  wire M_AXI_0_wvalid;
  wire [63:0]M_AXI_SG_0_araddr;
  wire [1:0]M_AXI_SG_0_arburst;
  wire [3:0]M_AXI_SG_0_arcache;
  wire [7:0]M_AXI_SG_0_arlen;
  wire [2:0]M_AXI_SG_0_arprot;
  wire M_AXI_SG_0_arready;
  wire [2:0]M_AXI_SG_0_arsize;
  wire M_AXI_SG_0_arvalid;
  wire [63:0]M_AXI_SG_0_awaddr;
  wire [1:0]M_AXI_SG_0_awburst;
  wire [3:0]M_AXI_SG_0_awcache;
  wire [7:0]M_AXI_SG_0_awlen;
  wire [2:0]M_AXI_SG_0_awprot;
  wire M_AXI_SG_0_awready;
  wire [2:0]M_AXI_SG_0_awsize;
  wire M_AXI_SG_0_awvalid;
  wire M_AXI_SG_0_bready;
  wire [1:0]M_AXI_SG_0_bresp;
  wire M_AXI_SG_0_bvalid;
  wire [31:0]M_AXI_SG_0_rdata;
  wire M_AXI_SG_0_rlast;
  wire M_AXI_SG_0_rready;
  wire [1:0]M_AXI_SG_0_rresp;
  wire M_AXI_SG_0_rvalid;
  wire [31:0]M_AXI_SG_0_wdata;
  wire M_AXI_SG_0_wlast;
  wire M_AXI_SG_0_wready;
  wire [3:0]M_AXI_SG_0_wstrb;
  wire M_AXI_SG_0_wvalid;
  wire [5:0]S_AXI_LITE_0_araddr;
  wire S_AXI_LITE_0_arready;
  wire S_AXI_LITE_0_arvalid;
  wire [5:0]S_AXI_LITE_0_awaddr;
  wire S_AXI_LITE_0_awready;
  wire S_AXI_LITE_0_awvalid;
  wire S_AXI_LITE_0_bready;
  wire [1:0]S_AXI_LITE_0_bresp;
  wire S_AXI_LITE_0_bvalid;
  wire [31:0]S_AXI_LITE_0_rdata;
  wire S_AXI_LITE_0_rready;
  wire [1:0]S_AXI_LITE_0_rresp;
  wire S_AXI_LITE_0_rvalid;
  wire [31:0]S_AXI_LITE_0_wdata;
  wire S_AXI_LITE_0_wready;
  wire S_AXI_LITE_0_wvalid;
  wire cdma_introut_0;
  wire m_axi_aclk_0;
  wire s_axi_lite_aclk_0;
  wire s_axi_lite_aresetn_0;

  design_1_axi_cdma_0_0 axi_cdma_0
       (.cdma_introut(cdma_introut_0),
        .m_axi_aclk(m_axi_aclk_0),
        .m_axi_araddr(M_AXI_0_araddr),
        .m_axi_arburst(M_AXI_0_arburst),
        .m_axi_arcache(M_AXI_0_arcache),
        .m_axi_arlen(M_AXI_0_arlen),
        .m_axi_arprot(M_AXI_0_arprot),
        .m_axi_arready(M_AXI_0_arready),
        .m_axi_arsize(M_AXI_0_arsize),
        .m_axi_arvalid(M_AXI_0_arvalid),
        .m_axi_awaddr(M_AXI_0_awaddr),
        .m_axi_awburst(M_AXI_0_awburst),
        .m_axi_awcache(M_AXI_0_awcache),
        .m_axi_awlen(M_AXI_0_awlen),
        .m_axi_awprot(M_AXI_0_awprot),
        .m_axi_awready(M_AXI_0_awready),
        .m_axi_awsize(M_AXI_0_awsize),
        .m_axi_awvalid(M_AXI_0_awvalid),
        .m_axi_bready(M_AXI_0_bready),
        .m_axi_bresp(M_AXI_0_bresp),
        .m_axi_bvalid(M_AXI_0_bvalid),
        .m_axi_rdata(M_AXI_0_rdata),
        .m_axi_rlast(M_AXI_0_rlast),
        .m_axi_rready(M_AXI_0_rready),
        .m_axi_rresp(M_AXI_0_rresp),
        .m_axi_rvalid(M_AXI_0_rvalid),
        .m_axi_sg_araddr(M_AXI_SG_0_araddr),
        .m_axi_sg_arburst(M_AXI_SG_0_arburst),
        .m_axi_sg_arcache(M_AXI_SG_0_arcache),
        .m_axi_sg_arlen(M_AXI_SG_0_arlen),
        .m_axi_sg_arprot(M_AXI_SG_0_arprot),
        .m_axi_sg_arready(M_AXI_SG_0_arready),
        .m_axi_sg_arsize(M_AXI_SG_0_arsize),
        .m_axi_sg_arvalid(M_AXI_SG_0_arvalid),
        .m_axi_sg_awaddr(M_AXI_SG_0_awaddr),
        .m_axi_sg_awburst(M_AXI_SG_0_awburst),
        .m_axi_sg_awcache(M_AXI_SG_0_awcache),
        .m_axi_sg_awlen(M_AXI_SG_0_awlen),
        .m_axi_sg_awprot(M_AXI_SG_0_awprot),
        .m_axi_sg_awready(M_AXI_SG_0_awready),
        .m_axi_sg_awsize(M_AXI_SG_0_awsize),
        .m_axi_sg_awvalid(M_AXI_SG_0_awvalid),
        .m_axi_sg_bready(M_AXI_SG_0_bready),
        .m_axi_sg_bresp(M_AXI_SG_0_bresp),
        .m_axi_sg_bvalid(M_AXI_SG_0_bvalid),
        .m_axi_sg_rdata(M_AXI_SG_0_rdata),
        .m_axi_sg_rlast(M_AXI_SG_0_rlast),
        .m_axi_sg_rready(M_AXI_SG_0_rready),
        .m_axi_sg_rresp(M_AXI_SG_0_rresp),
        .m_axi_sg_rvalid(M_AXI_SG_0_rvalid),
        .m_axi_sg_wdata(M_AXI_SG_0_wdata),
        .m_axi_sg_wlast(M_AXI_SG_0_wlast),
        .m_axi_sg_wready(M_AXI_SG_0_wready),
        .m_axi_sg_wstrb(M_AXI_SG_0_wstrb),
        .m_axi_sg_wvalid(M_AXI_SG_0_wvalid),
        .m_axi_wdata(M_AXI_0_wdata),
        .m_axi_wlast(M_AXI_0_wlast),
        .m_axi_wready(M_AXI_0_wready),
        .m_axi_wstrb(M_AXI_0_wstrb),
        .m_axi_wvalid(M_AXI_0_wvalid),
        .s_axi_lite_aclk(s_axi_lite_aclk_0),
        .s_axi_lite_araddr(S_AXI_LITE_0_araddr),
        .s_axi_lite_aresetn(s_axi_lite_aresetn_0),
        .s_axi_lite_arready(S_AXI_LITE_0_arready),
        .s_axi_lite_arvalid(S_AXI_LITE_0_arvalid),
        .s_axi_lite_awaddr(S_AXI_LITE_0_awaddr),
        .s_axi_lite_awready(S_AXI_LITE_0_awready),
        .s_axi_lite_awvalid(S_AXI_LITE_0_awvalid),
        .s_axi_lite_bready(S_AXI_LITE_0_bready),
        .s_axi_lite_bresp(S_AXI_LITE_0_bresp),
        .s_axi_lite_bvalid(S_AXI_LITE_0_bvalid),
        .s_axi_lite_rdata(S_AXI_LITE_0_rdata),
        .s_axi_lite_rready(S_AXI_LITE_0_rready),
        .s_axi_lite_rresp(S_AXI_LITE_0_rresp),
        .s_axi_lite_rvalid(S_AXI_LITE_0_rvalid),
        .s_axi_lite_wdata(S_AXI_LITE_0_wdata),
        .s_axi_lite_wready(S_AXI_LITE_0_wready),
        .s_axi_lite_wvalid(S_AXI_LITE_0_wvalid));
endmodule
