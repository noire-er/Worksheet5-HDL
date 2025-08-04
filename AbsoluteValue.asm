push constant 32768
neg
push argument 0
eq
if-goto IS_UNDEFINED

push argument 0
push constant 0
lt
if-goto HANDLE_NEGATIVE

push argument 0
pop argument 1
push constant 0
pop argument 2
push constant 0
pop argument 3
goto END

label IS_UNDEFINED
push constant 1
pop argument 3
goto END

label HANDLE_NEGATIVE
push argument 0
neg
pop argument 1
push constant 1
pop argument 2
push constant 0
pop argument 3

label END
