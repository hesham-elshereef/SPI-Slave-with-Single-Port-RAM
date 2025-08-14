module RAM #( parameter MEM_DEPTH = 256, ADDR_SIZE = 8 ) (
    input [9:0] din,
    input clk, rst_n, rx_valid,
    output reg [7:0] dout,
    output reg tx_valid 
);
    reg [ADDR_SIZE-1:0] addr_write;
    reg [ADDR_SIZE-1:0] addr_read;
    reg [7:0] MEM [MEM_DEPTH-1:0];

    always @(posedge clk) begin
        if (!rst_n) begin
            dout <= 0;
            tx_valid <= 0;
        end else begin
            if(rx_valid) begin
                case (din[9:8])
                    2'b00: begin                        // Write Address
                        addr_write <= din[7:0];
                        tx_valid <= 0;
                    end          
                    2'b01: begin                        // Write Data
                        MEM[addr_write] <= din[7:0]; 
                        tx_valid <= 0;
                    end     
                    2'b10: begin                        // Read Address
                        addr_read <= din[7:0]; 
                        tx_valid <= 0;
                    end          
                2'b11: begin                            // Read data
                        dout <= MEM[addr_read];
                        tx_valid <= 1;
                    end
                endcase
            end
        end
    end
endmodule