@R0     // Load the value in R0 into D, call the value A
D=M       
@R1
D=D|M   // D = A or R1
@temp
M=D     // Store result of D|M into temp

@R0
D=M     // Load A into D once again
@R1
D=D&M   // D = A and B
@R2
M=!D    // store NOT operation of a AND b into R2

@temp
D=M     // Load a|b from temp into D
@R2
M=D&M   // R2 = (a|b) AND NOT(a|b)

