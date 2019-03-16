`define DELAY 20
module control_unit_testbench(); 

reg [5:0] function_code;
wire [2:0] select_bits_ALU;


control_unit cu(select_bits_ALU, function_code);

initial begin
function_code = 6'b100000; 
#`DELAY;
function_code = 6'b100001; 
#`DELAY;
function_code = 6'b100100; 
#`DELAY;
function_code = 6'b100111; 
#`DELAY;
function_code = 6'b100101; 
#`DELAY;
function_code = 6'b101011; 
#`DELAY;
function_code = 6'b000000; 
#`DELAY;
function_code = 6'b000010; 
#`DELAY;
function_code = 6'b100010; 
#`DELAY;
function_code = 6'b100011; 
#`DELAY;
end

 
initial
begin
$monitor("time = %2d, function_code = %6b, select_bits_ALU = %3b", $time, function_code, select_bits_ALU); 
end
	
endmodule