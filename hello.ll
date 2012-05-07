@msg = internal constant [13 x i8] c"Hello World!\00"

declare i32 @puts(i8*)
; libc <stdio> external function with bit pointer parameter.

define i32 @main() {
    %output = call i32 @puts(i8* getelementptr ([13 x i8]* @msg, i32 0, i32 0))
    ; getelementptr returns an i8*
    ; with offset i32 0, i32 0
    ret i32 0
}