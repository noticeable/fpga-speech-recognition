# TCL File Generated by Component Editor 13.0sp1
# Sat May 14 21:03:08 PDT 2016
# DO NOT MODIFY


# 
# belfft "belfft" v1.0
# Frank Storm 2016.05.14.21:03:08
# 
# 

# 
# request TCL package from ACDS 13.1
# 
package require -exact qsys 13.1


# 
# module belfft
# 
set_module_property DESCRIPTION ""
set_module_property NAME belfft
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP DSP
set_module_property AUTHOR "Frank Storm"
set_module_property DISPLAY_NAME belfft
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property ANALYZE_HDL AUTO
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false


# 
# file sets
# 
add_fileset quartus_synth QUARTUS_SYNTH "" "Quartus Synthesis"
set_fileset_property quartus_synth TOP_LEVEL belfft
set_fileset_property quartus_synth ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file bel_butterfly4.v VERILOG PATH bel_butterfly4.v
add_fileset_file bel_butterfly2.v VERILOG PATH bel_butterfly2.v
add_fileset_file bel_cadd.v VERILOG PATH bel_cadd.v
add_fileset_file bel_caddsub.v VERILOG PATH bel_caddsub.v
add_fileset_file bel_cdiv4.v VERILOG PATH bel_cdiv4.v
add_fileset_file bel_cdiv2.v VERILOG PATH bel_cdiv2.v
add_fileset_file bel_cmac.v VERILOG PATH bel_cmac.v
add_fileset_file bel_cmul.v VERILOG PATH bel_cmul.v
add_fileset_file bel_copy.v VERILOG PATH bel_copy.v
add_fileset_file bel_csub.v VERILOG PATH bel_csub.v
add_fileset_file bel_fft_core.v VERILOG PATH bel_fft_core.v
add_fileset_file bel_fft_avl.v VERILOG PATH bel_fft_avl.v
add_fileset_file bel_fft_avl_sif.v VERILOG PATH bel_fft_avl_sif.v
add_fileset_file bel_fft_avl_mif_32.v VERILOG PATH bel_fft_avl_mif_32.v
add_fileset_file belfft_twiddle_rom0.v VERILOG PATH belfft_twiddle_rom0.v
add_fileset_file belfft_twiddle_roms.v VERILOG PATH belfft_twiddle_roms.v
add_fileset_file belfft.v VERILOG PATH belfft.v TOP_LEVEL_FILE
add_fileset_file bel_fft_def.v VERILOG PATH bel_fft_def.v
add_fileset_file belfft_twiddle_rom0.mif MIF PATH belfft_twiddle_rom0.mif

add_fileset sim_verilog SIM_VERILOG "" "Verilog Simulation"
set_fileset_property sim_verilog ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file bel_butterfly4.v VERILOG PATH bel_butterfly4.v
add_fileset_file bel_butterfly2.v VERILOG PATH bel_butterfly2.v
add_fileset_file bel_cadd.v VERILOG PATH bel_cadd.v
add_fileset_file bel_caddsub.v VERILOG PATH bel_caddsub.v
add_fileset_file bel_cdiv4.v VERILOG PATH bel_cdiv4.v
add_fileset_file bel_cdiv2.v VERILOG PATH bel_cdiv2.v
add_fileset_file bel_cmac.v VERILOG PATH bel_cmac.v
add_fileset_file bel_cmul.v VERILOG PATH bel_cmul.v
add_fileset_file bel_copy.v VERILOG PATH bel_copy.v
add_fileset_file bel_csub.v VERILOG PATH bel_csub.v
add_fileset_file bel_fft_core.v VERILOG PATH bel_fft_core.v
add_fileset_file bel_fft_avl.v VERILOG PATH bel_fft_avl.v
add_fileset_file bel_fft_avl_sif.v VERILOG PATH bel_fft_avl_sif.v
add_fileset_file bel_fft_avl_mif_32.v VERILOG PATH bel_fft_avl_mif_32.v
add_fileset_file belfft_twiddle_rom0.v VERILOG PATH belfft_twiddle_rom0.v
add_fileset_file belfft_twiddle_roms.v VERILOG PATH belfft_twiddle_roms.v
add_fileset_file belfft.v VERILOG PATH belfft.v
add_fileset_file bel_fft_def.v VERILOG PATH bel_fft_def.v
add_fileset_file belfft_twiddle_rom0.mif MIF PATH belfft_twiddle_rom0.mif


# 
# parameters
# 


# 
# display items
# 


