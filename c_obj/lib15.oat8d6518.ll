declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh871:
  ret void
}


define i32 @program (i32 %argc1902, { i32, [ 0 x i8* ] }* %argv1900){

__fresh870:
  %argc_slot1903 = alloca i32
  store i32 %argc1902, i32* %argc_slot1903
  %argv_slot1901 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1900, { i32, [ 0 x i8* ] }** %argv_slot1901
  %size_ptr1905 = getelementptr { i32, [ 0 x i8* ] }* %argv_slot1901, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr1905, i32 1 )
  %index_ptr1904 = getelementptr { i32, [ 0 x i8* ] }* %argv_slot1901, i32 0, i32 1, i32 1
  %_lhs1906 = load { i32, [ 0 x i8* ] }** %argv_slot1901
  %ret1907 = call i8* @sub ( { i32, [ 0 x i8* ] }* %_lhs1906, i32 3, i32 5 )
  call void @print_string( i8* %ret1907 )
  ret i32 0
}


define i8* @sub (i8* %str1879, i32 %start1877, i32 %len1875){

__fresh866:
  %str_slot1880 = alloca i8*
  store i8* %str1879, i8** %str_slot1880
  %start_slot1878 = alloca i32
  store i32 %start1877, i32* %start_slot1878
  %len_slot1876 = alloca i32
  store i32 %len1875, i32* %len_slot1876
  %_lhs1881 = load i8** %str_slot1880
  %ret1882 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1881 )
  %arr1883 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1882, { i32, [ 0 x i32 ] }** %arr1883
  %_lhs1884 = load i32* %len_slot1876
  %array_ptr1885 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %_lhs1884 )
  %array1886 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1885 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr1888
  br label %__compare863

__fresh867:
  br label %__compare863

__compare863:
  %comparison_result1889 = icmp slt i32* %index_ptr1888, %_lhs1884
  br i1 %comparison_result1889, label %__body864, label %__end865

__fresh868:
  br label %__body864

__body864:
  %i1890 = load i32* %index_ptr1888
  %_lhs1891 = load i32* %i1890
  %_lhs1892 = load i32* %start_slot1878
  %bop1893 = add i32 %_lhs1891, %_lhs1892
  %size_ptr1895 = getelementptr { i32, [ 0 x i32 ] }* %arr1883, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr1895, i32 %bop1893 )
  %index_ptr1894 = getelementptr { i32, [ 0 x i32 ] }* %arr1883, i32 0, i32 1, i32 %bop1893
  %_lhs1896 = load { i32, [ 0 x i32 ] }** %arr1883
  %index_ptr1888 = add i32* %index_ptr1888, 1
  br label %__compare863

__fresh869:
  br label %__end865

__end865:
  %r1897 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1886, { i32, [ 0 x i32 ] }** %r1897
  %_lhs1898 = load { i32, [ 0 x i32 ] }** %r1897
  %ret1899 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1898 )
  ret i8* %ret1899
}


