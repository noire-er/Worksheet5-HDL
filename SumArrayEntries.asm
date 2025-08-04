@R2
M=0                  // R2 = 0 → This will store the final sum (initialize to 0)

@R1
D=M                  // D = R1 → Load the count (how many numbers to sum)
@END
D;JEQ                // If count is 0, skip everything and go to END

@R0
D=M                  // D = R0 → Load the starting memory address of the numbers
@R3
M=D                  // R3 = R0 → Use R3 as a pointer to current number

@R1
D=M                  // D = R1 again (count)
@R4
M=D                  // R4 = count → will use R4 as a countdown counter in the loop
asm
Copy
Edit
(LOOP)
@R4
D=M
@END
D;JEQ                // If R4 == 0, we're done → go to END

@R3
A=M
D=M                  // Get value from memory address stored in R3

@R2
M=M+D                // Add value to R2 (the running total)

@R3
M=M+1                // Move pointer (R3) to next memory address

@R4
M=M-1                // Decrease the counter (R4)

@LOOP
0;JMP                // Repeat the loop
asm
Copy
Edit
(END)
@END
0;JMP                // Infinite loop to stop the program