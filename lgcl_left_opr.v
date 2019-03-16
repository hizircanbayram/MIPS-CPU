module lgcl_left_opr(res, a, b);
    input [31:0] a, b; 
    output [31:0] res;
	 
    wire [31:0] w_layer1, w_layer2, w_layer3, w_layer4;
	 wire i0 = 0; 
	

/* LAYER I */
mux2_opr mm1(w_layer1[0], a[0], i0, b[0]); // en dusuk oncelikli bit : s2
mux2_opr mm2(w_layer1[1], a[1], a[0], b[0]);
mux2_opr mm3(w_layer1[2], a[2], a[1], b[0]);
mux2_opr mm4(w_layer1[3], a[3], a[2], b[0]);
mux2_opr mm5(w_layer1[4], a[4], a[3], b[0]); 
mux2_opr mm6(w_layer1[5], a[5], a[4], b[0]);
mux2_opr mm7(w_layer1[6], a[6], a[5], b[0]);
mux2_opr mm8(w_layer1[7], a[7], a[6], b[0]);
mux2_opr mm9(w_layer1[8], a[8], a[7], b[0]); 
mux2_opr mm10(w_layer1[9], a[9], a[8], b[0]);
mux2_opr mm11(w_layer1[10], a[10], a[9], b[0]);
mux2_opr mm12(w_layer1[11], a[11], a[10], b[0]);
mux2_opr mm13(w_layer1[12], a[12], a[11], b[0]); 
mux2_opr mm14(w_layer1[13], a[13], a[12], b[0]);
mux2_opr mm15(w_layer1[14], a[14], a[13], b[0]);
mux2_opr mm16(w_layer1[15], a[15], a[14], b[0]);
mux2_opr mm17(w_layer1[16], a[16], a[15], b[0]); 
mux2_opr mm18(w_layer1[17], a[17], a[16], b[0]);
mux2_opr mm19(w_layer1[18], a[18], a[17], b[0]);
mux2_opr mm20(w_layer1[19], a[19], a[18], b[0]);
mux2_opr mm21(w_layer1[20], a[20], a[19], b[0]); 
mux2_opr mm22(w_layer1[21], a[21], a[20], b[0]);
mux2_opr mm23(w_layer1[22], a[22], a[21], b[0]);
mux2_opr mm24(w_layer1[23], a[23], a[22], b[0]);
mux2_opr mm25(w_layer1[24], a[24], a[23], b[0]);
mux2_opr mm26(w_layer1[25], a[25], a[24], b[0]);
mux2_opr mm27(w_layer1[26], a[26], a[25], b[0]);
mux2_opr mm28(w_layer1[27], a[27], a[26], b[0]);
mux2_opr mm29(w_layer1[28], a[28], a[27], b[0]); 
mux2_opr mm30(w_layer1[29], a[29], a[28], b[0]);
mux2_opr mm31(w_layer1[30], a[30], a[29], b[0]);
mux2_opr mm32(w_layer1[31], a[31], a[30], b[0]); 


