declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr3088 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr3088.init
define void @oat_init (){

__fresh1370:
  call void @arr3088.init(  )
  ret void
}


define i32 @program (i32 %argc3091, { i32, [ 0 x i8* ] }* %argv3089){

__fresh1369:
  %argc_slot3092 = alloca i32
  store i32 %argc3091, i32* %argc_slot3092
  %argv_slot3090 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3089, { i32, [ 0 x i8* ] }** %argv_slot3090
  %size_ptr3094 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* @arr3088, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr3094, i32 3 )
  %index_ptr3093 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* @arr3088, i32 0, i32 1, i32 3
  %size_ptr3096 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* @arr3088, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr3096, i32 0 )
  %index_ptr3095 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* @arr3088, i32 0, i32 1, i32 0
  %_lhs3097 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3088
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3097
}


define void @arr3088.init (){

__fresh1368:
  %array_ptr3076 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3077 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3076 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3078 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3079 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3078 to { i32, [ 0 x i32 ] }* 
  %index_ptr3080 = getelementptr { i32, [ 0 x i32 ] }* %array3079, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3080
  %index_ptr3081 = getelementptr { i32, [ 0 x i32 ] }* %array3079, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3081
  %index_ptr3082 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3077, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3079, { i32, [ 0 x i32 ] }** %index_ptr3082
  %array_ptr3083 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3084 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3083 to { i32, [ 0 x i32 ] }* 
  %index_ptr3085 = getelementptr { i32, [ 0 x i32 ] }* %array3084, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr3085
  %index_ptr3086 = getelementptr { i32, [ 0 x i32 ] }* %array3084, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr3086
  %index_ptr3087 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3077, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3084, { i32, [ 0 x i32 ] }** %index_ptr3087
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3077, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3088
  ret void
}


