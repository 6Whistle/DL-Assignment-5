module _dff_rs_sync_async(q_sync, q_async, clk, set_n, reset_n, d);		//compare sync and async
	input clk, set_n, reset_n, d;
	output q_sync, q_async;
	
	_dff_rs_sync U0_dff_rs_sync(q_sync, clk, set_n, reset_n, d);		//sync
	_dff_rs_async U1_dff_rs_async(q_async, clk, set_n, reset_n, d);	//async

endmodule
