module REGISTER_FILE (input [4:0] RSA,
                      input [4:0] RTA,
                      input WR,
                      input CLK,
                      input [31:0] RSW,
                      output [31:0] RSR,
                      output [31:0] RTR);
    
    reg [31:0] R [31:0];
    
    initial begin
        R[0] = 32'b0;
        R[1] = 32'b0;
        R[2] = 32'b0;
        R[3] = 32'b0;
        R[4] = 32'b0;
        R[5] = 32'b0;
        R[6] = 32'b0;
        R[7] = 32'b0;
        R[8] = 32'b0;
        R[9] = 32'b0;
        R[10] = 32'b0;
        R[11] = 32'b0;
        R[12] = 32'b0;
        R[13] = 32'b0;
        R[14] = 32'b0;
        R[15] = 32'b0;
        R[16] = 32'b0;
        R[17] = 32'b0;
        R[18] = 32'b0;
        R[19] = 32'b0;
        R[20] = 32'b0;
        R[21] = 32'b0;
        R[22] = 32'b0;
        R[23] = 32'b0;
        R[24] = 32'b0;
        R[25] = 32'b0;
        R[26] = 32'b0;
        R[27] = 32'b0;
        R[28] = 32'b0;
        R[29] = 32'b0;
        R[30] = 32'b0;
        R[31] = 32'b0;
    end
    
    wire [31:0] WT0;
    wire [31:0] WT1;
    wire [31:0] WT2;
    wire [31:0] WT3; 
    
    MUX832 MT0 (RTA[2:0], R[0], R[1], R[2], R[3], R[4], R[5], R[6], R[7], WT0);
    MUX832 MT1 (RTA[2:0], R[8], R[9], R[10], R[11], R[12], R[13], R[14], R[15], WT1);
    MUX832 MT2 (RTA[2:0], R[16], R[17], R[18], R[19], R[20], R[21], R[22], R[23], WT2);
    MUX832 MT3 (RTA[2:0], R[24], R[25], R[26], R[27], R[28], R[29], R[30], R[31], WT3);
    
    assign RTR = ({32{~RTA[4]}} &  {32{~RTA[3]}} & WT0) |
                 ({32{~RTA[4]}} &  {32{RTA[3]}} & WT1) |
                 ({32{RTA[4]}} &  {32{~RTA[3]}} & WT2) |
                 ({32{RTA[4]}} &  {32{RTA[3]}} & WT3);
    
    wire [31:0] WS0;
    wire [31:0] WS1;
    wire [31:0] WS2;
    wire [31:0] WS3;
    
    MUX832 MS0 (RSA[2:0], R[0], R[1], R[2], R[3], R[4], R[5], R[6], R[7], WS0);
    MUX832 MS1 (RSA[2:0], R[8], R[9], R[10], R[11], R[12], R[13], R[14], R[15], WS1);
    MUX832 MS2 (RSA[2:0], R[16], R[17], R[18], R[19], R[20], R[21], R[22], R[23], WS2);
    MUX832 MS3 (RSA[2:0], R[24], R[25], R[26], R[27], R[28], R[29], R[30], R[31], WS3);
    
    assign RSR = ({32{~RSA[4]}} &  {32{~RSA[3]}} & WS0) |
                 ({32{~RSA[4]}} &  {32{RSA[3]}} & WS1) |
                 ({32{RSA[4]}} &  {32{~RSA[3]}} & WS2) |
                 ({32{RSA[4]}} &  {32{RSA[3]}} & WS3);
                
    always @ (negedge CLK)
        if(WR) R[RSA] = RSW;
                          
endmodule 
