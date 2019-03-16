module nor_opr(res, a, b);
input [31:0] a, b;
output [31:0] res;

nor NO0(res[0], a[0], b[0]),
	 NO1(res[1], a[1], b[1]),
	 NO2(res[2], a[2], b[2]),
	 NO3(res[3], a[3], b[3]),
	 NO4(res[4], a[4], b[4]),
	 NO5(res[5], a[5], b[5]),
	 NO6(res[6], a[6], b[6]),
	 NO7(res[7], a[7], b[7]),
	 NO8(res[8], a[8], b[8]),
	 NO9(res[9], a[9], b[9]),
	 NO10(res[10], a[10], b[10]),
	 NO11(res[11], a[11], b[11]),
	 NO12(res[12], a[12], b[12]),
	 NO13(res[13], a[13], b[13]),
	 NO14(res[14], a[14], b[14]),
	 NO15(res[15], a[15], b[15]),
	 NO16(res[16], a[16], b[16]),
	 NO17(res[17], a[17], b[17]),
	 NO18(res[18], a[18], b[18]),
	 NO19(res[19], a[19], b[19]),
	 NO20(res[20], a[20], b[20]),
	 NO21(res[21], a[21], b[21]),
	 NO22(res[22], a[22], b[22]),
	 NO23(res[23], a[23], b[23]),
	 NO24(res[24], a[24], b[24]),
	 NO25(res[25], a[25], b[25]),
	 NO26(res[26], a[26], b[26]),
	 NO27(res[27], a[27], b[27]),
	 NO28(res[28], a[28], b[28]),
	 NO29(res[29], a[29], b[29]),
	 NO30(res[30], a[30], b[30]),
	 NO31(res[31], a[31], b[31]);

endmodule