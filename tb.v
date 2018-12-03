module Encrpyt_tb
();


reg [3:0] bit_in;
wire [4:0] bit_out;

initial
    bit_in = 4'b0000;
	
	always @(*)
    begin
        bit_in = bit_in + 1;
    end
	
	Encrypt enp
	(
		.bit_in(bit_in),
    .bit_out(bit_out)
    
	);
	
	endmodule