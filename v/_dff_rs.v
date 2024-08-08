module _dff_rs(q, clk, set_n, reset_n, d);	//set/resetable D Flip-Flop
	input clk, set_n, reset_n, d;
	output q;
	
	wire w_d1, w_d2;
	
	_or2 U0_or2(w_d1, d, ~set_n);		//if set_n is 0, output is 1
	_and2 U1_and2(w_d2, w_d1, reset_n);		//if reset is 0, output is 0
	_dff U2_dff(q, w0, clk, w_d2);		//D Flip-Flo
	

endmodule
