module mips32(instruction, clk, result);

input [31:0] instruction;
output [31:0] result;
input clk;
wire [31:0] rs, rt;
wire [31:0] alu_result;
wire [31:0] alu_inp1, alu_inp2;
wire carry_out_add, carry_out_sub;
wire [2:0] select_bits_ALU;
wire [31:0] cc5, cc31;


mips_registers mr(rs, rt, result, instruction[25:21], instruction[20:16], instruction[15:11], 1'b1, clk); // 1, 0??
control_unit cu(select_bits_ALU, instruction[5:0]);
concat5 c_opr5(cc5, instruction[10:6]);


// ************************************ ALU BIRINCI PARAMETRE ************************************
mux2_opr rs_out_1(alu_inp1[0], rt[0], rs[0], instruction[5]);
mux2_opr rs_out_2(alu_inp1[1], rt[1], rs[1], instruction[5]);
mux2_opr rs_out_3(alu_inp1[2], rt[2], rs[2], instruction[5]);
mux2_opr rs_out_4(alu_inp1[3], rt[3], rs[3], instruction[5]);
mux2_opr rs_out_5(alu_inp1[4], rt[4], rs[4], instruction[5]);
mux2_opr rs_out_6(alu_inp1[5], rt[5], rs[5], instruction[5]);
mux2_opr rs_out_7(alu_inp1[6], rt[6], rs[6], instruction[5]);
mux2_opr rs_out_8(alu_inp1[7], rt[7], rs[7], instruction[5]);
mux2_opr rs_out_9(alu_inp1[8], rt[8], rs[8], instruction[5]);
mux2_opr rs_out_10(alu_inp1[9], rt[9], rs[9], instruction[5]);
mux2_opr rs_out_11(alu_inp1[10], rt[10], rs[10], instruction[5]);
mux2_opr rs_out_12(alu_inp1[11], rt[11], rs[11], instruction[5]);
mux2_opr rs_out_13(alu_inp1[12], rt[12], rs[12], instruction[5]);
mux2_opr rs_out_14(alu_inp1[13], rt[13], rs[13], instruction[5]);
mux2_opr rs_out_15(alu_inp1[14], rt[14], rs[14], instruction[5]);
mux2_opr rs_out_16(alu_inp1[15], rt[15], rs[15], instruction[5]);
mux2_opr rs_out_17(alu_inp1[16], rt[16], rs[16], instruction[5]);
mux2_opr rs_out_18(alu_inp1[17], rt[17], rs[17], instruction[5]);
mux2_opr rs_out_19(alu_inp1[18], rt[18], rs[18], instruction[5]);
mux2_opr rs_out_20(alu_inp1[19], rt[19], rs[19], instruction[5]);
mux2_opr rs_out_21(alu_inp1[20], rt[20], rs[20], instruction[5]);
mux2_opr rs_out_22(alu_inp1[21], rt[21], rs[21], instruction[5]);
mux2_opr rs_out_23(alu_inp1[22], rt[22], rs[22], instruction[5]);
mux2_opr rs_out_24(alu_inp1[23], rt[23], rs[23], instruction[5]);
mux2_opr rs_out_25(alu_inp1[24], rt[24], rs[24], instruction[5]);
mux2_opr rs_out_26(alu_inp1[25], rt[25], rs[25], instruction[5]);
mux2_opr rs_out_27(alu_inp1[26], rt[26], rs[26], instruction[5]);
mux2_opr rs_out_28(alu_inp1[27], rt[27], rs[27], instruction[5]);
mux2_opr rs_out_29(alu_inp1[28], rt[28], rs[28], instruction[5]);
mux2_opr rs_out_30(alu_inp1[29], rt[29], rs[29], instruction[5]);
mux2_opr rs_out_31(alu_inp1[30], rt[30], rs[30], instruction[5]);
mux2_opr rs_out_32(alu_inp1[31], rt[31], rs[31], instruction[5]);


// ************************************ ALU IKINCI PARAMETRE ************************************
mux2_opr rt_out_1(alu_inp2[0], cc5[0], rt[0], instruction[5]);
mux2_opr rt_out_2(alu_inp2[1], cc5[1], rt[1], instruction[5]);
mux2_opr rt_out_3(alu_inp2[2], cc5[2], rt[2], instruction[5]);
mux2_opr rt_out_4(alu_inp2[3], cc5[3], rt[3], instruction[5]);
mux2_opr rt_out_5(alu_inp2[4], cc5[4], rt[4], instruction[5]);
mux2_opr rt_out_6(alu_inp2[5], cc5[5], rt[5], instruction[5]);
mux2_opr rt_out_7(alu_inp2[6], cc5[6], rt[6], instruction[5]);
mux2_opr rt_out_8(alu_inp2[7], cc5[7], rt[7], instruction[5]);
mux2_opr rt_out_9(alu_inp2[8], cc5[8], rt[8], instruction[5]);
mux2_opr rt_out_10(alu_inp2[9], cc5[9], rt[9], instruction[5]);
mux2_opr rt_out_11(alu_inp2[10], cc5[10], rt[10], instruction[5]);
mux2_opr rt_out_12(alu_inp2[11], cc5[11], rt[11], instruction[5]);
mux2_opr rt_out_13(alu_inp2[12], cc5[12], rt[12], instruction[5]);
mux2_opr rt_out_14(alu_inp2[13], cc5[13], rt[13], instruction[5]);
mux2_opr rt_out_15(alu_inp2[14], cc5[14], rt[14], instruction[5]);
mux2_opr rt_out_16(alu_inp2[15], cc5[15], rt[15], instruction[5]);
mux2_opr rt_out_17(alu_inp2[16], cc5[16], rt[16], instruction[5]);
mux2_opr rt_out_18(alu_inp2[17], cc5[17], rt[17], instruction[5]);
mux2_opr rt_out_19(alu_inp2[18], cc5[18], rt[18], instruction[5]);
mux2_opr rt_out_20(alu_inp2[19], cc5[19], rt[19], instruction[5]);
mux2_opr rt_out_21(alu_inp2[20], cc5[20], rt[20], instruction[5]);
mux2_opr rt_out_22(alu_inp2[21], cc5[21], rt[21], instruction[5]);
mux2_opr rt_out_23(alu_inp2[22], cc5[22], rt[22], instruction[5]);
mux2_opr rt_out_24(alu_inp2[23], cc5[23], rt[23], instruction[5]);
mux2_opr rt_out_25(alu_inp2[24], cc5[24], rt[24], instruction[5]);
mux2_opr rt_out_26(alu_inp2[25], cc5[25], rt[25], instruction[5]);
mux2_opr rt_out_27(alu_inp2[26], cc5[26], rt[26], instruction[5]);
mux2_opr rt_out_28(alu_inp2[27], cc5[27], rt[27], instruction[5]);
mux2_opr rt_out_29(alu_inp2[28], cc5[28], rt[28], instruction[5]);
mux2_opr rt_out_30(alu_inp2[29], cc5[29], rt[29], instruction[5]);
mux2_opr rt_out_31(alu_inp2[30], cc5[30], rt[30], instruction[5]);
mux2_opr rt_out_32(alu_inp2[31], cc5[31], rt[31], instruction[5]);



alu32 a32(alu_result, carry_out_add, carry_out_sub, alu_inp1, alu_inp2, select_bits_ALU[2], select_bits_ALU[1], select_bits_ALU[0], instruction[1]);



concat31 c_opr31(cc31, alu_result[31]);

// ************************************ DATA ************************************
mux2_opr data_1(result[0], alu_result[0], cc31[0], instruction[3]);
mux2_opr data_2(result[1], alu_result[1], cc31[1], instruction[3]);
mux2_opr data_3(result[2], alu_result[2], cc31[2], instruction[3]);
mux2_opr data_4(result[3], alu_result[3], cc31[3], instruction[3]);
mux2_opr data_5(result[4], alu_result[4], cc31[4], instruction[3]);
mux2_opr data_6(result[5], alu_result[5], cc31[5], instruction[3]);
mux2_opr data_7(result[6], alu_result[6], cc31[6], instruction[3]);
mux2_opr data_8(result[7], alu_result[7], cc31[7], instruction[3]);
mux2_opr data_9(result[8], alu_result[8], cc31[8], instruction[3]);
mux2_opr data_10(result[9], alu_result[9], cc31[9], instruction[3]);
mux2_opr data_11(result[10], alu_result[10], cc31[10], instruction[3]);
mux2_opr data_12(result[11], alu_result[11], cc31[11], instruction[3]);
mux2_opr data_13(result[12], alu_result[12], cc31[12], instruction[3]);
mux2_opr data_14(result[13], alu_result[13], cc31[13], instruction[3]);
mux2_opr data_15(result[14], alu_result[14], cc31[14], instruction[3]);
mux2_opr data_16(result[15], alu_result[15], cc31[15], instruction[3]);
mux2_opr data_17(result[16], alu_result[16], cc31[16], instruction[3]);
mux2_opr data_18(result[17], alu_result[17], cc31[17], instruction[3]);
mux2_opr data_19(result[18], alu_result[18], cc31[18], instruction[3]);
mux2_opr data_20(result[19], alu_result[19], cc31[19], instruction[3]);
mux2_opr data_21(result[20], alu_result[20], cc31[20], instruction[3]);
mux2_opr data_22(result[21], alu_result[21], cc31[21], instruction[3]);
mux2_opr data_23(result[22], alu_result[22], cc31[22], instruction[3]);
mux2_opr data_24(result[23], alu_result[23], cc31[23], instruction[3]);
mux2_opr data_25(result[24], alu_result[24], cc31[24], instruction[3]);
mux2_opr data_26(result[25], alu_result[25], cc31[25], instruction[3]);
mux2_opr data_27(result[26], alu_result[26], cc31[26], instruction[3]);
mux2_opr data_28(result[27], alu_result[27], cc31[27], instruction[3]);
mux2_opr data_29(result[28], alu_result[28], cc31[28], instruction[3]);
mux2_opr data_30(result[29], alu_result[29], cc31[29], instruction[3]);
mux2_opr data_31(result[30], alu_result[30], cc31[30], instruction[3]);
mux2_opr data_32(result[31], alu_result[31], cc31[31], instruction[3]);

endmodule