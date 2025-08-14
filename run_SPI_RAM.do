vlib work
vlog RAM.v SPI_Slave.v SPI_RAM.v SPI_RAM_tb.v
vsim -voptargs=+acc work.SPI_RAM_tb
add wave *
add wave -position insertpoint  \
sim:/SPI_RAM_tb/DUT/rx_data \
sim:/SPI_RAM_tb/DUT/rx_valid \
sim:/SPI_RAM_tb/DUT/tx_data \
sim:/SPI_RAM_tb/DUT/tx_valid
run -all
#quit -sim