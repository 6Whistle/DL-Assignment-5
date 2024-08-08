`timescale 1ns/100ps

module tb_dff_rs;		//simple testbench(Directed verification)

	reg tb_d, tb_clk, tb_set, tb_reset;
	wire tb_q;
	
	_dff_rs U0_dff_rs(tb_q, tb_clk,tb_set, tb_reset, tb_d);
	
	always begin
		tb_clk = 0; #5; tb_clk = 1; #5;
	end
	
	initial 
		begin
		tb_d = 0; tb_reset = 1; tb_set = 0; #10;		//q = x->1
		tb_d = 1; tb_reset = 0; tb_set = 1; #10;		//q = 1->0
		tb_d = 1; tb_reset = 1; #10;						//q = 0->1
		tb_d = 0; tb_reset = 1;	tb_set = 0; #10;		//q = 1
		tb_d = 0; tb_reset = 0; #10;						//q = 1->0
		$stop;
		end

endmodule 