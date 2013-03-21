declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr3046 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr3046.init
define void @oat_init (){

__fresh1355:
  call void @arr3046.init(  )
  ret void
}


define i32 @program (i32 %argc3049, { i32, [ 0 x i8* ] }* %argv3047){

__fresh1354:
  %argc_slot3050 = alloca i32
  store i32 %argc3049, i32* %argc_slot3050
  %argv_slot3048 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3047, { i32, [ 0 x i8* ] }** %argv_slot3048
  %size_ptr3052 = getelementptr { i32, [ 0 x i32 ] }* @arr3046, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr3052, i32 2 )
  %index_ptr3051 = getelementptr { i32, [ 0 x i32 ] }* @arr3046, i32 0, i32 1, i32 2
  %_lhs3053 = load { i32, [ 0 x i32 ] }** @arr3046
  ret { i32, [ 0 x i32 ] }* %_lhs3053
}


define void @arr3046.init (){

__fresh1353:
  %array_ptr3042 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3043 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3042 to { i32, [ 0 x i32 ] }* 
  %index_ptr3044 = getelementptr { i32, [ 0 x i32 ] }* %array3043, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3044
  %index_ptr3045 = getelementptr { i32, [ 0 x i32 ] }* %array3043, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3045
  store { i32, [ 0 x i32 ] }* %array3043, { i32, [ 0 x i32 ] }** @arr3046
  ret void
}


