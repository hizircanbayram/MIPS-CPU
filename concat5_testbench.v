`define DELAY 20
module concat5_testbench(); 
    reg [4:0] inp;
    wire [31:0] result;

	concat5 c(result, inp);

	initial begin
	inp = 5'b11111;
	#`DELAY;
	inp = 5'b10101;
	#`DELAY;
	end
	 
	 
	initial
	begin
	$monitor("time = %2d, res = %32b", $time, result); //%32b -> a
	end
 
endmodule