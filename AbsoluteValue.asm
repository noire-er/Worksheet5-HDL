@R0         // Here we are laoding x from R0
D=M         // Here setting D = x 
@R4
M=-32768

@NEGATIVE   // Here we are checking wether x is negative or NOT
D;JLT       // If x<0, aka negative, then move to negative

@R1         // Scenario where x is non negative so we store/load it in R1 and set the flags
M=D         // R1 = x
@R2
M=0         // R2 = 0 therefore not negative
@R3
M=0         // R3 = 0 no oveflow occurs
@0;JMP      // Here we move to the end

(NEGATIVE)
D=-D        // Here setting d = -x 
@R1
M=D         // Store |x| in R1
@R2
M=1         // R2 = 1 so we are indicating that x was negative value

@R0
D=M         // Here we are loading x again
@R4
D=D+M       // Here we are checking if x +32768 == 0 so therefore checking if x = -32768
@NO_OVERFLOW
D;JNE       // This line says that if x is not - 32768 then we will move to NO_OVERFLOW hence @NO_OVERFLOW

@R3
M=1         // Here we are setting R3 = 1
@R0
D=M         // D = orignal x
@R1
M=D
@END        // Restore R1 = x
0;JMP       // Move to the end

(NO_OVERFLOW)

@R3         // For the valid absolute value
M=0

@END
0;JMP



