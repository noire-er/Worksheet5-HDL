@0
D=M

// Check if x < 0
@IS_NEGATIVE
D;JLT        // Jump if x is negative

// If x >= 0:
@2
M=0          // R2 = 0 (x not negative)
@3
M=0          // R3 = 0 (abs computable)
@0
D=M
@1
M=D          // R1 = x
@END
0;JMP

(IS_NEGATIVE)
// x < 0
@2
M=1          // R2 = 1 (x is negative)

// Check if x == -32768
@0
D=M
@CHECK_MIN
D=A-D        // D = 32768 - x
@COMPUTE_ABS
D;JNE        // If x != -32768, jump to compute abs

// x == -32768
@3
M=1          // R3 = 1 (abs not computable)
@0
D=M
@1
M=D          // R1 = x (unchanged)
@END
0;JMP

(CHECK_MIN)
@32768       // Load constant 32768

(COMPUTE_ABS)
// x is negative but not -32768
@3
M=0          // R3 = 0 (abs computable)
@0
D=M
D=0-D        // D = -x
@1
M=D          // R1 = |x|

(END)
@END
0;JMP        // Infinite loop or end