`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/18/2025 07:43:55 PM
// Design Name: sim:/top/clk
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module top(

    );
    
    reg clk;

   design_1_wrapper DUT
   (.M_AXI_0_araddr(),
    .M_AXI_0_arburst(),
    .M_AXI_0_arcache(),
    .M_AXI_0_arlen(),
    .M_AXI_0_arprot(),
    .M_AXI_0_arready(),
    .M_AXI_0_arsize(),
    .M_AXI_0_arvalid(),
    .M_AXI_0_awaddr(),
    .M_AXI_0_awburst(),
    .M_AXI_0_awcache(),
    .M_AXI_0_awlen(),
    .M_AXI_0_awprot(),
    .M_AXI_0_awready(),
    .M_AXI_0_awsize(),
    .M_AXI_0_awvalid(),
    .M_AXI_0_bready(),
    .M_AXI_0_bresp(),
    .M_AXI_0_bvalid(),
    .M_AXI_0_rdata(),
    .M_AXI_0_rlast(),
    .M_AXI_0_rready(),
    .M_AXI_0_rresp(),
    .M_AXI_0_rvalid(),
    .M_AXI_0_wdata(),
    .M_AXI_0_wlast(),
    .M_AXI_0_wready(),
    .M_AXI_0_wstrb(),
    .M_AXI_0_wvalid(),
    .M_AXI_SG_0_araddr(),
    .M_AXI_SG_0_arburst(),
    .M_AXI_SG_0_arcache(),
    .M_AXI_SG_0_arlen(),
    .M_AXI_SG_0_arprot(),
    .M_AXI_SG_0_arready(),
    .M_AXI_SG_0_arsize(),
    .M_AXI_SG_0_arvalid(),
    .M_AXI_SG_0_awaddr(),
    .M_AXI_SG_0_awburst(),
    .M_AXI_SG_0_awcache(),
    .M_AXI_SG_0_awlen(),
    .M_AXI_SG_0_awprot(),
    .M_AXI_SG_0_awready(),
    .M_AXI_SG_0_awsize(),
    .M_AXI_SG_0_awvalid(),
    .M_AXI_SG_0_bready(),
    .M_AXI_SG_0_bresp(),
    .M_AXI_SG_0_bvalid(),
    .M_AXI_SG_0_rdata(),
    .M_AXI_SG_0_rlast(),
    .M_AXI_SG_0_rready(),
    .M_AXI_SG_0_rresp(),
    .M_AXI_SG_0_rvalid(),
    .M_AXI_SG_0_wdata(),
    .M_AXI_SG_0_wlast(),
    .M_AXI_SG_0_wready(),
    .M_AXI_SG_0_wstrb(),
    .M_AXI_SG_0_wvalid(),
    .S_AXI_LITE_0_araddr(),
    .S_AXI_LITE_0_arready(),
    .S_AXI_LITE_0_arvalid(),
    .S_AXI_LITE_0_awaddr(),
    .S_AXI_LITE_0_awready(),
    .S_AXI_LITE_0_awvalid(),
    .S_AXI_LITE_0_bready(),
    .S_AXI_LITE_0_bresp(),
    .S_AXI_LITE_0_bvalid(),
    .S_AXI_LITE_0_rdata(),
    .S_AXI_LITE_0_rready(),
    .S_AXI_LITE_0_rresp(),
    .S_AXI_LITE_0_rvalid(),
    .S_AXI_LITE_0_wdata(),
    .S_AXI_LITE_0_wready(),
    .S_AXI_LITE_0_wvalid(),
    .cdma_introut_0(),
    .m_axi_aclk_0(clk),
    .s_axi_lite_aclk_0(clk),
    .s_axi_lite_aresetn_0());
    
    
    initial begin
       clk = 0;
       forever
          #5 clk = ~clk; 
    end
    
    initial begin
       #1000;
       $finish;
    end
endmodule