/* LAYER II */
mux2_opr mm33(w_layer2[0], w_layer1[0], i0, b[1]); // en dusuk oncelikli bit : s2
mux2_opr mm34(w_layer2[1], w_layer1[1], i0, b[1]);
mux2_opr mm35(w_layer2[2], w_layer1[2], w_layer1[0], b[1]);
mux2_opr mm36(w_layer2[3], w_layer1[3], w_layer1[1], b[1]);
mux2_opr mm37(w_layer2[4], w_layer1[4], w_layer1[2], b[1]); 
mux2_opr mm38(w_layer2[5], w_layer1[5], w_layer1[3], b[1]);
mux2_opr mm39(w_layer2[6], w_layer1[6], w_layer1[4], b[1]);
mux2_opr mm40(w_layer2[7], w_layer1[7], w_layer1[5], b[1]);
mux2_opr mm41(w_layer2[8], w_layer1[8], w_layer1[6], b[1]); 
mux2_opr mm42(w_layer2[9], w_layer1[9], w_layer1[7], b[1]);
mux2_opr mm43(w_layer2[10], w_layer1[10], w_layer1[8], b[1]);
mux2_opr mm44(w_layer2[11], w_layer1[11], w_layer1[9], b[1]);
mux2_opr mm45(w_layer2[12], w_layer1[12], w_layer1[10], b[1]); 
mux2_opr mm46(w_layer2[13], w_layer1[13], w_layer1[11], b[1]);
mux2_opr mm47(w_layer2[14], w_layer1[14], w_layer1[12], b[1]);
mux2_opr mm48(w_layer2[15], w_layer1[15], w_layer1[13], b[1]);
mux2_opr mm49(w_layer2[16], w_layer1[16], w_layer1[14], b[1]); 
mux2_opr mm50(w_layer2[17], w_layer1[17], w_layer1[15], b[1]);
mux2_opr mm51(w_layer2[18], w_layer1[18], w_layer1[16], b[1]);
mux2_opr mm52(w_layer2[19], w_layer1[19], w_layer1[17], b[1]);
mux2_opr mm53(w_layer2[20], w_layer1[20], w_layer1[18], b[1]); 
mux2_opr mm54(w_layer2[21], w_layer1[21], w_layer1[19], b[1]);
mux2_opr mm55(w_layer2[22], w_layer1[22], w_layer1[20], b[1]);
mux2_opr mm56(w_layer2[23], w_layer1[23], w_layer1[21], b[1]);
mux2_opr mm57(w_layer2[24], w_layer1[24], w_layer1[22], b[1]);
mux2_opr mm58(w_layer2[25], w_layer1[25], w_layer1[23], b[1]);
mux2_opr mm59(w_layer2[26], w_layer1[26], w_layer1[24], b[1]);
mux2_opr mm60(w_layer2[27], w_layer1[27], w_layer1[25], b[1]);
mux2_opr mm61(w_layer2[28], w_layer1[28], w_layer1[26], b[1]); 
mux2_opr mm62(w_layer2[29], w_layer1[29], w_layer1[27], b[1]);
mux2_opr mm63(w_layer2[30], w_layer1[30], w_layer1[28], b[1]);
mux2_opr mm64(w_layer2[31], w_layer1[31], w_layer1[29], b[1]); 

  
/* LAYER III */
mux2_opr mm65(w_layer3[0], w_layer2[0], i0, b[2]); // en dusuk oncelikli bit : s2
mux2_opr mm66(w_layer3[1], w_layer2[1], i0, b[2]);
mux2_opr mm67(w_layer3[2], w_layer2[2], i0, b[2]);
mux2_opr mm68(w_layer3[3], w_layer2[3], i0, b[2]);
mux2_opr mm69(w_layer3[4], w_layer2[4], w_layer2[0], b[2]); 
mux2_opr mm70(w_layer3[5], w_layer2[5], w_layer2[1], b[2]);
mux2_opr mm71(w_layer3[6], w_layer2[6], w_layer2[2], b[2]);
mux2_opr mm72(w_layer3[7], w_layer2[7], w_layer2[3], b[2]);
mux2_opr mm73(w_layer3[8], w_layer2[8], w_layer2[4], b[2]); 
mux2_opr mm74(w_layer3[9], w_layer2[9], w_layer2[5], b[2]);
mux2_opr mm75(w_layer3[10], w_layer2[10], w_layer2[6], b[2]);
mux2_opr mm76(w_layer3[11], w_layer2[11], w_layer2[7], b[2]);
mux2_opr mm77(w_layer3[12], w_layer2[12], w_layer2[8], b[2]); 
mux2_opr mm78(w_layer3[13], w_layer2[13], w_layer2[9], b[2]);
mux2_opr mm79(w_layer3[14], w_layer2[14], w_layer2[10], b[2]);
mux2_opr mm80(w_layer3[15], w_layer2[15], w_layer2[11], b[2]);
mux2_opr mm81(w_layer3[16], w_layer2[16], w_layer2[12], b[2]); 
mux2_opr mm82(w_layer3[17], w_layer2[17], w_layer2[13], b[2]);
mux2_opr mm83(w_layer3[18], w_layer2[18], w_layer2[14], b[2]);
mux2_opr mm84(w_layer3[19], w_layer2[19], w_layer2[15], b[2]);
mux2_opr mm85(w_layer3[20], w_layer2[20], w_layer2[16], b[2]); 
mux2_opr mm86(w_layer3[21], w_layer2[21], w_layer2[17], b[2]);
mux2_opr mm87(w_layer3[22], w_layer2[22], w_layer2[18], b[2]);
mux2_opr mm88(w_layer3[23], w_layer2[23], w_layer2[19], b[2]);
mux2_opr mm89(w_layer3[24], w_layer2[24], w_layer2[20], b[2]);
mux2_opr mm90(w_layer3[25], w_layer2[25], w_layer2[21], b[2]);
mux2_opr mm91(w_layer3[26], w_layer2[26], w_layer2[22], b[2]);
mux2_opr mm92(w_layer3[27], w_layer2[27], w_layer2[23], b[2]);
mux2_opr mm93(w_layer3[28], w_layer2[28], w_layer2[24], b[2]); 
mux2_opr mm94(w_layer3[29], w_layer2[29], w_layer2[25], b[2]);
mux2_opr mm95(w_layer3[30], w_layer2[30], w_layer2[26], b[2]);
mux2_opr mm96(w_layer3[31], w_layer2[31], w_layer2[27], b[2]); 


