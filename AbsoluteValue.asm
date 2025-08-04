// Here we load x into R0
@R0
D=M        // D = x

// Here we check if x is negative
@NEGATIVE
D;JLT      // If x is less than 0, then we move to NEGATIVE

// here x is non-negative, so we store x in R1 and set the flags
@R1
M=D        // R1 = x 
@R2
M=0        // R2 = 0, therefore not negative
@R3
M=0        // R3 = 0 , the valid absolute value
@END
0;JMP      // Jump to end

(NEGATIVE)
           // x is negative, so we do |x| = -x
D=-D       // D = -x
@R1
M=D        // Store |x| in R1
@R2
M=1        // R2 = 1 

// Check for -32768
@R0
D=M        // Here we are reloading x
@32768
D=D+A      // Check if x + 32768 == 0, meaning that x would equal -32768
@NO_OVERFLOW
D;JNE      // If not -32768, then move to NO_OVERFLOW

// Overflow case: Set R3 = 1 and restore R1 = R0
@R3
M=1        // R3 = 1 
@R0
D=M        // D = the original x
@R1
M=D        // R1 = x
@END
0;JMP      // here it jumps to the end

(NO_OVERFLOW)
// the valid absolute value
@R3
M=0 

@END
0;JMP      