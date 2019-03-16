module alu32(res, carry_out_add, carry_out_sub, a, b, s0, s1, s2, carry_in);
	input [31:0] a, b;
	input s0, s1, s2;
	input carry_in;
	wire [31:0] xor_b;
	output [31:0] res;
	output carry_out_add, carry_out_sub;
	wire [31:0] and32w, or32w, xor32w, nor32w, add32w, sub32w, left32w, right32w; 
	and_opr ao32(and32w, a, b);
	or_opr oo32(or32w, a, b);
	xor_opr xo32(xor32w, a, b);
	nor_opr no32(nor32w, a, b);
	xor_b_opr xbo(xor_b, b, s0); // yuksek oncelikli bit : s0
	add_opr ado32(add32w, carry_out_add, a, b, s0); // yuksek oncelikli biti vermem lazim. s0 yuksek oncelikli bit
	add_opr suo32(sub32w, carry_out_sub, a, xor_b, s0); 
	arthm_right_opr aro32(right32w, a, b);
	lgcl_left_opr llo32(left32w, a, b);
	
	mux8_opr r0(res[0], and32w[0], or32w[0], add32w[0], xor32w[0], sub32w[0], right32w[0], left32w[0], nor32w[0], s0, s1, s2);
	mux8_opr r1(res[1], and32w[1], or32w[1], add32w[1], xor32w[1], sub32w[1], right32w[1], left32w[1], nor32w[1], s0, s1, s2);
	mux8_opr r2(res[2], and32w[2], or32w[2], add32w[2], xor32w[2], sub32w[2], right32w[2], left32w[2], nor32w[2], s0, s1, s2);
	mux8_opr r3(res[3], and32w[3], or32w[3], add32w[3], xor32w[3], sub32w[3], right32w[3], left32w[3], nor32w[3], s0, s1, s2);
	mux8_opr r4(res[4], and32w[4], or32w[4], add32w[4], xor32w[4], sub32w[4], right32w[4], left32w[4], nor32w[4], s0, s1, s2);
	mux8_opr r5(res[5], and32w[5], or32w[5], add32w[5], xor32w[5], sub32w[5], right32w[5], left32w[5], nor32w[5], s0, s1, s2);
	mux8_opr r6(res[6], and32w[6], or32w[6], add32w[6], xor32w[6], sub32w[6], right32w[6], left32w[6], nor32w[6], s0, s1, s2);
	mux8_opr r7(res[7], and32w[7], or32w[7], add32w[7], xor32w[7], sub32w[7], right32w[7], left32w[7], nor32w[7], s0, s1, s2);
	mux8_opr r8(res[8], and32w[8], or32w[8], add32w[8], xor32w[8], sub32w[8], right32w[8], left32w[8], nor32w[8], s0, s1, s2);
	mux8_opr r9(res[9], and32w[9], or32w[9], add32w[9], xor32w[9], sub32w[9], right32w[9], left32w[9], nor32w[9], s0, s1, s2);
	mux8_opr r10(res[10], and32w[10], or32w[10], add32w[10], xor32w[10], sub32w[10], right32w[10],  left32w[10], nor32w[10], s0, s1, s2);
	mux8_opr r11(res[11], and32w[11], or32w[11], add32w[11], xor32w[11], sub32w[11], right32w[11],  left32w[11], nor32w[11], s0, s1, s2);
	mux8_opr r12(res[12], and32w[12], or32w[12], add32w[12], xor32w[12], sub32w[12], right32w[12],  left32w[12], nor32w[12], s0, s1, s2);
	mux8_opr r13(res[13], and32w[13], or32w[13], add32w[13], xor32w[13], sub32w[13], right32w[13],  left32w[13], nor32w[13], s0, s1, s2);
	mux8_opr r14(res[14], and32w[14], or32w[14], add32w[14], xor32w[14], sub32w[14], right32w[14],  left32w[14], nor32w[14], s0, s1, s2);
	mux8_opr r15(res[15], and32w[15], or32w[15], add32w[15], xor32w[15], sub32w[15], right32w[15],  left32w[15], nor32w[15], s0, s1, s2);
	mux8_opr r16(res[16], and32w[16], or32w[16], add32w[16], xor32w[16], sub32w[16], right32w[16],  left32w[16], nor32w[16], s0, s1, s2);
	mux8_opr r17(res[17], and32w[17], or32w[17], add32w[17], xor32w[17], sub32w[17], right32w[17],  left32w[17], nor32w[17], s0, s1, s2);
	mux8_opr r18(res[18], and32w[18], or32w[18], add32w[18], xor32w[18], sub32w[18], right32w[18],  left32w[18], nor32w[18], s0, s1, s2);
	mux8_opr r19(res[19], and32w[19], or32w[19], add32w[19], xor32w[19], sub32w[19], right32w[19],  left32w[19], nor32w[19], s0, s1, s2);
	mux8_opr r20(res[20], and32w[20], or32w[20], add32w[20], xor32w[20], sub32w[20], right32w[20],  left32w[20], nor32w[20], s0, s1, s2);
	mux8_opr r21(res[21], and32w[21], or32w[21], add32w[21], xor32w[21], sub32w[21], right32w[21],  left32w[21], nor32w[21], s0, s1, s2);
	mux8_opr r22(res[22], and32w[22], or32w[22], add32w[22], xor32w[22], sub32w[22], right32w[22],  left32w[22], nor32w[22], s0, s1, s2);
	mux8_opr r23(res[23], and32w[23], or32w[23], add32w[23], xor32w[23], sub32w[23], right32w[23],  left32w[23], nor32w[23], s0, s1, s2);
	mux8_opr r24(res[24], and32w[24], or32w[24], add32w[24], xor32w[24], sub32w[24], right32w[24],  left32w[24], nor32w[24], s0, s1, s2);
	mux8_opr r25(res[25], and32w[25], or32w[25], add32w[25], xor32w[25], sub32w[25], right32w[25],  left32w[25], nor32w[25], s0, s1, s2);
	mux8_opr r26(res[26], and32w[26], or32w[26], add32w[26], xor32w[26], sub32w[26], right32w[26],  left32w[26], nor32w[26], s0, s1, s2);
	mux8_opr r27(res[27], and32w[27], or32w[27], add32w[27], xor32w[27], sub32w[27], right32w[27],  left32w[27], nor32w[27], s0, s1, s2);
	mux8_opr r28(res[28], and32w[28], or32w[28], add32w[28], xor32w[28], sub32w[28], right32w[28],  left32w[28], nor32w[28], s0, s1, s2);
	mux8_opr r29(res[29], and32w[29], or32w[29], add32w[29], xor32w[29], sub32w[29], right32w[29],  left32w[29], nor32w[29], s0, s1, s2);
	mux8_opr r30(res[30], and32w[30], or32w[30], add32w[30], xor32w[30], sub32w[30], right32w[30],  left32w[30], nor32w[30], s0, s1, s2);
	mux8_opr r31(res[31], and32w[31], or32w[31], add32w[31], xor32w[31], sub32w[31], right32w[31],  left32w[31], nor32w[31], s0, s1, s2);	

endmodule