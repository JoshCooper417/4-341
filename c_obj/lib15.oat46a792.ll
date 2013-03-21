declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh654:
  ret void
}


define i32 @program (i32 %argc2066, { i32, [ 0 x i8* ] }* %argv2064){

__fresh653:
  %argc_slot2067 = alloca i32
  store i32 %argc2066, i32* %argc_slot2067
  %argv_slot2065 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2064, { i32, [ 0 x i8* ] }** %argv_slot2065
  %size_entry_ptr2069 = getelementptr { i32, [ 0 x i8* ] }* %argv_slot2065, i32 0, i32 0
  %size2070 = load i32* %size_entry_ptr2069
  call void @oat_array_bounds_check( i32 %size2070, i32 1 )
  %index_ptr2068 = getelementptr { i32, [ 0 x i8* ] }* %argv_slot2065, i32 0, i32 1, i32 1
  %_lhs2071 = load i8** %index_ptr2068
  %ret2072 = call i8* @sub ( i8* %_lhs2071, i32 3, i32 5 )
  call void @print_string( i8* %ret2072 )
  ret i32 0
}


define i8* @sub (i8* %str2042, i32 %start2040, i32 %len2038){

__fresh649:
  %str_slot2043 = alloca i8*
  store i8* %str2042, i8** %str_slot2043
  %start_slot2041 = alloca i32
  store i32 %start2040, i32* %start_slot2041
  %len_slot2039 = alloca i32
  store i32 %len2038, i32* %len_slot2039
  %_lhs2044 = load i8** %str_slot2043
  %ret2045 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs2044 )
  %arr2046 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret2045, { i32, [ 0 x i32 ] }** %arr2046
  %_lhs2047 = load i32* %len_slot2039
  %array_ptr2048 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %_lhs2047 )
  %array2049 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2048 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr2051
  br label %__compare646

__fresh650:
  br label %__compare646

__compare646:
  %comparison_result2052 = icmp slt i32* %index_ptr2051, %_lhs2047
  br i1 %comparison_result2052, label %__body647, label %__end648

__fresh651:
  br label %__body647

__body647:
  %i2053 = load i32* %index_ptr2051
  %_lhs2054 = load i32* %i2053
  %_lhs2055 = load i32* %start_slot2041
  %bop2056 = add i32 %_lhs2054, %_lhs2055
  %size_entry_ptr2058 = getelementptr { i32, [ 0 x i32 ] }* %arr2046, i32 0, i32 0
  %size2059 = load i32* %size_entry_ptr2058
  call void @oat_array_bounds_check( i32 %size2059, i32 %bop2056 )
  %index_ptr2057 = getelementptr { i32, [ 0 x i32 ] }* %arr2046, i32 0, i32 1, i32 %bop2056
  %_lhs2060 = load i32* %index_ptr2057
  %index_ptr2051 = add i32* %index_ptr2051, 1
  br label %__compare646

__fresh652:
  br label %__end648

__end648:
  %r2061 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2049, { i32, [ 0 x i32 ] }** %r2061
  %_lhs2062 = load { i32, [ 0 x i32 ] }** %r2061
  %ret2063 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2062 )
  ret i8* %ret2063
}


