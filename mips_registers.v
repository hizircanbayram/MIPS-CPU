module mips_registers( read_data_1, read_data_2, write_data, read_reg_1, read_reg_2, write_reg, signal_reg_write, clk );

	output reg [31:0] read_data_1, read_data_2;
	input [31:0] write_data;
	input [4:0] read_reg_1, read_reg_2, write_reg;
	input signal_reg_write, clk;
	
	reg [31:0] registers [31:0];
	
	
always @(posedge clk) 
begin
		$readmemb("C:/altera/13.1/hcb_projects/RMIPS2/simulation/modelsim/registers.mem", registers);
		read_data_1 <= registers[read_reg_1]; 
		read_data_2 <= registers[read_reg_2]; 
		if ((signal_reg_write == 1) &&  ~((write_reg[4] == 0) && (write_reg[3] == 0) && (write_reg[2] == 0) && (write_reg[1] == 0) && (write_reg[0] == 0)))
		begin
			registers[write_reg] = write_data; 
			$writememb("C:/altera/13.1/hcb_projects/RMIPS2/simulation/modelsim/registers.mem", registers); 
		end
end

endmodule