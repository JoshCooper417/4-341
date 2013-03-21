declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh762:
  ret void
}


define i32 @program (i32 %argc1594, { i32, [ 0 x i8* ] }* %argv1592){

__fresh761:
  %argc_slot1595 = alloca i32
  store i32 %argc1594, i32* %argc_slot1595
  %argv_slot1593 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1592, { i32, [ 0 x i8* ] }** %argv_slot1593
  %array_ptr1596 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1597 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1596 to { i32, [ 0 x i32 ] }* 
  %index_ptr1598 = getelementptr { i32, [ 0 x i32 ] }* %array1597, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1598
  %index_ptr1599 = getelementptr { i32, [ 0 x i32 ] }* %array1597, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1599
  %index_ptr1600 = getelementptr { i32, [ 0 x i32 ] }* %array1597, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr1600
  %arr1601 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1597, { i32, [ 0 x i32 ] }** %arr1601
  %_lhs1602 = load { i32, [ 0 x i32 ] }** %arr1601
  %len_ptr1603 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1602, i32 0, i32 0
  %len1604 = load i32* %len_ptr1603
  %len1605 = alloca i32
  store i32 %len1604, i32* %len1605
  %_lhs1606 = load i32* %len1605
  ret i32 %_lhs1606
}


