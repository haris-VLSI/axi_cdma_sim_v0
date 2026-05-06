#kill %%
#kill %%
#kill %%

transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/axi_datamover_v5_1_37
vlib riviera/axi_sg_v4_1_21
vlib riviera/axi_cdma_v4_1_35
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap axi_datamover_v5_1_37 riviera/axi_datamover_v5_1_37
vmap axi_sg_v4_1_21 riviera/axi_sg_v4_1_21
vmap axi_cdma_v4_1_35 riviera/axi_cdma_v4_1_35
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -incr "+incdir+../../../../../opt/xilinx/2025.1/data/rsb/busdef" -l xpm -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_cdma_v4_1_35 -l xil_defaultlib \
"srcs/rtl/xpm/xpm_cdc.sv" \
"srcs/rtl/xpm/xpm_fifo.sv" \
"srcs/rtl/xpm/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"srcs/rtl/xpm/xpm_VCOMP.vhd" \

vcom -work axi_datamover_v5_1_37 -93  -incr \
"srcs/sources_1/bd/design_1/ipshared/d44a/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_21 -93  -incr \
"srcs/sources_1/bd/design_1/ipshared/b193/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_cdma_v4_1_35 -93  -incr \
"srcs/sources_1/bd/design_1/ipshared/ca70/hdl/axi_cdma_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"srcs/sources_1/bd/design_1/ip/design_1_axi_cdma_0_0/sim/design_1_axi_cdma_0_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../../opt/xilinx/2025.1/data/rsb/busdef" -l xpm -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_cdma_v4_1_35 -l xil_defaultlib \
"srcs/sources_1/bd/design_1/sim/design_1.v" \
"srcs/sources_1/bd/design_1/hdl/design_1_wrapper.v" \


vlog -work xil_defaultlib \
"glbl.v"


vlog -work xil_defaultlib -uvmver 1.2 -err VCP7803 W1 -err VCP2980 W1  -l xpm -l lib_pkg_v1_0_2 -l lib_srl_fifo_v1_0_2 -l fifo_generator_v13_2_8 -l lib_fifo_v1_0_17 -l lib_cdc_v1_0_2 -l axi_datamover_v5_1_30 -l axi_sg_v4_1_16 -l axi_cdma_v4_1_28 -l xil_defaultlib "../CDMA_TB/top/cdma_tb_top.sv"
#> compile.log 2>&1

#source simulate.do &
