// for i in arr:
// 	arr[i] = -1

@100
D=A

@arr
M=D

@10
D=A

@n
M=D

@i
M=0

// if i == n goto END
(LOOP)
@i
D=M
@n
D=D-M
@END
D;JEQ

//RAM[arr+i] = -1
@i
D=M
@arr
A=D+M
M=-1
@i
D=M
M=D+1

@LOOP
0;JMP

(END)
@END
0;JMP
