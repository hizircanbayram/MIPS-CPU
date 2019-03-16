# MIPS-CPU

This project is all about 32 bit CPU that supports R-type instructions listed on the MIPS Green Sheet. All the modules but Register File are designed using structural Verilog (Register File is designed using behavioral Verilog). 



## Digging a little deeper the project

Instructions that are implemented are shown in below.

![image](https://user-images.githubusercontent.com/23126077/54474125-f5eab180-47f1-11e9-9624-fd8d8c84dff9.png)

CPU's scheme is shown in below.

![image](https://user-images.githubusercontent.com/23126077/54474146-4cf08680-47f2-11e9-91f7-2e5aa61e2ba8.png)

After a bit of examining schemes, let's dive into more details about designing issues. It'd be better if we examine the modules one by one. 
  * 1) How the CPU works in general
  * 2) How the register file works
  * 3) How the control unit works
  * 4) How the ALU works
  * 5) Test cases for implemented instructions


### How the CPU works in general

CPU gets MSB 5 bits of all instructions without any checking based on the convention that all instructions implemented in this CPU are R-type instructions. First three 5-bit patterns are sent to rs, rt and rd ports of the register file so as to get their contents but content of these registers aren't sent to ALU directly. This is because ALU doesn't work with these contents for every instruction(shift instructions i.e.). shamt section of shift instructions can also be input for ALU, these 5 bits(shamt) are extended into 32 bits. In order to choose correct inputs for ALU, muxes are added right before the inputs. ALU performs the instruction using selections signals and inputs. It then outputs the result. There is another mux right after the output of ALU because of sltu instruction. Beecause sltu takes its action using MSB bit of the output of ALU, this bit is extended into 32 bits. The mux then decides which input is outputted based on whether the instruction is sltu or not. The result is written into the designated register by rd finally.


### How the control unit works

Control unit converts LSB 6 bits of the instruction that takes over from register file into 3 bits(see the section 'How the register file works' below). These 3 bits forms selection signals of ALU.

Control unit is shown in below.

![image](https://user-images.githubusercontent.com/23126077/54474533-15d0a400-47f7-11e9-94b8-b1c1a4f0e8ed.png)

Equations of selection signal 0,1 and 2 are shown below.
```
SS0 = ((F2 and F0) or ((not F5) and (not F0) and F1))
SS1 = ((not F1) xor F2)
SS2 = (F1 and (not (F5 and F0)))
```


### How the register file works

Register file takes three 5-bits patterns to rs, rt and rd ports and reads their content from the file called registers.mem. It then redirects their content to its output ports. It also writes data that comes to it as a result, to rd register. 

Register file is hown in Figure 4.

![image](https://user-images.githubusercontent.com/23126077/54474564-6ba54c00-47f7-11e9-9c22-9d3fc8305bed.png)


### How the ALU works

Operations that are supported are shown below.

![image](https://user-images.githubusercontent.com/23126077/54474876-92658180-47fb-11e9-9edd-a4a9a72bf128.png)

ALU's scheme is shown below.

![image](https://user-images.githubusercontent.com/23126077/54474891-ce004b80-47fb-11e9-9948-6a2da0ea108d.png)

Inputs of the aritmetic operation is set based on their opcode. There is only one mux in the figure above. This is because that mux is symbolic. What really happens is using one mux for every bit in the result. So, there are 32 mux there. 

Design of logic operations are shown below. Modules for AND, OR, XOR and NOR are implemented using related logic gates for every operation. Thus, output of C forms 32-bit when the inputs A and B are sent to the ALU. The operations are performed for every bit.

![image](https://user-images.githubusercontent.com/23126077/54474936-4f57de00-47fc-11e9-8b8e-25514f4aedba.png)

Design of shift operations are shown below. First 5 bits of input B is used for detecting how many bits the input A is shifted. 32x5 mux is used for every shifter. 

![image](https://user-images.githubusercontent.com/23126077/54474982-e02eb980-47fc-11e9-84cd-0187f2869715.png)

Design of ADD and SUB operations are shown below. Half-adder and full-adder are designed at first. Adding every bit to each other one by one is provided by using thirty two full adders, one for each bit. To distunguish ADD and SUB operations, carry is set to 0 for ADD and then A and B are added to each other. The operation below is supplied for SUB operation.

```
A - !B + 1
```

![image](https://user-images.githubusercontent.com/23126077/54475021-64813c80-47fd-11e9-8f29-2a1ee2a43b7d.png)


### Test cases for implemented instructions

Test cases are shown in below.

![image](https://user-images.githubusercontent.com/23126077/54474846-15d2a300-47fb-11e9-92de-0e30626524c0.png)


All the implemented instructions are tested and outputted above. The file registers.mem is also updated after every instructions. 



## Built With
* [Quartus 13.1 Web Pack Edition with Cyclone III](http://fpgasoftware.intel.com/13.1/?edition=web)
