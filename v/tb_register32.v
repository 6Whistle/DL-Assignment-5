`timescale 1ns/100ps

module tb_register32;		//simple testbench(Directed verification)

	reg[31:0] tb_d;
	reg tb_clk;
	wire[31:0] tb_q;
	
	_register32 U0_register32(tb_q, tb_clk, tb_d);
	
	always begin
		tb_clk = 0; #5; tb_clk = 1; #5;
	end
	
	initial 
		begin
		tb_d = 0; #10;		//q = x->0000_0000
		tb_d = 32'h38af_1297; #10;		//q = 0000_0000 -> 38af_1297
		tb_d = 32'hcd0b_564e; #10;		//q = 38af_1297 -> cd0b_564e
		$stop;
		end

endmodule 