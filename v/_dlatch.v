module _dlatch(q, q_bar, clk, d);		//D Latch
	input clk;
	input d;
	output q, q_bar;
	reg q;
	
	always @ (d, clk) begin		
			if(clk==1) q <= d;		//only works when clk == 1 => q = d
	end
	
	assign q_bar = ~q;		//make Q_bar
	
endmodule
