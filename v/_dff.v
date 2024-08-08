module _dff(q, q_bar, clk, d);		//D flip-flop
	input clk, d;
	output q, q_bar;
	wire clk_bar, w_q;
	
	_inv U0_inv(clk_bar, clk);			//make clk'
	_dlatch U1_dlatch(w_q, w0, clk_bar, d);		//first D Latch
	_dlatch U2_dlatch(q, q_bar, clk, w_q);			//second D Latch
	
endmodule

	