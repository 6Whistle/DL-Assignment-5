`timescale 1ns/100ps

module tb_dlatch;		//simple testbench(Exhaustive verification)

	reg tb_d, tb_clk;
	wire tb_q, tb_q_bar;
	
	_dlatch U0_dlatch(tb_q, tb_q_bar, tb_clk, tb_d);
	
	initial 
		begin
		
		tb_clk = 0; tb_d = 0; #10;
		
		tb_d = 1; #10;			//q = x, q_bar = x
		tb_clk = 1; #10;		//q = 1, q_bar = 0
		tb_clk = 0; #10;		//q = 1, q_bar = 0
		tb_d = 0; #10;			//q = 1, q_bar = 0
		tb_clk = 1; #10;		//q = 0, q_bar = 1
		tb_clk = 0; #10;		//q = 0
		tb_d = 1; #10;			//q = 0
		end

endmodule 