# 
# connection point control_slave
# 
add_interface control_slave avalon end
set_interface_property control_slave addressUnits WORDS
set_interface_property control_slave associatedClock clock_sink
set_interface_property control_slave associatedReset reset_sink
set_interface_property control_slave bitsPerSymbol 8
set_interface_property control_slave burstOnBurstBoundariesOnly false
set_interface_property control_slave burstcountUnits WORDS
set_interface_property control_slave explicitAddressSpan 0
set_interface_property control_slave holdTime 0
set_interface_property control_slave linewrapBursts false
set_interface_property control_slave maximumPendingReadTransactions 1
set_interface_property control_slave readLatency 0
set_interface_property control_slave readWaitTime 1
set_interface_property control_slave setupTime 0
set_interface_property control_slave timingUnits Cycles
set_interface_property control_slave writeWaitTime 0
set_interface_property control_slave ENABLED true
set_interface_property control_slave EXPORT_OF ""
set_interface_property control_slave PORT_NAME_MAP ""
set_interface_property control_slave SVD_ADDRESS_GROUP ""

add_interface_port control_slave s_address address Input 10
add_interface_port control_slave s_readdata readdata Output 32
add_interface_port control_slave s_writedata writedata Input 32
add_interface_port control_slave s_read read Input 1
add_interface_port control_slave s_write write Input 1
add_interface_port control_slave s_byteenable byteenable Input 4
add_interface_port control_slave s_waitrequest waitrequest Output 1
add_interface_port control_slave s_readdatavalid readdatavalid Output 1
set_interface_assignment control_slave embeddedsw.configuration.isFlash 0
set_interface_assignment control_slave embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment control_slave embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment control_slave embeddedsw.configuration.isPrintableDevice 0


# 
# connection point clock_sink
# 
add_interface clock_sink clock end
set_interface_property clock_sink clockRate 0
set_interface_property clock_sink ENABLED true
set_interface_property clock_sink EXPORT_OF ""
set_interface_property clock_sink PORT_NAME_MAP ""
set_interface_property clock_sink SVD_ADDRESS_GROUP ""

add_interface_port clock_sink clk_i clk Input 1


# 
# connection point reset_sink
# 
add_interface reset_sink reset end
set_interface_property reset_sink associatedClock clock_sink
set_interface_property reset_sink synchronousEdges DEASSERT
set_interface_property reset_sink ENABLED true
set_interface_property reset_sink EXPORT_OF ""
set_interface_property reset_sink PORT_NAME_MAP ""
set_interface_property reset_sink SVD_ADDRESS_GROUP ""

add_interface_port reset_sink rst_i reset Input 1


# 
# connection point avalon_master
# 
add_interface avalon_master avalon start
set_interface_property avalon_master addressUnits SYMBOLS
set_interface_property avalon_master associatedClock clock_sink
set_interface_property avalon_master associatedReset reset_sink
set_interface_property avalon_master bitsPerSymbol 8
set_interface_property avalon_master burstOnBurstBoundariesOnly false
set_interface_property avalon_master burstcountUnits WORDS
set_interface_property avalon_master doStreamReads false
set_interface_property avalon_master doStreamWrites false
set_interface_property avalon_master holdTime 0
set_interface_property avalon_master linewrapBursts false
set_interface_property avalon_master maximumPendingReadTransactions 0
set_interface_property avalon_master readLatency 0
set_interface_property avalon_master readWaitTime 1
set_interface_property avalon_master setupTime 0
set_interface_property avalon_master timingUnits Cycles
set_interface_property avalon_master writeWaitTime 0
set_interface_property avalon_master ENABLED true
set_interface_property avalon_master EXPORT_OF ""
set_interface_property avalon_master PORT_NAME_MAP ""
set_interface_property avalon_master SVD_ADDRESS_GROUP ""

add_interface_port avalon_master m_address address Output 32
add_interface_port avalon_master m_readdata readdata Input 32
add_interface_port avalon_master m_read read Output 1
add_interface_port avalon_master m_write write Output 1
add_interface_port avalon_master m_waitrequest waitrequest Input 1
add_interface_port avalon_master m_readdatavalid readdatavalid Input 1
add_interface_port avalon_master m_writedata writedata Output 32


# 
# connection point interrupt_sender
# 
add_interface interrupt_sender interrupt end
set_interface_property interrupt_sender associatedAddressablePoint control_slave
set_interface_property interrupt_sender associatedClock clock_sink
set_interface_property interrupt_sender associatedReset reset_sink
set_interface_property interrupt_sender ENABLED true
set_interface_property interrupt_sender EXPORT_OF ""
set_interface_property interrupt_sender PORT_NAME_MAP ""
set_interface_property interrupt_sender SVD_ADDRESS_GROUP ""

add_interface_port interrupt_sender int_o irq Output 1

