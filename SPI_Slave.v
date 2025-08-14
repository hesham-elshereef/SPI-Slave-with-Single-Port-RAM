module SPI_Slave (
    input clk, rst_n,
    input MOSI, SS_n,
    output reg MISO, 
    input tx_valid,
    input [7:0] tx_data,
    output reg [9:0] rx_data,
    output reg rx_valid
);
    parameter IDLE = 0, CHK_CMD = 1, WRITE = 2, READ_ADD = 3, READ_DATA = 4 ;
    //      (*fsm_encoding = "gray"*)
    //     (*fsm_encoding = "one_hot"*)
          (*fsm_encoding = "sequential"*)
    reg [2:0] cs, ns;
    reg check_read; // check for read address or read data
    reg [3:0] cnt1;
    reg [3:0] cnt2;
    reg [9:0] rx_data_reg;
    
    always @(posedge clk ) begin
        if(!rst_n)  cs <= IDLE;
        else        cs <= ns;
    end
    /////////////////////////////// NEXT STATE LOGIC
    always @(*) begin
        case (cs)
            IDLE:begin
                if(SS_n == 1)    ns = IDLE;
                else             ns = CHK_CMD; 
            end
            CHK_CMD: begin
                if(SS_n == 1 )                                 ns = IDLE;
                else if(SS_n==0 && MOSI==0)                    ns = WRITE;
                else if(SS_n==0 && MOSI==1 && check_read==0)   ns = READ_ADD;
                else if(SS_n==0 && MOSI==1 && check_read==1)   ns = READ_DATA;
            end
            WRITE: begin
                if(SS_n == 1)   ns = IDLE; 
                else            ns = WRITE;
            end
            READ_ADD: begin
                if(SS_n==1)     ns = IDLE;
                else            ns = READ_ADD;
            end
            READ_DATA: begin
                if(SS_n==1)     ns = IDLE;
                else            ns = READ_DATA;
            end
        endcase
    end
    //////////////////////////////// OUTPUT LOGIC
    always @(posedge clk ) begin
        if(!rst_n) begin
            rx_data <= 0;
            rx_valid <= 0;
            cnt1 <= 9;
            cnt2 <= 7;
            check_read <= 0;
            rx_data_reg <= 0;
            MISO <= 0;
        end else begin
            case (cs)
                IDLE: begin
                    rx_valid <= 0;
                    cnt1 <= 9;
                    cnt2 <= 7;
                    rx_data_reg <= 0;
                    MISO <= 0;
                end
                CHK_CMD: begin
                    if      (MOSI == 1 && check_read == 0 && SS_n == 0)     check_read <= 1;
                    else if (MOSI == 1 && check_read == 1 && SS_n == 0)     check_read <= 0;
                end
                WRITE: begin
                        rx_data_reg[cnt1] <=  MOSI;
                        if(cnt1 > 0)begin
                            cnt1 <= cnt1 - 1;
                        end else begin
                            rx_valid <= 1;
                            rx_data <= rx_data_reg;
                        end
                end
                READ_ADD: begin
                        rx_data_reg[cnt1] <=  MOSI;
                        if(cnt1 > 0)begin
                            cnt1 <= cnt1 - 1;
                        end else begin
                            rx_valid <= 1;
                            rx_data <= rx_data_reg;
                        end
                end
                READ_DATA: begin
                        rx_data_reg[cnt1] <=  MOSI;
                        if(cnt1 > 0)begin
                            cnt1 <= cnt1 - 1;
                        end else begin
                            rx_valid <= 1;
                            rx_data <= rx_data_reg;
                        end

                        if ( tx_valid) begin
                            MISO <= tx_data[cnt2];
                            if (cnt2 > 0)    cnt2 <= cnt2 - 1;  
                        end
                end
            endcase
        end
    end
endmodule