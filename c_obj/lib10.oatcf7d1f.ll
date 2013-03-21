declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1982.str. = private unnamed_addr constant [ 7 x i8 ] c "Hello?\00", align 4
@_oat_string1982 = global i8* getelementptr inbounds ([ 7 x i8 ]* @_oat_string1982.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh622:
  ret void
}


define i32 @program (i32 %argc1980, { i32, [ 0 x i8* ] }* %argv1978){

__fresh621:
  %argc_slot1981 = alloca i32
  store i32 %argc1980, i32* %argc_slot1981
  %argv_slot1979 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1978, { i32, [ 0 x i8* ] }** %argv_slot1979
  %strval1983 = load i8** @_oat_string1982
  %ret1984 = call i32 @my_length_of_string ( i8* %strval1983 )
  ret i32 %ret1984
}


define i32 @my_length_of_string (i8* %str1972){

__fresh620:
  %str_slot1973 = alloca i8*
  store i8* %str1972, i8** %str_slot1973
  %_lhs1974 = load i8** %str_slot1973
  %ret1975 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1974 )
  %len_ptr1976 = getelementptr { i32, [ 0 x i32 ] }* %ret1975, i32 0, i32 0
  %len1977 = load i32* %len_ptr1976
  ret i32 %len1977
}


