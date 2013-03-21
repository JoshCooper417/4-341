declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@x401 = global i32 10, align 4
define void @oat_init (){

__fresh167:
  ret void
}


define i32 @program (i32 %argc404, { i32, [ 0 x i8* ] }* %argv402){

__fresh166:
  %argc_slot405 = alloca i32
  store i32 %argc404, i32* %argc_slot405
  %argv_slot403 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv402, { i32, [ 0 x i8* ] }** %argv_slot403
  %y406 = alloca i32
  store i32 0, i32* %y406
  %_lhs407 = load i32* @x401
  %bop408 = add i32 %_lhs407, 1
  %x409 = alloca i32
  store i32 %bop408, i32* %x409
  %_lhs410 = load i32* %x409
  store i32 %_lhs410, i32* %y406
  %_lhs411 = load i32* %y406
  ret i32 %_lhs411
}


