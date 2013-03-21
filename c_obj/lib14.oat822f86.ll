declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a2031 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by a2031.init
define void @oat_init (){

__fresh642:
  call void @a2031.init(  )
  ret void
}


define i32 @program (i32 %argc2034, { i32, [ 0 x i8* ] }* %argv2032){

__fresh641:
  %argc_slot2035 = alloca i32
  store i32 %argc2034, i32* %argc_slot2035
  %argv_slot2033 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2032, { i32, [ 0 x i8* ] }** %argv_slot2033
  %_lhs2036 = load { i32, [ 0 x i32 ] }** @a2031
  %ret2037 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2036 )
  call void @print_string( i8* %ret2037 )
  ret i32 0
}


define void @a2031.init (){

__fresh640:
  %array_ptr2019 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array2020 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2019 to { i32, [ 0 x i32 ] }* 
  %index_ptr2021 = getelementptr { i32, [ 0 x i32 ] }* %array2020, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr2021
  %index_ptr2022 = getelementptr { i32, [ 0 x i32 ] }* %array2020, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr2022
  %index_ptr2023 = getelementptr { i32, [ 0 x i32 ] }* %array2020, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr2023
  %index_ptr2024 = getelementptr { i32, [ 0 x i32 ] }* %array2020, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr2024
  %index_ptr2025 = getelementptr { i32, [ 0 x i32 ] }* %array2020, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr2025
  %index_ptr2026 = getelementptr { i32, [ 0 x i32 ] }* %array2020, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr2026
  %index_ptr2027 = getelementptr { i32, [ 0 x i32 ] }* %array2020, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr2027
  %index_ptr2028 = getelementptr { i32, [ 0 x i32 ] }* %array2020, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr2028
  %index_ptr2029 = getelementptr { i32, [ 0 x i32 ] }* %array2020, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr2029
  %index_ptr2030 = getelementptr { i32, [ 0 x i32 ] }* %array2020, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr2030
  store { i32, [ 0 x i32 ] }* %array2020, { i32, [ 0 x i32 ] }** @a2031
  ret void
}


