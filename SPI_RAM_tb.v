module  SPI_RAM_tb ();
    reg MOSI, clk, rst_n, SS_n;
    wire MISO;
    SPI_RAM DUT (.MOSI(MOSI), .clk(clk), .rst_n(rst_n),
    .SS_n(SS_n), .MISO(MISO));
    
    initial begin
        clk=0;
        forever #1 clk= ~clk;
    end
    initial begin
        rst_n=0; MOSI=0; SS_n=1;
        repeat (10) @(negedge clk);   
        rst_n=1;    
        repeat (10) @(negedge clk);
        // WRITE
        @ ( negedge clk);       SS_n=0;
        @ ( negedge clk);       MOSI=0;         
        @ ( negedge clk);       MOSI=0;
        @ ( negedge clk);       MOSI=0;   
        //                      address = 0 f0h 
        @ ( negedge clk);       MOSI=1;
        @ ( negedge clk);       MOSI=1;
        @ ( negedge clk);       MOSI=1;
        @ ( negedge clk);       MOSI=1;
        @ ( negedge clk);       MOSI=0;
        @ ( negedge clk);       MOSI=0;
        @ ( negedge clk);       MOSI=0;
        @ ( negedge clk);       MOSI=0;     
        @ ( negedge clk);       SS_n=1;  @( negedge clk); 
        ///////////////
        @ ( negedge clk);       SS_n=0;
        @ ( negedge clk);       MOSI=0;         
        @ ( negedge clk);       MOSI=0;
        @ ( negedge clk);       MOSI=1;      
        //                      data  = 1 8ah  
        @ ( negedge clk);       MOSI=1;
        @ ( negedge clk);       MOSI=0;
        @ ( negedge clk);       MOSI=0;
        @ ( negedge clk);       MOSI=0;
        @ ( negedge clk);       MOSI=1;
        @ ( negedge clk);       MOSI=0;
        @ ( negedge clk);       MOSI=1;
        @ ( negedge clk);       MOSI=0;
        @ ( negedge clk);       SS_n=1;  @( negedge clk); 
        /////////////////
        // READ                
        @ ( negedge clk);       SS_n=0;
        @ ( negedge clk);       MOSI=1;         
        @ ( negedge clk);       MOSI=1;
        @ ( negedge clk);       MOSI=0;   
        //                     address  = 2 f0h 
        @ ( negedge clk);       MOSI=1;
        @ ( negedge clk);       MOSI=1;
        @ ( negedge clk);       MOSI=1;
        @ ( negedge clk);       MOSI=1;
        @ ( negedge clk);       MOSI=0;
        @ ( negedge clk);       MOSI=0;
        @ ( negedge clk);       MOSI=0;
        @ ( negedge clk);       MOSI=0;
        @ ( negedge clk);       SS_n=1;  @( negedge clk); 
        /////////////////
        @ ( negedge clk);       SS_n=0;
        @ ( negedge clk);       MOSI=1;         
        @ ( negedge clk);       MOSI=1;
        @ ( negedge clk);       MOSI=1;  
        //                     dummy data  = 3 88h
        @ ( negedge clk);       MOSI=1;
        @ ( negedge clk);       MOSI=0;
        @ ( negedge clk);       MOSI=0;
        @ ( negedge clk);       MOSI=0;
        @ ( negedge clk);       MOSI=1;
        @ ( negedge clk);       MOSI=0;
        @ ( negedge clk);       MOSI=0;
        @ ( negedge clk);       MOSI=0;
       
        repeat (10) @(negedge clk);
        @ ( negedge clk);       SS_n=1;  @( negedge clk); 
        $stop;
    end
endmodule