/* LAYER IV */
mux2_opr mm97(w_layer4[0], w_layer3[0], i0, b[3]); // en dusuk oncelikli bit : s2
mux2_opr mm98(w_layer4[1], w_layer3[1], i0, b[3]);
mux2_opr mm99(w_layer4[2], w_layer3[2], i0, b[3]);
mux2_opr mm100(w_layer4[3], w_layer3[3], i0, b[3]);
mux2_opr mm101(w_layer4[4], w_layer3[4], i0, b[3]); 
mux2_opr mm102(w_layer4[5], w_layer3[5], i0, b[3]);
mux2_opr mm103(w_layer4[6], w_layer3[6], i0, b[3]);
mux2_opr mm104(w_layer4[7], w_layer3[7], i0, b[3]);
mux2_opr mm105(w_layer4[8], w_layer3[8], w_layer3[0], b[3]); 
mux2_opr mm106(w_layer4[9], w_layer3[9], w_layer3[1], b[3]);
mux2_opr mm107(w_layer4[10], w_layer3[10], w_layer3[2], b[3]);
mux2_opr mm108(w_layer4[11], w_layer3[11], w_layer3[3], b[3]);
mux2_opr mm109(w_layer4[12], w_layer3[12], w_layer3[4], b[3]); 
mux2_opr mm110(w_layer4[13], w_layer3[13], w_layer3[5], b[3]);
mux2_opr mm111(w_layer4[14], w_layer3[14], w_layer3[6], b[3]);
mux2_opr mm112(w_layer4[15], w_layer3[15], w_layer3[7], b[3]);
mux2_opr mm113(w_layer4[16], w_layer3[16], w_layer3[8], b[3]); 
mux2_opr mm114(w_layer4[17], w_layer3[17], w_layer3[9], b[3]);
mux2_opr mm115(w_layer4[18], w_layer3[18], w_layer3[10], b[3]);
mux2_opr mm116(w_layer4[19], w_layer3[19], w_layer3[11], b[3]);
mux2_opr mm117(w_layer4[20], w_layer3[20], w_layer3[12], b[3]); 
mux2_opr mm118(w_layer4[21], w_layer3[21], w_layer3[13], b[3]);
mux2_opr mm119(w_layer4[22], w_layer3[22], w_layer3[14], b[3]);
mux2_opr mm120(w_layer4[23], w_layer3[23], w_layer3[15], b[3]);
mux2_opr mm121(w_layer4[24], w_layer3[24], w_layer3[16], b[3]);
mux2_opr mm122(w_layer4[25], w_layer3[25], w_layer3[17], b[3]);
mux2_opr mm123(w_layer4[26], w_layer3[26], w_layer3[18], b[3]);
mux2_opr mm124(w_layer4[27], w_layer3[27], w_layer3[19], b[3]);
mux2_opr mm125(w_layer4[28], w_layer3[28], w_layer3[20], b[3]); 
mux2_opr mm126(w_layer4[29], w_layer3[29], w_layer3[21], b[3]);
mux2_opr mm127(w_layer4[30], w_layer3[30], w_layer3[22], b[3]);
mux2_opr mm128(w_layer4[31], w_layer3[31], w_layer3[23], b[3]); 


