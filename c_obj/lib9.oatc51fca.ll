declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh617:
  ret void
}


define i32 @program (i32 %argc1958, { i32, [ 0 x i8* ] }* %argv1956){

__fresh614:
  %argc_slot1959 = alloca i32
  store i32 %argc1958, i32* %argc_slot1959
  %argv_slot1957 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1956, { i32, [ 0 x i8* ] }** %argv_slot1957
  %i1960 = alloca i32
  store i32 1, i32* %i1960
  br label %__cond613

__cond613:
  %_lhs1961 = load i32* %i1960
  %_lhs1962 = load i32* %argc_slot1959
  %bop1963 = icmp slt i32 %_lhs1961, %_lhs1962
  br i1 %bop1963, label %__body612, label %__post611

__fresh615:
  br label %__body612

__body612:
  %_lhs1964 = load i32* %i1960
  %size_entry_ptr1966 = getelementptr { i32, [ 0 x i8* ] }* %argv_slot1957, i32 0, i32 0
  %size1967 = load i32* %size_entry_ptr1966
  call void @oat_array_bounds_check( i32 %size1967, i32 %_lhs1964 )
  %index_ptr1965 = getelementptr { i32, [ 0 x i8* ] }* %argv_slot1957, i32 0, i32 1, i32 %_lhs1964
  %_lhs1968 = load i8** %index_ptr1965
  call void @print_string( i8* %_lhs1968 )
  %_lhs1969 = load i32* %i1960
  %bop1970 = add i32 %_lhs1969, 1
  store i32 %bop1970, i32* %i1960
  br label %__cond613

__fresh616:
  br label %__post611

__post611:
  %_lhs1971 = load i32* %argc_slot1959
  ret i32 %_lhs1971
}


