create_project project_run_tcl C:\Corse_K_W\Projects\Project_2 -part xc7a35ticpg236-1L -force

## Add source files & XDC files
add_files SPI_RAM.v
add_files RAM.v
add_files SPI_Slave.v
add_files Constraints_basys3_Project_SPI_RAM.xdc

## Elaborate Design (Will open the schematic)
synth_design -rtl -top SPI_RAM > elab.log

## Save Schematic
write_schematic elaborated_schematic.pdf -format pdf -force

## Synthesize Design
launch_runs synth_1 > synth.log

## open gui (Schematic)
wait_on_run synth_1
open_run synth_1

## Save Schematic
write_schematic synthesized_schematic.pdf -format pdf -force

## Generate netlist
write_verilog -force SPI_RAM_netlist.v

## Implementation
launch_runs impl_1 -to_step write_bitstream

## open gui (Schematic & Device view)
wait_on_run impl_1
open_run impl_1

## Open Hardware Manager
open_hw

## load bitstream to FPGA
connect_hw_server

# From the File “RUN.TCL” we change in the first 3 Lines Only.