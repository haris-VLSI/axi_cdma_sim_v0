//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
//Date        : Fri Jul 18 19:53:51 2025
//Host        : raiton running 64-bit unknown
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
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
  output [63:0]M_AXI_0_araddr;
  output [1:0]M_AXI_0_arburst;
  output [3:0]M_AXI_0_arcache;
  output [7:0]M_AXI_0_arlen;
  output [2:0]M_AXI_0_arprot;
  input M_AXI_0_arready;
  output [2:0]M_AXI_0_arsize;
  output M_AXI_0_arvalid;
  output [63:0]M_AXI_0_awaddr;
  output [1:0]M_AXI_0_awburst;
  output [3:0]M_AXI_0_awcache;
  output [7:0]M_AXI_0_awlen;
  output [2:0]M_AXI_0_awprot;
  input M_AXI_0_awready;
  output [2:0]M_AXI_0_awsize;
  output M_AXI_0_awvalid;
  output M_AXI_0_bready;
  input [1:0]M_AXI_0_bresp;
  input M_AXI_0_bvalid;
  input [127:0]M_AXI_0_rdata;
  input M_AXI_0_rlast;
  output M_AXI_0_rready;
  input [1:0]M_AXI_0_rresp;
  input M_AXI_0_rvalid;
  output [127:0]M_AXI_0_wdata;
  output M_AXI_0_wlast;
  input M_AXI_0_wready;
  output [15:0]M_AXI_0_wstrb;
  output M_AXI_0_wvalid;
  output [63:0]M_AXI_SG_0_araddr;
  output [1:0]M_AXI_SG_0_arburst;
  output [3:0]M_AXI_SG_0_arcache;
  output [7:0]M_AXI_SG_0_arlen;
  output [2:0]M_AXI_SG_0_arprot;
  input M_AXI_SG_0_arready;
  output [2:0]M_AXI_SG_0_arsize;
  output M_AXI_SG_0_arvalid;
  output [63:0]M_AXI_SG_0_awaddr;
  output [1:0]M_AXI_SG_0_awburst;
  output [3:0]M_AXI_SG_0_awcache;
  output [7:0]M_AXI_SG_0_awlen;
  output [2:0]M_AXI_SG_0_awprot;
  input M_AXI_SG_0_awready;
  output [2:0]M_AXI_SG_0_awsize;
  output M_AXI_SG_0_awvalid;
  output M_AXI_SG_0_bready;
  input [1:0]M_AXI_SG_0_bresp;
  input M_AXI_SG_0_bvalid;
  input [31:0]M_AXI_SG_0_rdata;
  input M_AXI_SG_0_rlast;
  output M_AXI_SG_0_rready;
  input [1:0]M_AXI_SG_0_rresp;
  input M_AXI_SG_0_rvalid;
  output [31:0]M_AXI_SG_0_wdata;
  output M_AXI_SG_0_wlast;
  input M_AXI_SG_0_wready;
  output [3:0]M_AXI_SG_0_wstrb;
  output M_AXI_SG_0_wvalid;
  input [5:0]S_AXI_LITE_0_araddr;
  output S_AXI_LITE_0_arready;
  input S_AXI_LITE_0_arvalid;
  input [5:0]S_AXI_LITE_0_awaddr;
  output S_AXI_LITE_0_awready;
  input S_AXI_LITE_0_awvalid;
  input S_AXI_LITE_0_bready;
  output [1:0]S_AXI_LITE_0_bresp;
  output S_AXI_LITE_0_bvalid;
  output [31:0]S_AXI_LITE_0_rdata;
  input S_AXI_LITE_0_rready;
  output [1:0]S_AXI_LITE_0_rresp;
  output S_AXI_LITE_0_rvalid;
  input [31:0]S_AXI_LITE_0_wdata;
  output S_AXI_LITE_0_wready;
  input S_AXI_LITE_0_wvalid;
  output cdma_introut_0;
  input m_axi_aclk_0;
  input s_axi_lite_aclk_0;
  input s_axi_lite_aresetn_0;

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

  design_1 design_1_i
       (.M_AXI_0_araddr(M_AXI_0_araddr),
        .M_AXI_0_arburst(M_AXI_0_arburst),
        .M_AXI_0_arcache(M_AXI_0_arcache),
        .M_AXI_0_arlen(M_AXI_0_arlen),
        .M_AXI_0_arprot(M_AXI_0_arprot),
        .M_AXI_0_arready(M_AXI_0_arready),
        .M_AXI_0_arsize(M_AXI_0_arsize),
        .M_AXI_0_arvalid(M_AXI_0_arvalid),
        .M_AXI_0_awaddr(M_AXI_0_awaddr),
        .M_AXI_0_awburst(M_AXI_0_awburst),
        .M_AXI_0_awcache(M_AXI_0_awcache),
        .M_AXI_0_awlen(M_AXI_0_awlen),
        .M_AXI_0_awprot(M_AXI_0_awprot),
        .M_AXI_0_awready(M_AXI_0_awready),
        .M_AXI_0_awsize(M_AXI_0_awsize),
        .M_AXI_0_awvalid(M_AXI_0_awvalid),
        .M_AXI_0_bready(M_AXI_0_bready),
        .M_AXI_0_bresp(M_AXI_0_bresp),
        .M_AXI_0_bvalid(M_AXI_0_bvalid),
        .M_AXI_0_rdata(M_AXI_0_rdata),
        .M_AXI_0_rlast(M_AXI_0_rlast),
        .M_AXI_0_rready(M_AXI_0_rready),
        .M_AXI_0_rresp(M_AXI_0_rresp),
        .M_AXI_0_rvalid(M_AXI_0_rvalid),
        .M_AXI_0_wdata(M_AXI_0_wdata),
        .M_AXI_0_wlast(M_AXI_0_wlast),
        .M_AXI_0_wready(M_AXI_0_wready),
        .M_AXI_0_wstrb(M_AXI_0_wstrb),
        .M_AXI_0_wvalid(M_AXI_0_wvalid),
        .M_AXI_SG_0_araddr(M_AXI_SG_0_araddr),
        .M_AXI_SG_0_arburst(M_AXI_SG_0_arburst),
        .M_AXI_SG_0_arcache(M_AXI_SG_0_arcache),
        .M_AXI_SG_0_arlen(M_AXI_SG_0_arlen),
        .M_AXI_SG_0_arprot(M_AXI_SG_0_arprot),
        .M_AXI_SG_0_arready(M_AXI_SG_0_arready),
        .M_AXI_SG_0_arsize(M_AXI_SG_0_arsize),
        .M_AXI_SG_0_arvalid(M_AXI_SG_0_arvalid),
        .M_AXI_SG_0_awaddr(M_AXI_SG_0_awaddr),
        .M_AXI_SG_0_awburst(M_AXI_SG_0_awburst),
        .M_AXI_SG_0_awcache(M_AXI_SG_0_awcache),
        .M_AXI_SG_0_awlen(M_AXI_SG_0_awlen),
        .M_AXI_SG_0_awprot(M_AXI_SG_0_awprot),
        .M_AXI_SG_0_awready(M_AXI_SG_0_awready),
        .M_AXI_SG_0_awsize(M_AXI_SG_0_awsize),
        .M_AXI_SG_0_awvalid(M_AXI_SG_0_awvalid),
        .M_AXI_SG_0_bready(M_AXI_SG_0_bready),
        .M_AXI_SG_0_bresp(M_AXI_SG_0_bresp),
        .M_AXI_SG_0_bvalid(M_AXI_SG_0_bvalid),
        .M_AXI_SG_0_rdata(M_AXI_SG_0_rdata),
        .M_AXI_SG_0_rlast(M_AXI_SG_0_rlast),
        .M_AXI_SG_0_rready(M_AXI_SG_0_rready),
        .M_AXI_SG_0_rresp(M_AXI_SG_0_rresp),
        .M_AXI_SG_0_rvalid(M_AXI_SG_0_rvalid),
        .M_AXI_SG_0_wdata(M_AXI_SG_0_wdata),
        .M_AXI_SG_0_wlast(M_AXI_SG_0_wlast),
        .M_AXI_SG_0_wready(M_AXI_SG_0_wready),
        .M_AXI_SG_0_wstrb(M_AXI_SG_0_wstrb),
        .M_AXI_SG_0_wvalid(M_AXI_SG_0_wvalid),
        .S_AXI_LITE_0_araddr(S_AXI_LITE_0_araddr),
        .S_AXI_LITE_0_arready(S_AXI_LITE_0_arready),
        .S_AXI_LITE_0_arvalid(S_AXI_LITE_0_arvalid),
        .S_AXI_LITE_0_awaddr(S_AXI_LITE_0_awaddr),
        .S_AXI_LITE_0_awready(S_AXI_LITE_0_awready),
        .S_AXI_LITE_0_awvalid(S_AXI_LITE_0_awvalid),
        .S_AXI_LITE_0_bready(S_AXI_LITE_0_bready),
        .S_AXI_LITE_0_bresp(S_AXI_LITE_0_bresp),
        .S_AXI_LITE_0_bvalid(S_AXI_LITE_0_bvalid),
        .S_AXI_LITE_0_rdata(S_AXI_LITE_0_rdata),
        .S_AXI_LITE_0_rready(S_AXI_LITE_0_rready),
        .S_AXI_LITE_0_rresp(S_AXI_LITE_0_rresp),
        .S_AXI_LITE_0_rvalid(S_AXI_LITE_0_rvalid),
        .S_AXI_LITE_0_wdata(S_AXI_LITE_0_wdata),
        .S_AXI_LITE_0_wready(S_AXI_LITE_0_wready),
        .S_AXI_LITE_0_wvalid(S_AXI_LITE_0_wvalid),
        .cdma_introut_0(cdma_introut_0),
        .m_axi_aclk_0(m_axi_aclk_0),
        .s_axi_lite_aclk_0(s_axi_lite_aclk_0),
        .s_axi_lite_aresetn_0(s_axi_lite_aresetn_0));
endmodule
