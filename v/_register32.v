module _register32(q, clk, d);		//32bit Register
	input clk;
	input[31:0] d;
	output[31:0] q;
	
	_register8 U0_resgister8(q[7:0], clk, d[7:0]);		//1~8 bit Reg
	_register8 U1_resgister8(q[15:8], clk, d[15:8]);	//9~16 bit Reg
	_register8 U2_resgister8(q[23:16], clk, d[23:16]);	//17~24 bit Reg
	_register8 U3_resgister8(q[31:24], clk, d[31:24]);	//25~32 bit Reg
	
	
endmodule
