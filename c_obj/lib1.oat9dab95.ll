declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh560:
  ret void
}


define i32 @program (i32 %argc1748, { i32, [ 0 x i8* ] }* %argv1746){

__fresh559:
  %argc_slot1749 = alloca i32
  store i32 %argc1748, i32* %argc_slot1749
  %argv_slot1747 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1746, { i32, [ 0 x i8* ] }** %argv_slot1747
  %array_ptr1750 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1751 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1750 to { i32, [ 0 x i32 ] }* 
  %index_ptr1752 = getelementptr { i32, [ 0 x i32 ] }* %array1751, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1752
  %index_ptr1753 = getelementptr { i32, [ 0 x i32 ] }* %array1751, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1753
  %index_ptr1754 = getelementptr { i32, [ 0 x i32 ] }* %array1751, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr1754
  %arr1755 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1751, { i32, [ 0 x i32 ] }** %arr1755
  %_lhs1756 = load { i32, [ 0 x i32 ] }** %arr1755
  %len_ptr1757 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1756, i32 0, i32 0
  %len1758 = load i32* %len_ptr1757
  %len1759 = alloca i32
  store i32 %len1758, i32* %len1759
  %_lhs1760 = load i32* %len1759
  ret i32 %_lhs1760
}


