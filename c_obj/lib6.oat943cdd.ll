declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr11890 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr11890.init
define void @oat_init (){

__fresh594:
  call void @arr11890.init(  )
  ret void
}


define i32 @program (i32 %argc1893, { i32, [ 0 x i8* ] }* %argv1891){

__fresh591:
  %argc_slot1894 = alloca i32
  store i32 %argc1893, i32* %argc_slot1894
  %argv_slot1892 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1891, { i32, [ 0 x i8* ] }** %argv_slot1892
  %_lhs1895 = load { i32, [ 0 x i32 ] }** @arr11890
  %ret1896 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1895 )
  %str1897 = alloca i8*
  store i8* %ret1896, i8** %str1897
  %_lhs1898 = load i8** %str1897
  %ret1899 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1898 )
  %arr21900 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1899, { i32, [ 0 x i32 ] }** %arr21900
  %s1901 = alloca i32
  store i32 0, i32* %s1901
  %i1902 = alloca i32
  store i32 0, i32* %i1902
  br label %__cond590

__cond590:
  %_lhs1903 = load i32* %i1902
  %bop1904 = icmp slt i32 %_lhs1903, 5
  br i1 %bop1904, label %__body589, label %__post588

__fresh592:
  br label %__body589

__body589:
  %_lhs1905 = load i32* %s1901
  %_lhs1906 = load i32* %i1902
  %size_entry_ptr1908 = getelementptr { i32, [ 0 x i32 ] }* %arr21900, i32 0, i32 0
  %size1909 = load i32* %size_entry_ptr1908
  call void @oat_array_bounds_check( i32 %size1909, i32 %_lhs1906 )
  %index_ptr1907 = getelementptr { i32, [ 0 x i32 ] }* %arr21900, i32 0, i32 1, i32 %_lhs1906
  %_lhs1910 = load i32* %index_ptr1907
  %bop1911 = add i32 %_lhs1905, %_lhs1910
  store i32 %bop1911, i32* %s1901
  %_lhs1912 = load i32* %i1902
  %bop1913 = add i32 %_lhs1912, 1
  store i32 %bop1913, i32* %i1902
  br label %__cond590

__fresh593:
  br label %__post588

__post588:
  %_lhs1914 = load i32* %s1901
  ret i32 %_lhs1914
}


define void @arr11890.init (){

__fresh587:
  %array_ptr1883 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array1884 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1883 to { i32, [ 0 x i32 ] }* 
  %index_ptr1885 = getelementptr { i32, [ 0 x i32 ] }* %array1884, i32 0, i32 1, i32 0
  store i32 111, i32* %index_ptr1885
  %index_ptr1886 = getelementptr { i32, [ 0 x i32 ] }* %array1884, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1886
  %index_ptr1887 = getelementptr { i32, [ 0 x i32 ] }* %array1884, i32 0, i32 1, i32 2
  store i32 113, i32* %index_ptr1887
  %index_ptr1888 = getelementptr { i32, [ 0 x i32 ] }* %array1884, i32 0, i32 1, i32 3
  store i32 114, i32* %index_ptr1888
  %index_ptr1889 = getelementptr { i32, [ 0 x i32 ] }* %array1884, i32 0, i32 1, i32 4
  store i32 115, i32* %index_ptr1889
  store { i32, [ 0 x i32 ] }* %array1884, { i32, [ 0 x i32 ] }** @arr11890
  ret void
}


