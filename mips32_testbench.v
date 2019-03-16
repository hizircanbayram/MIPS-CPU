`define DELAY 20
module mips32_testbench();

reg [31:0] instruction;
wire [31:0] R;

reg clk, clk2;
reg [7:0] index;
reg [31:0] testVectors[0:10];

mips32 mp (instruction, clk, R);



always begin
	#5 clk = ~clk;
end

always begin
	#15 clk2 = ~clk2;
end

initial 
begin
	clk = 1'b0;
	clk2 = 1'b0;	
	$readmemb("C:/altera/13.1/hcb_projects/RMIPS2/simulation/modelsim/inst.txt",testVectors);
	instruction = 32'd0; 
	index = -1;
end


//initial begin
//instruction = 32'b00000000001000101111100001100000; 
//#`DELAY;
//instruction = 32'b00000000011001001111000000100001; 
//#`DELAY;
//instruction = 32'b00000000101001101110100000100100; 
//#`DELAY;
//instruction = 32'b00000000111010001110000000100111; 
//#`DELAY;
//instruction = 32'b00000001001010101101100000100101; 
//#`DELAY;
//instruction = 32'b00000001011011001101000000101011; 
//#`DELAY;
//instruction = 32'b00000001101011101100100010000000; 
//#`DELAY;
//instruction = 32'b00000001111100001100000010000010; 
//#`DELAY;
//instruction = 32'b00000010001100101011100000100010; 
//#`DELAY;
//instruction = 32'b00000010011101001011000000100011; 
//#`DELAY;
//end
 
 
always @(posedge clk2)
begin
instruction<=testVectors[index];
end
 
always @(negedge clk2)
begin
	$display("opcode = %6b, rs = %5b, rt = %5b, rd = %5b, shamt = %5b, funct = %6b, result = %32b", 
	instruction[31:26], instruction[25:21], instruction[20:16], instruction[15:11], instruction[10:6], instruction[5:0], R);
	index = index + 1;
	if (index == 8'd10)
	begin
		$finish;
	end
end	
 
endmodule