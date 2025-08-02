@R0
D=M        // D = R0
@R1
D=D|M      // D = R0 OR R1
@temp
M=D        // temp = R0 OR R1

@R0
D=M
@R1
D=D&M      // D = R0 AND R1
@R2
M=!D       // R2 = NOT (R0 AND R1)

@temp
D=M
@R2
M=D&M      // R2 = (R0 OR R1) AND NOT (R0 AND R1)

