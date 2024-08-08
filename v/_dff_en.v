module _dff_en(q, clk, en, d);		//enable D Flip-Flop
	input clk, en, d;
	output q;
	
	wire w_d;
	
	mx2 U0_mx2(w_d, q, d, en);		//seleted q or d by en
	_dff U1_dff(q, w0, clk, w_d);	//D Flip-Flop

endmodule
