module xor_opr(res, a, b);
input [31:0] a, b;
output [31:0] res;

xor XO0(res[0], a[0], b[0]),
	 XO1(res[1], a[1], b[1]),
	 XO2(res[2], a[2], b[2]),
	 XO3(res[3], a[3], b[3]),
	 XO4(res[4], a[4], b[4]),
	 XO5(res[5], a[5], b[5]),
	 XO6(res[6], a[6], b[6]),
	 XO7(res[7], a[7], b[7]),
	 XO8(res[8], a[8], b[8]),
	 XO9(res[9], a[9], b[9]),
	 XO10(res[10], a[10], b[10]),
	 XO11(res[11], a[11], b[11]),
	 XO12(res[12], a[12], b[12]),
	 XO13(res[13], a[13], b[13]),
	 XO14(res[14], a[14], b[14]),
	 XO15(res[15], a[15], b[15]),
	 XO16(res[16], a[16], b[16]),
	 XO17(res[17], a[17], b[17]),
	 XO18(res[18], a[18], b[18]),
	 XO19(res[19], a[19], b[19]),
	 XO20(res[20], a[20], b[20]),
	 XO21(res[21], a[21], b[21]),
	 XO22(res[22], a[22], b[22]),
	 XO23(res[23], a[23], b[23]),
	 XO24(res[24], a[24], b[24]),
	 XO25(res[25], a[25], b[25]),
	 XO26(res[26], a[26], b[26]),
	 XO27(res[27], a[27], b[27]),
	 XO28(res[28], a[28], b[28]),
	 XO29(res[29], a[29], b[29]),
	 XO30(res[30], a[30], b[30]),
	 XO31(res[31], a[31], b[31]);

endmodule