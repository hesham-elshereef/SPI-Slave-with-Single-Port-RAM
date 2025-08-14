module SPI_RAM (
    input MOSI, clk, rst_n, SS_n,
    output MISO
);
    parameter IDLE = 0, CHK_CMD = 1, WRITE = 2, READ_ADD = 3, READ_DATA = 4 ;
    parameter MEM_DEPTH = 256, ADDR_SIZE = 8 ;

    wire [9:0] rx_data;
    wire rx_valid;
    wire [7:0] tx_data;
    wire tx_valid;

    RAM #(.MEM_DEPTH(MEM_DEPTH), .ADDR_SIZE(ADDR_SIZE)) ram1 (.din(rx_data), 
        .clk(clk), .rst_n(rst_n), .rx_valid(rx_valid), 
        .dout(tx_data), .tx_valid(tx_valid));

    SPI_Slave #(.IDLE(IDLE), .CHK_CMD(CHK_CMD), .WRITE(WRITE), .READ_ADD(READ_ADD), 
        .READ_DATA(READ_DATA)) spi1  (.clk(clk), .rst_n(rst_n), .MOSI(MOSI), .SS_n(SS_n), 
        .MISO(MISO), .rx_data(rx_data), .rx_valid(rx_valid), .tx_data(tx_data), .tx_valid(tx_valid));
                    
endmodule