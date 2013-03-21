declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh2:
  ret void
}


define i32 @program (i32 %argc8, { i32, [ 0 x i8* ] }* %argv6){

__fresh1:
  %argc_slot9 = alloca i32
  store i32 %argc8, i32* %argc_slot9
  %argv_slot7 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv6, { i32, [ 0 x i8* ] }** %argv_slot7
  %ret10 = call i32 @f ( i32 1, i32 2 )
  ret i32 %ret10
}


define i32 @f (i32 %x3, i32 %y1){

__fresh0:
  %x_slot4 = alloca i32
  store i32 %x3, i32* %x_slot4
  %y_slot2 = alloca i32
  store i32 %y1, i32* %y_slot2
  %_lhs5 = load i32* %x_slot4
  ret i32 %_lhs5
}


