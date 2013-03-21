declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@i488 = global i32 0, align 4
define void @oat_init (){

__fresh206:
  ret void
}


define i32 @program (i32 %argc507, { i32, [ 0 x i8* ] }* %argv505){

__fresh205:
  %argc_slot508 = alloca i32
  store i32 %argc507, i32* %argc_slot508
  %argv_slot506 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv505, { i32, [ 0 x i8* ] }** %argv_slot506
  %x509 = alloca i32
  store i32 3, i32* %x509
  %y510 = alloca i32
  store i32 3, i32* %y510
  %_lhs512 = load i32* %y510
  %_lhs511 = load i32* %x509
  %ret513 = call i32 @f ( i32 %_lhs511, i32 %_lhs512 )
  %_lhs514 = load i32* @i488
  %bop515 = add i32 %ret513, %_lhs514
  ret i32 %bop515
}


define i32 @f (i32 %x491, i32 %y489){

__fresh202:
  %x_slot492 = alloca i32
  store i32 %x491, i32* %x_slot492
  %y_slot490 = alloca i32
  store i32 %y489, i32* %y_slot490
  %r493 = alloca i32
  store i32 0, i32* %r493
  %_lhs494 = load i32* %x_slot492
  %bop495 = icmp sge i32 %_lhs494, 1
  br i1 %bop495, label %__then201, label %__else200

__fresh203:
  br label %__then201

__then201:
  %_lhs498 = load i32* %y_slot490
  %_lhs496 = load i32* %x_slot492
  %bop497 = sub i32 %_lhs496, 1
  %ret499 = call i32 @f ( i32 %bop497, i32 %_lhs498 )
  %bop500 = add i32 1, %ret499
  store i32 %bop500, i32* %r493
  br label %__merge199

__fresh204:
  br label %__else200

__else200:
  %_lhs501 = load i32* %x_slot492
  %_lhs502 = load i32* %y_slot490
  %bop503 = add i32 %_lhs501, %_lhs502
  store i32 %bop503, i32* %r493
  br label %__merge199

__merge199:
  %_lhs504 = load i32* %r493
  ret i32 %_lhs504
}


