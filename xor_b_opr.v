module xor_b_opr(res, b, s1);
    input [31:0] b;
	 input s1;
    output [31:0] res;
	 
	 xor x0(res[0], s1, b[0]),
		  x1(res[1], s1, b[1]),
		  x2(res[2], s1, b[2]),
		  x3(res[3], s1, b[3]),
		  x4(res[4], s1, b[4]),
		  x5(res[5], s1, b[5]),
		  x6(res[6], s1, b[6]),
		  x7(res[7], s1, b[7]),
		  x8(res[8], s1, b[8]),
		  x9(res[9], s1, b[9]),
		  x10(res[10], s1, b[10]),
		  x11(res[11], s1, b[11]),
		  x12(res[12], s1, b[12]),
		  x13(res[13], s1, b[13]),
		  x14(res[14], s1, b[14]),
		  x15(res[15], s1, b[15]),
		  x16(res[16], s1, b[16]),
		  x17(res[17], s1, b[17]),
		  x18(res[18], s1, b[18]),
		  x19(res[19], s1, b[19]),
		  x20(res[20], s1, b[20]),
		  x21(res[21], s1, b[21]),
		  x22(res[22], s1, b[22]),
		  x23(res[23], s1, b[23]),
		  x24(res[24], s1, b[24]),
		  x25(res[25], s1, b[25]),
		  x26(res[26], s1, b[26]),
		  x27(res[27], s1, b[27]),
		  x28(res[28], s1, b[28]),
		  x29(res[29], s1, b[29]),
		  x30(res[30], s1, b[30]),
		  x31(res[31], s1, b[31]);
	
	
endmodule