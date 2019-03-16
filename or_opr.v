module or_opr(res, a, b);
input [31:0] a, b;
output [31:0] res;

or  OO0(res[0], a[0], b[0]),
	 OO1(res[1], a[1], b[1]),
	 OO2(res[2], a[2], b[2]),
	 OO3(res[3], a[3], b[3]),
	 OO4(res[4], a[4], b[4]),
	 OO5(res[5], a[5], b[5]),
	 OO6(res[6], a[6], b[6]),
	 OO7(res[7], a[7], b[7]),
	 OO8(res[8], a[8], b[8]),
	 OO9(res[9], a[9], b[9]),
	 OO10(res[10], a[10], b[10]),
	 OO11(res[11], a[11], b[11]),
	 OO12(res[12], a[12], b[12]),
	 OO13(res[13], a[13], b[13]),
	 OO14(res[14], a[14], b[14]),
	 OO15(res[15], a[15], b[15]),
	 OO16(res[16], a[16], b[16]),
	 OO17(res[17], a[17], b[17]),
	 OO18(res[18], a[18], b[18]),
	 OO19(res[19], a[19], b[19]),
	 OO20(res[20], a[20], b[20]),
	 OO21(res[21], a[21], b[21]),
	 OO22(res[22], a[22], b[22]),
	 OO23(res[23], a[23], b[23]),
	 OO24(res[24], a[24], b[24]),
	 OO25(res[25], a[25], b[25]),
	 OO26(res[26], a[26], b[26]),
	 OO27(res[27], a[27], b[27]),
	 OO28(res[28], a[28], b[28]),
	 O029(res[29], a[29], b[29]),
	 OO30(res[30], a[30], b[30]),
	 OO31(res[31], a[31], b[31]);

endmodule