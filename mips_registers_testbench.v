`define DELAY 20
module mips_registers_testbench(); 

wire [31:0] read_data_1, read_data_2; 
reg [31:0] write_data;
reg [4:0] read_reg_1, read_reg_2, write_reg;
reg signal_reg_write, clk;
reg [3:0] counter;
mips_registers mm( read_data_1, read_data_2, write_data, read_reg_1, read_reg_2, write_reg, signal_reg_write, clk );

always begin
#10 clk = ~clk;
end

initial begin
clk = 1'b0;
counter = 4'd0;
end

always @(negedge clk) begin
write_data = 32'b11111111000000000011111111111111;
read_reg_1 = 5'b11111;
read_reg_2 = 5'b11110;
write_reg = 5'b11110;
signal_reg_write = 1'b0;
counter = counter + 1;
if (counter == 5)
begin
$finish;
end
end
 
 
initial
begin
$monitor("time = %2d, read_data_1 = %32b, read_data_2 = %32b", $time, read_data_1, read_data_2); 
end
	
endmodule