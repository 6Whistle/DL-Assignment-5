module _register8(q, clk, d);		//8-bits Register
	input clk;
	input[7:0] d;
	output[7:0] q;
	
	_dff U0_dff(q[0], w0, clk, d[0]);	//1st bit Reg
	_dff U1_dff(q[1], w1, clk, d[1]);	//2nd bit Reg
	_dff U2_dff(q[2], w2, clk, d[2]);	//3rd bit Reg
	_dff U3_dff(q[3], w3, clk, d[3]);	//4th bit Reg
	_dff U4_dff(q[4], w4, clk, d[4]);	//5th bit Reg
	_dff U5_dff(q[5], w5, clk, d[5]);	//6th bit Reg
	_dff U6_dff(q[6], w6, clk, d[6]);	//7th bit Reg
	_dff U7_dff(q[7], w7, clk, d[7]);	//8th bit Reg
	
endmodule
