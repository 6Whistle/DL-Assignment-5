module _dff_rs_async(q, clk, set_n, reset_n, d);		//Asyncronous D Flip-Flop
	input clk, set_n, reset_n, d;
	output q;
	reg q;
	
	always @ (posedge clk or negedge set_n or negedge reset_n)	//active Async
	begin
		if(reset_n == 0)		q <= 1'b0;		//reset active low
		else if(set_n == 0)	q <= 1'b1;		//set active low
		else						q <= d;			//D Flip-Flop
	end
endmodule
