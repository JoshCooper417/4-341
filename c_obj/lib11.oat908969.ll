declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
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
  %array_ptr5 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array6 = bitcast { i32, [ 0 x i32 ] }* %array_ptr5 to { i32, [ 0 x i32 ] }* 
  %index_ptr7 = getelementptr { i32, [ 0 x i32 ] }* %array6, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr7
  %index_ptr8 = getelementptr { i32, [ 0 x i32 ] }* %array6, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr8
  %index_ptr9 = getelementptr { i32, [ 0 x i32 ] }* %array6, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr9
  %arr10 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array6, { i32, [ 0 x i32 ] }** %arr10
  %size_entry_ptr12 = getelementptr { i32, [ 0 x i32 ] }* %arr10, i32 0, i32 0
  %size13 = load i32* %size_entry_ptr12
  call void @oat_array_bounds_check( i32 %size13, i32 100000 )
  %index_ptr11 = getelementptr { i32, [ 0 x i32 ] }* %arr10, i32 0, i32 1, i32 100000
  %_lhs14 = load i32* %index_ptr11
  %sum15 = alloca i32
  store i32 %_lhs14, i32* %sum15
  %_lhs16 = load i32* %sum15
  ret i32 %_lhs16
}


