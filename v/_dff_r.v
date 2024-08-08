module _dff_r(q, clk, reset_n, d);	//resettable D Flip-Flop
	input clk, reset_n, d;
	output q;
	
	wire w_d;
	
	_and2 U0_and2(w_d, d, reset_n);		//if reset_n = 0, output is 0
	_dff U1_dff(q, w0, clk, w_d);		//D flip-flop

endmodule
