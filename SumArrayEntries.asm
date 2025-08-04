@0
D=M         // load number into D


@IS_NEGATIVE        //if the input is less than 0 then move to IS_NEGATIVE
D;JLT        


@2
M=0               
@3
M=0                 // input is not -32768
@0
D=M                 // D = the input
@1
M=D          
@END
0;JMP               // move to the end and finish 

(IS_NEGATIVE)

@2
M=1                 // input is negative


@0
D=M                 // the input = D
@CHECK_MIN
D=A-D               // D would equal 0 if the input was -32768 as 32768 + -32768 = 0
@COMPUTE_ABS
D;JNE               // if it is not == 0 then we move to COMPUTE_ABS


@3
M=1          // RAM[3] = 1 → Flag: input was -32768
@0
D=M
@1
M=D         // We can't negate -32768, so return it as-is
@END
0;JMP       // we move to the end

(CHECK_MIN)
@32768       // sets A to 32768

(COMPUTE_ABS)
@3
M=0         //not the special value
@0
D=M         //once again, d = input
D=0-D       
@1
M=D        // absolute value of input

(END)
@END
0;JMP      // halts program 