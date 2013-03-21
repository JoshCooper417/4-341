declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1821.str. = private unnamed_addr constant [ 7 x i8 ] c "Hello?\00", align 4
@_oat_string1821 = global i8* getelementptr inbounds ([ 7 x i8 ]* @_oat_string1821.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh838:
  ret void
}


define i32 @program (i32 %argc1819, { i32, [ 0 x i8* ] }* %argv1817){

__fresh837:
  %argc_slot1820 = alloca i32
  store i32 %argc1819, i32* %argc_slot1820
  %argv_slot1818 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1817, { i32, [ 0 x i8* ] }** %argv_slot1818
  %strval1822 = load i8** @_oat_string1821
  %ret1823 = call i32 @my_length_of_string ( i8* %strval1822 )
  ret i32 %ret1823
}


define i32 @my_length_of_string (i8* %str1811){

__fresh836:
  %str_slot1812 = alloca i8*
  store i8* %str1811, i8** %str_slot1812
  %_lhs1813 = load i8** %str_slot1812
  %ret1814 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1813 )
  %len_ptr1815 = getelementptr { i32, [ 0 x i32 ] }* %ret1814, i32 0, i32 0
  %len1816 = load i32* %len_ptr1815
  ret i32 %len1816
}


