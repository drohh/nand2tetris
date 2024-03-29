// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

//Set temp == r0
@R0
D=M
@temp
M=D

//Set sum == 0
@R2
M=0

(MULTIPLY)
	//if (temp == 0 goto END)
	@temp
	D=M
	@END
	D;JEQ

	//add r1 to sum
	@R1
	D=M
	@R2
	M=D+M
	@temp
	M=M-1

	//Go multiply
	@MULTIPLY
	0;JMP

(END)
	@END
	0;JMP
