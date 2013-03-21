declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string5.str. = private unnamed_addr constant [ 2 x i8 ] c "a\00", align 4
@_oat_string5 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string5.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh1:
  ret void
}


define i32 @program (i32 %argc3, { i32, [ 0 x i8* ] }* %argv1){

__fresh0:
  %argc_slot4 = alloca i32
  store i32 %argc3, i32* %argc_slot4
  %argv_slot2 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1, { i32, [ 0 x i8* ] }** %argv_slot2
  %strval6 = load i8** @_oat_string5
  %ret7 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %strval6 )
  %arr8 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret7, { i32, [ 0 x i32 ] }** %arr8
  %size_entry_ptr10 = getelementptr { i32, [ 0 x i32 ] }* %arr8, i32 0, i32 0
  %size11 = load i32* %size_entry_ptr10
  call void @oat_array_bounds_check( i32 %size11, i32 2 )
  %index_ptr9 = getelementptr { i32, [ 0 x i32 ] }* %arr8, i32 0, i32 1, i32 2
  %_lhs12 = load i32* %index_ptr9
  %sum13 = alloca i32
  store i32 %_lhs12, i32* %sum13
  %_lhs14 = load i32* %sum13
  ret i32 %_lhs14
}


