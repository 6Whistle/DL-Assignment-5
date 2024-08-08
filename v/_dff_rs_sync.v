module _dff_rs_sync(q, clk, set_n, reset_n, d);		//Syncronous D Flip-Flop
	input clk, set_n, reset_n, d;
	output q;
	reg q;
	
	always @ (posedge clk)		//active Sync
	begin
		if(reset_n == 0)		q <= 1'b0;		//reset active low
		else if(set_n == 0)	q <= 1'b1;		//set active low
		else						q <= d;			//D flip-flop
	end
	
endmodule
