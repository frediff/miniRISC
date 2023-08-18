


module RISC_COMPUTER(input CLK, input RST, input HLT, input [11:0] DBG_ADDR, output [31:0] DATA, output [31:0] DBG, output [31:0] DBG_PC);
                      // CLOCK   // RESET     //HALT  // ADDRESS GIVEN BY USER        // OUTPUT FOR USER  
    
    
    wire WEA;               // WRITE ENABLE TO PORT-A OF RAM
    wire [11:0] ADDRA;      // ADDRESS TO PORT-A OF RAM
    wire [31:0] DOUTA;      // DATA OUT OF PORT-A OF RAM
    wire WEB;               // WRITE ENABLE TO PORT-B OF RAM
    wire [31:0] DINB;       // DATA OUT OF PORT-B OF RAM
    wire [11:0] ADDRB;      // ADDRESS TP PORT-B OF RAM GIVEN BY PROCESSOR
    wire [11:0] ADDRB_M;    // ADDRESS TO PORT-B OF RAM
    wire [31:0] DOUTB;      // DATA OUT OF PORT-B OF RAM
    
    
    MUX232 PERIPHERAL_OUTPUT(.SEL(HLT), .ZERO(32'b0), .ONE(DOUTB), .OUT(DATA));
    MUX212 PERIPHERAL_OUTPUT_ADDRESS (.SEL(HLT), .ZERO(ADDRB), .ONE(DBG_ADDR), .OUT(ADDRB_M));
    
	MEM MEMORY_PC (
    .clk(CLK),
    .wea(WEA),
    .dina(32'b0),
    .addra(ADDRA),
    .douta(DOUTA),
    .web(WEB),
    .dinb(DINB),
    .addrb(ADDRB_M),
    .doutb(DOUTB)
    );
	 
	PROCESSOR GROUP_10_KGP_RISC (
    .CLK(CLK),
    .HLT(HLT),
    .RST(RST),
    .IR(DOUTA),
    .DOUTB(DOUTB),
    .DINB(DINB),
    .WA(WEA),
    .WB(WEB),
    .ADDRA(ADDRA),
    .ADDRB(ADDRB)
	 ,.DBG(DBG)
	 ,.DBG_PC(DBG_PC)
    );

	 
endmodule
