declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh190:
  ret void
}


define i32 @program (i32 %argc570, { i32, [ 0 x i8* ] }* %argv568){

__fresh189:
  %argc_slot571 = alloca i32
  store i32 %argc570, i32* %argc_slot571
  %argv_slot569 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv568, { i32, [ 0 x i8* ] }** %argv_slot569
  %array_ptr572 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array573 = bitcast { i32, [ 0 x i32 ] }* %array_ptr572 to { i32, [ 0 x i32 ] }* 
  %index_ptr574 = getelementptr { i32, [ 0 x i32 ] }* %array573, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr574
  %index_ptr575 = getelementptr { i32, [ 0 x i32 ] }* %array573, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr575
  %arr576 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array573, { i32, [ 0 x i32 ] }** %arr576
  %size_entry_ptr578 = getelementptr { i32, [ 0 x i32 ] }* %arr576, i32 0, i32 0
  %size579 = load i32* %size_entry_ptr578
  call void @oat_array_bounds_check( i32 %size579, i32 1 )
  %index_ptr577 = getelementptr { i32, [ 0 x i32 ] }* %arr576, i32 0, i32 1, i32 1
  %_lhs580 = load { i32, [ 0 x i32 ] }** %arr576
  ret { i32, [ 0 x i32 ] }* %_lhs580
}


