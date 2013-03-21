declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh605:
  ret void
}


define i32 @program (i32 %argc1917, { i32, [ 0 x i8* ] }* %argv1915){

__fresh602:
  %argc_slot1918 = alloca i32
  store i32 %argc1917, i32* %argc_slot1918
  %argv_slot1916 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1915, { i32, [ 0 x i8* ] }** %argv_slot1916
  %array_ptr1919 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array1920 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1919 to { i32, [ 0 x i32 ] }* 
  %index_ptr1921 = getelementptr { i32, [ 0 x i32 ] }* %array1920, i32 0, i32 1, i32 0
  store i32 111, i32* %index_ptr1921
  %index_ptr1922 = getelementptr { i32, [ 0 x i32 ] }* %array1920, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1922
  %index_ptr1923 = getelementptr { i32, [ 0 x i32 ] }* %array1920, i32 0, i32 1, i32 2
  store i32 113, i32* %index_ptr1923
  %index_ptr1924 = getelementptr { i32, [ 0 x i32 ] }* %array1920, i32 0, i32 1, i32 3
  store i32 114, i32* %index_ptr1924
  %index_ptr1925 = getelementptr { i32, [ 0 x i32 ] }* %array1920, i32 0, i32 1, i32 4
  store i32 115, i32* %index_ptr1925
  %arr11926 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1920, { i32, [ 0 x i32 ] }** %arr11926
  %_lhs1927 = load { i32, [ 0 x i32 ] }** %arr11926
  %ret1928 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1927 )
  %str1929 = alloca i8*
  store i8* %ret1928, i8** %str1929
  %_lhs1930 = load i8** %str1929
  %ret1931 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1930 )
  %arr21932 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1931, { i32, [ 0 x i32 ] }** %arr21932
  %s1933 = alloca i32
  store i32 0, i32* %s1933
  %i1934 = alloca i32
  store i32 0, i32* %i1934
  br label %__cond601

__cond601:
  %_lhs1935 = load i32* %i1934
  %bop1936 = icmp slt i32 %_lhs1935, 5
  br i1 %bop1936, label %__body600, label %__post599

__fresh603:
  br label %__body600

__body600:
  %_lhs1937 = load i32* %s1933
  %_lhs1938 = load i32* %i1934
  %size_entry_ptr1940 = getelementptr { i32, [ 0 x i32 ] }* %arr21932, i32 0, i32 0
  %size1941 = load i32* %size_entry_ptr1940
  call void @oat_array_bounds_check( i32 %size1941, i32 %_lhs1938 )
  %index_ptr1939 = getelementptr { i32, [ 0 x i32 ] }* %arr21932, i32 0, i32 1, i32 %_lhs1938
  %_lhs1942 = load { i32, [ 0 x i32 ] }** %arr21932
  %bop1943 = add i32 %_lhs1937, %_lhs1942
  store i32 %bop1943, i32* %s1933
  %_lhs1944 = load i32* %i1934
  %bop1945 = add i32 %_lhs1944, 1
  store i32 %bop1945, i32* %i1934
  br label %__cond601

__fresh604:
  br label %__post599

__post599:
  %_lhs1946 = load i32* %s1933
  ret i32 %_lhs1946
}


