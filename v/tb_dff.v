`timescale 1ns/100ps

module tb_dff;		//simple testbench(Exhaustive verification)

	reg tb_d, tb_clk;
	wire tb_q, tb_q_bar;
	
	_dff U0_dff(tb_q, tb_q_bar, tb_clk, tb_d);
	
	always begin
		tb_clk = 0; #5; tb_clk = 1; #5;
	end
	
	initial 
		begin
		tb_d = 0; #3;		//q = x
		tb_d = 1; #10;		//q = x -> q = 1
		tb_d = 0; #5;		//q = 1 -> q = 0
		tb_d = 1; #10;		//q = 0 -> q = 1
		tb_d = 0; #10;		//q = 1 -> q = 0
		$stop;
		end

endmodule 