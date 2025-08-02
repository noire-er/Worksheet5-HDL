@0
D=M        // D = x

// Check if x < 0
@NEGATIVE
D;JLT      // Jump if x is negative

// --------- x >= 0 ---------
@2
M=0        // R2 = 0 (x is not negative)
@3
M=0        // R3 = 0 (abs computable)
@0
D=M
@1
M=D        // R1 = x (abs value)
@END
0;JMP

// --------- x < 0 ---------
(NEGATIVE)
@2
M=1        // R2 = 1 (x is negative)

// Check if x == -32768
@0
D=M        // D = x
@MINVAL
D=D-A      // D = x - (-32768) → D == 0 if x == -32768
@NOT_MIN
D;JNE      // Jump if x != -32768

// x == -32768
@3
M=1        // R3 = 1 (abs not computable)
@0
D=M
@1
M=D        // R1 = x
@END
0;JMP

(MINVAL)
@32768     // MIN_INT = -32768 = 0x8000

(NOT_MIN)
// x is negative but != -32768
@3
M=0        // R3 = 0 (abs computable)
@0
D=M
D=0-D      // D = -x = abs(x)
@1
M=D        // R1 = |x|

(END)
@END
0;JMP      // End of program (infinite loop)