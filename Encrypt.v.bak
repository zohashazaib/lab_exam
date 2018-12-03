module Encrypt(
    input [3:0] bit_in,
    output reg [4:0] bit_out
);

reg [3:0] rot;
reg [3:0] cry;
reg par;

    always @(*)
        begin
            rot = {bit_in[1:0], bit_in[3:2]};
        end

    always@(*)
        begin
            case (rot)
                4'b0000:
                    cry = 4'hd;
                4'b0001:
                    cry = 4'h4;
                4'b0010:
                    cry = 4'hf;
                4'b0011:
                    cry = 4'h5;
                4'b0100:
                    cry = 4'hb;
                4'b0101:
                    cry = 4'h0;
                4'b0110:
                    cry = 4'h6;
                4'b0111:
                    cry = 4'ha;
                4'b1000:
                    cry = 4'h7;
                4'b1001:
                    cry = 4'h1;
                4'b1010:
                    cry = 4'he;
                4'b1011:
                    cry = 4'h2;
                4'b1100:
                    cry = 4'h8;
                4'b1101:
                    cry = 4'h3;
                4'b1110:
                    cry = 4'h9;
                4'b1111:
                    cry = 4'hc;
            endcase
        end

    always @(*)
        begin
            par = cry[0] + cry[1] + cry[2] + cry[3]; 
        end

    always @(*)
        begin 
            bit_out = {par, cry};
        end
endmodule