/* LAYER V */
mux2_opr mm129(res[0], w_layer4[0], i0, b[4]); // en dusuk oncelikli bit : s2
mux2_opr mm130(res[1], w_layer4[1], i0, b[4]);
mux2_opr mm131(res[2], w_layer4[2], i0, b[4]);
mux2_opr mm132(res[3], w_layer4[3], i0, b[4]);
mux2_opr mm133(res[4], w_layer4[4], i0, b[4]); 
mux2_opr mm134(res[5], w_layer4[5], i0, b[4]);
mux2_opr mm135(res[6], w_layer4[6], i0, b[4]);
mux2_opr mm136(res[7], w_layer4[7], i0, b[4]);
mux2_opr mm137(res[8], w_layer4[8], i0, b[4]); 
mux2_opr mm138(res[9], w_layer4[9], i0, b[4]);
mux2_opr mm139(res[10], w_layer4[10], i0, b[4]);
mux2_opr mm140(res[11], w_layer4[11], i0, b[4]);
mux2_opr mm141(res[12], w_layer4[12], i0, b[4]); 
mux2_opr mm142(res[13], w_layer4[13], i0, b[4]);
mux2_opr mm143(res[14], w_layer4[14], i0, b[4]);
mux2_opr mm144(res[15], w_layer4[15], i0, b[4]);
mux2_opr mm145(res[16], w_layer4[16], w_layer4[0], b[4]); 
mux2_opr mm146(res[17], w_layer4[17], w_layer4[1], b[4]);
mux2_opr mm147(res[18], w_layer4[18], w_layer4[2], b[4]);
mux2_opr mm148(res[19], w_layer4[19], w_layer4[3], b[4]);
mux2_opr mm149(res[20], w_layer4[20], w_layer4[4], b[4]); 
mux2_opr mm150(res[21], w_layer4[21], w_layer4[5], b[4]);
mux2_opr mm151(res[22], w_layer4[22], w_layer4[6], b[4]);
mux2_opr mm152(res[23], w_layer4[23], w_layer4[7], b[4]);
mux2_opr mm153(res[24], w_layer4[24], w_layer4[8], b[4]);
mux2_opr mm154(res[25], w_layer4[25], w_layer4[9], b[4]);
mux2_opr mm155(res[26], w_layer4[26], w_layer4[10], b[4]);
mux2_opr mm156(res[27], w_layer4[27], w_layer4[11], b[4]);
mux2_opr mm157(res[28], w_layer4[28], w_layer4[12], b[4]); 
mux2_opr mm158(res[29], w_layer4[29], w_layer4[13], b[4]);
mux2_opr mm159(res[30], w_layer4[30], w_layer4[14], b[4]);
mux2_opr mm160(res[31], w_layer4[31], w_layer4[15], b[4]); 

// zzzz hatasi : res'e bir sey atmadigimda meydana geldi
  
endmodule