@R4
M=0                  // Set R4 = 0 → clear the "division by zero" error flag
@R1
D=M                  // Load the divisor (R1) into D
@DIV_ZERO
D;JEQ                // If divisor is 0, jump to DIV_ZERO

@R2
M=0                  // Set quotient (R2) = 0
@R3
M=0                  // Set remainder (R3) = 0

@R0
D=M                  // Load the dividend (R0) into D
@POSITIVE_DIV
D;JGE                // If dividend is >= 0, go to POSITIVE_DIV
@NEG_DIV
0;JMP                // Otherwise, go to NEG_DIV

(POSITIVE_DIV)
@LOOP
0;JMP                // Jump to the main loop

(NEG_DIV)
D=-D                 // Make dividend positive (D = -D)
@R0_temp
M=D                  // Save it in a temporary spot

(LOOP)
@R1
D=D-M                // Subtract divisor from current total
@END_LOOP
D;JLT                // If result < 0, we’re done looping
@R2
M=M+1                // Increase the quotient
@LOOP
D;JGE                // If result >= 0, repeat the loop

(END_LOOP)
@R1
D=D+M                // Undo last subtraction to get the remainder
@R3
M=D                  // Store remainder in R3

@R0
D=M
@SKIP
D;JGE                // If original dividend was >= 0, skip sign changes

@R2
M=-M                 // Make quotient negative
@R3
M=-M                 // Make remainder negative

(SKIP)
@EXIT
0;JMP                // Done — jump to program end

(DIV_ZERO)
@R4
M=1                  // Set error flag — divisor was zero
@EXIT
0;JMP                // Jump to program end

(EXIT)
@EXIT
0;JMP                // Stay here forever (program is done)