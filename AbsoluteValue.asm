// AbsoluteValue.asm

// Load x from R0, do not modify R0
@0
D=M      // D = x

// Check if x is negative
@NEGATIVE
D;JLT    // if x < 0 jump to NEGATIVE

// x >= 0: 
// Set R2 = 0 (not negative)
@2
M=0

// Set R3 = 0 (abs computable)
@3
M=0

// R1 = x (absolute value = x)
@0
D=M
@1
M=D

@END
0;JMP

(NEGATIVE)
// x < 0, set R2 = 1
@2
M=1

// Check if x == -32768 (0x8000)
@0
D=M      // D = x
@MIN_INT_CHECK
D;JNE    // if x != -32768 jump to COMPUTE_ABS

// x == -32768
// Set R3 = 1 (abs not computable)
@3
M=1

// R1 = x (unchanged)
@0
D=M
@1
M=D

@END
0;JMP

(COMPUTE_ABS)
// x is negative but not MIN_INT
// Set R3 = 0
@3
M=0

// Compute abs(x) = -x = ~x + 1
@0
D=M
// D = x
// Compute -x = 0 - x
D=0-D

@1
M=D

@END
0;JMP

(END)
