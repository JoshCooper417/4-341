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
  %unop11 = sub i32 0, 1
  %size_entry_ptr13 = getelementptr { i32, [ 0 x i32 ] }* %arr10, i32 0, i32 0
  %size14 = load i32* %size_entry_ptr13
  call void @oat_array_bounds_check( i32 %size14, i32 %unop11 )
  %index_ptr12 = getelementptr { i32, [ 0 x i32 ] }* %arr10, i32 0, i32 1, i32 %unop11
  %_lhs15 = load i32* %index_ptr12
  %sum16 = alloca i32
  store i32 %_lhs15, i32* %sum16
  %_lhs17 = load i32* %sum16
  ret i32 %_lhs17
}


