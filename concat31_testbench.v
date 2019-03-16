`define DELAY 20
module concat31_testbench(); 
    reg inp;
    wire [31:0] result;

	concat31 c(result, inp);

	initial begin
	inp = 1'b1;
	#`DELAY;
	inp = 1'b0;
	#`DELAY;
	end
	 
	 
	initial
	begin
	$monitor("time = %2d, res = %32b", $time, result); //%32b -> a
	end
 
endmodule